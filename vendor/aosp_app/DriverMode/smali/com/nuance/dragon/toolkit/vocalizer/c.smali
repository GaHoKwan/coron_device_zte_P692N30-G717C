.class final Lcom/nuance/dragon/toolkit/vocalizer/c;
.super Lcom/nuance/dragon/toolkit/vocalizer/b;


# instance fields
.field private a:Lcom/nuance/dragon/toolkit/util/WorkerThread;


# direct methods
.method public constructor <init>(Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Engine;Lcom/nuance/dragon/toolkit/file/FileManager;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/dragon/toolkit/vocalizer/c;-><init>(Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Engine;Lcom/nuance/dragon/toolkit/file/FileManager;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Engine;Lcom/nuance/dragon/toolkit/file/FileManager;Landroid/os/Handler;)V
    .locals 1

    sget-object v0, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Engine;->VOCALIZER_FOR_AUTOMOTIVE:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Engine;

    if-ne p1, v0, :cond_0

    new-instance v0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerAutomotiveImpl;

    invoke-direct {v0, p2}, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerAutomotiveImpl;-><init>(Lcom/nuance/dragon/toolkit/file/FileManager;)V

    :goto_0
    invoke-direct {p0, v0, p3}, Lcom/nuance/dragon/toolkit/vocalizer/b;-><init>(Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizer;Landroid/os/Handler;)V

    const-string v0, "fileManager"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;

    invoke-direct {v0, p2}, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;-><init>(Lcom/nuance/dragon/toolkit/file/FileManager;)V

    goto :goto_0
.end method


# virtual methods
.method protected final getWorkerThreadHandler()Landroid/os/Handler;
    .locals 2

    new-instance v0, Lcom/nuance/dragon/toolkit/util/WorkerThread;

    const-string v1, "com.nuance.dragon.toolkit.vocalizer.VocalizerImpl"

    invoke-direct {v0, v1}, Lcom/nuance/dragon/toolkit/util/WorkerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/c;->a:Lcom/nuance/dragon/toolkit/util/WorkerThread;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/c;->a:Lcom/nuance/dragon/toolkit/util/WorkerThread;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/util/WorkerThread;->start()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/c;->a:Lcom/nuance/dragon/toolkit/util/WorkerThread;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/util/WorkerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public final release()V
    .locals 1

    invoke-super {p0}, Lcom/nuance/dragon/toolkit/vocalizer/b;->release()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/c;->a:Lcom/nuance/dragon/toolkit/util/WorkerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/c;->a:Lcom/nuance/dragon/toolkit/util/WorkerThread;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/util/WorkerThread;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/c;->a:Lcom/nuance/dragon/toolkit/util/WorkerThread;

    :cond_0
    return-void
.end method

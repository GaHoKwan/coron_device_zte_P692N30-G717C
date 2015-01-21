.class final Lcom/nuance/dragon/toolkit/vocon/e;
.super Lcom/nuance/dragon/toolkit/vocon/d;


# static fields
.field private static b:Lcom/nuance/dragon/toolkit/util/WorkerThread;

.field private static c:I


# instance fields
.field private final a:Z

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/nuance/dragon/toolkit/file/FileManager;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/dragon/toolkit/vocon/e;-><init>(Lcom/nuance/dragon/toolkit/file/FileManager;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Lcom/nuance/dragon/toolkit/file/FileManager;Landroid/os/Handler;)V
    .locals 1

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;

    invoke-direct {v0, p1}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;-><init>(Lcom/nuance/dragon/toolkit/file/FileManager;)V

    invoke-direct {p0, v0, p2}, Lcom/nuance/dragon/toolkit/vocon/d;-><init>(Lcom/nuance/dragon/toolkit/vocon/NativeVocon;Landroid/os/Handler;)V

    const-string v0, "fileManager"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/e;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final a()Landroid/os/Handler;
    .locals 2

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/e;->b:Lcom/nuance/dragon/toolkit/util/WorkerThread;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nuance/dragon/toolkit/util/WorkerThread;

    const-string v1, "com.nuance.dragon.toolkit.vocon.VoconRecognizerImpl"

    invoke-direct {v0, v1}, Lcom/nuance/dragon/toolkit/util/WorkerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/e;->b:Lcom/nuance/dragon/toolkit/util/WorkerThread;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/util/WorkerThread;->start()V

    :cond_0
    sget v0, Lcom/nuance/dragon/toolkit/vocon/e;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nuance/dragon/toolkit/vocon/e;->c:I

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/e;->b:Lcom/nuance/dragon/toolkit/util/WorkerThread;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/util/WorkerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public final release()V
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/e;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/e;->d:Z

    invoke-super {p0}, Lcom/nuance/dragon/toolkit/vocon/d;->release()V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/e;->a:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/nuance/dragon/toolkit/vocon/e;->c:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/nuance/dragon/toolkit/vocon/e;->c:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/e;->b:Lcom/nuance/dragon/toolkit/util/WorkerThread;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/util/WorkerThread;->stop()V

    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/e;->b:Lcom/nuance/dragon/toolkit/util/WorkerThread;

    :cond_0
    return-void
.end method

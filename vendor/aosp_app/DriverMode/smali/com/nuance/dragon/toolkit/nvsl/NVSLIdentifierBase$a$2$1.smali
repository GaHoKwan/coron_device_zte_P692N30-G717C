.class final Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/nvsl/NativeNVSL$NVSLAudioListener;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2$1;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCanceled()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2$1;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2;->d:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->b(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2$1$4;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2$1$4;-><init>(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onGetAudioChunk(I)Lcom/nuance/dragon/toolkit/audio/AudioChunk;
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2$1;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2;->b:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v0

    div-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/audio/AudioType;->getDuration(I)I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2$1;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2;

    iget-object v2, v2, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2;->d:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    invoke-static {v2, v0, v1}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->a(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2$1;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2;->d:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->a(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;I)Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onSignalUpdate(I)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2$1;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2;->d:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->a(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;)Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$SignalListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2$1;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2;->d:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->b(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2$1$3;

    invoke-direct {v1, p0, p1}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2$1$3;-><init>(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onStartAudioPull()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2$1;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2;->d:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->b(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2$1$1;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2$1$1;-><init>(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onStopAudioPull()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2$1;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2;->d:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->b(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2$1$2;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2$1$2;-><init>(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

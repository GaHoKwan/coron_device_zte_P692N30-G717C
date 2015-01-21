.class final Lcom/nuance/dragon/toolkit/audio/nat/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio$Recorder;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:I

.field final synthetic d:Lcom/nuance/dragon/toolkit/audio/nat/b;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/audio/nat/b;Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio$Recorder;Landroid/os/Handler;I)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/nat/b$1;->d:Lcom/nuance/dragon/toolkit/audio/nat/b;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/audio/nat/b$1;->a:Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio$Recorder;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/audio/nat/b$1;->b:Landroid/os/Handler;

    iput p4, p0, Lcom/nuance/dragon/toolkit/audio/nat/b$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/b$1;->a:Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio$Recorder;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/nat/b$1;->d:Lcom/nuance/dragon/toolkit/audio/nat/b;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/audio/nat/b;->a(Lcom/nuance/dragon/toolkit/audio/nat/b;)Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio$Recorder;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/b$1;->d:Lcom/nuance/dragon/toolkit/audio/nat/b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/nat/b;->a(Lcom/nuance/dragon/toolkit/audio/nat/b;)Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio$Recorder;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio$Recorder;->read()Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/nat/b$1;->d:Lcom/nuance/dragon/toolkit/audio/nat/b;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/audio/nat/b;->b(Lcom/nuance/dragon/toolkit/audio/nat/b;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/nat/b$1;->d:Lcom/nuance/dragon/toolkit/audio/nat/b;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/audio/nat/b;->c(Lcom/nuance/dragon/toolkit/audio/nat/b;)Z

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/nat/b$1;->d:Lcom/nuance/dragon/toolkit/audio/nat/b;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/audio/nat/b;->d(Lcom/nuance/dragon/toolkit/audio/nat/b;)V

    :cond_3
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/nat/b$1;->d:Lcom/nuance/dragon/toolkit/audio/nat/b;

    invoke-static {v1, v0}, Lcom/nuance/dragon/toolkit/audio/nat/b;->a(Lcom/nuance/dragon/toolkit/audio/nat/b;Lcom/nuance/dragon/toolkit/audio/AudioChunk;)V

    :cond_4
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/b$1;->d:Lcom/nuance/dragon/toolkit/audio/nat/b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/nat/b;->e(Lcom/nuance/dragon/toolkit/audio/nat/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/b$1;->b:Landroid/os/Handler;

    iget v1, p0, Lcom/nuance/dragon/toolkit/audio/nat/b$1;->c:I

    div-int/lit8 v1, v1, 0x2

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

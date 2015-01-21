.class final Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImpersonator$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImpersonator;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImpersonator;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImpersonator$1;->b:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImpersonator;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImpersonator$1;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/AudioType;->PCM_16k:Lcom/nuance/dragon/toolkit/audio/AudioType;

    const/16 v2, 0x140

    new-array v2, v2, [S

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/audio/AudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[S)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImpersonator$1;->b:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImpersonator;

    invoke-virtual {v1, v0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImpersonator;->handleNewAudio(Lcom/nuance/dragon/toolkit/audio/AudioChunk;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImpersonator$1;->b:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImpersonator;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImpersonator;->a(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImpersonator;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImpersonator$1;->a:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImpersonator$1;->b:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImpersonator;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImpersonator$1;->b:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImpersonator;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImpersonator;->b(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImpersonator;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImpersonator$1;->b:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImpersonator;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImpersonator;->c(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImpersonator;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImpersonator$1;->b:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImpersonator;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImpersonator;->handleSourceClosed()V

    goto :goto_0
.end method

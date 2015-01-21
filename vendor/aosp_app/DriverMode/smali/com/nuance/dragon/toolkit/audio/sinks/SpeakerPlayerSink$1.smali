.class final Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;

.field private c:Z


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;I)V
    .locals 1

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink$1;->b:Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;

    iput p2, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink$1;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink$1;->b:Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->a(Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink$1;->b:Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->b(Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink$1;->b:Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->c(Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;)I

    move-result v0

    iget-boolean v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink$1;->c:Z

    if-nez v1, :cond_2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink$1;->b:Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->handleStarted()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink$1;->b:Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->a(Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink$1;->c:Z

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink$1;->b:Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->a(Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink$1;->b:Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->d(Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;)Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink$1;->a:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.class final Lcom/nuance/dragon/toolkit/vocon/d$c$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/vocon/NativeVocon$RecognitionListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/nuance/dragon/toolkit/vocon/d$c$4;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocon/d$c$4;I)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$4$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$c$4;

    iput p2, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$4$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCanceled()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$4$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$c$4;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$c$4;->i:Lcom/nuance/dragon/toolkit/vocon/d$c;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$c;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->b(Lcom/nuance/dragon/toolkit/vocon/d;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nuance/dragon/toolkit/vocon/d$c$4$1$1;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/vocon/d$c$4$1$1;-><init>(Lcom/nuance/dragon/toolkit/vocon/d$c$4$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onEndOfSpeech()V
    .locals 0

    return-void
.end method

.method public final onGetAudioChunk(I)Lcom/nuance/dragon/toolkit/audio/AudioChunk;
    .locals 5

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$4$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$c$4;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$c$4;->i:Lcom/nuance/dragon/toolkit/vocon/d$c;

    iget v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$4$1;->a:I

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/d$c;->a(Lcom/nuance/dragon/toolkit/vocon/d$c;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$4$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$c$4;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$c$4;->i:Lcom/nuance/dragon/toolkit/vocon/d$c;

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/vocon/d$c;->b(Lcom/nuance/dragon/toolkit/vocon/d$c;I)Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$4$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$c$4;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/vocon/d$c$4;->i:Lcom/nuance/dragon/toolkit/vocon/d$c;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/vocon/d$c;->c(Lcom/nuance/dragon/toolkit/vocon/d$c;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$4$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$c$4;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/vocon/d$c$4;->i:Lcom/nuance/dragon/toolkit/vocon/d$c;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/nuance/dragon/toolkit/vocon/d$c;->a(Lcom/nuance/dragon/toolkit/vocon/d$c;J)J

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onHasAudioChunk()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$4$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$c$4;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$c$4;->i:Lcom/nuance/dragon/toolkit/vocon/d$c;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d$c;->b(Lcom/nuance/dragon/toolkit/vocon/d$c;)Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onRecognitionResult(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$4$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$c$4;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/vocon/d$c$4;->i:Lcom/nuance/dragon/toolkit/vocon/d$c;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/vocon/d$c;->c(Lcom/nuance/dragon/toolkit/vocon/d$c;)J

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconResult;-><init>(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$4$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$c$4;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/vocon/d$c$4;->i:Lcom/nuance/dragon/toolkit/vocon/d$c;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/vocon/d$c;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/vocon/d;->b(Lcom/nuance/dragon/toolkit/vocon/d;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/nuance/dragon/toolkit/vocon/d$c$4$1$2;

    invoke-direct {v2, p0, v0}, Lcom/nuance/dragon/toolkit/vocon/d$c$4$1$2;-><init>(Lcom/nuance/dragon/toolkit/vocon/d$c$4$1;Lcom/nuance/dragon/toolkit/vocon/VoconResult;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onSignalUpdate(I)V
    .locals 0

    return-void
.end method

.method public final onSignalWarning(I)V
    .locals 0

    return-void
.end method

.method public final onStartAudioPull()V
    .locals 0

    return-void
.end method

.method public final onStartOfSpeech()V
    .locals 0

    return-void
.end method

.method public final onStopAudioPull()V
    .locals 0

    return-void
.end method

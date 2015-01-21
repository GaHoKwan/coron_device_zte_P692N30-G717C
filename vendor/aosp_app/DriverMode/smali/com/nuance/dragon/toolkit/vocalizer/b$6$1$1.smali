.class final Lcom/nuance/dragon/toolkit/vocalizer/b$6$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/audio/AudioChunk;

.field final synthetic b:Z

.field final synthetic c:Lcom/nuance/dragon/toolkit/vocalizer/b$6$1;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocalizer/b$6$1;Lcom/nuance/dragon/toolkit/audio/AudioChunk;Z)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$6$1$1;->c:Lcom/nuance/dragon/toolkit/vocalizer/b$6$1;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$6$1$1;->a:Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iput-boolean p3, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$6$1$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$6$1$1;->c:Lcom/nuance/dragon/toolkit/vocalizer/b$6$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocalizer/b$6$1;->a:Lcom/nuance/dragon/toolkit/vocalizer/b$6;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocalizer/b$6;->a:Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$6$1$1;->c:Lcom/nuance/dragon/toolkit/vocalizer/b$6$1;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/vocalizer/b$6$1;->a:Lcom/nuance/dragon/toolkit/vocalizer/b$6;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/vocalizer/b$6;->b:Lcom/nuance/dragon/toolkit/vocalizer/b;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/vocalizer/b;->c(Lcom/nuance/dragon/toolkit/vocalizer/b;)Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;

    move-result-object v1

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$6$1$1;->c:Lcom/nuance/dragon/toolkit/vocalizer/b$6$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocalizer/b$6$1;->a:Lcom/nuance/dragon/toolkit/vocalizer/b$6;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocalizer/b$6;->a:Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$6$1$1;->c:Lcom/nuance/dragon/toolkit/vocalizer/b$6$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocalizer/b$6$1;->a:Lcom/nuance/dragon/toolkit/vocalizer/b$6;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocalizer/b$6;->b:Lcom/nuance/dragon/toolkit/vocalizer/b;

    const-string v1, "TTS job was completed, but still in queue!"

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$6$1$1;->c:Lcom/nuance/dragon/toolkit/vocalizer/b$6$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocalizer/b$6$1;->a:Lcom/nuance/dragon/toolkit/vocalizer/b$6;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocalizer/b$6;->b:Lcom/nuance/dragon/toolkit/vocalizer/b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocalizer/b;->d(Lcom/nuance/dragon/toolkit/vocalizer/b;)Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$6$1$1;->a:Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$6$1$1;->c:Lcom/nuance/dragon/toolkit/vocalizer/b$6$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocalizer/b$6$1;->a:Lcom/nuance/dragon/toolkit/vocalizer/b$6;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocalizer/b$6;->a:Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$6$1$1;->a:Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->a(Lcom/nuance/dragon/toolkit/audio/AudioChunk;)V

    :cond_3
    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$6$1$1;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$6$1$1;->c:Lcom/nuance/dragon/toolkit/vocalizer/b$6$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocalizer/b$6$1;->a:Lcom/nuance/dragon/toolkit/vocalizer/b$6;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocalizer/b$6;->b:Lcom/nuance/dragon/toolkit/vocalizer/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Finished generating TTS for \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$6$1$1;->c:Lcom/nuance/dragon/toolkit/vocalizer/b$6$1;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/vocalizer/b$6$1;->a:Lcom/nuance/dragon/toolkit/vocalizer/b$6;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/vocalizer/b$6;->a:Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$6$1$1;->c:Lcom/nuance/dragon/toolkit/vocalizer/b$6$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocalizer/b$6$1;->a:Lcom/nuance/dragon/toolkit/vocalizer/b$6;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocalizer/b$6;->a:Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->a(Z)V

    goto :goto_0
.end method

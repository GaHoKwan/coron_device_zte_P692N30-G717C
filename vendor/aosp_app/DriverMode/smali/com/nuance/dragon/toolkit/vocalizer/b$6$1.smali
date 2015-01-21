.class final Lcom/nuance/dragon/toolkit/vocalizer/b$6$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizer$SpeakListener;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/vocalizer/b$6;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocalizer/b$6;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$6$1;->a:Lcom/nuance/dragon/toolkit/vocalizer/b$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNewChunk(Lcom/nuance/dragon/toolkit/audio/AudioChunk;Z)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$6$1;->a:Lcom/nuance/dragon/toolkit/vocalizer/b$6;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocalizer/b$6;->a:Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;

    iget v0, v0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->e:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$6$1;->a:Lcom/nuance/dragon/toolkit/vocalizer/b$6;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocalizer/b$6;->a:Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->getChunksAvailable()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$6$1;->a:Lcom/nuance/dragon/toolkit/vocalizer/b$6;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/vocalizer/b$6;->a:Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;

    iget v1, v1, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->e:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$6$1;->a:Lcom/nuance/dragon/toolkit/vocalizer/b$6;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/vocalizer/b$6;->a:Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;

    iget v1, v1, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->c:I

    mul-int/2addr v0, v1

    if-lez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wait "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms before generating more audio..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/internal/i;->a(J)V

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$6$1;->a:Lcom/nuance/dragon/toolkit/vocalizer/b$6;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocalizer/b$6;->b:Lcom/nuance/dragon/toolkit/vocalizer/b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocalizer/b;->b(Lcom/nuance/dragon/toolkit/vocalizer/b;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nuance/dragon/toolkit/vocalizer/b$6$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/nuance/dragon/toolkit/vocalizer/b$6$1$1;-><init>(Lcom/nuance/dragon/toolkit/vocalizer/b$6$1;Lcom/nuance/dragon/toolkit/audio/AudioChunk;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.class public abstract Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;
.super Ljava/lang/Object;


# static fields
.field public static final PCM_11K_SAMPLE_RATE_IN_HZ:I = 0x2b11

.field public static final PCM_11K_SAMPLE_SIZE_IN_BYTES:I = 0x2

.field public static final PCM_16K_SAMPLE_RATE_IN_HZ:I = 0x3e80

.field public static final PCM_16K_SAMPLE_SIZE_IN_BYTES:I = 0x2

.field public static final PCM_22K_SAMPLE_RATE_IN_HZ:I = 0x5622

.field public static final PCM_22K_SAMPLE_SIZE_IN_BYTES:I = 0x2

.field public static final PCM_44K_SAMPLE_RATE_IN_HZ:I = 0xac44

.field public static final PCM_44K_SAMPLE_SIZE_IN_BYTES:I = 0x2

.field public static final PCM_48K_SAMPLE_RATE_IN_HZ:I = 0xbb80

.field public static final PCM_48K_SAMPLE_SIZE_IN_BYTES:I = 0x2

.field public static final PCM_8K_SAMPLE_RATE_IN_HZ:I = 0x1f40

.field public static final PCM_8K_SAMPLE_SIZE_IN_BYTES:I = 0x2


# instance fields
.field public final audioBytes:[B

.field public final audioDuration:I

.field public final audioEndTimestamp:J

.field public final audioShorts:[S

.field public final audioSpeechStatus:Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;

.field public final audioTimestamp:J

.field public final audioTtsMarkers:[Lcom/nuance/dragon/toolkit/audio/TtsMarker;

.field public final audioType:Lcom/nuance/dragon/toolkit/audio/AudioType;


# direct methods
.method protected constructor <init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[S[BJILcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;[Lcom/nuance/dragon/toolkit/audio/TtsMarker;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;->audioType:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;->audioShorts:[S

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;->audioBytes:[B

    iput-wide p4, p0, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;->audioTimestamp:J

    int-to-long v0, p6

    add-long/2addr v0, p4

    iput-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;->audioEndTimestamp:J

    iput p6, p0, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;->audioDuration:I

    iput-object p7, p0, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;->audioSpeechStatus:Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;

    iput-object p8, p0, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;->audioTtsMarkers:[Lcom/nuance/dragon/toolkit/audio/TtsMarker;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v1, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;->audioType:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "], "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;->audioBytes:[B

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;->audioShorts:[S

    if-nez v2, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;->audioDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;->audioTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;->audioEndTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;->audioSpeechStatus:Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;->audioBytes:[B

    array-length v0, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;->audioShorts:[S

    array-length v1, v1

    goto :goto_1
.end method

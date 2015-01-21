.class public Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;
.super Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:Landroid/media/AudioTrack;

.field private c:I

.field private d:I

.field private e:I

.field private f:Z

.field private final g:Ljava/util/LinkedList;

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Landroid/os/Handler;

.field private l:I

.field private m:J

.field private final n:I

.field private o:I

.field private p:Z

.field private final q:Ljava/util/ArrayList;

.field private final r:Landroid/os/Handler;

.field private s:Lcom/nuance/dragon/toolkit/audio/TtsMarkerListener;

.field private t:Lcom/nuance/dragon/toolkit/audio/AudioEnergyListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(ILcom/nuance/dragon/toolkit/audio/AudioType;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;)V

    iput p1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->c:I

    return-void
.end method

.method public constructor <init>(Lcom/nuance/dragon/toolkit/audio/AudioType;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Lcom/nuance/dragon/toolkit/audio/AudioType;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;ILandroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Lcom/nuance/dragon/toolkit/audio/AudioType;ILandroid/os/Handler;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p3}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;Landroid/os/Handler;)V

    const/4 v1, 0x3

    iput v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->c:I

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->f:Z

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->g:Ljava/util/LinkedList;

    const-string v1, "bufferLengthMs"

    const-string v2, "greater than 0"

    if-lez p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v1, v2, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iput p2, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->n:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->q:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->r:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/dragon/toolkit/audio/AudioType;ILandroid/os/Handler;I)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p3}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;Landroid/os/Handler;)V

    const/4 v1, 0x3

    iput v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->c:I

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->f:Z

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->g:Ljava/util/LinkedList;

    const-string v1, "bufferLengthMs"

    const-string v2, "greater than 0"

    if-lez p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v1, v2, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iput p2, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->n:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->q:Ljava/util/ArrayList;

    iput p4, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->c:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->r:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/dragon/toolkit/audio/AudioType;Landroid/os/Handler;)V
    .locals 1

    const/16 v0, 0x190

    invoke-direct {p0, p1, v0, p2}, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;ILandroid/os/Handler;)V

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->i:Z

    return v0
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;)I
    .locals 15

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->p:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->b:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    iget v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->l:I

    if-lt v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->p:Z

    const-string v0, "Player stalled"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->e:I

    const/4 v11, 0x0

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move v9, v0

    :goto_2
    if-lez v9, :cond_b

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v0, v6, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    array-length v0, v0

    iget v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->h:I

    sub-int/2addr v0, v1

    if-le v0, v9, :cond_13

    move v8, v9

    :goto_3
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->b:Landroid/media/AudioTrack;

    iget-object v1, v6, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    iget v2, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->h:I

    invoke-virtual {v0, v1, v2, v8}, Landroid/media/AudioTrack;->write([SII)I

    move-result v13

    if-gez v13, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    iput v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->h:I

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->g:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move v9, v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    if-lez v13, :cond_7

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->p:Z

    if-nez v0, :cond_6

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->o:I

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->b:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v1

    if-eq v0, v1, :cond_6

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->o:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->p:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->b:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v4

    iget v5, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->o:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/nuance/dragon/toolkit/audio/AudioType;->getDuration(I)I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->m:J

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v10, v0

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->m:J

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/nuance/dragon/toolkit/audio/AudioType;->getDuration(I)I

    move-result v2

    int-to-long v2, v2

    add-long v3, v0, v2

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v1

    iget-object v2, v7, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    iget-object v5, v7, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioTtsMarkers:[Lcom/nuance/dragon/toolkit/audio/TtsMarker;

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/audio/AudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[SJ[Lcom/nuance/dragon/toolkit/audio/TtsMarker;)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v7, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    array-length v0, v0

    add-int/2addr v0, v10

    move v10, v0

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-boolean v0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->a:Z

    if-nez v0, :cond_5

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->l:I

    if-eq v10, v0, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    const-string v0, "Player unstalled"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->p:Z

    if-eqz v0, :cond_8

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->m:J

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v2

    iget v3, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->l:I

    invoke-virtual {v2, v3}, Lcom/nuance/dragon/toolkit/audio/AudioType;->getDuration(I)I

    move-result v2

    int-to-long v2, v2

    add-long v3, v0, v2

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v1

    iget-object v2, v6, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    iget v5, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->h:I

    invoke-static {v2, v5, v13}, Lcom/nuance/dragon/toolkit/util/internal/f;->a([SII)[S

    move-result-object v2

    iget-object v5, v6, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioTtsMarkers:[Lcom/nuance/dragon/toolkit/audio/TtsMarker;

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/audio/AudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[SJ[Lcom/nuance/dragon/toolkit/audio/TtsMarker;)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/2addr v11, v13

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->l:I

    add-int/2addr v0, v13

    iput v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->l:I

    :cond_7
    if-ge v13, v8, :cond_9

    const/4 v0, 0x0

    :goto_6
    iget v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->h:I

    add-int/2addr v1, v13

    iget-object v2, v6, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    array-length v2, v2

    if-ge v1, v2, :cond_a

    iget v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->h:I

    add-int/2addr v1, v13

    iput v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->h:I

    move v9, v0

    goto/16 :goto_2

    :cond_8
    new-instance v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v1

    iget-object v2, v6, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    iget v3, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->h:I

    invoke-static {v2, v3, v13}, Lcom/nuance/dragon/toolkit/util/internal/f;->a([SII)[S

    move-result-object v2

    iget-object v3, v6, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioTtsMarkers:[Lcom/nuance/dragon/toolkit/audio/TtsMarker;

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/dragon/toolkit/audio/AudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[S[Lcom/nuance/dragon/toolkit/audio/TtsMarker;)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    sub-int v0, v9, v13

    goto :goto_6

    :cond_a
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->g:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->h:I

    move v9, v0

    goto/16 :goto_2

    :cond_b
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0, v12}, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->handleChunksPlayed(Ljava/util/List;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->r:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink$2;

    invoke-direct {v1, p0, v12}, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink$2;-><init>(Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c
    if-nez v9, :cond_d

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->i:Z

    :cond_d
    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->getConnectedSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->j:Z

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->g:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    if-eqz v0, :cond_e

    invoke-virtual {v0, p0}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getChunksAvailableForSink(Lcom/nuance/dragon/toolkit/audio/AudioSink;)I

    move-result v0

    if-nez v0, :cond_12

    :cond_e
    if-lez v11, :cond_10

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->e:I

    if-ge v11, v0, :cond_10

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->e:I

    sub-int/2addr v0, v11

    new-array v0, v0, [S

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->b:Landroid/media/AudioTrack;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/AudioTrack;->write([SII)I

    :cond_f
    :goto_7
    move v0, v11

    goto/16 :goto_0

    :cond_10
    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->l:I

    iget v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->e:I

    if-lt v0, v1, :cond_11

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->b:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    iget v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->l:I

    sub-int/2addr v0, v1

    if-ltz v0, :cond_f

    :cond_11
    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->stopPlayingInternal()V

    goto :goto_7

    :cond_12
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->n:I

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->handleAudioNeeded(I)V

    goto :goto_7

    :cond_13
    move v8, v0

    goto/16 :goto_3
.end method

.method static synthetic d(Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->k:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;)Lcom/nuance/dragon/toolkit/audio/TtsMarkerListener;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->s:Lcom/nuance/dragon/toolkit/audio/TtsMarkerListener;

    return-object v0
.end method

.method static synthetic f(Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;)Lcom/nuance/dragon/toolkit/audio/AudioEnergyListener;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->t:Lcom/nuance/dragon/toolkit/audio/AudioEnergyListener;

    return-object v0
.end method


# virtual methods
.method protected isCodecSupported(Lcom/nuance/dragon/toolkit/audio/AudioType;)Z
    .locals 2

    iget-object v0, p1, Lcom/nuance/dragon/toolkit/audio/AudioType;->encoding:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->PCM_16:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected newChunksInternal(Ljava/util/List;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->g:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method protected noNewChunksInternal()V
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->j:Z

    :cond_0
    return-void
.end method

.method public setAudioEnergyListener(Lcom/nuance/dragon/toolkit/audio/AudioEnergyListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->t:Lcom/nuance/dragon/toolkit/audio/AudioEnergyListener;

    return-void
.end method

.method public setTtsMarkerListener(Lcom/nuance/dragon/toolkit/audio/TtsMarkerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->s:Lcom/nuance/dragon/toolkit/audio/TtsMarkerListener;

    return-void
.end method

.method protected startPlayingInternal(Lcom/nuance/dragon/toolkit/audio/AudioType;)Z
    .locals 9

    const/16 v0, 0x2b11

    const/16 v2, 0x1f40

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v1, p1, Lcom/nuance/dragon/toolkit/audio/AudioType;->encoding:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->PCM_16:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    iput-boolean v7, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->f:Z

    iput-boolean v7, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->j:Z

    iput v7, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->l:I

    iget v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->n:I

    div-int/lit8 v8, v1, 0x2

    iget v1, p1, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    if-ne v1, v2, :cond_0

    :goto_0
    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->n:I

    mul-int/lit8 v1, v2, 0x2

    mul-int/2addr v0, v1

    div-int/lit16 v1, v0, 0x3e8

    invoke-static {v2, v3, v3}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    const/4 v4, -0x2

    if-eq v0, v4, :cond_5

    const/4 v4, -0x1

    if-eq v0, v4, :cond_5

    if-le v0, v1, :cond_5

    :goto_1
    iput v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->d:I

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->d:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->e:I

    new-instance v0, Landroid/media/AudioTrack;

    iget v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->c:I

    iget v5, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->d:I

    move v4, v3

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->b:Landroid/media/AudioTrack;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->b:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-eq v0, v6, :cond_6

    const-string v0, "startPlayingInternal() instantiate AudioTrack failed!!!"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->stopPlayingInternal()V

    move v6, v7

    :goto_2
    return v6

    :cond_0
    iget v1, p1, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    if-ne v1, v0, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    const/16 v1, 0x5622

    if-ne v0, v1, :cond_2

    const/16 v2, 0x5622

    goto :goto_0

    :cond_2
    iget v0, p1, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    const v1, 0xac44

    if-ne v0, v1, :cond_3

    const v2, 0xac44

    goto :goto_0

    :cond_3
    iget v0, p1, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    const v1, 0xbb80

    if-ne v0, v1, :cond_4

    const v2, 0xbb80

    goto :goto_0

    :cond_4
    const/16 v2, 0x3e80

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    iput v7, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->o:I

    iput-boolean v7, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->p:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->k:Landroid/os/Handler;

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink$1;

    invoke-direct {v0, p0, v8}, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink$1;-><init>(Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;I)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->k:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->b:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    iput-boolean v6, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->i:Z

    goto :goto_2
.end method

.method protected stopPlayingInternal()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->f:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->f:Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->k:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->k:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->k:Landroid/os/Handler;

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->b:Landroid/media/AudioTrack;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->b:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->b:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->b:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->b:Landroid/media/AudioTrack;

    :cond_3
    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->handleStopped()V

    goto :goto_0
.end method

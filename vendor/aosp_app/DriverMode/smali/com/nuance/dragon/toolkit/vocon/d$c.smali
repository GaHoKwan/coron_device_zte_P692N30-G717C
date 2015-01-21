.class final Lcom/nuance/dragon/toolkit/vocon/d$c;
.super Lcom/nuance/dragon/toolkit/audio/AudioSink;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/vocon/d;

.field private b:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;

.field private c:Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;

.field private d:Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;

.field private final e:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$SignalListener;

.field private final f:Ljava/util/concurrent/LinkedBlockingQueue;

.field private g:Lcom/nuance/dragon/toolkit/audio/AudioChunk;

.field private h:I

.field private i:Z

.field private j:J


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocon/d;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$SignalListener;)V
    .locals 1

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/AudioSink;-><init>()V

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->b:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->c:Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->d:Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;

    iput-object p4, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->e:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$SignalListener;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/vocon/d$c;J)J
    .locals 0

    iput-wide p1, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->j:J

    return-wide p1
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/vocon/d$c;)Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$SignalListener;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->e:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$SignalListener;

    return-object v0
.end method

.method private a(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/Map;Ljava/util/List;Ljava/util/Map;ZZLcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;)V
    .locals 11

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v0

    iget v7, v0, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->e(Lcom/nuance/dragon/toolkit/vocon/d;)Landroid/os/Handler;

    move-result-object v10

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/d$c$4;

    move-object v1, p0

    move-object v2, p2

    move-object v4, p3

    move/from16 v5, p5

    move-object v6, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/nuance/dragon/toolkit/vocon/d$c$4;-><init>(Lcom/nuance/dragon/toolkit/vocon/d$c;Ljava/util/Map;Ljava/util/List;Ljava/util/List;ZLjava/util/Map;IZLcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Lcom/nuance/dragon/toolkit/vocon/VoconError;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->c(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/d$c;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->d(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/d$c;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->b:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->b:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;

    invoke-interface {v0, p1}, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;->onError(Lcom/nuance/dragon/toolkit/vocon/VoconError;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->b:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/vocon/d$c;Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/Map;Ljava/util/List;Ljava/util/Map;ZZLcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/nuance/dragon/toolkit/vocon/d$c;->a(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/Map;Ljava/util/List;Ljava/util/Map;ZZLcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;)V

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/vocon/d$c;Lcom/nuance/dragon/toolkit/vocon/VoconError;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/dragon/toolkit/vocon/d$c;->a(Lcom/nuance/dragon/toolkit/vocon/VoconError;)V

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/vocon/d$c;Lcom/nuance/dragon/toolkit/vocon/VoconResult;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->c(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/d$c;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->d(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/d$c;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->b:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->b:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;

    invoke-interface {v0, p1}, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;->onResult(Lcom/nuance/dragon/toolkit/vocon/VoconResult;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->b:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/vocon/d$c;Ljava/util/List;)V
    .locals 6

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/vocon/VoconContext;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->getSlotIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v4}, Lcom/nuance/dragon/toolkit/vocon/d;->a(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon;

    move-result-object v4

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Lcom/nuance/dragon/toolkit/vocon/NativeVocon;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/vocon/d;->a(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon;

    move-result-object v1

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nuance/dragon/toolkit/vocon/NativeVocon;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->b(Lcom/nuance/dragon/toolkit/vocon/d;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nuance/dragon/toolkit/vocon/d$c$5;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/vocon/d$c$5;-><init>(Lcom/nuance/dragon/toolkit/vocon/d$c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/vocon/d$c;I)Z
    .locals 2

    :goto_0
    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->g:Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    int-to-long v0, p1

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/internal/i;->a(J)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->i:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->g:Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/vocon/d$c;)Lcom/nuance/dragon/toolkit/audio/AudioChunk;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->g:Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    return-object v0
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/vocon/d$c;I)Lcom/nuance/dragon/toolkit/audio/AudioChunk;
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->g:Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->h:I

    add-int/2addr v0, p1

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->g:Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v2, v2, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    array-length v2, v2

    if-ge v0, v2, :cond_0

    new-array v1, p1, [S

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->g:Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    iget v2, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->h:I

    array-length v3, v1

    invoke-static {v0, v2, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->h:I

    array-length v2, v1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->h:I

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->g:Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v2, v2, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioType:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-direct {v0, v2, v1}, Lcom/nuance/dragon/toolkit/audio/AudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[S)V

    :goto_1
    return-object v0

    :cond_0
    iget v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->h:I

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->g:Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v2, v2, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->g:Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    array-length v0, v0

    iget v2, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->h:I

    sub-int/2addr v0, v2

    new-array v2, v0, [S

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->g:Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    iget v3, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->h:I

    array-length v4, v2

    invoke-static {v0, v3, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->g:Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v3, v3, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioType:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-direct {v0, v3, v2}, Lcom/nuance/dragon/toolkit/audio/AudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[S)V

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->g:Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iput v5, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->h:I

    goto :goto_1

    :cond_1
    iput v5, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->h:I

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->g:Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->g:Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->remove()Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/vocon/d$c;)J
    .locals 2

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->j:J

    return-wide v0
.end method

.method static synthetic d(Lcom/nuance/dragon/toolkit/vocon/d$c;)Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->c:Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;

    return-object v0
.end method

.method static synthetic e(Lcom/nuance/dragon/toolkit/vocon/d$c;)Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->c:Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;

    return-object v0
.end method

.method static synthetic f(Lcom/nuance/dragon/toolkit/vocon/d$c;)Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->d:Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;

    return-object v0
.end method

.method static synthetic g(Lcom/nuance/dragon/toolkit/vocon/d$c;)Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->d:Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;

    return-object v0
.end method

.method static synthetic h(Lcom/nuance/dragon/toolkit/vocon/d$c;)Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->b:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;

    return-object v0
.end method

.method static synthetic i(Lcom/nuance/dragon/toolkit/vocon/d$c;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->i:Z

    return v0
.end method

.method static synthetic j(Lcom/nuance/dragon/toolkit/vocon/d$c;)Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->b:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;

    return-object v0
.end method

.method static synthetic k(Lcom/nuance/dragon/toolkit/vocon/d$c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->i:Z

    return v0
.end method


# virtual methods
.method final a()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/vocon/d$c;->a(Z)V

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconError;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/VoconError;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/nuance/dragon/toolkit/vocon/d$c;->a(Lcom/nuance/dragon/toolkit/vocon/VoconError;)V

    return-void
.end method

.method final a(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/Map;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->i:Z

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v0

    iget v0, v0, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/vocon/d;->e(Lcom/nuance/dragon/toolkit/vocon/d;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/nuance/dragon/toolkit/vocon/d$c$2;

    invoke-direct {v2, p0, p2, v0, p1}, Lcom/nuance/dragon/toolkit/vocon/d$c$2;-><init>(Lcom/nuance/dragon/toolkit/vocon/d$c;Ljava/util/Map;ILcom/nuance/dragon/toolkit/audio/AudioSource;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final a(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/Map;Ljava/util/List;)V
    .locals 7

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v0

    iget v4, v0, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->i:Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->e(Lcom/nuance/dragon/toolkit/vocon/d;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/d$c$1;

    move-object v1, p0

    move-object v2, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/vocon/d$c$1;-><init>(Lcom/nuance/dragon/toolkit/vocon/d$c;Ljava/util/Map;Ljava/util/List;ILcom/nuance/dragon/toolkit/audio/AudioSource;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final a(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/Map;Ljava/util/List;IZ)V
    .locals 13

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Ctx;->TSILENCE:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/16 v1, 0x258

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Ctx;->TSILENCE_FX:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/16 v1, 0x12c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Ctx;->MAXNBEST:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Ctx;->MAXNBEST_SECONDPASS:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p5, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v1

    mul-int v4, v0, v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->i:Z

    invoke-virtual {p0, p1}, Lcom/nuance/dragon/toolkit/vocon/d$c;->connectAudioSource(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    const/4 v11, 0x1

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/d$c$3;

    move-object v1, p0

    move/from16 v5, p4

    move-object v6, p1

    move-object v7, p2

    move-object/from16 v8, p3

    move/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Lcom/nuance/dragon/toolkit/vocon/d$c$3;-><init>(Lcom/nuance/dragon/toolkit/vocon/d$c;Ljava/util/List;Ljava/util/List;IILcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/Map;Ljava/util/List;Ljava/util/Map;Z)V

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object/from16 v8, p3

    move/from16 v10, p5

    move-object v12, v0

    invoke-direct/range {v5 .. v12}, Lcom/nuance/dragon/toolkit/vocon/d$c;->a(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/Map;Ljava/util/List;Ljava/util/Map;ZZLcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method final a(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->c:Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->d:Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->a(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/vocon/NativeVocon;->c()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->i:Z

    return-void
.end method

.method public final chunksAvailable(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->c(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/d$c;

    move-result-object v0

    if-eq v0, p0, :cond_0

    const-string v0, "Got audio for old recognition"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1, p0}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getAllAudioChunksForSink(Lcom/nuance/dragon/toolkit/audio/AudioSink;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public final framesDropped(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->c(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/d$c;

    move-result-object v0

    if-eq p0, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconError;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/VoconError;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/nuance/dragon/toolkit/vocon/d$c;->a(Lcom/nuance/dragon/toolkit/vocon/VoconError;)V

    goto :goto_0
.end method

.method public final sourceClosed(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->c(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/d$c;

    move-result-object v0

    if-eq p0, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/vocon/d$c;->a(Z)V

    goto :goto_0
.end method

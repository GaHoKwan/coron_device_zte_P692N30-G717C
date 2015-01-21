.class final Lcom/nuance/dragon/toolkit/elvis/a$b;
.super Lcom/nuance/dragon/toolkit/audio/AudioSink;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/elvis/a;

.field private final b:Lcom/nuance/dragon/toolkit/elvis/Grammar;

.field private c:Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$ResultListener;

.field private d:Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$AdaptationStepListener;

.field private e:Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;

.field private f:Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;

.field private g:Z

.field private h:Lcom/nuance/dragon/toolkit/elvis/a$c;

.field private i:Z

.field private j:Z

.field private k:[S


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/elvis/a;Lcom/nuance/dragon/toolkit/elvis/Grammar;Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$ResultListener;Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$AdaptationStepListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/AudioSink;-><init>()V

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->b:Lcom/nuance/dragon/toolkit/elvis/Grammar;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->c:Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$ResultListener;

    iput-object p4, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->e:Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;

    iput-object p4, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->f:Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;

    iput-object p5, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->d:Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$AdaptationStepListener;

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/elvis/a$b;Lcom/nuance/dragon/toolkit/elvis/a$c;)Lcom/nuance/dragon/toolkit/elvis/a$c;
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->h:Lcom/nuance/dragon/toolkit/elvis/a$c;

    return-object p1
.end method

.method private a(Lcom/nuance/dragon/toolkit/elvis/ElvisError;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a;->d(Lcom/nuance/dragon/toolkit/elvis/a;)Lcom/nuance/dragon/toolkit/elvis/a$b;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a;->e(Lcom/nuance/dragon/toolkit/elvis/a;)Lcom/nuance/dragon/toolkit/elvis/a$b;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->c:Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$ResultListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->c:Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$ResultListener;

    invoke-interface {v0, p1}, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$ResultListener;->onError(Lcom/nuance/dragon/toolkit/elvis/ElvisError;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->c:Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$ResultListener;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/elvis/a$b;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/dragon/toolkit/elvis/a$b$6;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/elvis/a$b$6;-><init>(Lcom/nuance/dragon/toolkit/elvis/a$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/elvis/a$b;Lcom/nuance/dragon/toolkit/elvis/ElvisError;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/dragon/toolkit/elvis/a$b;->a(Lcom/nuance/dragon/toolkit/elvis/ElvisError;)V

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/elvis/a$b;Lcom/nuance/dragon/toolkit/elvis/ElvisResult;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a;->d(Lcom/nuance/dragon/toolkit/elvis/a;)Lcom/nuance/dragon/toolkit/elvis/a$b;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a;->e(Lcom/nuance/dragon/toolkit/elvis/a;)Lcom/nuance/dragon/toolkit/elvis/a$b;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->c:Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$ResultListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->c:Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$ResultListener;

    invoke-interface {v0, p1}, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$ResultListener;->onResult(Lcom/nuance/dragon/toolkit/elvis/ElvisResult;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->c:Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$ResultListener;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/elvis/a$b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/elvis/a$b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->j:Z

    return v0
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/elvis/a$b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->j:Z

    return p1
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/elvis/a$b;)Lcom/nuance/dragon/toolkit/elvis/a$c;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->h:Lcom/nuance/dragon/toolkit/elvis/a$c;

    return-object v0
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/elvis/a$b;Z)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a;->d(Lcom/nuance/dragon/toolkit/elvis/a;)Lcom/nuance/dragon/toolkit/elvis/a$b;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a;->e(Lcom/nuance/dragon/toolkit/elvis/a;)Lcom/nuance/dragon/toolkit/elvis/a$b;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->d:Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$AdaptationStepListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->d:Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$AdaptationStepListener;

    invoke-interface {v0, p1}, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$AdaptationStepListener;->onComplete(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->d:Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$AdaptationStepListener;

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/nuance/dragon/toolkit/elvis/a$b;)Lcom/nuance/dragon/toolkit/elvis/Grammar;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->b:Lcom/nuance/dragon/toolkit/elvis/Grammar;

    return-object v0
.end method

.method static synthetic e(Lcom/nuance/dragon/toolkit/elvis/a$b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->i:Z

    return v0
.end method

.method static synthetic f(Lcom/nuance/dragon/toolkit/elvis/a$b;)Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->e:Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;

    return-object v0
.end method

.method static synthetic g(Lcom/nuance/dragon/toolkit/elvis/a$b;)Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->e:Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;

    return-object v0
.end method

.method static synthetic h(Lcom/nuance/dragon/toolkit/elvis/a$b;)Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->f:Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;

    return-object v0
.end method

.method static synthetic i(Lcom/nuance/dragon/toolkit/elvis/a$b;)Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->f:Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;

    return-object v0
.end method

.method static synthetic j(Lcom/nuance/dragon/toolkit/elvis/a$b;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->g:Z

    return v0
.end method


# virtual methods
.method final a()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/elvis/a$b;->a(Z)V

    new-instance v0, Lcom/nuance/dragon/toolkit/elvis/ElvisError;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/ElvisError;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/nuance/dragon/toolkit/elvis/a$b;->a(Lcom/nuance/dragon/toolkit/elvis/ElvisError;)V

    return-void
.end method

.method final a(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/lang/String;Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->g:Z

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->g:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->k:[S

    invoke-virtual {p0, p1}, Lcom/nuance/dragon/toolkit/elvis/a$b;->connectAudioSource(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a;->c(Lcom/nuance/dragon/toolkit/elvis/a;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nuance/dragon/toolkit/elvis/a$b$3;

    invoke-direct {v1, p0, p3, p2}, Lcom/nuance/dragon/toolkit/elvis/a$b$3;-><init>(Lcom/nuance/dragon/toolkit/elvis/a$b;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method final a(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/List;)V
    .locals 2

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->g:Z

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->g:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->k:[S

    invoke-virtual {p0, p1}, Lcom/nuance/dragon/toolkit/elvis/a$b;->connectAudioSource(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a;->c(Lcom/nuance/dragon/toolkit/elvis/a;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nuance/dragon/toolkit/elvis/a$b$1;

    invoke-direct {v1, p0, p2}, Lcom/nuance/dragon/toolkit/elvis/a$b$1;-><init>(Lcom/nuance/dragon/toolkit/elvis/a$b;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method final a(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/List;IZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->g:Z

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->g:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->k:[S

    invoke-virtual {p0, p1}, Lcom/nuance/dragon/toolkit/elvis/a$b;->connectAudioSource(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a;->c(Lcom/nuance/dragon/toolkit/elvis/a;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nuance/dragon/toolkit/elvis/a$b$2;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/nuance/dragon/toolkit/elvis/a$b$2;-><init>(Lcom/nuance/dragon/toolkit/elvis/a$b;Ljava/util/List;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method final a(Z)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->e:Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->f:Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/elvis/a$b;->disconnectAudioSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->g:Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a;->c(Lcom/nuance/dragon/toolkit/elvis/a;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nuance/dragon/toolkit/elvis/a$b$4;

    invoke-direct {v1, p0, p1}, Lcom/nuance/dragon/toolkit/elvis/a$b$4;-><init>(Lcom/nuance/dragon/toolkit/elvis/a$b;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final chunksAvailable(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V
    .locals 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a;->d(Lcom/nuance/dragon/toolkit/elvis/a;)Lcom/nuance/dragon/toolkit/elvis/a$b;

    move-result-object v0

    if-eq v0, p0, :cond_1

    const-string v0, "Got audio for old recognition"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1, p0}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getAllAudioChunksForSink(Lcom/nuance/dragon/toolkit/audio/AudioSink;)Ljava/util/List;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->k:[S

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->k:[S

    array-length v3, v3

    iget-object v5, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    array-length v5, v5

    add-int/2addr v3, v5

    new-array v3, v3, [S

    iget-object v5, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->k:[S

    iget-object v6, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->k:[S

    array-length v6, v6

    invoke-static {v5, v2, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    iget-object v6, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->k:[S

    array-length v6, v6

    iget-object v7, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    array-length v7, v7

    invoke-static {v5, v2, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->k:[S

    :goto_1
    array-length v5, v3

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioType:Lcom/nuance/dragon/toolkit/audio/AudioType;

    const/16 v6, 0x28

    invoke-virtual {v0, v6}, Lcom/nuance/dragon/toolkit/audio/AudioType;->getSampleCount(I)I

    move-result v0

    if-ge v5, v0, :cond_3

    iput-object v3, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->k:[S

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v3, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a;->c(Lcom/nuance/dragon/toolkit/elvis/a;)Landroid/os/Handler;

    move-result-object v0

    new-instance v5, Lcom/nuance/dragon/toolkit/elvis/a$b$5;

    invoke-direct {v5, p0, v3}, Lcom/nuance/dragon/toolkit/elvis/a$b$5;-><init>(Lcom/nuance/dragon/toolkit/elvis/a$b;[S)V

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method public final framesDropped(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a;->d(Lcom/nuance/dragon/toolkit/elvis/a;)Lcom/nuance/dragon/toolkit/elvis/a$b;

    move-result-object v0

    if-eq v0, p0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/nuance/dragon/toolkit/elvis/ElvisError;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/ElvisError;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/nuance/dragon/toolkit/elvis/a$b;->a(Lcom/nuance/dragon/toolkit/elvis/ElvisError;)V

    goto :goto_0
.end method

.method public final sourceClosed(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a;->d(Lcom/nuance/dragon/toolkit/elvis/a;)Lcom/nuance/dragon/toolkit/elvis/a$b;

    move-result-object v0

    if-eq v0, p0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/elvis/a$b;->a(Z)V

    goto :goto_0
.end method

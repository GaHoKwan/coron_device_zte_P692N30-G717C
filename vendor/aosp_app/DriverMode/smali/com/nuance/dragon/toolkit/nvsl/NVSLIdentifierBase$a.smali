.class final Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;
.super Lcom/nuance/dragon/toolkit/audio/AudioSink;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;

.field private b:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$ResultListener;

.field private final c:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$SignalListener;

.field private d:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$AdaptationStepListener;

.field private final e:Ljava/util/concurrent/LinkedBlockingQueue;

.field private f:Lcom/nuance/dragon/toolkit/audio/AudioChunk;

.field private g:I

.field private h:Z

.field private i:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$b;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$ResultListener;Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$SignalListener;Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$AdaptationStepListener;)V
    .locals 1

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/AudioSink;-><init>()V

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->b:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$ResultListener;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->c:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$SignalListener;

    iput-object p4, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->d:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$AdaptationStepListener;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;I)Lcom/nuance/dragon/toolkit/audio/AudioChunk;
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->f:Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->g:I

    add-int/2addr v0, p1

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->f:Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v2, v2, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    array-length v2, v2

    if-ge v0, v2, :cond_0

    new-array v1, p1, [S

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->f:Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    iget v2, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->g:I

    array-length v3, v1

    invoke-static {v0, v2, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->g:I

    array-length v2, v1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->g:I

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->f:Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v2, v2, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioType:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-direct {v0, v2, v1}, Lcom/nuance/dragon/toolkit/audio/AudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[S)V

    :goto_1
    return-object v0

    :cond_0
    iget v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->g:I

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->f:Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v2, v2, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->f:Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    array-length v0, v0

    iget v2, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->g:I

    sub-int/2addr v0, v2

    new-array v2, v0, [S

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->f:Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    iget v3, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->g:I

    array-length v4, v2

    invoke-static {v0, v3, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->f:Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v3, v3, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioType:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-direct {v0, v3, v2}, Lcom/nuance/dragon/toolkit/audio/AudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[S)V

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->f:Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iput v5, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->g:I

    goto :goto_1

    :cond_1
    iput v5, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->g:I

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->f:Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->f:Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->remove()Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;)Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$SignalListener;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->c:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$SignalListener;

    return-object v0
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$b;)Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$b;
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->i:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$b;

    return-object p1
.end method

.method private a(Lcom/nuance/dragon/toolkit/nvsl/NVSLError;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->f(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;)Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->g(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;)Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->b:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$ResultListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->b:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$ResultListener;

    invoke-interface {v0, p1}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$ResultListener;->onError(Lcom/nuance/dragon/toolkit/nvsl/NVSLError;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->b:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$ResultListener;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;Lcom/nuance/dragon/toolkit/nvsl/NVSLError;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->a(Lcom/nuance/dragon/toolkit/nvsl/NVSLError;)V

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->f(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;)Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->g(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;)Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->b:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$ResultListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->b:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$ResultListener;

    invoke-interface {v0, p1}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$ResultListener;->onResult(Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->b:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$ResultListener;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->b(Z)V

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;J)Z
    .locals 1

    :goto_0
    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->f:Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/nuance/dragon/toolkit/util/internal/i;->a(J)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->h:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->f:Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->e:Ljava/util/concurrent/LinkedBlockingQueue;

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

.method static synthetic b(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->b(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$3;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$3;-><init>(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->f(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;)Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->g(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;)Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->d:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$AdaptationStepListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->d:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$AdaptationStepListener;

    invoke-interface {v0, p1}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$AdaptationStepListener;->onComplete(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->d:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$AdaptationStepListener;

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;)Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$b;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->i:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$b;

    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->a(Z)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->i:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$b;

    sget-object v1, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$b;->b:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$b;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v2}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->b(Z)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/nuance/dragon/toolkit/nvsl/NVSLError;

    invoke-direct {v0, v2}, Lcom/nuance/dragon/toolkit/nvsl/NVSLError;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->a(Lcom/nuance/dragon/toolkit/nvsl/NVSLError;)V

    goto :goto_0
.end method

.method final a(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/nvsl/NVSLVoiceprint;Z)V
    .locals 2

    invoke-virtual {p2}, Lcom/nuance/dragon/toolkit/nvsl/NVSLVoiceprint;->getConfigSetName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->c(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/nuance/dragon/toolkit/nvsl/NVSLVoiceprint;->getConfigSetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/nuance/dragon/toolkit/nvsl/NVSLError;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/nuance/dragon/toolkit/nvsl/NVSLError;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->a(Lcom/nuance/dragon/toolkit/nvsl/NVSLError;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->h:Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->e(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2;-><init>(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;Lcom/nuance/dragon/toolkit/nvsl/NVSLVoiceprint;Lcom/nuance/dragon/toolkit/audio/AudioSource;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method final a(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/List;Z)V
    .locals 2

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->a(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/nuance/dragon/toolkit/nvsl/NVSLError;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/nuance/dragon/toolkit/nvsl/NVSLError;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->a(Lcom/nuance/dragon/toolkit/nvsl/NVSLError;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->h:Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->e(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1;-><init>(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;Lcom/nuance/dragon/toolkit/audio/AudioSource;ZLjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method final a(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->h:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->d(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;)Lcom/nuance/dragon/toolkit/nvsl/NativeNVSL;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/nvsl/NativeNVSL;->b()V

    :cond_0
    return-void
.end method

.method public final chunksAvailable(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->f(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;)Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    move-result-object v0

    if-eq p0, v0, :cond_0

    const-string v0, "Got audio for old identification/enrollment/adaption"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1, p0}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getAllAudioChunksForSink(Lcom/nuance/dragon/toolkit/audio/AudioSink;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public final framesDropped(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->f(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;)Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    move-result-object v0

    if-eq p0, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/nuance/dragon/toolkit/nvsl/NVSLError;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/nuance/dragon/toolkit/nvsl/NVSLError;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->a(Lcom/nuance/dragon/toolkit/nvsl/NVSLError;)V

    goto :goto_0
.end method

.method public final sourceClosed(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->f(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;)Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    move-result-object v0

    if-eq p0, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->a(Z)V

    goto :goto_0
.end method

.class public Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;
.super Lcom/nuance/dragon/toolkit/cloudservices/Param;


# instance fields
.field private final c:Lcom/nuance/dragon/toolkit/audio/AudioSource;

.field private final d:Lcom/nuance/dragon/toolkit/audio/AudioSink;

.field private e:Lcom/nuance/dragon/toolkit/cloudservices/Param$a;

.field private f:Lcom/nuance/dragon/toolkit/cloudservices/d;

.field private g:Z

.field private final h:Ljava/util/List;

.field private final i:[Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/audio/AudioSource;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1}, Lcom/nuance/dragon/toolkit/cloudservices/Param;-><init>(ILjava/lang/String;)V

    const-string v0, "source"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->c:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    iput-boolean v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->g:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->h:Ljava/util/List;

    new-array v0, v1, [Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->i:[Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->i:[Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v2

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam$1;

    invoke-direct {v0, p0, p1}, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam$1;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->d:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->d:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    invoke-virtual {v0, p2}, Lcom/nuance/dragon/toolkit/audio/AudioSink;->connectAudioSource(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;)Lcom/nuance/dragon/toolkit/audio/AudioSource;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->c:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    return-object v0
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;)Lcom/nuance/dragon/toolkit/cloudservices/Param$a;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->e:Lcom/nuance/dragon/toolkit/cloudservices/Param$a;

    return-object v0
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;)Lcom/nuance/dragon/toolkit/audio/AudioSink;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->d:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    return-object v0
.end method

.method static synthetic d(Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;)Lcom/nuance/dragon/toolkit/cloudservices/d;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->f:Lcom/nuance/dragon/toolkit/cloudservices/d;

    return-object v0
.end method

.method static synthetic e(Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->g:Z

    return v0
.end method

.method static synthetic g(Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;)Lcom/nuance/dragon/toolkit/cloudservices/Param$a;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->e:Lcom/nuance/dragon/toolkit/cloudservices/Param$a;

    return-object v0
.end method

.method static synthetic h(Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;)[Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->i:[Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic i(Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;)Lcom/nuance/dragon/toolkit/cloudservices/d;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->f:Lcom/nuance/dragon/toolkit/cloudservices/d;

    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->d:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/AudioSink;->disconnectAudioSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->e:Lcom/nuance/dragon/toolkit/cloudservices/Param$a;

    return-void
.end method

.method final a(Lcom/nuance/dragon/toolkit/cloudservices/d;Lcom/nuance/dragon/toolkit/cloudservices/Param$a;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/nuance/dragon/toolkit/cloudservices/d;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->g:Z

    if-nez v0, :cond_0

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->e:Lcom/nuance/dragon/toolkit/cloudservices/Param$a;

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->f:Lcom/nuance/dragon/toolkit/cloudservices/d;

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->a:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v3}, Lcom/nuance/dragon/toolkit/cloudservices/d;->a(Ljava/lang/String;Lcom/nuance/dragon/toolkit/audio/AudioChunk;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2
    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->g:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/nuance/dragon/toolkit/cloudservices/d;->a(Ljava/lang/String;Lcom/nuance/dragon/toolkit/audio/AudioChunk;Z)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->i:[Ljava/lang/Boolean;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p2, p0, v0}, Lcom/nuance/dragon/toolkit/cloudservices/Param$a;->a(Lcom/nuance/dragon/toolkit/cloudservices/Param;Z)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->g:Z

    :goto_1
    return v0

    :cond_3
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->c:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->d:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getChunksAvailableForSink(Lcom/nuance/dragon/toolkit/audio/AudioSink;)I

    move-result v0

    :goto_2
    add-int/lit8 v4, v0, -0x1

    if-lez v0, :cond_5

    iget-object v5, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->c:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->d:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getAudioChunkForSink(Lcom/nuance/dragon/toolkit/audio/AudioSink;)Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-boolean v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->g:Z

    if-eqz v1, :cond_4

    if-nez v4, :cond_4

    move v1, v2

    :goto_3
    invoke-interface {p1, v5, v0, v1}, Lcom/nuance/dragon/toolkit/cloudservices/d;->a(Ljava/lang/String;Lcom/nuance/dragon/toolkit/audio/AudioChunk;Z)V

    move v0, v4

    goto :goto_2

    :cond_4
    move v1, v3

    goto :goto_3

    :cond_5
    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->g:Z

    goto :goto_1
.end method

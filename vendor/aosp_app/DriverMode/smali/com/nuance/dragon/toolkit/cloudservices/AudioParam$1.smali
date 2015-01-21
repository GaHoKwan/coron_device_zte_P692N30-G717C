.class final Lcom/nuance/dragon/toolkit/cloudservices/AudioParam$1;
.super Lcom/nuance/dragon/toolkit/audio/AudioSink;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam$1;->b:Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/AudioSink;-><init>()V

    return-void
.end method


# virtual methods
.method public final chunksAvailable(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam$1;->b:Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->a(Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;)Lcom/nuance/dragon/toolkit/audio/AudioSource;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getChunksAvailableForSink(Lcom/nuance/dragon/toolkit/audio/AudioSink;)I

    move-result v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam$1;->b:Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->b(Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;)Lcom/nuance/dragon/toolkit/cloudservices/Param$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam$1;->b:Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->d(Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;)Lcom/nuance/dragon/toolkit/cloudservices/d;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam$1;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam$1;->b:Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->a(Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;)Lcom/nuance/dragon/toolkit/audio/AudioSource;

    move-result-object v0

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam$1;->b:Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;

    invoke-static {v4}, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->c(Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;)Lcom/nuance/dragon/toolkit/audio/AudioSink;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getAudioChunkForSink(Lcom/nuance/dragon/toolkit/audio/AudioSink;)Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4}, Lcom/nuance/dragon/toolkit/cloudservices/d;->a(Ljava/lang/String;Lcom/nuance/dragon/toolkit/audio/AudioChunk;Z)V

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam$1;->b:Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->e(Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam$1;->b:Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->a(Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;)Lcom/nuance/dragon/toolkit/audio/AudioSource;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam$1;->b:Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->c(Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;)Lcom/nuance/dragon/toolkit/audio/AudioSink;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getAudioChunkForSink(Lcom/nuance/dragon/toolkit/audio/AudioSink;)Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam$1;->b:Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error sending audio for param "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam$1;->b:Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->f(Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;)Z

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam$1;->disconnectAudioSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam$1;->b:Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->b(Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;)Lcom/nuance/dragon/toolkit/cloudservices/Param$a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam$1;->b:Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->b(Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;)Lcom/nuance/dragon/toolkit/cloudservices/Param$a;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam$1;->b:Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;

    invoke-interface {v0, v1, v6}, Lcom/nuance/dragon/toolkit/cloudservices/Param$a;->a(Lcom/nuance/dragon/toolkit/cloudservices/Param;Z)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam$1;->b:Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->g(Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;)Lcom/nuance/dragon/toolkit/cloudservices/Param$a;

    :goto_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam$1;->b:Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->i(Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;)Lcom/nuance/dragon/toolkit/cloudservices/d;

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam$1;->b:Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->h(Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;)[Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v5

    goto :goto_1
.end method

.method public final framesDropped(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V
    .locals 0

    return-void
.end method

.method public final sourceClosed(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam$1;->chunksAvailable(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam$1;->b:Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->f(Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;)Z

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam$1;->disconnectAudioSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    :try_start_0
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam$1;->b:Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->b(Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;)Lcom/nuance/dragon/toolkit/cloudservices/Param$a;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam$1;->b:Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->d(Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;)Lcom/nuance/dragon/toolkit/cloudservices/d;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam$1;->a:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v5}, Lcom/nuance/dragon/toolkit/cloudservices/d;->a(Ljava/lang/String;Lcom/nuance/dragon/toolkit/audio/AudioChunk;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam$1;->b:Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->b(Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;)Lcom/nuance/dragon/toolkit/cloudservices/Param$a;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam$1;->b:Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->b(Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;)Lcom/nuance/dragon/toolkit/cloudservices/Param$a;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam$1;->b:Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;

    invoke-interface {v1, v2, v0}, Lcom/nuance/dragon/toolkit/cloudservices/Param$a;->a(Lcom/nuance/dragon/toolkit/cloudservices/Param;Z)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam$1;->b:Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->g(Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;)Lcom/nuance/dragon/toolkit/cloudservices/Param$a;

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam$1;->b:Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->i(Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;)Lcom/nuance/dragon/toolkit/cloudservices/d;

    return-void

    :catch_0
    move-exception v2

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam$1;->b:Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;->h(Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;)[Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam$1;->b:Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error sending audio for param "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam$1;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0
.end method

.class public Lcom/nuance/dragon/toolkit/audio/pipes/SsePipe;
.super Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;


# instance fields
.field private final a:Lcom/nuance/dragon/toolkit/sse/b;

.field private b:Z

.field private c:Lcom/nuance/dragon/toolkit/file/FileManager;

.field private d:Ljava/util/Hashtable;

.field private e:Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;->ECHO_AND_NOISE:Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/nuance/dragon/toolkit/audio/pipes/SsePipe;-><init>(Landroid/content/Context;Lcom/nuance/dragon/toolkit/file/FileManager;Ljava/util/Hashtable;Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/nuance/dragon/toolkit/file/FileManager;Ljava/util/Hashtable;)V
    .locals 1

    sget-object v0, Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;->ECHO_AND_NOISE:Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/nuance/dragon/toolkit/audio/pipes/SsePipe;-><init>(Landroid/content/Context;Lcom/nuance/dragon/toolkit/file/FileManager;Ljava/util/Hashtable;Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/nuance/dragon/toolkit/file/FileManager;Ljava/util/Hashtable;Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;-><init>(I)V

    const-string v0, "context"

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/nuance/dragon/toolkit/sse/b;

    invoke-direct {v0, p1}, Lcom/nuance/dragon/toolkit/sse/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SsePipe;->a:Lcom/nuance/dragon/toolkit/sse/b;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SsePipe;->c:Lcom/nuance/dragon/toolkit/file/FileManager;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SsePipe;->d:Ljava/util/Hashtable;

    iput-object p4, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SsePipe;->e:Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;

    return-void
.end method

.method public static getRequiredFrameSize()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method


# virtual methods
.method protected cleanup()V
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SsePipe;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SsePipe;->a:Lcom/nuance/dragon/toolkit/sse/b;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/sse/b;->a()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SsePipe;->b:Z

    return-void
.end method

.method protected bridge synthetic convert(Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;)[Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;
    .locals 1

    check-cast p1, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;

    invoke-virtual {p0, p1}, Lcom/nuance/dragon/toolkit/audio/pipes/SsePipe;->convert(Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;)[Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    move-result-object v0

    return-object v0
.end method

.method protected convert(Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;)[Lcom/nuance/dragon/toolkit/audio/AudioChunk;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SsePipe;->a:Lcom/nuance/dragon/toolkit/sse/b;

    invoke-virtual {v0, p1}, Lcom/nuance/dragon/toolkit/sse/b;->a(Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;)Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    move-result-object v1

    if-eqz v1, :cond_0

    new-array v0, v3, [Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    aput-object v1, v0, v2

    :goto_0
    return-object v0

    :cond_0
    new-array v0, v3, [Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    invoke-virtual {p1, v2}, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;->getSingleChannelChunk(I)Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_0
.end method

.method public getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/SsePipe;->getAudioTypeFromSource()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v0

    return-object v0
.end method

.method public getSseVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SsePipe;->a:Lcom/nuance/dragon/toolkit/sse/b;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/sse/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initialize(Lcom/nuance/dragon/toolkit/audio/AudioType;)V
    .locals 4

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SsePipe;->b:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SsePipe;->a:Lcom/nuance/dragon/toolkit/sse/b;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SsePipe;->c:Lcom/nuance/dragon/toolkit/file/FileManager;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SsePipe;->d:Ljava/util/Hashtable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SsePipe;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    iget-object v3, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SsePipe;->e:Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;

    invoke-virtual {v1, p1, v2, v0, v3}, Lcom/nuance/dragon/toolkit/sse/b;->a(Lcom/nuance/dragon/toolkit/audio/AudioType;Lcom/nuance/dragon/toolkit/file/FileManager;Ljava/lang/String;Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Failure initializing SSE"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SsePipe;->b:Z

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

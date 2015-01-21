.class final Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a;
.super Lcom/nuance/dragon/toolkit/audio/sources/SingleSinkSource;

# interfaces
.implements Lcom/nuance/a/a/a/b/b/a;


# static fields
.field static final synthetic b:Z


# instance fields
.field protected final a:Landroid/os/Handler;

.field private final c:Lcom/nuance/dragon/toolkit/audio/AudioType;

.field private final d:Ljava/util/List;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/nuance/dragon/toolkit/cloudservices/TTSParam;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/nuance/dragon/toolkit/audio/AudioType;)V
    .locals 1

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/sources/SingleSinkSource;-><init>()V

    sget-boolean v0, Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a;->b:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a;->d:Ljava/util/List;

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a;->c:Lcom/nuance/dragon/toolkit/audio/AudioType;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a;->e:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a;->d:Ljava/util/List;

    return-object v0
.end method

.method private a(Lcom/nuance/dragon/toolkit/audio/AudioChunk;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a$1;

    invoke-direct {v1, p0, p1}, Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a$1;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a;Lcom/nuance/dragon/toolkit/audio/AudioChunk;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a;)V
    .locals 0

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a;->notifyChunksAvailable()V

    return-void
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a;)V
    .locals 0

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a;->notifySourceClosed()V

    return-void
.end method


# virtual methods
.method public final a([BIIZ)V
    .locals 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a;->e:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p4, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a;->e:Z

    :cond_2
    if-eqz p1, :cond_4

    if-lez p3, :cond_4

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a;->c:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/audio/AudioType;->encoding:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    sget-object v2, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->PCM_16:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    if-ne v1, v2, :cond_5

    div-int/lit8 v1, p3, 0x2

    new-array v1, v1, [S

    :goto_1
    div-int/lit8 v2, p3, 0x2

    if-ge v0, v2, :cond_3

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v2, p2

    aget-byte v2, p1, v2

    int-to-short v2, v2

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v0, 0x2

    add-int/2addr v3, p2

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p1, v3

    int-to-short v3, v3

    shl-int/lit8 v3, v3, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    int-to-short v2, v2

    aput-short v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a;->c:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-direct {v0, v2, v1}, Lcom/nuance/dragon/toolkit/audio/AudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[S)V

    invoke-direct {p0, v0}, Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a;->a(Lcom/nuance/dragon/toolkit/audio/AudioChunk;)V

    :cond_4
    :goto_2
    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a$2;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a$2;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a;->c:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/audio/AudioType;->encoding:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    sget-object v2, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->SPEEX:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    if-ne v1, v2, :cond_4

    new-array v1, p3, [B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v2, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a;->c:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-direct {v2, v3, v1, v0}, Lcom/nuance/dragon/toolkit/audio/AudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[BI)V

    invoke-direct {p0, v2}, Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a;->a(Lcom/nuance/dragon/toolkit/audio/AudioChunk;)V

    goto :goto_2
.end method

.method protected final synthetic getAudioChunk()Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    goto :goto_0
.end method

.method public final getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a;->c:Lcom/nuance/dragon/toolkit/audio/AudioType;

    return-object v0
.end method

.method public final getChunksAvailable()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final isActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

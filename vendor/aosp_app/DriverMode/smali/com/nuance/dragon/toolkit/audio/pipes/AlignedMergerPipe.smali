.class public Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;
.super Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;


# static fields
.field public static LOAD_NATIVE_LIBRARY_SUCCESS:Z


# instance fields
.field private final a:Lcom/nuance/dragon/toolkit/util/internal/a;

.field private final b:Landroid/os/Handler;

.field private c:Lcom/nuance/dragon/toolkit/audio/AudioSource;

.field private final d:Lcom/nuance/dragon/toolkit/audio/AudioSink;

.field private final e:Ljava/util/LinkedList;

.field private final f:Ljava/util/LinkedList;

.field private final g:Ljava/util/LinkedList;

.field private final h:Ljava/util/LinkedList;

.field private final i:Lcom/nuance/dragon/toolkit/audio/AudioType;

.field private final j:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;

.field private k:J

.field private l:I

.field private m:I

.field private final n:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;

.field private final o:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;

.field private final p:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;

.field private q:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;

.field private r:Z

.field private s:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    sput-boolean v0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->LOAD_NATIVE_LIBRARY_SUCCESS:Z

    :try_start_0
    const-string v0, "dmt_native_utils"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-class v1, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;

    const-string v2, "Failed to load native library."

    invoke-static {v1, v2, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->LOAD_NATIVE_LIBRARY_SUCCESS:Z

    goto :goto_0
.end method

.method public constructor <init>(Lcom/nuance/dragon/toolkit/audio/AudioType;II)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;IIII)V

    return-void
.end method

.method public constructor <init>(Lcom/nuance/dragon/toolkit/audio/AudioType;IIII)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;-><init>()V

    const-string v0, "audioType"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "correlationWindowMs"

    const-string v4, "greater than or equal to 0"

    if-ltz p5, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "frameSizeMs"

    const-string v4, "greater than 0"

    if-lez p2, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v3, v4, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "maxSecondaryOffsetMs"

    const-string v3, "greater than or equal to minSecondaryOffsetMs"

    if-lt p4, p3, :cond_0

    move v2, v1

    :cond_0
    invoke-static {v0, v3, v2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Lcom/nuance/dragon/toolkit/util/internal/a;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/util/internal/a;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->a:Lcom/nuance/dragon/toolkit/util/internal/a;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->b:Landroid/os/Handler;

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;

    invoke-direct {v0, p1, p5}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;I)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->n:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;

    invoke-direct {v0, p1, p3}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;I)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->o:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;

    invoke-direct {v0, p1, p4}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;I)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->p:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->p:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->q:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->i:Lcom/nuance/dragon/toolkit/audio/AudioType;

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;

    invoke-direct {v0, p1, p2}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;I)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->j:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->e:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->f:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->g:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->h:Ljava/util/LinkedList;

    if-nez p5, :cond_1

    iput-boolean v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->r:Z

    :cond_1
    new-instance v0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$1;

    invoke-direct {v0, p0}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$1;-><init>(Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->d:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;I)I
    .locals 1

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->m:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->m:I

    return v0
.end method

.method private static a(Ljava/util/LinkedList;I)Lcom/nuance/dragon/toolkit/audio/AudioChunk;
    .locals 4

    invoke-virtual {p0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v1, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioType:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-virtual {p0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-wide v2, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioTimestamp:J

    invoke-static {p0, v1, p1, v2, v3}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->a(Ljava/util/LinkedList;Lcom/nuance/dragon/toolkit/audio/AudioType;IJ)Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/LinkedList;Lcom/nuance/dragon/toolkit/audio/AudioType;IJ)Lcom/nuance/dragon/toolkit/audio/AudioChunk;
    .locals 11

    const/4 v2, 0x0

    new-array v3, p2, [S

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-ge v1, p2, :cond_1

    sub-int v4, p2, v1

    invoke-virtual {p0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v5, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    array-length v6, v5

    if-gt v6, v4, :cond_0

    array-length v0, v5

    invoke-static {v5, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v5

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-static {v5, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v5

    sub-int/2addr v1, v4

    new-array v1, v1, [S

    array-length v6, v5

    sub-int/2addr v6, v4

    invoke-static {v5, v4, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v5, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v6, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioType:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iget-wide v7, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioTimestamp:J

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioType:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-virtual {v0, v4}, Lcom/nuance/dragon/toolkit/audio/AudioType;->getDuration(I)I

    move-result v0

    int-to-long v9, v0

    add-long/2addr v7, v9

    invoke-direct {v5, v6, v1, v7, v8}, Lcom/nuance/dragon/toolkit/audio/AudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[SJ)V

    invoke-virtual {p0, v5}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    move v1, p2

    goto :goto_0

    :cond_1
    if-ge v1, p2, :cond_2

    new-array v0, v1, [S

    array-length v1, v0

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    new-instance v1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    invoke-direct {v1, p1, v0, p3, p4}, Lcom/nuance/dragon/toolkit/audio/AudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[SJ)V

    return-object v1

    :cond_2
    move-object v0, v3

    goto :goto_1
.end method

.method private static a(Ljava/util/List;I)Lcom/nuance/dragon/toolkit/audio/AudioChunk;
    .locals 8

    const/4 v3, 0x0

    new-array v5, p1, [S

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    sub-int v4, p1, v2

    iget-object v7, v1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    array-length v7, v7

    if-le v4, v7, :cond_0

    iget-object v4, v1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    array-length v4, v4

    :cond_0
    iget-object v1, v1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    invoke-static {v1, v3, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v1, v2, v4

    if-lt v1, p1, :cond_2

    :cond_1
    new-instance v1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v2, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioType:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iget-wide v3, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioTimestamp:J

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/nuance/dragon/toolkit/audio/AudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[SJ)V

    return-object v1

    :cond_2
    move v2, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;)Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->q:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;

    return-object p1
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->f:Ljava/util/LinkedList;

    return-object v0
.end method

.method private a()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->c:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->c:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/util/LinkedList;I)I
    .locals 10

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-ge v1, p1, :cond_1

    sub-int v3, p1, v1

    invoke-virtual {p0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v4, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    array-length v5, v4

    if-gt v5, v3, :cond_0

    array-length v0, v4

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, v4

    sub-int/2addr v1, v3

    new-array v1, v1, [S

    array-length v5, v4

    sub-int/2addr v5, v3

    invoke-static {v4, v3, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v4, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v5, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioType:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iget-wide v6, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioTimestamp:J

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioType:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-virtual {v0, v3}, Lcom/nuance/dragon/toolkit/audio/AudioType;->getDuration(I)I

    move-result v0

    int-to-long v8, v0

    add-long/2addr v6, v8

    invoke-direct {v4, v5, v1, v6, v7}, Lcom/nuance/dragon/toolkit/audio/AudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[SJ)V

    invoke-virtual {p0, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    move v1, p1

    goto :goto_0

    :cond_1
    return v1
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->g:Ljava/util/LinkedList;

    return-object v0
.end method

.method private b()Z
    .locals 11

    const/4 v9, 0x1

    const/4 v8, 0x0

    :cond_0
    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->m:I

    if-lez v0, :cond_1f

    iget v2, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->m:I

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-wide v3, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioTimestamp:J

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-wide v0, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioTimestamp:J

    iget-boolean v5, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->r:Z

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->q:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;

    iget v5, v5, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;->a:I

    int-to-long v5, v5

    add-long/2addr v0, v5

    :goto_0
    sub-long v0, v3, v0

    long-to-int v1, v0

    if-lez v1, :cond_b

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->i:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/audio/AudioType;->getSampleCount(I)I

    move-result v0

    iget v3, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->m:I

    if-lt v0, v3, :cond_1

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->m:I

    :cond_1
    iget-object v3, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->f:Ljava/util/LinkedList;

    invoke-static {v3, v0}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->b(Ljava/util/LinkedList;I)I

    move-result v0

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->f:Ljava/util/LinkedList;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Removing "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "ms from secondary audio"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    sub-int v0, v2, v0

    iput v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->m:I

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->m:I

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->m:I

    if-nez v0, :cond_1f

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->d()V

    move v0, v9

    :goto_2
    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->r:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->s:Ljava/lang/Object;

    if-eqz v0, :cond_c

    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    move v1, v8

    :cond_3
    :goto_4
    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->isSourceActive()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->s:Ljava/lang/Object;

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->h:Ljava/util/LinkedList;

    new-instance v2, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;

    new-array v3, v9, [Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->e:Ljava/util/LinkedList;

    iget v5, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->l:I

    invoke-static {v4, v5}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->a(Ljava/util/LinkedList;I)Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-direct {v2, v3}, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;-><init>([Lcom/nuance/dragon/toolkit/audio/AudioChunk;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iput v8, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->l:I

    move v0, v9

    :goto_5
    if-nez v1, :cond_4

    if-eqz v0, :cond_17

    :cond_4
    move v0, v9

    :goto_6
    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->e()V

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->m:I

    if-nez v1, :cond_7

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    move v8, v9

    :cond_6
    move v0, v8

    :cond_7
    return v0

    :cond_8
    iget-object v5, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->p:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;

    iget v5, v5, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;->a:I

    int-to-long v5, v5

    add-long/2addr v0, v5

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->isSourceActive()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->p:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;

    iget v0, v0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;->a:I

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->o:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;

    iget v1, v1, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;->a:I

    sub-int v3, v0, v1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-wide v0, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioEndTimestamp:J

    :goto_7
    int-to-long v3, v3

    sub-long v3, v0, v3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-wide v0, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioTimestamp:J

    sub-long v0, v3, v0

    long-to-int v0, v0

    if-lez v0, :cond_b

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->f:Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->i:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-virtual {v3, v0}, Lcom/nuance/dragon/toolkit/audio/AudioType;->getSampleCount(I)I

    move-result v0

    invoke-static {v1, v0}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->b(Ljava/util/LinkedList;I)I

    move-result v0

    goto/16 :goto_1

    :cond_a
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-wide v0, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioEndTimestamp:J

    goto :goto_7

    :cond_b
    move v0, v8

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->n:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;

    iget v1, v0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;->b:I

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-wide v2, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioTimestamp:J

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-wide v4, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioTimestamp:J

    sub-long/2addr v2, v4

    long-to-int v7, v2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->o:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;

    iget v0, v0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;->a:I

    sub-int v4, v0, v7

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->p:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;

    iget v0, v0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;->a:I

    sub-int v5, v0, v7

    if-gez v4, :cond_1e

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->i:Lcom/nuance/dragon/toolkit/audio/AudioType;

    neg-int v2, v4

    invoke-virtual {v0, v2}, Lcom/nuance/dragon/toolkit/audio/AudioType;->getSampleCount(I)I

    move-result v0

    add-int v2, v1, v0

    :goto_8
    if-lez v5, :cond_1d

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->i:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-virtual {v0, v5}, Lcom/nuance/dragon/toolkit/audio/AudioType;->getSampleCount(I)I

    move-result v0

    add-int/2addr v0, v1

    :goto_9
    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->a()Z

    move-result v1

    if-nez v1, :cond_1c

    iget v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->m:I

    if-lez v1, :cond_1c

    iget v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->m:I

    if-ge v1, v2, :cond_1c

    iget v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->m:I

    :goto_a
    iget v2, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->l:I

    if-lt v2, v0, :cond_2

    iget v2, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->m:I

    if-lt v2, v1, :cond_2

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->e:Ljava/util/LinkedList;

    invoke-static {v2, v0}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->a(Ljava/util/List;I)Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->f:Ljava/util/LinkedList;

    invoke-static {v2, v1}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->a(Ljava/util/List;I)Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    move-result-object v1

    iget-object v2, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    iget-object v3, v1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    iput-boolean v8, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->r:Z

    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->s:Ljava/lang/Object;

    iget-object v10, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->a:Lcom/nuance/dragon/toolkit/util/internal/a;

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;-><init>(Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;[S[SIILjava/lang/Object;I)V

    invoke-virtual {v10, v0}, Lcom/nuance/dragon/toolkit/util/internal/a;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    :cond_d
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    move v1, v8

    goto/16 :goto_4

    :cond_e
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->l:I

    if-lez v0, :cond_1b

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->l:I

    iget v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->l:I

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->j:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;

    iget v2, v2, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;->b:I

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    if-lez v0, :cond_1a

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->e:Ljava/util/LinkedList;

    invoke-static {v1, v0}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->a(Ljava/util/LinkedList;I)Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    move-result-object v0

    iget v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->l:I

    iget-object v2, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    array-length v2, v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->l:I

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->h:Ljava/util/LinkedList;

    new-instance v2, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;

    new-array v3, v9, [Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    aput-object v0, v3, v8

    invoke-direct {v2, v3}, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;-><init>([Lcom/nuance/dragon/toolkit/audio/AudioChunk;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v0, "Passing primary audio through due to empty secondary audio"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v9

    :goto_b
    move v1, v0

    goto/16 :goto_4

    :cond_f
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-wide v2, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioTimestamp:J

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-wide v0, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioTimestamp:J

    iget-boolean v4, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->r:Z

    if-eqz v4, :cond_14

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->q:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;

    iget v4, v4, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;->a:I

    int-to-long v4, v4

    add-long/2addr v0, v4

    :goto_c
    sub-long/2addr v0, v2

    long-to-int v0, v0

    if-lez v0, :cond_19

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->i:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-virtual {v1, v0}, Lcom/nuance/dragon/toolkit/audio/AudioType;->getSampleCount(I)I

    move-result v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->j:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;

    iget v1, v1, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;->b:I

    rem-int v1, v0, v1

    if-lez v1, :cond_10

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->j:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;

    iget v2, v2, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;->b:I

    sub-int v1, v2, v1

    iget v2, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->m:I

    if-gt v1, v2, :cond_10

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->f:Ljava/util/LinkedList;

    invoke-static {v2, v1}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->b(Ljava/util/LinkedList;I)I

    move-result v1

    iget v2, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->m:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->m:I

    add-int/2addr v0, v1

    :cond_10
    iget v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->l:I

    if-le v0, v1, :cond_11

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->l:I

    iget v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->l:I

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->j:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;

    iget v2, v2, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;->b:I

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    :cond_11
    if-lez v0, :cond_19

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->e:Ljava/util/LinkedList;

    invoke-static {v1, v0}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->a(Ljava/util/LinkedList;I)Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    move-result-object v0

    iget v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->l:I

    iget-object v2, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    array-length v2, v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->l:I

    iget v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->l:I

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->h:Ljava/util/LinkedList;

    new-instance v2, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;

    new-array v3, v9, [Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    aput-object v0, v3, v8

    invoke-direct {v2, v3}, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;-><init>([Lcom/nuance/dragon/toolkit/audio/AudioChunk;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Passing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioDuration:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms excess primary audio through"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    move v1, v9

    :goto_d
    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->r:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->m:I

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->j:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;

    iget v2, v2, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;->b:I

    if-ge v0, v2, :cond_12

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->a()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->j:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;

    iget v0, v0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;->b:I

    iget v2, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->m:I

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->f:Ljava/util/LinkedList;

    new-instance v3, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->i:Lcom/nuance/dragon/toolkit/audio/AudioType;

    new-array v5, v0, [S

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-wide v6, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioEndTimestamp:J

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/nuance/dragon/toolkit/audio/AudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[SJ)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->j:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;

    iget v0, v0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;->b:I

    iput v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->m:I

    :cond_12
    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->l:I

    iget v2, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->m:I

    if-ge v0, v2, :cond_15

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->l:I

    :goto_e
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->j:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;

    iget v2, v2, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;->b:I

    if-lt v0, v2, :cond_13

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->j:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;

    iget v1, v1, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;->b:I

    rem-int v1, v0, v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->e:Ljava/util/LinkedList;

    invoke-static {v1, v0}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->a(Ljava/util/LinkedList;I)Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->f:Ljava/util/LinkedList;

    iget-object v3, v1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioType:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iget-wide v4, v1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioTimestamp:J

    iget-object v6, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->j:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;

    iget v6, v6, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;->a:I

    int-to-long v6, v6

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v0, v4, v5}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->a(Ljava/util/LinkedList;Lcom/nuance/dragon/toolkit/audio/AudioType;IJ)Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    move-result-object v2

    iget-object v3, v1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    iget-object v3, v2, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    iget v3, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->l:I

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->l:I

    iget v3, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->m:I

    sub-int v0, v3, v0

    iput v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->m:I

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->h:Ljava/util/LinkedList;

    new-instance v3, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    aput-object v1, v4, v8

    aput-object v2, v4, v9

    invoke-direct {v3, v4}, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;-><init>([Lcom/nuance/dragon/toolkit/audio/AudioChunk;)V

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move v1, v9

    :cond_13
    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->m:I

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->l:I

    goto/16 :goto_4

    :cond_14
    iget-object v4, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->o:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;

    iget v4, v4, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;->a:I

    int-to-long v4, v4

    add-long/2addr v0, v4

    goto/16 :goto_c

    :cond_15
    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->m:I

    goto :goto_e

    :cond_16
    move v0, v8

    goto/16 :goto_5

    :cond_17
    move v0, v8

    goto/16 :goto_6

    :cond_18
    move v0, v8

    goto/16 :goto_5

    :cond_19
    move v1, v8

    goto/16 :goto_d

    :cond_1a
    move v0, v8

    goto/16 :goto_b

    :cond_1b
    move v1, v8

    goto/16 :goto_4

    :cond_1c
    move v1, v2

    goto/16 :goto_a

    :cond_1d
    move v0, v1

    goto/16 :goto_9

    :cond_1e
    move v2, v1

    goto/16 :goto_8

    :cond_1f
    move v0, v8

    goto/16 :goto_2
.end method

.method private c()V
    .locals 1

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->notifyChunksAvailable()V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->c()V

    return-void
.end method

.method static synthetic d(Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;)Lcom/nuance/dragon/toolkit/audio/AudioType;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->i:Lcom/nuance/dragon/toolkit/audio/AudioType;

    return-object v0
.end method

.method private d()V
    .locals 6

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->f:Ljava/util/LinkedList;

    :goto_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->f:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-wide v2, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioTimestamp:J

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->f:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-wide v4, v1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioEndTimestamp:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->f:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->g:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->m:I

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    array-length v0, v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->m:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic e(Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->s:Ljava/lang/Object;

    return-object v0
.end method

.method private e()V
    .locals 7

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->isSourceActive()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->g:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->g:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-wide v3, v1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioEndTimestamp:J

    iget-wide v5, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioEndTimestamp:J

    sub-long/2addr v3, v5

    long-to-int v1, v3

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->q:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;

    iget v3, v3, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;->a:I

    neg-int v3, v3

    if-lt v1, v3, :cond_3

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->e:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-wide v3, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioTimestamp:J

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-wide v0, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioEndTimestamp:J

    sub-long v0, v3, v0

    long-to-int v0, v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->p:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;

    iget v1, v1, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;->a:I

    if-lt v0, v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->g:Ljava/util/LinkedList;

    add-int/lit8 v0, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move v2, v0

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method static synthetic f(Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;)Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->o:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;

    return-object v0
.end method

.method static synthetic g(Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;)Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->p:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;

    return-object v0
.end method

.method static native guessAudioAlignment([S[SIII)I
.end method

.method static synthetic h(Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->r:Z

    return v0
.end method

.method static synthetic i(Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->s:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic j(Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->isSourceActive()Z

    move-result v0

    return v0
.end method

.method static synthetic k(Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->b:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected chunksAvailable(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/audio/AudioSink;)V
    .locals 9

    invoke-virtual {p1, p2}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getAllAudioChunksForSink(Lcom/nuance/dragon/toolkit/audio/AudioSink;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->e:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->e:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->l:I

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    array-length v0, v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->l:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->e:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-wide v3, v1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioEndTimestamp:J

    iget-wide v5, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioTimestamp:J

    sub-long/2addr v5, v3

    long-to-int v1, v5

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->e:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->l:I

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    array-length v0, v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->l:I

    goto :goto_0

    :cond_1
    if-lez v1, :cond_2

    const-string v5, "Inserting silence to preserve time alignment"

    invoke-static {p0, v5}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->i:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-virtual {v5, v1}, Lcom/nuance/dragon/toolkit/audio/AudioType;->getSampleCount(I)I

    move-result v1

    iget-object v5, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->e:Ljava/util/LinkedList;

    new-instance v6, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v7, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->i:Lcom/nuance/dragon/toolkit/audio/AudioType;

    new-array v8, v1, [S

    invoke-direct {v6, v7, v8, v3, v4}, Lcom/nuance/dragon/toolkit/audio/AudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[SJ)V

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget v3, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->l:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->l:I

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->e:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->l:I

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    array-length v0, v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->l:I

    goto :goto_0

    :cond_2
    const-string v0, "Discarding audio buffer because it overlaps previous buffer"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->notifyFramesDropped()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->c()V

    return-void
.end method

.method public connectAudioSource(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iput v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->l:I

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->n:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;

    iget v0, v0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;->a:I

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->r:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->s:Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->p:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->q:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;

    :cond_0
    invoke-super {p0, p1}, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;->connectAudioSource(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    return-void
.end method

.method public connectSecondarySource(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V
    .locals 4

    const-string v0, "source"

    const-string v1, "the correct audio type"

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->i:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-virtual {v2, v3}, Lcom/nuance/dragon/toolkit/audio/AudioType;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->c:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->d:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->c:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/audio/AudioSink;->connectAudioSource(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    return-void
.end method

.method public disconnectSecondarySource()Lcom/nuance/dragon/toolkit/audio/AudioSource;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->c:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->d:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/AudioSink;->disconnectAudioSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    move-result-object v0

    return-object v0
.end method

.method protected framesDropped(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/audio/AudioSink;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic getAudioChunk()Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->getAudioChunk()Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;

    move-result-object v0

    return-object v0
.end method

.method protected getAudioChunk()Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->i:Lcom/nuance/dragon/toolkit/audio/AudioType;

    return-object v0
.end method

.method public getChunksAvailable()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public isActive()Z
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->isSourceActive()Z

    move-result v0

    return v0
.end method

.method protected sourceClosed(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/audio/AudioSink;)V
    .locals 10

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->l:I

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->j:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;

    iget v1, v1, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;->b:I

    rem-int/2addr v0, v1

    if-lez v0, :cond_6

    new-instance v1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->i:Lcom/nuance/dragon/toolkit/audio/AudioType;

    new-array v5, v0, [S

    iget-wide v6, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->k:J

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/nuance/dragon/toolkit/audio/AudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[SJ)V

    iget-wide v4, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->k:J

    iget v6, v1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioDuration:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->k:J

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->e:Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->l:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->l:I

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-wide v4, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioEndTimestamp:J

    :goto_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->f:Ljava/util/LinkedList;

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-wide v6, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioTimestamp:J

    sub-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-gtz v0, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_2
    if-lt v4, v3, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->f:Ljava/util/LinkedList;

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->m:I

    iget-object v5, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    array-length v5, v5

    sub-int/2addr v1, v5

    iput v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->m:I

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->g:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    add-int/lit8 v0, v4, -0x1

    move v4, v0

    move v1, v2

    goto :goto_2

    :cond_1
    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->m:I

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    :goto_3
    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->c()V

    :cond_3
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->s:Ljava/lang/Object;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->notifySourceClosed()V

    :cond_4
    return-void

    :cond_5
    move v2, v1

    goto :goto_3

    :cond_6
    move v1, v3

    goto :goto_0
.end method

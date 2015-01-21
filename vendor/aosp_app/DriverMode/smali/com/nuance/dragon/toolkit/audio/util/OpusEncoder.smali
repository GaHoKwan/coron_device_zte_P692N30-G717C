.class public Lcom/nuance/dragon/toolkit/audio/util/OpusEncoder;
.super Ljava/lang/Object;


# static fields
.field public static a:Z


# instance fields
.field private b:J

.field private c:Lcom/nuance/dragon/toolkit/audio/AudioType;

.field private d:[S

.field private e:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    sput-boolean v0, Lcom/nuance/dragon/toolkit/audio/util/OpusEncoder;->a:Z

    :try_start_0
    const-string v0, "dmt_opus"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-class v1, Lcom/nuance/dragon/toolkit/audio/util/OpusEncoder;

    const-string v2, "Failed to load native library."

    invoke-static {v1, v2, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/nuance/dragon/toolkit/audio/util/OpusEncoder;->a:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native encodeNative(J[S[I[B[I)I
.end method

.method private static native initializeNative([IIII)J
.end method

.method private static native releaseNative(J)V
.end method


# virtual methods
.method public final a()V
    .locals 4

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/util/OpusEncoder;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/util/OpusEncoder;->b:J

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/audio/util/OpusEncoder;->releaseNative(J)V

    iput-wide v2, p0, Lcom/nuance/dragon/toolkit/audio/util/OpusEncoder;->b:J

    :cond_0
    return-void
.end method

.method public final a(Lcom/nuance/dragon/toolkit/audio/AudioType;)V
    .locals 6

    const/16 v0, 0x1f40

    iget-object v1, p1, Lcom/nuance/dragon/toolkit/audio/AudioType;->encoding:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->OPUS:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    iget v1, p1, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    if-ne v1, v0, :cond_1

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [I

    iget-wide v2, p0, Lcom/nuance/dragon/toolkit/audio/util/OpusEncoder;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/nuance/dragon/toolkit/audio/util/OpusEncoder;->b:J

    invoke-static {v2, v3}, Lcom/nuance/dragon/toolkit/audio/util/OpusEncoder;->releaseNative(J)V

    :cond_0
    const/16 v2, 0x6c98

    const/16 v3, 0xa

    invoke-static {v1, v0, v2, v3}, Lcom/nuance/dragon/toolkit/audio/util/OpusEncoder;->initializeNative([IIII)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/util/OpusEncoder;->b:J

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/util/OpusEncoder;->c:Lcom/nuance/dragon/toolkit/audio/AudioType;

    return-void

    :cond_1
    const/16 v0, 0x3e80

    goto :goto_0
.end method

.method public final a(Lcom/nuance/dragon/toolkit/audio/AudioChunk;)[Lcom/nuance/dragon/toolkit/audio/AudioChunk;
    .locals 12

    const/4 v11, 0x1

    const/16 v4, 0xa

    const/4 v6, 0x0

    const-string v0, "inputPcmChunk"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioType:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iget-object v1, p1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/audio/AudioType;->getDuration([S)I

    move-result v0

    if-ge v0, v4, :cond_4

    const-class v0, Lcom/nuance/dragon/toolkit/audio/util/OpusEncoder;

    const-string v1, "Input audio chunk is too small for proper Opus encoding."

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v6

    :goto_0
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/util/OpusEncoder;->d:[S

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/util/OpusEncoder;->d:[S

    array-length v1, v1

    if-ge v1, v0, :cond_1

    :cond_0
    new-array v1, v0, [S

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/audio/util/OpusEncoder;->d:[S

    :cond_1
    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/util/OpusEncoder;->e:[B

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/util/OpusEncoder;->e:[B

    array-length v1, v1

    if-ge v1, v0, :cond_3

    :cond_2
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/util/OpusEncoder;->e:[B

    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-array v3, v11, [I

    new-array v5, v11, [I

    iget-object v0, p1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioType:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-virtual {v0, v4}, Lcom/nuance/dragon/toolkit/audio/AudioType;->getSampleCount(I)I

    move-result v9

    move v0, v6

    :goto_1
    iget-object v1, p1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    array-length v1, v1

    sub-int/2addr v1, v0

    if-lt v1, v9, :cond_6

    iget-object v1, p1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/util/OpusEncoder;->d:[S

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/audio/util/OpusEncoder;->d:[S

    array-length v4, v4

    invoke-static {v1, v0, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/util/OpusEncoder;->d:[S

    array-length v1, v1

    add-int v7, v0, v1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/util/OpusEncoder;->d:[S

    array-length v0, v0

    aput v0, v3, v6

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/util/OpusEncoder;->e:[B

    array-length v0, v0

    aput v0, v5, v6

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/util/OpusEncoder;->b:J

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/util/OpusEncoder;->d:[S

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/audio/util/OpusEncoder;->e:[B

    invoke-static/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/audio/util/OpusEncoder;->encodeNative(J[S[I[B[I)I

    move-result v0

    if-nez v0, :cond_7

    aget v0, v5, v6

    if-le v0, v11, :cond_7

    iget-object v0, p1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioType:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/util/OpusEncoder;->e:[B

    aget v2, v5, v6

    iget-object v4, p1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioTtsMarkers:[Lcom/nuance/dragon/toolkit/audio/TtsMarker;

    new-array v2, v2, [B

    array-length v10, v2

    invoke-static {v1, v6, v2, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    invoke-direct {v1, v0, v2, v6, v4}, Lcom/nuance/dragon/toolkit/audio/AudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[BI[Lcom/nuance/dragon/toolkit/audio/TtsMarker;)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v7

    goto :goto_1

    :cond_4
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    new-instance v1, Landroid/util/Pair;

    div-int/lit8 v2, v0, 0xa

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    rem-int/lit8 v3, v0, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x14

    new-instance v2, Landroid/util/Pair;

    div-int/lit8 v3, v0, 0x14

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    rem-int/lit8 v5, v0, 0x14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x28

    new-instance v2, Landroid/util/Pair;

    div-int/lit8 v3, v0, 0x28

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    rem-int/lit8 v5, v0, 0x28

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x3c

    new-instance v2, Landroid/util/Pair;

    div-int/lit8 v3, v0, 0x3c

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    rem-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    move v2, v4

    move-object v3, v0

    move v5, v6

    :goto_2
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v5, v0, :cond_5

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_8

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v8, 0x3f80

    cmpl-float v1, v1, v8

    if-ltz v1, :cond_8

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpg-float v1, v8, v1

    if-gtz v1, :cond_8

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v8, v1, :cond_8

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    move-object v1, v0

    move v0, v2

    :goto_3
    add-int/lit8 v2, v5, 0x1

    move-object v3, v1

    move v5, v2

    move v2, v0

    goto :goto_2

    :cond_5
    iget-object v0, p1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioType:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iget v0, v0, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    mul-int/2addr v0, v2

    div-int/lit16 v0, v0, 0x3e8

    goto/16 :goto_0

    :cond_6
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    return-object v0

    :cond_7
    move v0, v7

    goto/16 :goto_1

    :cond_8
    move v0, v2

    move-object v1, v3

    goto :goto_3
.end method

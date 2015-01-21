.class public Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;
.super Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;


# instance fields
.field private a:Ljava/lang/String;

.field private final b:I

.field private c:Landroid/content/res/AssetFileDescriptor;

.field private final d:Landroid/content/Context;

.field private e:Z

.field private f:Ljava/io/FileInputStream;

.field private g:[B

.field private h:I

.field private i:Ljava/util/List;

.field private j:Lcom/nuance/dragon/toolkit/audio/AudioType;


# direct methods
.method public constructor <init>(Lcom/nuance/dragon/toolkit/audio/AudioType;ILandroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->f:Ljava/io/FileInputStream;

    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->h:I

    const-string v0, "audioType"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "audioType"

    const-string v1, "a type supported by this player"

    invoke-virtual {p0, p1}, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->isCodecSupported(Lcom/nuance/dragon/toolkit/audio/AudioType;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "Context"

    invoke-static {v0, p3}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->j:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iput p2, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->b:I

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->d:Landroid/content/Context;

    iput-object v3, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->a:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->e:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->i:Ljava/util/List;

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->a()V

    return-void
.end method

.method public constructor <init>(Lcom/nuance/dragon/toolkit/audio/AudioType;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/nuance/dragon/toolkit/audio/AudioType;Ljava/lang/String;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->f:Ljava/io/FileInputStream;

    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->h:I

    const-string v0, "audioType"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "fileName"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->j:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->e:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->b:I

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->d:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->i:Ljava/util/List;

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->a()V

    return-void
.end method

.method private a()V
    .locals 12

    const v11, 0xff00

    const/4 v3, 0x1

    const/4 v5, -0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->a:Ljava/lang/String;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->a:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->f:Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->j:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/AudioType;->encoding:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    sget-object v2, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->PCM_16:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    if-ne v0, v2, :cond_c

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->j:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iget v0, v0, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    const/16 v2, 0x1f40

    if-ne v0, v2, :cond_6

    const/16 v0, 0x1900

    :goto_1
    if-lez v0, :cond_0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->g:[B

    :cond_0
    move v2, v1

    :cond_1
    :goto_2
    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->j:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/AudioType;->encoding:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    sget-object v4, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->SPEEX:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    if-ne v0, v4, :cond_f

    new-array v6, v3, [B

    move v4, v1

    :goto_3
    :try_start_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->f:Ljava/io/FileInputStream;

    invoke-virtual {v0, v6}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    :goto_4
    array-length v7, v6

    if-eq v0, v7, :cond_d

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->b()V

    :cond_2
    :goto_5
    return-void

    :cond_3
    :try_start_2
    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->b:I

    if-eq v0, v5, :cond_5

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->d:Landroid/content/Context;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->b:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->c:Landroid/content/res/AssetFileDescriptor;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->c:Landroid/content/res/AssetFileDescriptor;

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "resourceId must refer to an uncompressed resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    move-exception v0

    const-string v0, "prepareAudioChunks() FileNotFoundException!!!"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->c:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->f:Ljava/io/FileInputStream;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "prepareAudioChunks() IOException!!!"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    :try_start_4
    const-string v0, "prepareAudioChunks() FileInputStream has not been created!!!"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->j:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iget v0, v0, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    const/16 v2, 0x2b11

    if-ne v0, v2, :cond_7

    const/16 v0, 0x2274

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->j:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iget v0, v0, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    const/16 v2, 0x3e80

    if-ne v0, v2, :cond_8

    const/16 v0, 0x3200

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->j:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iget v0, v0, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    const/16 v2, 0x5622

    if-ne v0, v2, :cond_9

    const/16 v0, 0x44e8

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->j:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iget v0, v0, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    const v2, 0xac44

    if-ne v0, v2, :cond_a

    const v0, 0x89d0

    goto/16 :goto_1

    :cond_a
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->j:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iget v0, v0, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    const v2, 0xbb80

    if-ne v0, v2, :cond_b

    const v0, 0x9600

    goto/16 :goto_1

    :cond_b
    move v0, v5

    goto/16 :goto_1

    :cond_c
    move v0, v5

    goto/16 :goto_1

    :catch_2
    move-exception v0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "prepareAudioChunks() reading header _fis.read() threw "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "!!!"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_4

    :cond_d
    shl-int/lit8 v0, v4, 0x7

    aget-byte v4, v6, v1

    and-int/lit8 v4, v4, 0x7f

    or-int/2addr v0, v4

    aget-byte v4, v6, v1

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_15

    if-gtz v0, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "prepareAudioChunks() Read file length error: speexBufferLen ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->b()V

    goto/16 :goto_5

    :cond_e
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->g:[B

    :cond_f
    :try_start_5
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->f:Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->g:[B

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->g:[B

    array-length v7, v7

    invoke-virtual {v0, v4, v6, v7}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    move-result v0

    move v4, v0

    :goto_6
    if-ne v4, v5, :cond_10

    move v2, v3

    :goto_7
    if-lez v4, :cond_13

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->j:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/AudioType;->encoding:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    sget-object v6, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->PCM_16:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    if-ne v0, v6, :cond_14

    div-int/lit8 v0, v4, 0x2

    new-array v6, v0, [S

    move v0, v1

    :goto_8
    add-int/lit8 v7, v4, -0x1

    if-ge v0, v7, :cond_12

    iget-boolean v7, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->e:Z

    if-eqz v7, :cond_11

    div-int/lit8 v7, v0, 0x2

    iget-object v8, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->g:[B

    add-int/lit8 v9, v0, 0x1

    aget-byte v8, v8, v9

    shl-int/lit8 v8, v8, 0x8

    and-int/2addr v8, v11

    iget-object v9, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->g:[B

    aget-byte v9, v9, v0

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    int-to-short v8, v8

    aput-short v8, v6, v7

    :goto_9
    add-int/lit8 v0, v0, 0x2

    goto :goto_8

    :catch_3
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "prepareAudioChunks() _fis.read() threw "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "!!!"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    move v4, v1

    goto :goto_6

    :cond_10
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->g:[B

    goto :goto_7

    :cond_11
    div-int/lit8 v7, v0, 0x2

    iget-object v8, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->g:[B

    aget-byte v8, v8, v0

    shl-int/lit8 v8, v8, 0x8

    and-int/2addr v8, v11

    iget-object v9, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->g:[B

    add-int/lit8 v10, v0, 0x1

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    int-to-short v8, v8

    aput-short v8, v6, v7

    goto :goto_9

    :cond_12
    new-instance v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->j:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iget v7, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->h:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->h:I

    mul-int/lit16 v7, v7, 0x190

    int-to-long v7, v7

    invoke-direct {v0, v4, v6, v7, v8}, Lcom/nuance/dragon/toolkit/audio/AudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[SJ)V

    :goto_a
    iget-object v4, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->i:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->b()V

    goto/16 :goto_2

    :cond_14
    new-array v6, v4, [B

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->g:[B

    invoke-static {v0, v1, v6, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->j:Lcom/nuance/dragon/toolkit/audio/AudioType;

    const/16 v7, 0x64

    invoke-direct {v0, v4, v6, v7}, Lcom/nuance/dragon/toolkit/audio/AudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[BI)V

    goto :goto_a

    :cond_15
    move v4, v0

    goto/16 :goto_3
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->f:Ljava/io/FileInputStream;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->f:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->c:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->c:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic getAudioChunk()Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->getAudioChunk()Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    move-result-object v0

    return-object v0
.end method

.method protected getAudioChunk()Lcom/nuance/dragon/toolkit/audio/AudioChunk;
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->i:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->j:Lcom/nuance/dragon/toolkit/audio/AudioType;

    return-object v0
.end method

.method public getChunksAvailable()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isActive()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isCodecSupported(Lcom/nuance/dragon/toolkit/audio/AudioType;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected startRecordingInternal(Lcom/nuance/dragon/toolkit/audio/AudioType;)Z
    .locals 1

    invoke-super {p0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->handleStarted()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->handleNewAudio(Lcom/nuance/dragon/toolkit/audio/AudioChunk;)V

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/sources/BurstFileRecorderSource;->handleSourceClosed()V

    const/4 v0, 0x1

    return v0
.end method

.method protected stopRecordingInternal()V
    .locals 0

    return-void
.end method

.class public Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;
.super Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;


# instance fields
.field private a:Ljava/lang/String;

.field private final b:I

.field private final c:I

.field private d:Landroid/content/res/AssetFileDescriptor;

.field private final e:Landroid/content/Context;

.field private f:Z

.field private g:Ljava/io/FileInputStream;

.field private h:Z

.field private i:Ljava/lang/Runnable;

.field private j:[B

.field private k:I

.field private l:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/nuance/dragon/toolkit/audio/AudioType;IILandroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->g:Ljava/io/FileInputStream;

    iput-boolean v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->h:Z

    iput v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->k:I

    iput p3, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->b:I

    iput-object p4, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->e:Landroid/content/Context;

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->a:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->f:Z

    iput p2, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->c:I

    return-void
.end method

.method public constructor <init>(Lcom/nuance/dragon/toolkit/audio/AudioType;ILjava/lang/String;Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->g:Ljava/io/FileInputStream;

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->h:Z

    iput v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->k:I

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->a:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->f:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->b:I

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->e:Landroid/content/Context;

    iput p2, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->c:I

    return-void
.end method

.method public constructor <init>(Lcom/nuance/dragon/toolkit/audio/AudioType;Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x190

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;ILjava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/nuance/dragon/toolkit/audio/AudioType;Ljava/lang/String;Z)V
    .locals 1

    const/16 v0, 0x190

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;ILjava/lang/String;Z)V

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->l:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->g:Ljava/io/FileInputStream;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->g:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->d:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->d:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->stopRecording()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->h:Z

    return v0
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->j:[B

    return-object p1
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;)Ljava/io/FileInputStream;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->g:Ljava/io/FileInputStream;

    return-object v0
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->h:Z

    return v0
.end method

.method static synthetic d(Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->a()V

    return-void
.end method

.method static synthetic e(Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;)[B
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->j:[B

    return-object v0
.end method

.method static synthetic f(Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->f:Z

    return v0
.end method

.method static synthetic g(Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;)I
    .locals 1

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->c:I

    return v0
.end method

.method static synthetic h(Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;)I
    .locals 2

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->k:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->k:I

    return v0
.end method

.method static synthetic i(Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->i:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic j(Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->l:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected isCodecSupported(Lcom/nuance/dragon/toolkit/audio/AudioType;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected startRecordingInternal(Lcom/nuance/dragon/toolkit/audio/AudioType;)Z
    .locals 7

    const v6, 0xac44

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->h:Z

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->l:Landroid/os/Handler;

    :try_start_0
    iget-object v3, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->a:Ljava/lang/String;

    if-eqz v3, :cond_1

    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->a:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->g:Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->handleStarted()V

    iget-object v0, p1, Lcom/nuance/dragon/toolkit/audio/AudioType;->encoding:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    sget-object v3, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->PCM_16:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    if-ne v0, v3, :cond_a

    iget v0, p1, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    const/16 v3, 0x1f40

    if-ne v0, v3, :cond_4

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->c:I

    mul-int/lit16 v0, v0, 0x3e80

    div-int/lit16 v0, v0, 0x3e8

    :goto_1
    if-lez v0, :cond_0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->j:[B

    :cond_0
    new-instance v0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource$1;

    invoke-direct {v0, p0, p1}, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource$1;-><init>(Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;Lcom/nuance/dragon/toolkit/audio/AudioType;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->i:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->l:Landroid/os/Handler;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->i:Ljava/lang/Runnable;

    iget v3, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->c:I

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move v0, v1

    :goto_2
    return v0

    :cond_1
    :try_start_1
    iget v3, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->b:I

    if-eq v3, v2, :cond_3

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->e:Landroid/content/Context;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->e:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->b:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->d:Landroid/content/res/AssetFileDescriptor;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->d:Landroid/content/res/AssetFileDescriptor;

    if-nez v3, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "resourceId must refer to an uncompressed resource"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    move-exception v2

    const-string v2, "startRecordingInternal() FileNotFoundException!!!"

    invoke-static {p0, v2}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->h:Z

    goto :goto_2

    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->d:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->g:Ljava/io/FileInputStream;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v2, "startRecordingInternal() IOException!!!"

    invoke-static {p0, v2}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->h:Z

    goto :goto_2

    :cond_3
    :try_start_3
    const-string v2, "startRecordingInternal() FileInputStream has not been created!!!"

    invoke-static {p0, v2}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :cond_4
    iget v0, p1, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    const/16 v3, 0x2b11

    if-ne v0, v3, :cond_5

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->c:I

    mul-int/lit16 v0, v0, 0x5622

    div-int/lit16 v0, v0, 0x3e8

    goto :goto_1

    :cond_5
    iget v0, p1, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    const/16 v3, 0x3e80

    if-ne v0, v3, :cond_6

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->c:I

    mul-int/lit16 v0, v0, 0x7d00

    div-int/lit16 v0, v0, 0x3e8

    goto :goto_1

    :cond_6
    iget v0, p1, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    const/16 v3, 0x5622

    if-ne v0, v3, :cond_7

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->c:I

    mul-int/2addr v0, v6

    div-int/lit16 v0, v0, 0x3e8

    goto/16 :goto_1

    :cond_7
    iget v0, p1, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    if-ne v0, v6, :cond_8

    const v0, 0x15888

    iget v2, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->c:I

    mul-int/2addr v0, v2

    div-int/lit16 v0, v0, 0x3e8

    goto/16 :goto_1

    :cond_8
    iget v0, p1, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    const v3, 0xbb80

    if-ne v0, v3, :cond_9

    const v0, 0x17700

    iget v2, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->c:I

    mul-int/2addr v0, v2

    div-int/lit16 v0, v0, 0x3e8

    goto/16 :goto_1

    :cond_9
    move v0, v2

    goto/16 :goto_1

    :cond_a
    move v0, v2

    goto/16 :goto_1
.end method

.method protected stopRecordingInternal()V
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->h:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->h:Z

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->a()V

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->handleSourceClosed()V

    goto :goto_0
.end method

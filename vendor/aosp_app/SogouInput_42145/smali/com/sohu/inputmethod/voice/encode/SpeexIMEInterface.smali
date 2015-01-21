.class public Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field public static final DEFAULT_BAND:I = 0x1

.field public static final DEFAULT_MULTIMEDIA_MODE:I = 0x1

.field public static final DEFAULT_MULTIMEDIA_QUALITY:I = 0x7

.field public static final DEFAULT_SPEECH_REC_MODE:I = 0x0

.field public static final DEFAULT_SPEECH_REC_QUALITY:I = 0x4

.field public static final DEFUALT_MULTIMEDIA_CHANNAL:I = 0x1

.field public static final DEFUALT_SPEECH_CHANNAL:I = 0x1

.field public static final HIGH_BAND:I = 0x1

.field public static final LOW_BAND:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Speex"

.field private static sInterface:Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNativeContext:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouAppApplication;->a:Landroid/content/Context;

    invoke-static {v0}, Laox;->a(Landroid/content/Context;)Laox;

    .line 138
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouAppApplication;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;->loadSpeexLibrary(Landroid/content/Context;)V

    .line 140
    const-string v0, "speex opened"

    invoke-static {v0}, Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;->LOGD(Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;->mContext:Landroid/content/Context;

    .line 86
    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x7

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;->open(IIII)I

    .line 97
    return-void
.end method

.method private static LOGD(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 525
    return-void
.end method

.method public static getInterface()Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;
    .locals 1

    .prologue
    .line 507
    sget-object v0, Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;->sInterface:Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;

    if-nez v0, :cond_0

    .line 508
    new-instance v0, Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;

    invoke-direct {v0}, Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;-><init>()V

    sput-object v0, Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;->sInterface:Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;

    .line 510
    :cond_0
    sget-object v0, Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;->sInterface:Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;

    return-object v0
.end method

.method public static getInterface(Landroid/content/Context;)Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;
    .locals 1
    .parameter

    .prologue
    .line 500
    sget-object v0, Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;->sInterface:Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;

    if-nez v0, :cond_0

    .line 501
    new-instance v0, Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;

    invoke-direct {v0, p0}, Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;->sInterface:Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;

    .line 503
    :cond_0
    sget-object v0, Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;->sInterface:Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;

    return-object v0
.end method

.method private static loadSpeexLibrary(Landroid/content/Context;)V
    .locals 8
    .parameter

    .prologue
    .line 100
    const-string v0, "raw/speex_sogou"

    .line 101
    sget-object v1, Laox;->o:Ljava/lang/String;

    .line 102
    sget-object v2, Laox;->p:Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    .line 107
    :cond_0
    const/4 v0, 0x0

    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 110
    :try_start_0
    const-string v4, "raw/speex_sogou"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 111
    :try_start_1
    const-string v3, "speex_sogou"

    invoke-static {v0, v1, v3}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 117
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 128
    :cond_1
    :goto_0
    :try_start_2
    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_2

    .line 133
    :goto_1
    return-void

    .line 112
    :catch_0
    move-exception v1

    .line 117
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 114
    :catch_1
    move-exception v1

    .line 117
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_2
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    throw v0

    .line 129
    :catch_2
    move-exception v0

    goto :goto_1

    .line 117
    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2
.end method

.method public static shortToByte(S[BI)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 425
    array-length v0, p1

    mul-int/lit8 v1, p2, 0x2

    if-gt v0, v1, :cond_0

    .line 426
    const/4 v0, 0x0

    .line 432
    :goto_0
    return v0

    .line 429
    :cond_0
    mul-int/lit8 v0, p2, 0x2

    and-int/lit16 v1, p0, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->byteValue()B

    move-result v1

    aput-byte v1, p1, v0

    .line 430
    shr-int/lit8 v0, p0, 0x8

    .line 431
    mul-int/lit8 v1, p2, 0x2

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->byteValue()B

    move-result v0

    aput-byte v0, p1, v1

    .line 432
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public native close()V
.end method

.method public decodeFromRaw(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 351
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 352
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 353
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;->getDecFrameSizeSpeech()I

    move-result v0

    move v5, v0

    .line 354
    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;->getEncFrameSizeSpeech()I

    move-result v0

    .line 358
    :goto_1
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-nez v4, :cond_2

    .line 394
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 395
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v1

    .line 397
    :goto_2
    return v0

    .line 353
    :cond_0
    invoke-virtual {p0}, Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;->getDecFrameSizeMultimedia()I

    move-result v0

    move v5, v0

    goto :goto_0

    .line 354
    :cond_1
    invoke-virtual {p0}, Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;->getEncFrameSizeMultimedia()I

    move-result v0

    goto :goto_1

    .line 360
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-eqz v4, :cond_3

    .line 394
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 395
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v1

    goto :goto_2

    .line 363
    :cond_3
    :try_start_2
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 365
    :try_start_3
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 366
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v3

    if-nez v3, :cond_4

    .line 394
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 395
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v1

    goto :goto_2

    .line 370
    :cond_4
    :try_start_4
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 372
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 376
    :try_start_5
    new-array v6, v5, [B

    .line 377
    new-array v7, v0, [S

    .line 378
    mul-int/lit8 v0, v0, 0x2

    new-array v8, v0, [B

    .line 380
    :goto_3
    const/4 v0, 0x0

    invoke-virtual {v4, v6, v0, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    .line 381
    if-eqz p3, :cond_5

    invoke-virtual {p0, v6, v7, v0}, Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;->decodeSpeech([B[SI)I

    move-result v0

    :goto_4
    move v2, v1

    .line 384
    :goto_5
    if-ge v2, v0, :cond_6

    .line 385
    aget-short v9, v7, v2

    invoke-static {v9, v8, v2}, Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;->shortToByte(S[BI)Z

    .line 384
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 381
    :cond_5
    invoke-virtual {p0, v6, v7, v0}, Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;->decodeMultimedia([B[SI)I

    move-result v0

    goto :goto_4

    .line 387
    :cond_6
    const/4 v2, 0x0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {v3, v8, v2, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    .line 390
    :catch_0
    move-exception v0

    move-object v0, v3

    move-object v2, v4

    .line 394
    :goto_6
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 395
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v1

    goto :goto_2

    .line 389
    :cond_7
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 394
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 395
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 397
    const/4 v0, 0x1

    goto :goto_2

    .line 394
    :catchall_0
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    :goto_7
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 395
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    throw v0

    .line 394
    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_7

    .line 390
    :catch_1
    move-exception v0

    move-object v0, v2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v0, v2

    move-object v2, v4

    goto :goto_6
.end method

.method public native decodeMultimedia([B[SI)I
.end method

.method public native decodeSpeech([B[SI)I
.end method

.method public native destSize(II)I
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 514
    const/4 v0, 0x0

    sput-object v0, Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;->sInterface:Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;

    .line 517
    invoke-virtual {p0}, Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;->close()V

    .line 518
    return-void
.end method

.method public native dspClose()V
.end method

.method public native dspDestSize(II)I
.end method

.method public native dspOpen(I)I
.end method

.method public native dspPreprocess([S[S)I
.end method

.method public native encodeMultimedia([SI[BI)I
.end method

.method public native encodeSpeech([SI[BI)I
.end method

.method public encodeToRaw([S[BZ)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 408
    array-length v1, p1

    .line 411
    if-eqz p3, :cond_0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;->encodeSpeech([SI[BI)I

    move-result v0

    .line 421
    :goto_0
    return v0

    .line 411
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;->encodeMultimedia([SI[BI)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    .line 415
    :catch_0
    move-exception v1

    .line 416
    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0

    .line 417
    :catch_1
    move-exception v1

    .line 418
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public encodeToRaw(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Z)Z
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 294
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    array-length v0, v0

    .line 297
    new-array v2, v0, [B

    .line 298
    array-length v3, v2

    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [S

    .line 301
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v4

    .line 303
    invoke-virtual {v4, v3}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    .line 308
    if-eqz p3, :cond_0

    const/4 v4, 0x0

    :try_start_0
    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v3, v4, v2, v0}, Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;->encodeSpeech([SI[BI)I

    move-result v0

    .line 318
    :goto_0
    if-gtz v0, :cond_1

    move v0, v1

    .line 346
    :goto_1
    return v0

    .line 308
    :cond_0
    const/4 v4, 0x0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v3, v4, v2, v0}, Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;->encodeMultimedia([SI[BI)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    move v0, v1

    .line 316
    goto :goto_0

    .line 314
    :catch_1
    move-exception v0

    .line 315
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0

    .line 323
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 325
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_2

    move v0, v1

    .line 326
    goto :goto_1

    .line 331
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 332
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 333
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v0}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 334
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 335
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 346
    const/4 v0, 0x1

    goto :goto_1

    .line 336
    :catch_2
    move-exception v0

    .line 337
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    .line 338
    goto :goto_1
.end method

.method public encodeToRaw(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 221
    const/4 v4, 0x0

    .line 222
    const/4 v2, 0x0

    .line 224
    const/4 v3, 0x0

    .line 225
    const/4 v1, 0x0

    .line 226
    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;->getEncFrameSizeSpeech()I

    move-result v0

    move v5, v0

    .line 227
    :goto_0
    if-eqz p3, :cond_3

    invoke-virtual {p0}, Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;->getDecFrameSizeSpeech()I

    move-result v0

    .line 228
    :goto_1
    mul-int/lit8 v6, v5, 0x2

    new-array v6, v6, [B

    .line 229
    new-array v7, v5, [S

    .line 230
    new-array v8, v0, [B

    .line 232
    const/4 v0, 0x1

    .line 234
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a

    .line 235
    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f

    move-result v4

    if-nez v4, :cond_4

    .line 236
    const/4 v0, 0x0

    .line 271
    if-eqz v5, :cond_0

    if-eqz v3, :cond_0

    .line 273
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 279
    :cond_0
    :goto_2
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 281
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 290
    :cond_1
    :goto_3
    return v0

    .line 226
    :cond_2
    invoke-virtual {p0}, Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;->getEncFrameSizeMultimedia()I

    move-result v0

    move v5, v0

    goto :goto_0

    .line 227
    :cond_3
    invoke-virtual {p0}, Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;->getDecFrameSizeMultimedia()I

    move-result v0

    goto :goto_1

    .line 274
    :catch_0
    move-exception v3

    .line 275
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 282
    :catch_1
    move-exception v1

    .line 283
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 238
    :cond_4
    :try_start_4
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_14
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_f

    move-result v4

    if-eqz v4, :cond_6

    .line 239
    const/4 v0, 0x0

    .line 271
    if-eqz v5, :cond_5

    if-eqz v3, :cond_5

    .line 273
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 279
    :cond_5
    :goto_4
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 281
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    .line 282
    :catch_2
    move-exception v1

    .line 283
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 274
    :catch_3
    move-exception v3

    .line 275
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 241
    :cond_6
    :try_start_7
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_14
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_f

    .line 242
    :try_start_8
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 243
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 244
    invoke-static {v4}, Layw;->a(Ljava/io/File;)Z

    .line 249
    :cond_7
    :goto_5
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 250
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_10

    .line 252
    :try_start_9
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_15
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_11

    .line 254
    :goto_6
    :try_start_a
    invoke-virtual {v1, v6}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_b

    .line 256
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v9

    .line 258
    invoke-virtual {v9, v7}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    .line 259
    if-eqz p3, :cond_a

    const/4 v9, 0x0

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v7, v9, v8, v3}, Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;->encodeSpeech([SI[BI)I

    move-result v3

    .line 260
    :goto_7
    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_12

    goto :goto_6

    .line 264
    :catch_4
    move-exception v0

    move-object v3, v4

    move-object v4, v5

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    .line 265
    :goto_8
    :try_start_b
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 266
    const/4 v0, 0x0

    .line 271
    if-eqz v4, :cond_8

    if-eqz v2, :cond_8

    .line 273
    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    .line 279
    :cond_8
    :goto_9
    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    .line 281
    :try_start_d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    goto/16 :goto_3

    .line 282
    :catch_5
    move-exception v0

    .line 283
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 284
    const/4 v0, 0x0

    .line 285
    goto/16 :goto_3

    .line 246
    :cond_9
    :try_start_e
    invoke-static {v4}, Layw;->b(Ljava/io/File;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_10

    goto :goto_5

    .line 264
    :catch_6
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    goto :goto_8

    .line 259
    :cond_a
    const/4 v9, 0x0

    :try_start_f
    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v7, v9, v8, v3}, Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;->encodeMultimedia([SI[BI)I

    move-result v3

    goto :goto_7

    .line 262
    :cond_b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 263
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_12

    .line 271
    if-eqz v5, :cond_c

    if-eqz v1, :cond_c

    .line 273
    :try_start_10
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8

    .line 279
    :cond_c
    :goto_a
    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    .line 281
    :try_start_11
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7

    goto/16 :goto_3

    .line 282
    :catch_7
    move-exception v0

    .line 283
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 284
    const/4 v0, 0x0

    .line 285
    goto/16 :goto_3

    .line 274
    :catch_8
    move-exception v0

    .line 275
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 276
    const/4 v0, 0x0

    goto :goto_a

    .line 274
    :catch_9
    move-exception v0

    .line 275
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 276
    const/4 v0, 0x0

    goto :goto_9

    .line 267
    :catch_a
    move-exception v0

    move-object v5, v4

    move-object v4, v2

    move-object v2, v1

    .line 268
    :goto_b
    :try_start_12
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 269
    const/4 v0, 0x0

    .line 271
    if-eqz v5, :cond_d

    if-eqz v3, :cond_d

    .line 273
    :try_start_13
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_c

    .line 279
    :cond_d
    :goto_c
    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    .line 281
    :try_start_14
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_b

    goto/16 :goto_3

    .line 282
    :catch_b
    move-exception v0

    .line 283
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 284
    const/4 v0, 0x0

    .line 285
    goto/16 :goto_3

    .line 274
    :catch_c
    move-exception v0

    .line 275
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 276
    const/4 v0, 0x0

    goto :goto_c

    .line 271
    :catchall_0
    move-exception v0

    move-object v5, v4

    move-object v4, v2

    move-object v2, v1

    :goto_d
    if-eqz v5, :cond_e

    if-eqz v3, :cond_e

    .line 273
    :try_start_15
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_d

    .line 279
    :cond_e
    :goto_e
    if-eqz v4, :cond_f

    if-eqz v2, :cond_f

    .line 281
    :try_start_16
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_e

    .line 285
    :cond_f
    :goto_f
    throw v0

    .line 274
    :catch_d
    move-exception v1

    .line 275
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e

    .line 282
    :catch_e
    move-exception v1

    .line 283
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f

    .line 271
    :catchall_1
    move-exception v0

    move-object v4, v2

    move-object v2, v1

    goto :goto_d

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_d

    :catchall_3
    move-exception v0

    goto :goto_d

    :catchall_4
    move-exception v0

    move-object v3, v1

    goto :goto_d

    :catchall_5
    move-exception v0

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    goto :goto_d

    .line 267
    :catch_f
    move-exception v0

    move-object v4, v2

    move-object v2, v1

    goto :goto_b

    :catch_10
    move-exception v0

    move-object v2, v1

    goto :goto_b

    :catch_11
    move-exception v0

    goto :goto_b

    :catch_12
    move-exception v0

    move-object v3, v1

    goto :goto_b

    .line 264
    :catch_13
    move-exception v0

    move-object v11, v3

    move-object v3, v2

    move-object v2, v11

    goto/16 :goto_8

    :catch_14
    move-exception v0

    move-object v4, v5

    move-object v11, v2

    move-object v2, v3

    move-object v3, v11

    goto/16 :goto_8

    :catch_15
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_8
.end method

.method public native getDecFrameSizeMultimedia()I
.end method

.method public native getDecFrameSizeSpeech()I
.end method

.method public getDestSize(ZI)I
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 437
    .line 439
    if-ne p1, v1, :cond_0

    .line 442
    :goto_0
    :try_start_0
    invoke-virtual {p0, v1, p2}, Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;->destSize(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 446
    :goto_1
    return v0

    .line 443
    :catch_0
    move-exception v1

    .line 444
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method public getDspDestSize(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 465
    const/4 v0, 0x0

    .line 467
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;->dspDestSize(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 471
    :goto_0
    return v0

    .line 468
    :catch_0
    move-exception v1

    .line 469
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public native getEncFrameSizeMultimedia()I
.end method

.method public native getEncFrameSizeSpeech()I
.end method

.method public native open(IIII)I
.end method

.method public startSpeexdsp([S[S)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 451
    const/4 v0, 0x0

    .line 453
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;->dspPreprocess([S[S)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 460
    :goto_0
    return v0

    .line 454
    :catch_0
    move-exception v1

    .line 455
    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0

    .line 456
    :catch_1
    move-exception v1

    .line 457
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

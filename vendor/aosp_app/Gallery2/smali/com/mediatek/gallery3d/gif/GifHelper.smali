.class public Lcom/mediatek/gallery3d/gif/GifHelper;
.super Ljava/lang/Object;
.source "GifHelper.java"


# static fields
.field public static final FILE_EXTENSION:Ljava/lang/String; = "gif"

.field public static final MIME_TYPE:Ljava/lang/String; = "image/gif"

.field private static final TAG:Ljava/lang/String; = "Gallery2/GifHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createGifDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;)Lcom/mediatek/gifdecoder/GifDecoder;
    .locals 4
    .parameter "jc"
    .parameter "fd"

    .prologue
    .line 77
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 78
    .local v1, is:Ljava/io/InputStream;
    invoke-static {v1}, Lcom/mediatek/gallery3d/gif/GifHelper;->createGifDecoderInner(Ljava/io/InputStream;)Lcom/mediatek/gifdecoder/GifDecoder;

    move-result-object v0

    .line 79
    .local v0, gifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v0           #gifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;
    .end local v1           #is:Ljava/io/InputStream;
    :goto_0
    return-object v0

    .line 81
    :catch_0
    move-exception v2

    .line 82
    .local v2, t:Ljava/lang/Throwable;
    const-string v3, "Gallery2/GifHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createGifDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/io/InputStream;)Lcom/mediatek/gifdecoder/GifDecoder;
    .locals 2
    .parameter "jc"
    .parameter "is"

    .prologue
    .line 68
    :try_start_0
    invoke-static {p1}, Lcom/mediatek/gallery3d/gif/GifHelper;->createGifDecoderInner(Ljava/io/InputStream;)Lcom/mediatek/gifdecoder/GifDecoder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 71
    :goto_0
    return-object v1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "Gallery2/GifHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static createGifDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;)Lcom/mediatek/gifdecoder/GifDecoder;
    .locals 4
    .parameter "jc"
    .parameter "filePath"

    .prologue
    .line 42
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 43
    .local v1, is:Ljava/io/InputStream;
    invoke-static {v1}, Lcom/mediatek/gallery3d/gif/GifHelper;->createGifDecoderInner(Ljava/io/InputStream;)Lcom/mediatek/gifdecoder/GifDecoder;

    move-result-object v0

    .line 44
    .local v0, gifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v0           #gifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;
    .end local v1           #is:Ljava/io/InputStream;
    :goto_0
    return-object v0

    .line 46
    :catch_0
    move-exception v2

    .line 47
    .local v2, t:Ljava/lang/Throwable;
    const-string v3, "Gallery2/GifHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createGifDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BII)Lcom/mediatek/gifdecoder/GifDecoder;
    .locals 3
    .parameter "jc"
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 54
    if-nez p1, :cond_1

    .line 55
    const-string v1, "Gallery2/GifHelper"

    const-string v2, "createGifDecoder:find null buffer!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 v0, 0x0

    .line 63
    :cond_0
    :goto_0
    return-object v0

    .line 58
    :cond_1
    new-instance v0, Lcom/mediatek/gifdecoder/GifDecoder;

    invoke-direct {v0, p1, p2, p3}, Lcom/mediatek/gifdecoder/GifDecoder;-><init>([BII)V

    .line 59
    .local v0, gifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;
    invoke-virtual {v0}, Lcom/mediatek/gifdecoder/GifDecoder;->getTotalFrameCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 60
    const-string v1, "Gallery2/GifHelper"

    const-string v2, "createGifDecoder:got invalid GifDecoder"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static createGifDecoderInner(Ljava/io/InputStream;)Lcom/mediatek/gifdecoder/GifDecoder;
    .locals 3
    .parameter "is"

    .prologue
    .line 88
    if-nez p0, :cond_1

    .line 89
    const-string v1, "Gallery2/GifHelper"

    const-string v2, "createGifDecoder:find null InputStream!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v0, 0x0

    .line 97
    :cond_0
    :goto_0
    return-object v0

    .line 92
    :cond_1
    new-instance v0, Lcom/mediatek/gifdecoder/GifDecoder;

    invoke-direct {v0, p0}, Lcom/mediatek/gifdecoder/GifDecoder;-><init>(Ljava/io/InputStream;)V

    .line 93
    .local v0, gifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;
    invoke-virtual {v0}, Lcom/mediatek/gifdecoder/GifDecoder;->getTotalFrameCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 94
    const-string v1, "Gallery2/GifHelper"

    const-string v2, "createGifDecoder:got invalid GifDecoder"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v0, 0x0

    goto :goto_0
.end method

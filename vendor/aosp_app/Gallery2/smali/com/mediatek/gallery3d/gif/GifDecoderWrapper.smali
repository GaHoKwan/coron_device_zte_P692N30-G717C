.class public Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;
.super Ljava/lang/Object;
.source "GifDecoderWrapper.java"


# static fields
.field public static final INVALID_VALUE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Gallery2/GifDecoderWrapper"


# instance fields
.field private mGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;


# direct methods
.method private constructor <init>(Lcom/mediatek/common/gifdecoder/IGifDecoder;)V
    .locals 0
    .parameter "gifDecoder"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;->mGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    .line 36
    return-void
.end method

.method public static createGifDecoderWrapper(Ljava/io/FileDescriptor;)Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;
    .locals 2
    .parameter "fd"

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-static {v1, p0}, Lcom/mediatek/gallery3d/gif/GifHelper;->createGifDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;)Lcom/mediatek/gifdecoder/GifDecoder;

    move-result-object v0

    .line 63
    .local v0, gifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;
    if-nez v0, :cond_0

    .line 64
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    invoke-direct {v1, v0}, Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;-><init>(Lcom/mediatek/common/gifdecoder/IGifDecoder;)V

    goto :goto_0
.end method

.method public static createGifDecoderWrapper(Ljava/io/InputStream;)Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;
    .locals 2
    .parameter "is"

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-static {v1, p0}, Lcom/mediatek/gallery3d/gif/GifHelper;->createGifDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/io/InputStream;)Lcom/mediatek/gifdecoder/GifDecoder;

    move-result-object v0

    .line 56
    .local v0, gifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;
    if-nez v0, :cond_0

    .line 57
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    invoke-direct {v1, v0}, Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;-><init>(Lcom/mediatek/common/gifdecoder/IGifDecoder;)V

    goto :goto_0
.end method

.method public static createGifDecoderWrapper(Ljava/lang/String;)Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;
    .locals 2
    .parameter "filePath"

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-static {v1, p0}, Lcom/mediatek/gallery3d/gif/GifHelper;->createGifDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;)Lcom/mediatek/gifdecoder/GifDecoder;

    move-result-object v0

    .line 41
    .local v0, gifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;
    if-nez v0, :cond_0

    .line 42
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    invoke-direct {v1, v0}, Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;-><init>(Lcom/mediatek/common/gifdecoder/IGifDecoder;)V

    goto :goto_0
.end method

.method public static createGifDecoderWrapper([BII)Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;
    .locals 2
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-static {v1, p0, p1, p2}, Lcom/mediatek/gallery3d/gif/GifHelper;->createGifDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BII)Lcom/mediatek/gifdecoder/GifDecoder;

    move-result-object v0

    .line 49
    .local v0, gifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;
    if-nez v0, :cond_0

    .line 50
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    invoke-direct {v1, v0}, Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;-><init>(Lcom/mediatek/common/gifdecoder/IGifDecoder;)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public getFrameBitmap(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "frameIndex"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;->mGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 99
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;->mGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    invoke-interface {v0, p1}, Lcom/mediatek/common/gifdecoder/IGifDecoder;->getFrameBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getFrameDuration(I)I
    .locals 1
    .parameter "frameIndex"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;->mGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 94
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;->mGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    invoke-interface {v0, p1}, Lcom/mediatek/common/gifdecoder/IGifDecoder;->getFrameDuration(I)I

    move-result v0

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;->mGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 79
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;->mGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    invoke-interface {v0}, Lcom/mediatek/common/gifdecoder/IGifDecoder;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getTotalDuration()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;->mGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 84
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;->mGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    invoke-interface {v0}, Lcom/mediatek/common/gifdecoder/IGifDecoder;->getTotalDuration()I

    move-result v0

    goto :goto_0
.end method

.method public getTotalFrameCount()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;->mGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 89
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;->mGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    invoke-interface {v0}, Lcom/mediatek/common/gifdecoder/IGifDecoder;->getTotalFrameCount()I

    move-result v0

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;->mGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 74
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;->mGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    invoke-interface {v0}, Lcom/mediatek/common/gifdecoder/IGifDecoder;->getWidth()I

    move-result v0

    goto :goto_0
.end method

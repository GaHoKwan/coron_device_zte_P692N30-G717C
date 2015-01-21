.class public Lcom/mediatek/gallery3d/gif/GifRequest;
.super Lcom/mediatek/gallery3d/data/ImageRequest;
.source "GifRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Gallery2/GifRequest"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/mediatek/gallery3d/data/ImageRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public request(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    .locals 5
    .parameter "jc"
    .parameter "params"
    .parameter "cr"
    .parameter "uri"

    .prologue
    .line 60
    const-string v2, "Gallery2/GifRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request(jc, parmas, cr, uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 75
    :cond_1
    :goto_0
    return-object v0

    .line 63
    :cond_2
    iget-boolean v1, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inGifDecoder:Z

    .line 64
    .local v1, inGifDecoder:Z
    const/4 v2, 0x0

    iput-boolean v2, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inGifDecoder:Z

    .line 65
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mediatek/gallery3d/data/ImageRequest;->request(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    move-result-object v0

    .line 68
    .local v0, dataBundle:Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    if-eqz v1, :cond_1

    .line 69
    if-nez v0, :cond_3

    new-instance v0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    .end local v0           #dataBundle:Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    invoke-direct {v0}, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;-><init>()V

    .line 70
    .restart local v0       #dataBundle:Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    :cond_3
    invoke-static {p3, p4}, Lcom/mediatek/gallery3d/data/DecodeHelper;->openUriInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;->createGifDecoderWrapper(Ljava/io/InputStream;)Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    move-result-object v2

    iput-object v2, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->gifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    goto :goto_0
.end method

.method public request(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Ljava/lang/String;)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    .locals 5
    .parameter "jc"
    .parameter "params"
    .parameter "filePath"

    .prologue
    .line 22
    const-string v2, "Gallery2/GifRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request(jc,parmas,filePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 35
    :cond_1
    :goto_0
    return-object v0

    .line 25
    :cond_2
    iget-boolean v1, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inGifDecoder:Z

    .line 26
    .local v1, inGifDecoder:Z
    const/4 v2, 0x0

    iput-boolean v2, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inGifDecoder:Z

    .line 27
    invoke-super {p0, p1, p2, p3}, Lcom/mediatek/gallery3d/data/ImageRequest;->request(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Ljava/lang/String;)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    move-result-object v0

    .line 29
    .local v0, dataBundle:Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    if-eqz v1, :cond_1

    .line 30
    if-nez v0, :cond_3

    new-instance v0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    .end local v0           #dataBundle:Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    invoke-direct {v0}, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;-><init>()V

    .line 31
    .restart local v0       #dataBundle:Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    :cond_3
    invoke-static {p3}, Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;->createGifDecoderWrapper(Ljava/lang/String;)Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    move-result-object v2

    iput-object v2, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->gifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    goto :goto_0
.end method

.method public request(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;[BII)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    .locals 4
    .parameter "jc"
    .parameter "params"
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 40
    const-string v2, "Gallery2/GifRequest"

    const-string v3, "request(jc, params, data, ...)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-gtz p5, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 55
    :cond_1
    :goto_0
    return-object v0

    .line 43
    :cond_2
    iget-boolean v1, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inGifDecoder:Z

    .line 44
    .local v1, inGifDecoder:Z
    const/4 v2, 0x0

    iput-boolean v2, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inGifDecoder:Z

    .line 45
    invoke-super/range {p0 .. p5}, Lcom/mediatek/gallery3d/data/ImageRequest;->request(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;[BII)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    move-result-object v0

    .line 48
    .local v0, dataBundle:Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    if-eqz v1, :cond_1

    .line 49
    if-nez v0, :cond_3

    new-instance v0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    .end local v0           #dataBundle:Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    invoke-direct {v0}, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;-><init>()V

    .line 50
    .restart local v0       #dataBundle:Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    :cond_3
    invoke-static {p3, p4, p5}, Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;->createGifDecoderWrapper([BII)Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    move-result-object v2

    iput-object v2, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->gifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    goto :goto_0
.end method

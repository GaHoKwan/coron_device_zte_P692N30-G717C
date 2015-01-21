.class public Lcom/mediatek/gallery3d/jps/JpsRequest;
.super Ljava/lang/Object;
.source "JpsRequest.java"

# interfaces
.implements Lcom/mediatek/gallery3d/data/IMediaRequest;


# static fields
.field private static final TAG:Ljava/lang/String; = "Gallery2/JpsRequest"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method private retrieveLargeData(Lcom/android/gallery3d/util/ThreadPool$JobContext;ILcom/mediatek/gallery3d/util/MediatekFeature$Params;Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;Landroid/graphics/BitmapRegionDecoder;)V
    .locals 10
    .parameter "jc"
    .parameter "layout"
    .parameter "params"
    .parameter "dataBundle"
    .parameter "regionDecoder"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 165
    if-eqz p3, :cond_0

    if-nez p5, :cond_2

    .line 166
    :cond_0
    const-string v3, "Gallery2/JpsRequest"

    const-string v4, "retrieveLargeData:invalid parameters"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_1
    :goto_0
    return-void

    .line 170
    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 172
    :cond_3
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p5}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v3

    invoke-virtual {p5}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v4

    invoke-direct {v1, v8, v8, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 174
    .local v1, imageRect:Landroid/graphics/Rect;
    invoke-static {p2, v9, v1}, Lcom/mediatek/gallery3d/jps/JpsHelper;->adjustRect(IZLandroid/graphics/Rect;)V

    .line 176
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 177
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    const/high16 v3, 0xa0

    const/4 v4, -0x1

    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v6, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    iget v7, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    invoke-static {v3, v4, v5, v6}, Lcom/mediatek/gallery3d/data/DecodeHelper;->calculateSampleSize(IIII)I

    move-result v3

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 185
    iget-boolean v3, p3, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalFullFrame:Z

    if-eqz v3, :cond_4

    .line 186
    invoke-virtual {p5}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v3

    invoke-virtual {p5}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v4

    invoke-virtual {v1, v8, v8, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 187
    invoke-static {p2, v9, v1}, Lcom/mediatek/gallery3d/jps/JpsHelper;->adjustRect(IZLandroid/graphics/Rect;)V

    .line 188
    invoke-static {p1, p5, v1, v2}, Lcom/mediatek/gallery3d/data/DecodeHelper;->safeDecodeImageRegion(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 190
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4

    .line 191
    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 192
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 193
    const/4 v0, 0x0

    .line 202
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_4
    :goto_1
    iget-boolean v3, p3, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inFirstFullFrame:Z

    if-nez v3, :cond_5

    iget-boolean v3, p3, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inSecondFullFrame:Z

    if-eqz v3, :cond_1

    .line 203
    :cond_5
    invoke-virtual {p5}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v3

    invoke-virtual {p5}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v4

    invoke-virtual {v1, v8, v8, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 204
    invoke-static {p2, v8, v1}, Lcom/mediatek/gallery3d/jps/JpsHelper;->adjustRect(IZLandroid/graphics/Rect;)V

    .line 205
    invoke-static {p1, p5, v1, v2}, Lcom/mediatek/gallery3d/data/DecodeHelper;->safeDecodeImageRegion(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 207
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 208
    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 209
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 210
    const/4 v0, 0x0

    goto :goto_0

    .line 195
    :cond_6
    invoke-static {p1, v0, v9}, Lcom/mediatek/gallery3d/data/DecodeHelper;->getRegionDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Z)Lcom/mediatek/gallery3d/data/RegionDecoder;

    move-result-object v3

    iput-object v3, p4, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->originalFullFrame:Lcom/mediatek/gallery3d/data/RegionDecoder;

    goto :goto_1

    .line 212
    :cond_7
    invoke-static {p1, v0, v9}, Lcom/mediatek/gallery3d/data/DecodeHelper;->getRegionDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Z)Lcom/mediatek/gallery3d/data/RegionDecoder;

    move-result-object v3

    iput-object v3, p4, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->secondFullFrame:Lcom/mediatek/gallery3d/data/RegionDecoder;

    goto/16 :goto_0
.end method

.method private retrieveThumbData(Lcom/android/gallery3d/util/ThreadPool$JobContext;ILcom/mediatek/gallery3d/util/MediatekFeature$Params;Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;Landroid/graphics/BitmapRegionDecoder;)V
    .locals 8
    .parameter "jc"
    .parameter "layout"
    .parameter "params"
    .parameter "dataBundle"
    .parameter "regionDecoder"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 124
    if-eqz p3, :cond_0

    if-nez p5, :cond_2

    .line 125
    :cond_0
    const-string v2, "Gallery2/JpsRequest"

    const-string v3, "retrieveThumbData:invalid parameters"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_1
    :goto_0
    return-void

    .line 129
    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 131
    :cond_3
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p5}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v2

    invoke-virtual {p5}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v3

    invoke-direct {v0, v6, v6, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 133
    .local v0, imageRect:Landroid/graphics/Rect;
    invoke-static {p2, v7, v0}, Lcom/mediatek/gallery3d/jps/JpsHelper;->adjustRect(IZLandroid/graphics/Rect;)V

    .line 135
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 136
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, p3, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inType:I

    iget v5, p3, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalTargetSize:I

    invoke-static {v2, v3, v4, v5}, Lcom/mediatek/gallery3d/data/DecodeHelper;->calculateSampleSizeByType(IIII)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 140
    iget-boolean v2, p3, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inPQEnhance:Z

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPostProc:Z

    .line 142
    iget-boolean v2, p3, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalFrame:Z

    if-eqz v2, :cond_4

    .line 143
    invoke-virtual {p5}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v2

    invoke-virtual {p5}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v3

    invoke-virtual {v0, v6, v6, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 144
    invoke-static {p2, v7, v0}, Lcom/mediatek/gallery3d/jps/JpsHelper;->adjustRect(IZLandroid/graphics/Rect;)V

    .line 145
    invoke-static {p1, p5, v0, v1}, Lcom/mediatek/gallery3d/data/DecodeHelper;->safeDecodeImageRegion(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p4, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->originalFrame:Landroid/graphics/Bitmap;

    .line 147
    iget-object v2, p4, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->originalFrame:Landroid/graphics/Bitmap;

    iget v3, p3, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inType:I

    iget v4, p3, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalTargetSize:I

    invoke-static {v2, v3, v4}, Lcom/mediatek/gallery3d/data/DecodeHelper;->postScaleDown(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p4, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->originalFrame:Landroid/graphics/Bitmap;

    .line 152
    :cond_4
    iget-boolean v2, p3, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inFirstFrame:Z

    if-nez v2, :cond_5

    iget-boolean v2, p3, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inSecondFrame:Z

    if-eqz v2, :cond_1

    .line 153
    :cond_5
    invoke-virtual {p5}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v2

    invoke-virtual {p5}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v3

    invoke-virtual {v0, v6, v6, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 154
    invoke-static {p2, v6, v0}, Lcom/mediatek/gallery3d/jps/JpsHelper;->adjustRect(IZLandroid/graphics/Rect;)V

    .line 155
    invoke-static {p1, p5, v0, v1}, Lcom/mediatek/gallery3d/data/DecodeHelper;->safeDecodeImageRegion(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p4, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->secondFrame:Landroid/graphics/Bitmap;

    .line 157
    iget-object v2, p4, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->secondFrame:Landroid/graphics/Bitmap;

    iget v3, p3, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inType:I

    iget v4, p3, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalTargetSize:I

    invoke-static {v2, v3, v4}, Lcom/mediatek/gallery3d/data/DecodeHelper;->postScaleDown(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p4, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->secondFrame:Landroid/graphics/Bitmap;

    goto/16 :goto_0
.end method


# virtual methods
.method public request(Lcom/android/gallery3d/util/ThreadPool$JobContext;ILcom/mediatek/gallery3d/util/MediatekFeature$Params;Landroid/graphics/BitmapRegionDecoder;)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    .locals 6
    .parameter "jc"
    .parameter "layout"
    .parameter "params"
    .parameter "regionDecoder"

    .prologue
    const/4 v4, 0x0

    .line 93
    if-eqz p3, :cond_0

    if-nez p4, :cond_2

    .line 94
    :cond_0
    const-string v0, "Gallery2/JpsRequest"

    const-string v1, "request:got null params or decoder!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_1
    :goto_0
    return-object v4

    .line 97
    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    :cond_3
    const-string v0, "Gallery2/JpsRequest"

    invoke-virtual {p3, v0}, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->info(Ljava/lang/String;)V

    .line 101
    new-instance v4, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    invoke-direct {v4}, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;-><init>()V

    .line 103
    .local v4, dataBundle:Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    iget-boolean v0, p3, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalFrame:Z

    if-nez v0, :cond_4

    iget-boolean v0, p3, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inFirstFrame:Z

    if-nez v0, :cond_4

    iget-boolean v0, p3, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inSecondFrame:Z

    if-eqz v0, :cond_5

    :cond_4
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 105
    invoke-direct/range {v0 .. v5}, Lcom/mediatek/gallery3d/jps/JpsRequest;->retrieveThumbData(Lcom/android/gallery3d/util/ThreadPool$JobContext;ILcom/mediatek/gallery3d/util/MediatekFeature$Params;Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;Landroid/graphics/BitmapRegionDecoder;)V

    .line 108
    :cond_5
    iget-boolean v0, p3, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalFullFrame:Z

    if-nez v0, :cond_6

    iget-boolean v0, p3, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inFirstFullFrame:Z

    if-nez v0, :cond_6

    iget-boolean v0, p3, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inSecondFullFrame:Z

    if-eqz v0, :cond_7

    :cond_6
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 110
    invoke-direct/range {v0 .. v5}, Lcom/mediatek/gallery3d/jps/JpsRequest;->retrieveLargeData(Lcom/android/gallery3d/util/ThreadPool$JobContext;ILcom/mediatek/gallery3d/util/MediatekFeature$Params;Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;Landroid/graphics/BitmapRegionDecoder;)V

    .line 113
    :cond_7
    iget-boolean v0, p3, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inGifDecoder:Z

    if-eqz v0, :cond_8

    .line 114
    const-string v0, "Gallery2/JpsRequest"

    const-string v1, "request: no GifDecoder can be generated from jps"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_8
    const-string v0, "Gallery2/JpsRequest"

    invoke-virtual {v4, v0}, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public request(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    .locals 9
    .parameter "jc"
    .parameter "params"
    .parameter "cr"
    .parameter "uri"

    .prologue
    const/4 v5, 0x0

    .line 67
    const-string v6, "Gallery2/JpsRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "request(jc, parmas, cr, uri="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 69
    :cond_0
    const-string v6, "Gallery2/JpsRequest"

    const-string v7, "request:invalid parameters"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :goto_0
    return-object v5

    .line 73
    :cond_1
    const/4 v3, 0x0

    .line 74
    .local v3, pfd:Landroid/os/ParcelFileDescriptor;
    const/4 v1, 0x0

    .line 76
    .local v1, fd:Ljava/io/FileDescriptor;
    :try_start_0
    const-string v6, "r"

    invoke-virtual {p3, p4, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 77
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 78
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v6, v1, v7}, Lcom/android/gallery3d/data/DecodeUtils;->createBitmapRegionDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v4

    .line 81
    .local v4, regionDecoder:Landroid/graphics/BitmapRegionDecoder;
    const/4 v2, 0x2

    .line 82
    .local v2, layout:I
    invoke-virtual {p0, p1, v2, p2, v4}, Lcom/mediatek/gallery3d/jps/JpsRequest;->request(Lcom/android/gallery3d/util/ThreadPool$JobContext;ILcom/mediatek/gallery3d/util/MediatekFeature$Params;Landroid/graphics/BitmapRegionDecoder;)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 87
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    .line 83
    .end local v2           #layout:I
    .end local v4           #regionDecoder:Landroid/graphics/BitmapRegionDecoder;
    :catch_0
    move-exception v0

    .line 84
    .local v0, ex:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    throw v5
.end method

.method public request(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Ljava/lang/String;)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    .locals 10
    .parameter "jc"
    .parameter "params"
    .parameter "filePath"

    .prologue
    const/4 v6, 0x0

    .line 35
    const-string v7, "Gallery2/JpsRequest"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "request(jc, parmas, filePath="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 37
    :cond_0
    const-string v7, "Gallery2/JpsRequest"

    const-string v8, "request:invalid parameters"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :goto_0
    return-object v6

    .line 41
    :cond_1
    const/4 v2, 0x0

    .line 42
    .local v2, fis:Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 44
    .local v1, fd:Ljava/io/FileDescriptor;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v2           #fis:Ljava/io/FileInputStream;
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 46
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v7, v1, v8}, Lcom/android/gallery3d/data/DecodeUtils;->createBitmapRegionDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v5

    .line 49
    .local v5, regionDecoder:Landroid/graphics/BitmapRegionDecoder;
    const/4 v4, 0x2

    .line 50
    .local v4, layout:I
    invoke-virtual {p0, p1, v4, p2, v5}, Lcom/mediatek/gallery3d/jps/JpsRequest;->request(Lcom/android/gallery3d/util/ThreadPool$JobContext;ILcom/mediatek/gallery3d/util/MediatekFeature$Params;Landroid/graphics/BitmapRegionDecoder;)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 55
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 51
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v4           #layout:I
    .end local v5           #regionDecoder:Landroid/graphics/BitmapRegionDecoder;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 52
    .local v0, ex:Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_2
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v6

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .line 51
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public request(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;[BII)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    .locals 2
    .parameter "jc"
    .parameter "params"
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 61
    const-string v0, "Gallery2/JpsRequest"

    const-string v1, "request:no support for buffer!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public setMavListener(Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 221
    return-void
.end method

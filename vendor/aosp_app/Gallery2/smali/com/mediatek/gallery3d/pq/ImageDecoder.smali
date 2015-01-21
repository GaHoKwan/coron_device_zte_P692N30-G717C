.class public Lcom/mediatek/gallery3d/pq/ImageDecoder;
.super Ljava/lang/Object;
.source "ImageDecoder.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field mApply:Ljava/lang/Runnable;

.field mContext:Landroid/content/Context;

.field mGLviewHeight:I

.field mGLviewWidth:I

.field mLevelCount:I

.field mOriginalImageHeight:I

.field mOriginalImageWidth:I

.field mScreenHeight:I

.field mScreenNail:Landroid/graphics/Bitmap;

.field mScreenWidth:I

.field public mUri:Ljava/lang/String;

.field options:Landroid/graphics/BitmapFactory$Options;

.field targetSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IIIIII)V
    .locals 2
    .parameter "context"
    .parameter "mPqUri"
    .parameter "width"
    .parameter "height"
    .parameter "targetSize"
    .parameter "viewWidth"
    .parameter "viewHeight"
    .parameter "levelCount"

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "Gallery2/ImageDecoder"

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->TAG:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->mUri:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->options:Landroid/graphics/BitmapFactory$Options;

    .line 34
    iput-object v1, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->mScreenNail:Landroid/graphics/Bitmap;

    .line 35
    iput-object v1, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->mApply:Ljava/lang/Runnable;

    .line 39
    iput p3, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->mScreenWidth:I

    .line 40
    iput p4, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->mScreenHeight:I

    .line 41
    iput p6, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->mGLviewWidth:I

    .line 42
    iput p7, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->mGLviewHeight:I

    .line 43
    iput p8, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->mLevelCount:I

    .line 44
    iput-object p2, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->mUri:Ljava/lang/String;

    .line 45
    iput p5, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->targetSize:I

    .line 46
    iput-object p1, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->mContext:Landroid/content/Context;

    .line 47
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->options:Landroid/graphics/BitmapFactory$Options;

    .line 48
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isPictureQualityEnhanceSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPostProc:Z

    .line 51
    :cond_0
    return-void
.end method


# virtual methods
.method public apply()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/pq/ImageDecoder;->decoder()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 55
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 56
    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->mScreenNail:Landroid/graphics/Bitmap;

    .line 60
    :goto_0
    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->mScreenNail:Landroid/graphics/Bitmap;

    return-object v1

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->TAG:Ljava/lang/String;

    const-string v2, "apply bitmap == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public caculateInSampleSize()I
    .locals 6

    .prologue
    .line 100
    const/4 v1, 0x0

    .line 101
    .local v1, is:Ljava/io/InputStream;
    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 103
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->mUri:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 104
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v3, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 110
    if-eqz v1, :cond_0

    .line 112
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 118
    :cond_0
    :goto_0
    const/high16 v2, 0x3f80

    .line 119
    .local v2, scale:F
    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->options:Landroid/graphics/BitmapFactory$Options;

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->options:Landroid/graphics/BitmapFactory$Options;

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v3, :cond_1

    .line 120
    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->options:Landroid/graphics/BitmapFactory$Options;

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v3, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->mOriginalImageWidth:I

    .line 121
    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->options:Landroid/graphics/BitmapFactory$Options;

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v3, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->mOriginalImageHeight:I

    .line 122
    iget v3, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->targetSize:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->options:Landroid/graphics/BitmapFactory$Options;

    iget v4, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget-object v5, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->options:Landroid/graphics/BitmapFactory$Options;

    iget v5, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 124
    :cond_1
    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v2}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v4

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 125
    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " pq  options.inSampleSize=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->options:Landroid/graphics/BitmapFactory$Options;

    iget v5, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " width=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->options:Landroid/graphics/BitmapFactory$Options;

    iget v5, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " height=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->options:Landroid/graphics/BitmapFactory$Options;

    iget v5, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "targetSize=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->targetSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->options:Landroid/graphics/BitmapFactory$Options;

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    return v3

    .line 113
    .end local v2           #scale:F
    :catch_0
    move-exception v0

    .line 114
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 105
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 106
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_2
    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->TAG:Ljava/lang/String;

    const-string v4, "bitmapfactory decodestream fail"

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    if-eqz v1, :cond_0

    .line 112
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 113
    :catch_2
    move-exception v0

    .line 114
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 107
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 108
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_4
    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->TAG:Ljava/lang/String;

    const-string v4, "bitmapfactory decodestream fail"

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 110
    if-eqz v1, :cond_0

    .line 112
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    .line 113
    :catch_4
    move-exception v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 110
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_2

    .line 112
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 115
    :cond_2
    :goto_1
    throw v3

    .line 113
    :catch_5
    move-exception v0

    .line 114
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public decodeImage()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/pq/ImageDecoder;->caculateInSampleSize()I

    .line 94
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 95
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/pq/ImageDecoder;->decoder()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->mScreenNail:Landroid/graphics/Bitmap;

    .line 96
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->mScreenNail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public decoder()Landroid/graphics/Bitmap;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const-wide/high16 v8, 0x3fe0

    .line 64
    const/4 v1, 0x0

    .line 65
    .local v1, is:Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 67
    .local v2, mBitmap:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->mUri:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 68
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v4, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 74
    if-eqz v1, :cond_0

    .line 76
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 81
    :cond_0
    :goto_0
    if-eqz v2, :cond_5

    .line 82
    iget v4, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->targetSize:I

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 83
    .local v3, scale:F
    float-to-double v4, v3

    cmpg-double v4, v4, v8

    if-gtz v4, :cond_5

    .line 84
    invoke-static {v2, v3, v10}, Lcom/android/gallery3d/common/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 89
    .end local v3           #scale:F
    :goto_1
    return-object v4

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 69
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 70
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_2
    iget-object v4, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->TAG:Ljava/lang/String;

    const-string v5, "bitmapfactory decodestream fail"

    invoke-static {v4, v5}, Lcom/mediatek/gallery3d/util/MtkLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    if-eqz v1, :cond_1

    .line 76
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 81
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_1
    :goto_2
    if-eqz v2, :cond_5

    .line 82
    iget v4, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->targetSize:I

    int-to-float v4, v4

    throw v2

    move-result v5

    throw v2

    move-result v6

    throw v5

    move-result v5

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 83
    .restart local v3       #scale:F
    float-to-double v4, v3

    cmpg-double v4, v4, v8

    if-gtz v4, :cond_5

    .line 84
    invoke-static {v2, v3, v10}, Lcom/android/gallery3d/common/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_1

    .line 77
    .end local v3           #scale:F
    .restart local v0       #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 78
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 71
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 72
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_4
    iget-object v4, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->TAG:Ljava/lang/String;

    const-string v5, "bitmapfactory decodestream fail"

    invoke-static {v4, v5}, Lcom/mediatek/gallery3d/util/MtkLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 74
    if-eqz v1, :cond_2

    .line 76
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 81
    :cond_2
    :goto_3
    if-eqz v2, :cond_5

    .line 82
    iget v4, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->targetSize:I

    int-to-float v4, v4

    throw v2

    move-result v5

    throw v2

    move-result v6

    throw v5

    move-result v5

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 83
    .restart local v3       #scale:F
    float-to-double v4, v3

    cmpg-double v4, v4, v8

    if-gtz v4, :cond_5

    .line 84
    invoke-static {v2, v3, v10}, Lcom/android/gallery3d/common/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_1

    .line 77
    .end local v3           #scale:F
    :catch_4
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 74
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_3

    .line 76
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 81
    :cond_3
    :goto_4
    if-eqz v2, :cond_4

    .line 82
    iget v5, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->targetSize:I

    int-to-float v5, v5

    throw v2

    move-result v6

    throw v2

    move-result v7

    throw v6

    move-result v6

    int-to-float v6, v6

    div-float v3, v5, v6

    .line 83
    .restart local v3       #scale:F
    float-to-double v5, v3

    cmpg-double v5, v5, v8

    if-gtz v5, :cond_4

    .line 84
    invoke-static {v2, v3, v10}, Lcom/android/gallery3d/common/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v4

    goto/16 :goto_1

    .line 77
    .end local v3           #scale:F
    :catch_5
    move-exception v0

    .line 78
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 86
    .end local v0           #e:Ljava/io/IOException;
    :cond_4
    throw v4

    :cond_5
    move-object v4, v2

    .line 89
    goto/16 :goto_1
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->mScreenNail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->mScreenNail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->mScreenNail:Landroid/graphics/Bitmap;

    .line 139
    :cond_0
    return-void
.end method

.method public setApply(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "apply"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->mApply:Ljava/lang/Runnable;

    .line 131
    return-void
.end method

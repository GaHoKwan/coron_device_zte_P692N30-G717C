.class public Lcom/mediatek/gallery3d/panorama/PanoramaHelper;
.super Ljava/lang/Object;
.source "PanoramaHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gallery3d/panorama/PanoramaHelper$PanoramaFrameTask;,
        Lcom/mediatek/gallery3d/panorama/PanoramaHelper$PanoramaMicroThumbnailEntry;
    }
.end annotation


# static fields
.field public static final FRAME_DEGREE_GAP:I = 0x1

.field public static final FRAME_TIME_GAP:I = 0x32

.field public static final MAX_HEIGHT_DEGREE:F = 50.0f

.field public static final MESH_RADIUS:I = 0x4

.field public static final MICRO_THUMBNAIL_ANTIALIAS_SCALE:F = 1.5f

.field public static final PANORAMA_ASPECT_RATIO_MAX:I = 0xa

.field public static final PANORAMA_ASPECT_RATIO_MIN:I = 0x3

.field public static final PANORAMA_ASPECT_RATIO_RESIZE:I = 0x4

.field public static final PANORAMA_MIN_WIDTHPERCENT:F = 0.5f

.field public static final PANORAMA_P80_WIDTHPERCENT:F = 0.8f

.field public static final SCREENNAIL_ANTIALIAS_SCALE:F = 2.0f

.field public static final SHARE_VIDEO_ANTIALIAS_SCALE:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "Gallery2/PanoramaHelper"

.field private static mGLRoot:Lcom/android/gallery3d/ui/GLRoot;

.field private static mPanoramaScreenNailHeight:I

.field private static mPanoramaScreenNailWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    return-void
.end method

.method public static decodePanoramaBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "filePath"
    .parameter "targetSize"

    .prologue
    const/4 v9, 0x0

    .line 103
    const/4 v2, 0x0

    .line 105
    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v2           #fis:Ljava/io/FileInputStream;
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 107
    .local v1, fd:Ljava/io/FileDescriptor;
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 108
    .local v5, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v10, 0x1

    iput-boolean v10, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 109
    const/4 v10, 0x0

    invoke-static {v1, v10, v5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 111
    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 112
    .local v8, w:I
    iget v4, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 114
    .local v4, h:I
    int-to-float v10, p1

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v11

    int-to-float v11, v11

    div-float v7, v10, v11

    .line 115
    .local v7, scale:F
    invoke-static {v7}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v10

    iput v10, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 116
    const/4 v10, 0x0

    iput-boolean v10, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 117
    invoke-static {v5}, Lcom/android/gallery3d/data/DecodeUtils;->setOptionsMutable(Landroid/graphics/BitmapFactory$Options;)V

    .line 118
    const/4 v10, 0x0

    invoke-static {v1, v10, v5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 119
    .local v6, result:Landroid/graphics/Bitmap;
    if-nez v6, :cond_0

    .line 130
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object v2, v3

    .end local v1           #fd:Ljava/io/FileDescriptor;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v4           #h:I
    .end local v5           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v6           #result:Landroid/graphics/Bitmap;
    .end local v7           #scale:F
    .end local v8           #w:I
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :goto_0
    return-object v9

    .line 122
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fd:Ljava/io/FileDescriptor;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v4       #h:I
    .restart local v5       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v6       #result:Landroid/graphics/Bitmap;
    .restart local v7       #scale:F
    .restart local v8       #w:I
    :cond_0
    int-to-float v10, p1

    :try_start_2
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    int-to-float v11, v11

    div-float v7, v10, v11

    .line 123
    float-to-double v10, v7

    const-wide/high16 v12, 0x3fe0

    cmpg-double v10, v10, v12

    if-gtz v10, :cond_1

    .line 124
    const/4 v10, 0x1

    invoke-static {v6, v7, v10}, Lcom/android/gallery3d/common/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 125
    :cond_1
    invoke-static {v6}, Lcom/android/gallery3d/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v9

    .line 130
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_0

    .line 126
    .end local v1           #fd:Ljava/io/FileDescriptor;
    .end local v4           #h:I
    .end local v5           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v6           #result:Landroid/graphics/Bitmap;
    .end local v7           #scale:F
    .end local v8           #w:I
    :catch_0
    move-exception v0

    .line 127
    .local v0, ex:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v10, "Gallery2/PanoramaHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<decodePanoramaBitmap> exception occur, "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/gallery3d/util/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 130
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    :goto_2
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v9

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v9

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .line 126
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static getGLRoot()Lcom/android/gallery3d/ui/GLRoot;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/mediatek/gallery3d/panorama/PanoramaHelper;->mGLRoot:Lcom/android/gallery3d/ui/GLRoot;

    return-object v0
.end method

.method public static getMicroThumbnailEntry(Lcom/android/gallery3d/data/MediaItem;)Lcom/mediatek/gallery3d/panorama/PanoramaHelper$PanoramaMicroThumbnailEntry;
    .locals 7
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 140
    new-instance v6, Lcom/mediatek/gallery3d/panorama/PanoramaHelper$PanoramaMicroThumbnailEntry;

    invoke-direct {v6}, Lcom/mediatek/gallery3d/panorama/PanoramaHelper$PanoramaMicroThumbnailEntry;-><init>()V

    .line 142
    .local v6, entry:Lcom/mediatek/gallery3d/panorama/PanoramaHelper$PanoramaMicroThumbnailEntry;
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x200

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/panorama/PanoramaHelper;->decodePanoramaBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v6, Lcom/mediatek/gallery3d/panorama/PanoramaHelper$PanoramaMicroThumbnailEntry;->mBitmap:Landroid/graphics/Bitmap;

    .line 144
    iget-object v0, v6, Lcom/mediatek/gallery3d/panorama/PanoramaHelper$PanoramaMicroThumbnailEntry;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 145
    const/4 v6, 0x0

    .line 154
    .end local v6           #entry:Lcom/mediatek/gallery3d/panorama/PanoramaHelper$PanoramaMicroThumbnailEntry;
    :goto_0
    return-object v6

    .line 146
    .restart local v6       #entry:Lcom/mediatek/gallery3d/panorama/PanoramaHelper$PanoramaMicroThumbnailEntry;
    :cond_0
    iget-object v0, v6, Lcom/mediatek/gallery3d/panorama/PanoramaHelper$PanoramaMicroThumbnailEntry;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/common/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v6, Lcom/mediatek/gallery3d/panorama/PanoramaHelper$PanoramaMicroThumbnailEntry;->mBitmap:Landroid/graphics/Bitmap;

    .line 147
    iget-object v0, v6, Lcom/mediatek/gallery3d/panorama/PanoramaHelper$PanoramaMicroThumbnailEntry;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v2}, Lcom/mediatek/gallery3d/panorama/PanoramaHelper;->resizeBitmapToProperRatio(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v6, Lcom/mediatek/gallery3d/panorama/PanoramaHelper$PanoramaMicroThumbnailEntry;->mBitmap:Landroid/graphics/Bitmap;

    .line 149
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v3

    .line 150
    .local v3, canvasWidth:I
    invoke-static {}, Lcom/mediatek/gallery3d/panorama/PanoramaHelper;->getPanoramaScreenNailHeight()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v3

    mul-float/2addr v0, v1

    invoke-static {}, Lcom/mediatek/gallery3d/panorama/PanoramaHelper;->getPanoramaScreenNailWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v4, v0

    .line 152
    .local v4, canvasHeight:I
    new-instance v0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    iget-object v1, v6, Lcom/mediatek/gallery3d/panorama/PanoramaHelper$PanoramaMicroThumbnailEntry;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, v6, Lcom/mediatek/gallery3d/panorama/PanoramaHelper$PanoramaMicroThumbnailEntry;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/high16 v5, 0x3fc0

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;-><init>(IIIIF)V

    iput-object v0, v6, Lcom/mediatek/gallery3d/panorama/PanoramaHelper$PanoramaMicroThumbnailEntry;->mConfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    goto :goto_0
.end method

.method public static getPanoramaMicroThumbnail(Lcom/android/gallery3d/data/MediaItem;Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "item"
    .parameter "jc"

    .prologue
    const/4 v8, 0x0

    .line 168
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 169
    const-string v9, "Gallery2/PanoramaHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<getPanoramaMicroThumbnail> item = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", jc is cancel, return null 0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v8

    .line 244
    :cond_0
    :goto_0
    return-object v4

    .line 173
    :cond_1
    invoke-static {p0}, Lcom/mediatek/gallery3d/panorama/PanoramaHelper;->getMicroThumbnailEntry(Lcom/android/gallery3d/data/MediaItem;)Lcom/mediatek/gallery3d/panorama/PanoramaHelper$PanoramaMicroThumbnailEntry;

    move-result-object v3

    .line 174
    .local v3, entry:Lcom/mediatek/gallery3d/panorama/PanoramaHelper$PanoramaMicroThumbnailEntry;
    iget-object v5, v3, Lcom/mediatek/gallery3d/panorama/PanoramaHelper$PanoramaMicroThumbnailEntry;->mBitmap:Landroid/graphics/Bitmap;

    .line 175
    .local v5, originBitmap:Landroid/graphics/Bitmap;
    new-instance v6, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;

    iget-object v9, v3, Lcom/mediatek/gallery3d/panorama/PanoramaHelper$PanoramaMicroThumbnailEntry;->mConfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    invoke-direct {v6, v5, v9}, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;-><init>(Landroid/graphics/Bitmap;Lcom/mediatek/gallery3d/panorama/PanoramaConfig;)V

    .line 178
    .local v6, panoramaDrawer:Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;
    new-instance v7, Lcom/mediatek/gallery3d/panorama/PanoramaHelper$PanoramaFrameTask;

    iget-object v9, v3, Lcom/mediatek/gallery3d/panorama/PanoramaHelper$PanoramaMicroThumbnailEntry;->mConfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    iget v9, v9, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCanvasWidth:I

    iget-object v10, v3, Lcom/mediatek/gallery3d/panorama/PanoramaHelper$PanoramaMicroThumbnailEntry;->mConfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    iget v10, v10, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCanvasHeight:I

    invoke-direct {v7, v6, v9, v10}, Lcom/mediatek/gallery3d/panorama/PanoramaHelper$PanoramaFrameTask;-><init>(Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;II)V

    .line 180
    .local v7, task:Lcom/mediatek/gallery3d/panorama/PanoramaHelper$PanoramaFrameTask;
    sget-object v9, Lcom/mediatek/gallery3d/panorama/PanoramaHelper;->mGLRoot:Lcom/android/gallery3d/ui/GLRoot;

    invoke-interface {v9, v7}, Lcom/android/gallery3d/ui/GLRoot;->addOnGLIdleListener(Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;)V

    .line 181
    const-string v9, "Gallery2/PanoramaHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<getPanoramaMicroThumbnail> add OnGLIdleListener, task = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    sget-object v9, Lcom/mediatek/gallery3d/panorama/PanoramaHelper;->mGLRoot:Lcom/android/gallery3d/ui/GLRoot;

    invoke-interface {v9}, Lcom/android/gallery3d/ui/GLRoot;->requestRender()V

    .line 183
    monitor-enter v7

    .line 184
    :goto_1
    :try_start_0
    invoke-virtual {v7}, Lcom/mediatek/gallery3d/panorama/PanoramaHelper$PanoramaFrameTask;->isDone()Z

    move-result v9

    if-nez v9, :cond_2

    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-nez v9, :cond_2

    .line 186
    const-wide/16 v9, 0x3e8

    :try_start_1
    invoke-virtual {v7, v9, v10}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 187
    :catch_0
    move-exception v2

    .line 188
    .local v2, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v9, "Gallery2/PanoramaHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<getPanoramaMicroThumbnail> InterruptedException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 192
    .end local v2           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v8

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    :cond_2
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 193
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 194
    invoke-virtual {v7}, Lcom/mediatek/gallery3d/panorama/PanoramaHelper$PanoramaFrameTask;->get()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 195
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 196
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 197
    const/4 v0, 0x0

    .line 199
    :cond_3
    if-eqz v5, :cond_4

    .line 200
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 201
    const/4 v5, 0x0

    .line 203
    :cond_4
    if-eqz v6, :cond_5

    .line 204
    invoke-virtual {v6}, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->freeResources()V

    .line 206
    :cond_5
    const-string v9, "Gallery2/PanoramaHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<getPanoramaMicroThumbnail> item = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", jc is cancel, return null 1"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v8

    .line 207
    goto/16 :goto_0

    .line 210
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_6
    invoke-virtual {v7}, Lcom/mediatek/gallery3d/panorama/PanoramaHelper$PanoramaFrameTask;->get()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 212
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_9

    .line 214
    if-eqz v5, :cond_7

    .line 215
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 216
    const/4 v5, 0x0

    .line 218
    :cond_7
    if-eqz v6, :cond_8

    .line 219
    invoke-virtual {v6}, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->freeResources()V

    .line 221
    :cond_8
    const-string v9, "Gallery2/PanoramaHelper"

    const-string v10, "<getPanoramaMicroThumbnail> task.get() == null, return null"

    invoke-static {v9, v10}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v8

    .line 222
    goto/16 :goto_0

    .line 226
    :cond_9
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 228
    .local v4, newBitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 229
    .local v1, canvas:Landroid/graphics/Canvas;
    const/4 v9, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-virtual {v1, v0, v9, v10, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 230
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v8

    if-eqz v8, :cond_a

    .line 231
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v8

    neg-int v8, v8

    const/4 v9, 0x1

    invoke-static {v4, v8, v9}, Lcom/android/gallery3d/common/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 235
    :cond_a
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 236
    if-eqz v5, :cond_b

    .line 237
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 238
    const/4 v5, 0x0

    .line 240
    :cond_b
    if-eqz v6, :cond_0

    .line 241
    invoke-virtual {v6}, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->freeResources()V

    goto/16 :goto_0
.end method

.method public static getPanoramaScreenNailHeight()I
    .locals 1

    .prologue
    .line 71
    sget v0, Lcom/mediatek/gallery3d/panorama/PanoramaHelper;->mPanoramaScreenNailHeight:I

    return v0
.end method

.method public static getPanoramaScreenNailWidth()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/mediatek/gallery3d/panorama/PanoramaHelper;->mPanoramaScreenNailWidth:I

    return v0
.end method

.method public static getProperRatioBitmapWidth(II)I
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 96
    int-to-float v0, p0

    int-to-float v1, p1

    div-float/2addr v0, v1

    const/high16 v1, 0x4080

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 99
    .end local p0
    :goto_0
    return p0

    .restart local p0
    :cond_0
    mul-int/lit8 p0, p1, 0x4

    goto :goto_0
.end method

.method public static getWidthPercent(II)F
    .locals 5
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v2, 0x3f00

    .line 158
    int-to-float v3, p0

    int-to-float v4, p1

    div-float v0, v3, v4

    .line 159
    .local v0, ratio:F
    const/high16 v3, 0x3f80

    const v4, 0x3d23d70a

    mul-float/2addr v4, v0

    sub-float v1, v3, v4

    .line 162
    .local v1, widthPercent:F
    cmpg-float v3, v1, v2

    if-gez v3, :cond_0

    move v1, v2

    .line 164
    :cond_0
    return v1
.end method

.method public static init(Lcom/android/gallery3d/ui/GLRoot;)V
    .locals 3
    .parameter "root"

    .prologue
    .line 53
    const-string v0, "Gallery2/PanoramaHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<init> set mGLRoot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    sput-object p0, Lcom/mediatek/gallery3d/panorama/PanoramaHelper;->mGLRoot:Lcom/android/gallery3d/ui/GLRoot;

    .line 55
    return-void
.end method

.method public static newPlaceholderPanoramaScreenNail(Lcom/android/gallery3d/data/MediaItem;I)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 5
    .parameter "item"
    .parameter "color"

    .prologue
    .line 296
    const/4 v0, 0x0

    .line 299
    .local v0, config:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v3

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v3

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_1

    .line 300
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v1

    .line 301
    .local v1, height:I
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v2

    .line 306
    .local v2, width:I
    :goto_0
    invoke-static {v2, v1}, Lcom/mediatek/gallery3d/panorama/PanoramaHelper;->getProperRatioBitmapWidth(II)I

    move-result v2

    .line 307
    new-instance v0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    .end local v0           #config:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;
    invoke-static {}, Lcom/mediatek/gallery3d/panorama/PanoramaHelper;->getPanoramaScreenNailWidth()I

    move-result v3

    invoke-static {}, Lcom/mediatek/gallery3d/panorama/PanoramaHelper;->getPanoramaScreenNailHeight()I

    move-result v4

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;-><init>(IIII)V

    .line 309
    .restart local v0       #config:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;
    new-instance v3, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;

    invoke-direct {v3, p1, v0}, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;-><init>(ILcom/mediatek/gallery3d/panorama/PanoramaConfig;)V

    return-object v3

    .line 303
    .end local v1           #height:I
    .end local v2           #width:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v1

    .line 304
    .restart local v1       #height:I
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v2

    .restart local v2       #width:I
    goto :goto_0
.end method

.method public static resizeBitmapToProperRatio(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "bitmap"
    .parameter "recycle"

    .prologue
    const/4 v6, 0x0

    .line 75
    if-nez p0, :cond_1

    .line 76
    const-string v4, "Gallery2/PanoramaHelper"

    const-string v5, "<resizeBitmapToProperRatio> bitmap == null, return null"

    invoke-static {v4, v5}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 p0, 0x0

    .line 92
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 79
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Lcom/mediatek/gallery3d/panorama/PanoramaHelper;->getProperRatioBitmapWidth(II)I

    move-result v1

    .line 80
    .local v1, newWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-eq v1, v4, :cond_0

    .line 83
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v1, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 84
    .local v3, target:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 85
    .local v0, canvas:Landroid/graphics/Canvas;
    int-to-float v4, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x3f80

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 86
    new-instance v2, Landroid/graphics/Paint;

    const/4 v4, 0x6

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 87
    .local v2, paint:Landroid/graphics/Paint;
    invoke-virtual {v0, p0, v6, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 88
    if-eqz p1, :cond_2

    .line 89
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 90
    :cond_2
    const-string v4, "Gallery2/PanoramaHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<resizeBitmapToProperRatio> resize to w = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", h = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v3

    .line 92
    goto :goto_0
.end method

.method public static setPanoramaScreenNailSize(II)V
    .locals 1
    .parameter "w"
    .parameter "h"

    .prologue
    .line 62
    if-le p0, p1, :cond_0

    move v0, p0

    :goto_0
    sput v0, Lcom/mediatek/gallery3d/panorama/PanoramaHelper;->mPanoramaScreenNailWidth:I

    .line 63
    if-le p1, p0, :cond_1

    .end local p0
    :goto_1
    sput p0, Lcom/mediatek/gallery3d/panorama/PanoramaHelper;->mPanoramaScreenNailHeight:I

    .line 64
    return-void

    .restart local p0
    :cond_0
    move v0, p1

    .line 62
    goto :goto_0

    :cond_1
    move p0, p1

    .line 63
    goto :goto_1
.end method

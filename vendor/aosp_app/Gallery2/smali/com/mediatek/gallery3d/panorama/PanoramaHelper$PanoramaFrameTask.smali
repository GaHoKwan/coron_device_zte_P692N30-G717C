.class Lcom/mediatek/gallery3d/panorama/PanoramaHelper$PanoramaFrameTask;
.super Ljava/lang/Object;
.source "PanoramaHelper.java"

# interfaces
.implements Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gallery3d/panorama/PanoramaHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PanoramaFrameTask"
.end annotation


# instance fields
.field private mDone:Z

.field private mFrame:Landroid/graphics/Bitmap;

.field private mFrameHeight:I

.field private mFrameWidth:I

.field private mPanoramaDrawer:Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;


# direct methods
.method public constructor <init>(Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;II)V
    .locals 1
    .parameter "drawer"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaHelper$PanoramaFrameTask;->mDone:Z

    .line 255
    iput-object p1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaHelper$PanoramaFrameTask;->mPanoramaDrawer:Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;

    .line 256
    iput p2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaHelper$PanoramaFrameTask;->mFrameWidth:I

    .line 257
    iput p3, p0, Lcom/mediatek/gallery3d/panorama/PanoramaHelper$PanoramaFrameTask;->mFrameHeight:I

    .line 258
    return-void
.end method


# virtual methods
.method public get()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaHelper$PanoramaFrameTask;->mFrame:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaHelper$PanoramaFrameTask;->mDone:Z

    return v0
.end method

.method public onGLIdle(Lcom/android/gallery3d/ui/GLCanvas;Z)Z
    .locals 8
    .parameter "canvas"
    .parameter "renderRequested"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 262
    const-string v2, "Gallery2/PanoramaHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<PanoramaFrameTask.onGLIdle> begin to run, task = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaHelper$PanoramaFrameTask;->mPanoramaDrawer:Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;

    if-nez v2, :cond_0

    .line 265
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaHelper$PanoramaFrameTask;->mFrame:Landroid/graphics/Bitmap;

    .line 266
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaHelper$PanoramaFrameTask;->mDone:Z

    .line 267
    const-string v2, "Gallery2/PanoramaHelper"

    const-string v3, "<PanoramaFrameTask.onGLIdle> mPanoramaDrawer == null, return"

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_0
    new-instance v1, Lcom/android/gallery3d/ui/RawTexture;

    iget v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaHelper$PanoramaFrameTask;->mFrameWidth:I

    iget v3, p0, Lcom/mediatek/gallery3d/panorama/PanoramaHelper$PanoramaFrameTask;->mFrameHeight:I

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/android/gallery3d/ui/RawTexture;-><init>(IIZ)V

    .line 270
    .local v1, texture:Lcom/android/gallery3d/ui/RawTexture;
    iget-object v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaHelper$PanoramaFrameTask;->mPanoramaDrawer:Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v1, v3}, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->drawOnBitmap(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;F)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaHelper$PanoramaFrameTask;->mFrame:Landroid/graphics/Bitmap;

    .line 271
    invoke-virtual {v1}, Lcom/android/gallery3d/ui/RawTexture;->recycle()V

    .line 272
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaHelper$PanoramaFrameTask;->mDone:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    .end local v1           #texture:Lcom/android/gallery3d/ui/RawTexture;
    :goto_0
    const-string v2, "Gallery2/PanoramaHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<PanoramaFrameTask.onGLIdle> end run, task = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mFrame = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/gallery3d/panorama/PanoramaHelper$PanoramaFrameTask;->mFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    monitor-enter p0

    .line 280
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 281
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    return v6

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, e:Ljava/lang/Exception;
    iput-object v7, p0, Lcom/mediatek/gallery3d/panorama/PanoramaHelper$PanoramaFrameTask;->mFrame:Landroid/graphics/Bitmap;

    .line 275
    iput-boolean v5, p0, Lcom/mediatek/gallery3d/panorama/PanoramaHelper$PanoramaFrameTask;->mDone:Z

    .line 276
    const-string v2, "Gallery2/PanoramaHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<PanoramaFrameTask.onGLIdle> exception occur, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 281
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

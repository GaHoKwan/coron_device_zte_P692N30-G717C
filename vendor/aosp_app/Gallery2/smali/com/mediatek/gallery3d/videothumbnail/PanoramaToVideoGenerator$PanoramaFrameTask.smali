.class Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator$PanoramaFrameTask;
.super Ljava/lang/Object;
.source "PanoramaToVideoGenerator.java"

# interfaces
.implements Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PanoramaFrameTask"
.end annotation


# instance fields
.field private mDone:Z

.field private mFrame:Landroid/graphics/Bitmap;

.field private mFrameIndex:I

.field final synthetic this$0:Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;


# direct methods
.method public constructor <init>(Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;I)V
    .locals 1
    .parameter
    .parameter "frameIndex"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator$PanoramaFrameTask;->this$0:Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator$PanoramaFrameTask;->mDone:Z

    .line 150
    iput p2, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator$PanoramaFrameTask;->mFrameIndex:I

    .line 151
    return-void
.end method


# virtual methods
.method public get()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator$PanoramaFrameTask;->mFrame:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator$PanoramaFrameTask;->mDone:Z

    return v0
.end method

.method public onGLIdle(Lcom/android/gallery3d/ui/GLCanvas;Z)Z
    .locals 9
    .parameter "canvas"
    .parameter "renderRequested"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator$PanoramaFrameTask;->this$0:Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;

    #getter for: Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->mPanoramaDrawer:Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;
    invoke-static {v1}, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->access$000(Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;)Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;

    move-result-object v1

    if-nez v1, :cond_0

    .line 157
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator$PanoramaFrameTask;->mFrame:Landroid/graphics/Bitmap;

    .line 158
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator$PanoramaFrameTask;->mDone:Z

    .line 159
    const-string v1, "Gallery2/PanoramaToVideoGenerator"

    const-string v2, "<PanoramaFrameTask.onGLIdle> mPanoramaDrawer == null, return"

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator$PanoramaFrameTask;->this$0:Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;

    #getter for: Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->mTexture:Lcom/android/gallery3d/ui/RawTexture;
    invoke-static {v1}, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->access$100(Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;)Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v1

    if-nez v1, :cond_1

    .line 162
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator$PanoramaFrameTask;->this$0:Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;

    new-instance v2, Lcom/android/gallery3d/ui/RawTexture;

    iget-object v3, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator$PanoramaFrameTask;->this$0:Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;

    #getter for: Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->mFrameWidth:I
    invoke-static {v3}, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->access$200(Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;)I

    move-result v3

    iget-object v4, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator$PanoramaFrameTask;->this$0:Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;

    #getter for: Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->mFrameHeight:I
    invoke-static {v4}, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->access$300(Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;)I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/android/gallery3d/ui/RawTexture;-><init>(IIZ)V

    #setter for: Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->mTexture:Lcom/android/gallery3d/ui/RawTexture;
    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->access$102(Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;Lcom/android/gallery3d/ui/RawTexture;)Lcom/android/gallery3d/ui/RawTexture;

    .line 164
    :cond_1
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator$PanoramaFrameTask;->this$0:Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;

    #getter for: Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->mPanoramaDrawer:Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;
    invoke-static {v1}, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->access$000(Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;)Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator$PanoramaFrameTask;->this$0:Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;

    #getter for: Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->mTexture:Lcom/android/gallery3d/ui/RawTexture;
    invoke-static {v2}, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->access$100(Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;)Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator$PanoramaFrameTask;->mFrameIndex:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator$PanoramaFrameTask;->this$0:Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;

    #getter for: Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->mFrameDegreeGap:F
    invoke-static {v4}, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->access$400(Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;)F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual {v1, p1, v2, v3}, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->drawOnBitmap(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;F)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator$PanoramaFrameTask;->mFrame:Landroid/graphics/Bitmap;

    .line 166
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator$PanoramaFrameTask;->mDone:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    monitor-enter p0

    .line 174
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 175
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    return v7

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, e:Ljava/lang/Exception;
    iput-object v8, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator$PanoramaFrameTask;->mFrame:Landroid/graphics/Bitmap;

    .line 169
    iput-boolean v6, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator$PanoramaFrameTask;->mDone:Z

    .line 170
    const-string v1, "Gallery2/PanoramaToVideoGenerator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<PanoramaFrameTask.onGLIdle> exception occur, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 175
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

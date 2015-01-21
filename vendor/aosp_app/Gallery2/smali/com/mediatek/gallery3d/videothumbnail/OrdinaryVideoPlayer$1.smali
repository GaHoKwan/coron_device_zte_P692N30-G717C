.class Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$1;
.super Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;
.source "OrdinaryVideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer;


# direct methods
.method constructor <init>(Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$1;->this$0:Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer;

    invoke-direct {p0}, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .parameter "surfaceTexture"

    .prologue
    .line 25
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$1;->this$0:Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer;

    iget-object v1, v1, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer;->renderTarget:Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;

    iget-boolean v1, v1, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->isWorking:Z

    if-eqz v1, :cond_0

    .line 28
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$1;->this$0:Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer;

    iget-object v2, v1, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer;->renderTarget:Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;

    monitor-enter v2

    .line 29
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->mHasNewFrame:Z

    .line 30
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$1;->this$0:Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer;

    iget-object v1, v1, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;->mGalleryActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 32
    .local v0, renderContext:Lcom/android/gallery3d/ui/GLRoot;
    if-eqz v0, :cond_0

    .line 33
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->requestRender()V

    .line 34
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$1;->this$0:Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer;

    iget-object v1, v1, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer;->renderTarget:Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLRoot;->addOnGLIdleListener(Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;)V

    .line 37
    .end local v0           #renderContext:Lcom/android/gallery3d/ui/GLRoot;
    :cond_0
    return-void

    .line 30
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

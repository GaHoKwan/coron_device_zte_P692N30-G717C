.class public abstract Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;
.super Ljava/lang/Object;
.source "AbstractVideoPlayer.java"


# instance fields
.field protected mGalleryActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

.field protected mItem:Lcom/android/gallery3d/data/MediaItem;

.field protected mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;->mPath:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;->mItem:Lcom/android/gallery3d/data/MediaItem;

    return-void
.end method


# virtual methods
.method protected addOnGLIdleListener(Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 31
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;->mGalleryActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 32
    .local v0, renderContext:Lcom/android/gallery3d/ui/GLRoot;
    if-eqz v0, :cond_0

    .line 33
    invoke-interface {v0, p1}, Lcom/android/gallery3d/ui/GLRoot;->addOnGLIdleListener(Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;)V

    .line 35
    :cond_0
    return-void
.end method

.method public abstract pause()Z
.end method

.method public abstract prepare()Z
.end method

.method public abstract release()V
.end method

.method public abstract render(Lcom/android/gallery3d/ui/GLCanvas;II)Z
.end method

.method protected requestRender()V
    .locals 2

    .prologue
    .line 24
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;->mGalleryActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 25
    .local v0, renderContext:Lcom/android/gallery3d/ui/GLRoot;
    if-eqz v0, :cond_0

    .line 26
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->requestRender()V

    .line 28
    :cond_0
    return-void
.end method

.method public abstract start()Z
.end method

.method public abstract stop()Z
.end method

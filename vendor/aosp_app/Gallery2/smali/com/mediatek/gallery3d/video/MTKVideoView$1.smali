.class Lcom/mediatek/gallery3d/video/MTKVideoView$1;
.super Ljava/lang/Object;
.source "MTKVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gallery3d/video/MTKVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;


# direct methods
.method constructor <init>(Lcom/mediatek/gallery3d/video/MTKVideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$1;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v0, 0x1

    .line 118
    const-string v1, "Gallery2/VideoPlayer/MTKVideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInfo() what:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " extra:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$1;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #getter for: Lcom/mediatek/gallery3d/video/MTKVideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;
    invoke-static {v1}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$000(Lcom/mediatek/gallery3d/video/MTKVideoView;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$1;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #getter for: Lcom/mediatek/gallery3d/video/MTKVideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;
    invoke-static {v1}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$000(Lcom/mediatek/gallery3d/video/MTKVideoView;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    :goto_0
    return v0

    .line 123
    :cond_0
    const/16 v1, 0x323

    if-ne p2, v1, :cond_1

    .line 124
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$1;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #setter for: Lcom/mediatek/gallery3d/video/MTKVideoView;->mHasGotMetaData:Z
    invoke-static {v1, v0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$102(Lcom/mediatek/gallery3d/video/MTKVideoView;Z)Z

    .line 125
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$1;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    iget-object v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$1;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #getter for: Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$200(Lcom/mediatek/gallery3d/video/MTKVideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    #calls: Lcom/mediatek/gallery3d/video/MTKVideoView;->doPreparedIfReady(Landroid/media/MediaPlayer;)V
    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$300(Lcom/mediatek/gallery3d/video/MTKVideoView;Landroid/media/MediaPlayer;)V

    goto :goto_0

    .line 129
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

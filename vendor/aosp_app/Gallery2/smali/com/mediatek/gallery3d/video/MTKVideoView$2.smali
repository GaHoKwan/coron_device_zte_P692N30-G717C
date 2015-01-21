.class Lcom/mediatek/gallery3d/video/MTKVideoView$2;
.super Ljava/lang/Object;
.source "MTKVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/gallery3d/video/MTKVideoView;->initialize()V
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
    .line 161
    iput-object p1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$2;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 8
    .parameter "mp"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 164
    const-string v1, "Gallery2/VideoPlayer/MTKVideoView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPreparedListener.onPrepared("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {p1, v2, v2}, Landroid/media/MediaPlayer;->getMetadata(ZZ)Landroid/media/Metadata;

    move-result-object v0

    .line 170
    .local v0, data:Landroid/media/Metadata;
    if-eqz v0, :cond_6

    .line 171
    iget-object v4, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$2;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v0, v3}, Landroid/media/Metadata;->has(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v3}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    move v1, v3

    :goto_0
    #setter for: Landroid/widget/VideoView;->mCanPause:Z
    invoke-static {v4, v1}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$402(Lcom/mediatek/gallery3d/video/MTKVideoView;Z)Z

    .line 173
    iget-object v4, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$2;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v0, v6}, Landroid/media/Metadata;->has(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v6}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_1
    move v1, v3

    :goto_1
    #setter for: Landroid/widget/VideoView;->mCanSeekBack:Z
    invoke-static {v4, v1}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$502(Lcom/mediatek/gallery3d/video/MTKVideoView;Z)Z

    .line 175
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$2;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v0, v7}, Landroid/media/Metadata;->has(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0, v7}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    #setter for: Landroid/widget/VideoView;->mCanSeekForward:Z
    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$602(Lcom/mediatek/gallery3d/video/MTKVideoView;Z)Z

    .line 184
    :goto_2
    const-string v1, "Gallery2/VideoPlayer/MTKVideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPreparedListener.onPrepared() mCanPause="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$2;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #getter for: Landroid/widget/VideoView;->mCanPause:Z
    invoke-static {v4}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$1000(Lcom/mediatek/gallery3d/video/MTKVideoView;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$2;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #setter for: Lcom/mediatek/gallery3d/video/MTKVideoView;->mHasGotPreparedCallBack:Z
    invoke-static {v1, v3}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$1102(Lcom/mediatek/gallery3d/video/MTKVideoView;Z)Z

    .line 187
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$2;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    iget-object v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$2;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #getter for: Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$1200(Lcom/mediatek/gallery3d/video/MTKVideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    #calls: Lcom/mediatek/gallery3d/video/MTKVideoView;->doPreparedIfReady(Landroid/media/MediaPlayer;)V
    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$300(Lcom/mediatek/gallery3d/video/MTKVideoView;Landroid/media/MediaPlayer;)V

    .line 188
    return-void

    :cond_4
    move v1, v2

    .line 171
    goto :goto_0

    :cond_5
    move v1, v2

    .line 173
    goto :goto_1

    .line 178
    :cond_6
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$2;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #setter for: Landroid/widget/VideoView;->mCanPause:Z
    invoke-static {v1, v3}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$702(Lcom/mediatek/gallery3d/video/MTKVideoView;Z)Z

    .line 179
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$2;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #setter for: Landroid/widget/VideoView;->mCanSeekBack:Z
    invoke-static {v1, v3}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$802(Lcom/mediatek/gallery3d/video/MTKVideoView;Z)Z

    .line 180
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$2;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #setter for: Landroid/widget/VideoView;->mCanSeekForward:Z
    invoke-static {v1, v3}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$902(Lcom/mediatek/gallery3d/video/MTKVideoView;Z)Z

    .line 181
    const-string v1, "Gallery2/VideoPlayer/MTKVideoView"

    const-string v2, "Metadata is null!"

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/ext/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

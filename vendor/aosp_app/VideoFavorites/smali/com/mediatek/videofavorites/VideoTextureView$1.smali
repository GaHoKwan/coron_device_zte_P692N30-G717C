.class Lcom/mediatek/videofavorites/VideoTextureView$1;
.super Ljava/lang/Object;
.source "VideoTextureView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/videofavorites/VideoTextureView;->stopPlaybackAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/videofavorites/VideoTextureView;

.field final synthetic val$finalPlayer:Landroid/media/MediaPlayer;


# direct methods
.method constructor <init>(Lcom/mediatek/videofavorites/VideoTextureView;Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/mediatek/videofavorites/VideoTextureView$1;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iput-object p2, p0, Lcom/mediatek/videofavorites/VideoTextureView$1;->val$finalPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 325
    const-string v0, "VideoTextureView"

    const-string v1, "stopPlayback thread(): executed"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView$1;->val$finalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 327
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView$1;->val$finalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 328
    return-void
.end method

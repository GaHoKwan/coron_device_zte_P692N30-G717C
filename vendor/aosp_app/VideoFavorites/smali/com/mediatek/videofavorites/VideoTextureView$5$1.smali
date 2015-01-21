.class Lcom/mediatek/videofavorites/VideoTextureView$5$1;
.super Ljava/lang/Object;
.source "VideoTextureView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/videofavorites/VideoTextureView$5;->onError(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/videofavorites/VideoTextureView$5;


# direct methods
.method constructor <init>(Lcom/mediatek/videofavorites/VideoTextureView$5;)V
    .locals 0
    .parameter

    .prologue
    .line 571
    iput-object p1, p0, Lcom/mediatek/videofavorites/VideoTextureView$5$1;->this$1:Lcom/mediatek/videofavorites/VideoTextureView$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 576
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView$5$1;->this$1:Lcom/mediatek/videofavorites/VideoTextureView$5;

    iget-object v0, v0, Lcom/mediatek/videofavorites/VideoTextureView$5;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget-object v0, v0, Lcom/mediatek/videofavorites/VideoTextureView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView$5$1;->this$1:Lcom/mediatek/videofavorites/VideoTextureView$5;

    iget-object v0, v0, Lcom/mediatek/videofavorites/VideoTextureView$5;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget-object v0, v0, Lcom/mediatek/videofavorites/VideoTextureView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    iget-object v1, p0, Lcom/mediatek/videofavorites/VideoTextureView$5$1;->this$1:Lcom/mediatek/videofavorites/VideoTextureView$5;

    iget-object v1, v1, Lcom/mediatek/videofavorites/VideoTextureView$5;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget-object v1, v1, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 579
    :cond_0
    return-void
.end method

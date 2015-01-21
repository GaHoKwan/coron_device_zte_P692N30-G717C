.class Lcom/hf/UI/HFVideoView$2;
.super Ljava/lang/Object;
.source "HFVideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hf/UI/HFVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/HFVideoView;


# direct methods
.method constructor <init>(Lcom/hf/UI/HFVideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/HFVideoView$2;->this$0:Lcom/hf/UI/HFVideoView;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 37
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/hf/UI/HFVideoView$2;->this$0:Lcom/hf/UI/HFVideoView;

    iput-object p1, v0, Lcom/hf/UI/HFVideoView;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 40
    iget-object v0, p0, Lcom/hf/UI/HFVideoView$2;->this$0:Lcom/hf/UI/HFVideoView;

    #getter for: Lcom/hf/UI/HFVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/hf/UI/HFVideoView;->access$0(Lcom/hf/UI/HFVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/hf/UI/HFVideoView$2;->this$0:Lcom/hf/UI/HFVideoView;

    #getter for: Lcom/hf/UI/HFVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/hf/UI/HFVideoView;->access$0(Lcom/hf/UI/HFVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/hf/UI/HFVideoView$2;->this$0:Lcom/hf/UI/HFVideoView;

    iget-object v1, v1, Lcom/hf/UI/HFVideoView;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 42
    iget-object v0, p0, Lcom/hf/UI/HFVideoView$2;->this$0:Lcom/hf/UI/HFVideoView;

    invoke-virtual {v0}, Lcom/hf/UI/HFVideoView;->resume()V

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/hf/UI/HFVideoView$2;->this$0:Lcom/hf/UI/HFVideoView;

    #calls: Lcom/hf/UI/HFVideoView;->openVideo()V
    invoke-static {v0}, Lcom/hf/UI/HFVideoView;->access$1(Lcom/hf/UI/HFVideoView;)V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/hf/UI/HFVideoView$2;->this$0:Lcom/hf/UI/HFVideoView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/hf/UI/HFVideoView;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 49
    iget-object v0, p0, Lcom/hf/UI/HFVideoView$2;->this$0:Lcom/hf/UI/HFVideoView;

    #getter for: Lcom/hf/UI/HFVideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Lcom/hf/UI/HFVideoView;->access$2(Lcom/hf/UI/HFVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/hf/UI/HFVideoView$2;->this$0:Lcom/hf/UI/HFVideoView;

    #getter for: Lcom/hf/UI/HFVideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Lcom/hf/UI/HFVideoView;->access$2(Lcom/hf/UI/HFVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/hf/UI/HFVideoView$2;->this$0:Lcom/hf/UI/HFVideoView;

    const/4 v1, 0x1

    #calls: Lcom/hf/UI/HFVideoView;->release(Z)V
    invoke-static {v0, v1}, Lcom/hf/UI/HFVideoView;->access$3(Lcom/hf/UI/HFVideoView;Z)V

    .line 53
    return-void
.end method

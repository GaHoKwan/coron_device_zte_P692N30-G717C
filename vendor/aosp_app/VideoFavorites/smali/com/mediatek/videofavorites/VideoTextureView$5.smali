.class Lcom/mediatek/videofavorites/VideoTextureView$5;
.super Ljava/lang/Object;
.source "VideoTextureView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/videofavorites/VideoTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/videofavorites/VideoTextureView;


# direct methods
.method constructor <init>(Lcom/mediatek/videofavorites/VideoTextureView;)V
    .locals 0
    .parameter

    .prologue
    .line 537
    iput-object p1, p0, Lcom/mediatek/videofavorites/VideoTextureView$5;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 6
    .parameter "mp"
    .parameter "frameworkErr"
    .parameter "implErr"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 539
    const-string v1, "VideoTextureView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v1, p0, Lcom/mediatek/videofavorites/VideoTextureView$5;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iput v4, v1, Lcom/mediatek/videofavorites/VideoTextureView;->mCurrentState:I

    .line 541
    iget-object v1, p0, Lcom/mediatek/videofavorites/VideoTextureView$5;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iput v4, v1, Lcom/mediatek/videofavorites/VideoTextureView;->mTargetState:I

    .line 542
    iget-object v1, p0, Lcom/mediatek/videofavorites/VideoTextureView$5;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget-object v1, v1, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v1, :cond_0

    .line 543
    iget-object v1, p0, Lcom/mediatek/videofavorites/VideoTextureView$5;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget-object v1, v1, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1}, Landroid/widget/MediaController;->hide()V

    .line 547
    :cond_0
    iget-object v1, p0, Lcom/mediatek/videofavorites/VideoTextureView$5;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget-object v1, v1, Lcom/mediatek/videofavorites/VideoTextureView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    if-eqz v1, :cond_2

    .line 548
    iget-object v1, p0, Lcom/mediatek/videofavorites/VideoTextureView$5;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget-object v1, v1, Lcom/mediatek/videofavorites/VideoTextureView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView$5;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget-object v2, v2, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v1, v2, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 584
    :cond_1
    :goto_0
    return v5

    .line 558
    :cond_2
    iget-object v1, p0, Lcom/mediatek/videofavorites/VideoTextureView$5;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 561
    const/16 v1, 0xc8

    if-ne p2, v1, :cond_3

    .line 562
    const v0, 0x1040015

    .line 567
    .local v0, messageId:I
    :goto_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView$5;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/mediatek/videofavorites/VideoTextureView;->access$000(Lcom/mediatek/videofavorites/VideoTextureView;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1040012

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040010

    new-instance v3, Lcom/mediatek/videofavorites/VideoTextureView$5$1;

    invoke-direct {v3, p0}, Lcom/mediatek/videofavorites/VideoTextureView$5$1;-><init>(Lcom/mediatek/videofavorites/VideoTextureView$5;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 564
    .end local v0           #messageId:I
    :cond_3
    const v0, 0x1040011

    .restart local v0       #messageId:I
    goto :goto_1
.end method

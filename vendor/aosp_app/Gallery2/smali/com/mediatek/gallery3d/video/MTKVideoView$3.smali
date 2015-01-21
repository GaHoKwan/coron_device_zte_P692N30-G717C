.class Lcom/mediatek/gallery3d/video/MTKVideoView$3;
.super Ljava/lang/Object;
.source "MTKVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 191
    iput-object p1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$3;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 8
    .parameter "mp"
    .parameter "frameworkErr"
    .parameter "implErr"

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 193
    const-string v3, "Gallery2/VideoPlayer/MTKVideoView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$3;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #getter for: Landroid/widget/VideoView;->mCurrentState:I
    invoke-static {v3}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$1300(Lcom/mediatek/gallery3d/video/MTKVideoView;)I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 195
    const-string v3, "Gallery2/VideoPlayer/MTKVideoView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Duplicate error message. error message has been sent! error=("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/ui/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_0
    :goto_0
    return v7

    .line 201
    :cond_1
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$3;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    iget-object v4, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$3;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v4}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getCurrentPosition()I

    move-result v4

    #setter for: Landroid/widget/VideoView;->mSeekWhenPrepared:I
    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$1402(Lcom/mediatek/gallery3d/video/MTKVideoView;I)I

    .line 203
    const-string v3, "Gallery2/VideoPlayer/MTKVideoView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onError() mSeekWhenPrepared="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$3;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #getter for: Landroid/widget/VideoView;->mSeekWhenPrepared:I
    invoke-static {v5}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$1500(Lcom/mediatek/gallery3d/video/MTKVideoView;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mDuration="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$3;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #getter for: Lcom/mediatek/gallery3d/video/MTKVideoView;->mDuration:I
    invoke-static {v5}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$1600(Lcom/mediatek/gallery3d/video/MTKVideoView;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$3;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    iget-object v4, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$3;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #getter for: Lcom/mediatek/gallery3d/video/MTKVideoView;->mDuration:I
    invoke-static {v4}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$1600(Lcom/mediatek/gallery3d/video/MTKVideoView;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    #setter for: Lcom/mediatek/gallery3d/video/MTKVideoView;->mDuration:I
    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$1602(Lcom/mediatek/gallery3d/video/MTKVideoView;I)I

    .line 207
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$3;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #setter for: Landroid/widget/VideoView;->mCurrentState:I
    invoke-static {v3, v6}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$1702(Lcom/mediatek/gallery3d/video/MTKVideoView;I)I

    .line 208
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$3;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #setter for: Landroid/widget/VideoView;->mTargetState:I
    invoke-static {v3, v6}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$1802(Lcom/mediatek/gallery3d/video/MTKVideoView;I)I

    .line 209
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$3;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #getter for: Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v3}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$1900(Lcom/mediatek/gallery3d/video/MTKVideoView;)Landroid/widget/MediaController;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 210
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$3;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #getter for: Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v3}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$2000(Lcom/mediatek/gallery3d/video/MTKVideoView;)Landroid/widget/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/MediaController;->hide()V

    .line 214
    :cond_2
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$3;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #getter for: Landroid/widget/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v3}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$2100(Lcom/mediatek/gallery3d/video/MTKVideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 215
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$3;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #getter for: Landroid/widget/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v3}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$2300(Lcom/mediatek/gallery3d/video/MTKVideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$3;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #getter for: Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$2200(Lcom/mediatek/gallery3d/video/MTKVideoView;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-interface {v3, v4, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 225
    :cond_3
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$3;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 226
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$3;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$2400(Lcom/mediatek/gallery3d/video/MTKVideoView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 229
    .local v2, r:Landroid/content/res/Resources;
    const/16 v3, 0x104

    if-ne p2, v3, :cond_4

    .line 230
    const v0, 0x2050057

    .line 245
    .local v0, messageId:I
    :goto_1
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$3;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v3}, Lcom/mediatek/gallery3d/video/MTKVideoView;->dismissAllowingStateLoss()V

    .line 246
    invoke-static {v0}, Lcom/mediatek/gallery3d/video/ErrorDialogFragment;->newInstance(I)Lcom/mediatek/gallery3d/video/ErrorDialogFragment;

    move-result-object v1

    .line 247
    .local v1, newFragment:Landroid/app/DialogFragment;
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$3;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #getter for: Lcom/mediatek/gallery3d/video/MTKVideoView;->fragmentManager:Landroid/app/FragmentManager;
    invoke-static {v3}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$2500(Lcom/mediatek/gallery3d/video/MTKVideoView;)Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "ERROR_DIALOG_TAG"

    invoke-virtual {v1, v3, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 248
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$3;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #getter for: Lcom/mediatek/gallery3d/video/MTKVideoView;->fragmentManager:Landroid/app/FragmentManager;
    invoke-static {v3}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$2500(Lcom/mediatek/gallery3d/video/MTKVideoView;)Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    goto/16 :goto_0

    .line 231
    .end local v0           #messageId:I
    .end local v1           #newFragment:Landroid/app/DialogFragment;
    :cond_4
    const/16 v3, 0x105

    if-ne p2, v3, :cond_5

    .line 232
    const v0, 0x2050058

    .restart local v0       #messageId:I
    goto :goto_1

    .line 233
    .end local v0           #messageId:I
    :cond_5
    const/16 v3, 0x106

    if-ne p2, v3, :cond_6

    .line 234
    const v0, 0x2050059

    .restart local v0       #messageId:I
    goto :goto_1

    .line 235
    .end local v0           #messageId:I
    :cond_6
    const/16 v3, 0x107

    if-ne p2, v3, :cond_7

    .line 236
    const v0, 0x205005a

    .restart local v0       #messageId:I
    goto :goto_1

    .line 237
    .end local v0           #messageId:I
    :cond_7
    const/16 v3, 0x108

    if-ne p2, v3, :cond_8

    .line 238
    const v0, 0x205008b

    .restart local v0       #messageId:I
    goto :goto_1

    .line 239
    .end local v0           #messageId:I
    :cond_8
    const/16 v3, 0xc8

    if-ne p2, v3, :cond_9

    .line 240
    const v0, 0x1040015

    .restart local v0       #messageId:I
    goto :goto_1

    .line 242
    .end local v0           #messageId:I
    :cond_9
    const v0, 0x1040011

    .restart local v0       #messageId:I
    goto :goto_1
.end method

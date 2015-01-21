.class Lcom/mediatek/vlw/VideoScene$8;
.super Ljava/lang/Object;
.source "VideoScene.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/vlw/VideoScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/vlw/VideoScene;


# direct methods
.method constructor <init>(Lcom/mediatek/vlw/VideoScene;)V
    .locals 0
    .parameter

    .prologue
    .line 656
    iput-object p1, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 9
    .parameter "mp"
    .parameter "framworkErr"
    .parameter "implErr"

    .prologue
    const/4 v5, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 658
    const-string v2, "VideoScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    #setter for: Lcom/mediatek/vlw/VideoScene;->mCurrentState:I
    invoke-static {v2, v5}, Lcom/mediatek/vlw/VideoScene;->access$1702(Lcom/mediatek/vlw/VideoScene;I)I

    .line 660
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    #setter for: Lcom/mediatek/vlw/VideoScene;->mTargetState:I
    invoke-static {v2, v5}, Lcom/mediatek/vlw/VideoScene;->access$3602(Lcom/mediatek/vlw/VideoScene;I)I

    .line 663
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v2}, Lcom/mediatek/vlw/VideoScene;->access$4200(Lcom/mediatek/vlw/VideoScene;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 664
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v2}, Lcom/mediatek/vlw/VideoScene;->access$4200(Lcom/mediatek/vlw/VideoScene;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lcom/mediatek/vlw/VideoScene;->access$2200(Lcom/mediatek/vlw/VideoScene;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-interface {v2, v3, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 761
    :cond_0
    :goto_0
    return v7

    .line 670
    :cond_1
    const/4 v1, 0x0

    .line 671
    .local v1, messageId:I
    const/16 v2, 0xc8

    if-ne p2, v2, :cond_2

    .line 672
    const v1, 0x7f080004

    .line 676
    :goto_1
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/mediatek/vlw/VideoScene;->access$1100(Lcom/mediatek/vlw/VideoScene;)Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_3

    .line 677
    const-string v2, "VideoScene"

    const-string v3, "mContext is null"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 674
    :cond_2
    const v1, 0x7f080005

    goto :goto_1

    .line 680
    :cond_3
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mStartFromBoot:Z
    invoke-static {v2}, Lcom/mediatek/vlw/VideoScene;->access$1400(Lcom/mediatek/vlw/VideoScene;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mWaitingReload:Z
    invoke-static {v2}, Lcom/mediatek/vlw/VideoScene;->access$500(Lcom/mediatek/vlw/VideoScene;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 681
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/mediatek/vlw/VideoScene;->access$1100(Lcom/mediatek/vlw/VideoScene;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v7}, Lcom/mediatek/vlw/Utils;->showInfo(Landroid/content/Context;IZ)V

    .line 683
    :cond_4
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/mediatek/vlw/VideoScene;->access$300(Lcom/mediatek/vlw/VideoScene;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/vlw/Utils;->isDefaultVideo(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 684
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/mediatek/vlw/VideoScene;->access$1100(Lcom/mediatek/vlw/VideoScene;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080005

    invoke-static {v2, v3, v7}, Lcom/mediatek/vlw/Utils;->showInfo(Landroid/content/Context;IZ)V

    .line 686
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/vlw/VideoScene;->access$1300(Lcom/mediatek/vlw/VideoScene;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/mediatek/vlw/VideoScene$8$1;

    invoke-direct {v3, p0}, Lcom/mediatek/vlw/VideoScene$8$1;-><init>(Lcom/mediatek/vlw/VideoScene$8;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 699
    :cond_5
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    #calls: Lcom/mediatek/vlw/VideoScene;->checkMediaState()Z
    invoke-static {v2}, Lcom/mediatek/vlw/VideoScene;->access$4300(Lcom/mediatek/vlw/VideoScene;)Z

    move-result v0

    .line 701
    .local v0, hasSDCard:Z
    const-string v2, "VideoScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mStartFromBoot="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mStartFromBoot:Z
    invoke-static {v4}, Lcom/mediatek/vlw/VideoScene;->access$1400(Lcom/mediatek/vlw/VideoScene;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", has sdcard: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mHasShutdown="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mHasShutdown:Z
    invoke-static {v4}, Lcom/mediatek/vlw/VideoScene;->access$400(Lcom/mediatek/vlw/VideoScene;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mUri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/mediatek/vlw/VideoScene;->access$300(Lcom/mediatek/vlw/VideoScene;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mBucketId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mBucketId:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/vlw/VideoScene;->access$2500(Lcom/mediatek/vlw/VideoScene;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mStartFromBoot:Z
    invoke-static {v2}, Lcom/mediatek/vlw/VideoScene;->access$1400(Lcom/mediatek/vlw/VideoScene;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-nez v0, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mHasShutdown:Z
    invoke-static {v2}, Lcom/mediatek/vlw/VideoScene;->access$400(Lcom/mediatek/vlw/VideoScene;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 707
    :cond_7
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    #calls: Lcom/mediatek/vlw/VideoScene;->release(Z)V
    invoke-static {v2, v8}, Lcom/mediatek/vlw/VideoScene;->access$200(Lcom/mediatek/vlw/VideoScene;Z)V

    .line 708
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mWaitingReload:Z
    invoke-static {v2}, Lcom/mediatek/vlw/VideoScene;->access$500(Lcom/mediatek/vlw/VideoScene;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 709
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/mediatek/vlw/VideoScene;->access$1100(Lcom/mediatek/vlw/VideoScene;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08000f

    invoke-static {v2, v3, v7}, Lcom/mediatek/vlw/Utils;->showInfo(Landroid/content/Context;IZ)V

    .line 711
    const-string v2, "VideoScene"

    const-string v3, "Start from boot and has sdcard, wait for its preparing"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    #setter for: Lcom/mediatek/vlw/VideoScene;->mWaitingReload:Z
    invoke-static {v2, v7}, Lcom/mediatek/vlw/VideoScene;->access$502(Lcom/mediatek/vlw/VideoScene;Z)Z

    goto/16 :goto_0

    .line 717
    :cond_8
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mBucketId:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/vlw/VideoScene;->access$2500(Lcom/mediatek/vlw/VideoScene;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    if-eqz v0, :cond_d

    .line 719
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/mediatek/vlw/VideoScene;->access$1100(Lcom/mediatek/vlw/VideoScene;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mBucketId:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/vlw/VideoScene;->access$2500(Lcom/mediatek/vlw/VideoScene;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/vlw/Utils;->getUrisFromBucketId(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    #setter for: Lcom/mediatek/vlw/VideoScene;->mUriList:Ljava/util/ArrayList;
    invoke-static {v2, v3}, Lcom/mediatek/vlw/VideoScene;->access$4002(Lcom/mediatek/vlw/VideoScene;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 720
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mUriList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/mediatek/vlw/VideoScene;->access$4000(Lcom/mediatek/vlw/VideoScene;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 721
    const-string v2, "VideoScene"

    const-string v3, "Invalid video folder, play the default video"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    #calls: Lcom/mediatek/vlw/VideoScene;->release(Z)V
    invoke-static {v2, v8}, Lcom/mediatek/vlw/VideoScene;->access$200(Lcom/mediatek/vlw/VideoScene;Z)V

    .line 723
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    #calls: Lcom/mediatek/vlw/VideoScene;->clear(ZZ)V
    invoke-static {v2, v7, v7}, Lcom/mediatek/vlw/VideoScene;->access$1200(Lcom/mediatek/vlw/VideoScene;ZZ)V

    .line 724
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    #calls: Lcom/mediatek/vlw/VideoScene;->openVideo()V
    invoke-static {v2}, Lcom/mediatek/vlw/VideoScene;->access$900(Lcom/mediatek/vlw/VideoScene;)V

    .line 725
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    invoke-virtual {v2}, Lcom/mediatek/vlw/VideoScene;->start()V

    goto/16 :goto_0

    .line 727
    :cond_9
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mUriInvalid:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/mediatek/vlw/VideoScene;->access$4100(Lcom/mediatek/vlw/VideoScene;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_a

    .line 728
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/mediatek/vlw/VideoScene;->mUriInvalid:Ljava/util/ArrayList;
    invoke-static {v2, v3}, Lcom/mediatek/vlw/VideoScene;->access$4102(Lcom/mediatek/vlw/VideoScene;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 731
    :cond_a
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/mediatek/vlw/VideoScene;->access$300(Lcom/mediatek/vlw/VideoScene;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mUriInvalid:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/mediatek/vlw/VideoScene;->access$4100(Lcom/mediatek/vlw/VideoScene;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/mediatek/vlw/VideoScene;->access$300(Lcom/mediatek/vlw/VideoScene;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 732
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mUriInvalid:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/mediatek/vlw/VideoScene;->access$4100(Lcom/mediatek/vlw/VideoScene;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/mediatek/vlw/VideoScene;->access$300(Lcom/mediatek/vlw/VideoScene;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    :cond_b
    const-string v2, "VideoScene"

    const-string v3, "Video playing is removed or invalid in selected folder, play another video"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    #calls: Lcom/mediatek/vlw/VideoScene;->release(Z)V
    invoke-static {v2, v8}, Lcom/mediatek/vlw/VideoScene;->access$200(Lcom/mediatek/vlw/VideoScene;Z)V

    .line 737
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mLoopMode:Lcom/mediatek/vlw/Utils$LoopMode;
    invoke-static {v3}, Lcom/mediatek/vlw/VideoScene;->access$3800(Lcom/mediatek/vlw/VideoScene;)Lcom/mediatek/vlw/Utils$LoopMode;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mMode:I
    invoke-static {v4}, Lcom/mediatek/vlw/VideoScene;->access$3900(Lcom/mediatek/vlw/VideoScene;)I

    move-result v4

    iget-object v5, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mUriList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/mediatek/vlw/VideoScene;->access$4000(Lcom/mediatek/vlw/VideoScene;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mUriInvalid:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/mediatek/vlw/VideoScene;->access$4100(Lcom/mediatek/vlw/VideoScene;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/mediatek/vlw/Utils;->getLoopIndex(Lcom/mediatek/vlw/Utils$LoopMode;ILjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v3

    #setter for: Lcom/mediatek/vlw/VideoScene;->mMode:I
    invoke-static {v2, v3}, Lcom/mediatek/vlw/VideoScene;->access$3902(Lcom/mediatek/vlw/VideoScene;I)I

    .line 738
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mMode:I
    invoke-static {v2}, Lcom/mediatek/vlw/VideoScene;->access$3900(Lcom/mediatek/vlw/VideoScene;)I

    move-result v2

    if-ltz v2, :cond_c

    .line 739
    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mUriList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/mediatek/vlw/VideoScene;->access$4000(Lcom/mediatek/vlw/VideoScene;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v4, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mMode:I
    invoke-static {v4}, Lcom/mediatek/vlw/VideoScene;->access$3900(Lcom/mediatek/vlw/VideoScene;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    #setter for: Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;
    invoke-static {v3, v2}, Lcom/mediatek/vlw/VideoScene;->access$302(Lcom/mediatek/vlw/VideoScene;Landroid/net/Uri;)Landroid/net/Uri;

    .line 750
    :goto_2
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    #calls: Lcom/mediatek/vlw/VideoScene;->saveSettings()V
    invoke-static {v2}, Lcom/mediatek/vlw/VideoScene;->access$1500(Lcom/mediatek/vlw/VideoScene;)V

    .line 751
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    #calls: Lcom/mediatek/vlw/VideoScene;->openVideo()V
    invoke-static {v2}, Lcom/mediatek/vlw/VideoScene;->access$900(Lcom/mediatek/vlw/VideoScene;)V

    .line 752
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    invoke-virtual {v2}, Lcom/mediatek/vlw/VideoScene;->start()V

    goto/16 :goto_0

    .line 741
    :cond_c
    const-string v2, "VideoScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No valid video in this folder, play default video, size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mUriList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/mediatek/vlw/VideoScene;->access$4000(Lcom/mediatek/vlw/VideoScene;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    #calls: Lcom/mediatek/vlw/VideoScene;->clear(ZZ)V
    invoke-static {v2, v7, v7}, Lcom/mediatek/vlw/VideoScene;->access$1200(Lcom/mediatek/vlw/VideoScene;ZZ)V

    .line 745
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    #setter for: Lcom/mediatek/vlw/VideoScene;->mMode:I
    invoke-static {v2, v8}, Lcom/mediatek/vlw/VideoScene;->access$3902(Lcom/mediatek/vlw/VideoScene;I)I

    goto :goto_2

    .line 755
    :cond_d
    const-string v2, "VideoScene"

    const-string v3, "media file doesn\'t exist, play the default video"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    #calls: Lcom/mediatek/vlw/VideoScene;->release(Z)V
    invoke-static {v2, v8}, Lcom/mediatek/vlw/VideoScene;->access$200(Lcom/mediatek/vlw/VideoScene;Z)V

    .line 757
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    #calls: Lcom/mediatek/vlw/VideoScene;->clear(ZZ)V
    invoke-static {v2, v7, v7}, Lcom/mediatek/vlw/VideoScene;->access$1200(Lcom/mediatek/vlw/VideoScene;ZZ)V

    .line 758
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    #calls: Lcom/mediatek/vlw/VideoScene;->openVideo()V
    invoke-static {v2}, Lcom/mediatek/vlw/VideoScene;->access$900(Lcom/mediatek/vlw/VideoScene;)V

    .line 759
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    invoke-virtual {v2}, Lcom/mediatek/vlw/VideoScene;->start()V

    goto/16 :goto_0
.end method

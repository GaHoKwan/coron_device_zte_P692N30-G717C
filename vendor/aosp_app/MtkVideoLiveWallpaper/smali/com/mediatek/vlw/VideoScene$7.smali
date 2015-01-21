.class Lcom/mediatek/vlw/VideoScene$7;
.super Ljava/lang/Object;
.source "VideoScene.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 597
    iput-object p1, p0, Lcom/mediatek/vlw/VideoScene$7;->this$0:Lcom/mediatek/vlw/VideoScene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 10
    .parameter "mp"

    .prologue
    const/4 v4, 0x5

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 599
    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene$7;->this$0:Lcom/mediatek/vlw/VideoScene;

    #setter for: Lcom/mediatek/vlw/VideoScene;->mCurrentState:I
    invoke-static {v3, v4}, Lcom/mediatek/vlw/VideoScene;->access$1702(Lcom/mediatek/vlw/VideoScene;I)I

    .line 600
    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene$7;->this$0:Lcom/mediatek/vlw/VideoScene;

    #setter for: Lcom/mediatek/vlw/VideoScene;->mTargetState:I
    invoke-static {v3, v4}, Lcom/mediatek/vlw/VideoScene;->access$3602(Lcom/mediatek/vlw/VideoScene;I)I

    .line 601
    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene$7;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v3}, Lcom/mediatek/vlw/VideoScene;->access$3700(Lcom/mediatek/vlw/VideoScene;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 602
    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene$7;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v3}, Lcom/mediatek/vlw/VideoScene;->access$3700(Lcom/mediatek/vlw/VideoScene;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/vlw/VideoScene$7;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4}, Lcom/mediatek/vlw/VideoScene;->access$2200(Lcom/mediatek/vlw/VideoScene;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 606
    :cond_0
    const-string v3, "VideoScene"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCompletion() mLoopMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/vlw/VideoScene$7;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mLoopMode:Lcom/mediatek/vlw/Utils$LoopMode;
    invoke-static {v5}, Lcom/mediatek/vlw/VideoScene;->access$3800(Lcom/mediatek/vlw/VideoScene;)Lcom/mediatek/vlw/Utils$LoopMode;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mBucketId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/vlw/VideoScene$7;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mBucketId:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/vlw/VideoScene;->access$2500(Lcom/mediatek/vlw/VideoScene;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mUri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/vlw/VideoScene$7;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;
    invoke-static {v5}, Lcom/mediatek/vlw/VideoScene;->access$300(Lcom/mediatek/vlw/VideoScene;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/vlw/VideoScene$7;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mMode:I
    invoke-static {v5}, Lcom/mediatek/vlw/VideoScene;->access$3900(Lcom/mediatek/vlw/VideoScene;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene$7;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mBucketId:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/vlw/VideoScene;->access$2500(Lcom/mediatek/vlw/VideoScene;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 610
    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene$7;->this$0:Lcom/mediatek/vlw/VideoScene;

    iget-object v4, p0, Lcom/mediatek/vlw/VideoScene$7;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/mediatek/vlw/VideoScene;->access$1100(Lcom/mediatek/vlw/VideoScene;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/vlw/VideoScene$7;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mBucketId:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/vlw/VideoScene;->access$2500(Lcom/mediatek/vlw/VideoScene;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/vlw/Utils;->getUrisFromBucketId(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    #setter for: Lcom/mediatek/vlw/VideoScene;->mUriList:Ljava/util/ArrayList;
    invoke-static {v3, v4}, Lcom/mediatek/vlw/VideoScene;->access$4002(Lcom/mediatek/vlw/VideoScene;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 612
    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene$7;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mUriList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/mediatek/vlw/VideoScene;->access$4000(Lcom/mediatek/vlw/VideoScene;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene$7;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mUriList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/mediatek/vlw/VideoScene;->access$4000(Lcom/mediatek/vlw/VideoScene;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 613
    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene$7;->this$0:Lcom/mediatek/vlw/VideoScene;

    #calls: Lcom/mediatek/vlw/VideoScene;->correctBucketIdIfNeeded()Z
    invoke-static {v3}, Lcom/mediatek/vlw/VideoScene;->access$2900(Lcom/mediatek/vlw/VideoScene;)Z

    .line 614
    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene$7;->this$0:Lcom/mediatek/vlw/VideoScene;

    iget-object v4, p0, Lcom/mediatek/vlw/VideoScene$7;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/mediatek/vlw/VideoScene;->access$1100(Lcom/mediatek/vlw/VideoScene;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/vlw/VideoScene$7;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mBucketId:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/vlw/VideoScene;->access$2500(Lcom/mediatek/vlw/VideoScene;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/vlw/Utils;->getUrisFromBucketId(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    #setter for: Lcom/mediatek/vlw/VideoScene;->mUriList:Ljava/util/ArrayList;
    invoke-static {v3, v4}, Lcom/mediatek/vlw/VideoScene;->access$4002(Lcom/mediatek/vlw/VideoScene;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 615
    const-string v3, "VideoScene"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUrisFromBucketId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/vlw/VideoScene$7;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mUriList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/mediatek/vlw/VideoScene;->access$4000(Lcom/mediatek/vlw/VideoScene;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " videos"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_1
    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene$7;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mUriList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/mediatek/vlw/VideoScene;->access$4000(Lcom/mediatek/vlw/VideoScene;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v9, :cond_4

    .line 618
    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene$7;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/mediatek/vlw/VideoScene;->access$300(Lcom/mediatek/vlw/VideoScene;)Landroid/net/Uri;

    move-result-object v1

    .line 620
    .local v1, lastUri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene$7;->this$0:Lcom/mediatek/vlw/VideoScene;

    #calls: Lcom/mediatek/vlw/VideoScene;->clear(ZZ)V
    invoke-static {v3, v8, v8}, Lcom/mediatek/vlw/VideoScene;->access$1200(Lcom/mediatek/vlw/VideoScene;ZZ)V

    .line 621
    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene$7;->this$0:Lcom/mediatek/vlw/VideoScene;

    iget-object v4, p0, Lcom/mediatek/vlw/VideoScene$7;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mLoopMode:Lcom/mediatek/vlw/Utils$LoopMode;
    invoke-static {v4}, Lcom/mediatek/vlw/VideoScene;->access$3800(Lcom/mediatek/vlw/VideoScene;)Lcom/mediatek/vlw/Utils$LoopMode;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/vlw/VideoScene$7;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mMode:I
    invoke-static {v5}, Lcom/mediatek/vlw/VideoScene;->access$3900(Lcom/mediatek/vlw/VideoScene;)I

    move-result v5

    iget-object v6, p0, Lcom/mediatek/vlw/VideoScene$7;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mUriList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/mediatek/vlw/VideoScene;->access$4000(Lcom/mediatek/vlw/VideoScene;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/vlw/VideoScene$7;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mUriInvalid:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/mediatek/vlw/VideoScene;->access$4100(Lcom/mediatek/vlw/VideoScene;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/mediatek/vlw/Utils;->getLoopIndex(Lcom/mediatek/vlw/Utils$LoopMode;ILjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v4

    #setter for: Lcom/mediatek/vlw/VideoScene;->mMode:I
    invoke-static {v3, v4}, Lcom/mediatek/vlw/VideoScene;->access$3902(Lcom/mediatek/vlw/VideoScene;I)I

    .line 622
    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene$7;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mMode:I
    invoke-static {v3}, Lcom/mediatek/vlw/VideoScene;->access$3900(Lcom/mediatek/vlw/VideoScene;)I

    move-result v3

    if-ltz v3, :cond_3

    .line 623
    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene$7;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mUriList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/mediatek/vlw/VideoScene;->access$4000(Lcom/mediatek/vlw/VideoScene;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/vlw/VideoScene$7;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mMode:I
    invoke-static {v4}, Lcom/mediatek/vlw/VideoScene;->access$3900(Lcom/mediatek/vlw/VideoScene;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 624
    .local v2, nextUri:Landroid/net/Uri;
    invoke-virtual {v2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 625
    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene$7;->this$0:Lcom/mediatek/vlw/VideoScene;

    iget-object v4, p0, Lcom/mediatek/vlw/VideoScene$7;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mLoopMode:Lcom/mediatek/vlw/Utils$LoopMode;
    invoke-static {v4}, Lcom/mediatek/vlw/VideoScene;->access$3800(Lcom/mediatek/vlw/VideoScene;)Lcom/mediatek/vlw/Utils$LoopMode;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/vlw/VideoScene$7;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mMode:I
    invoke-static {v5}, Lcom/mediatek/vlw/VideoScene;->access$3900(Lcom/mediatek/vlw/VideoScene;)I

    move-result v5

    iget-object v6, p0, Lcom/mediatek/vlw/VideoScene$7;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mUriList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/mediatek/vlw/VideoScene;->access$4000(Lcom/mediatek/vlw/VideoScene;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/vlw/VideoScene$7;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mUriInvalid:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/mediatek/vlw/VideoScene;->access$4100(Lcom/mediatek/vlw/VideoScene;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/mediatek/vlw/Utils;->getLoopIndex(Lcom/mediatek/vlw/Utils$LoopMode;ILjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v4

    #setter for: Lcom/mediatek/vlw/VideoScene;->mMode:I
    invoke-static {v3, v4}, Lcom/mediatek/vlw/VideoScene;->access$3902(Lcom/mediatek/vlw/VideoScene;I)I

    .line 626
    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene$7;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mUriList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/mediatek/vlw/VideoScene;->access$4000(Lcom/mediatek/vlw/VideoScene;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/vlw/VideoScene$7;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mMode:I
    invoke-static {v4}, Lcom/mediatek/vlw/VideoScene;->access$3900(Lcom/mediatek/vlw/VideoScene;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #nextUri:Landroid/net/Uri;
    check-cast v2, Landroid/net/Uri;

    .line 628
    .restart local v2       #nextUri:Landroid/net/Uri;
    :cond_2
    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene$7;->this$0:Lcom/mediatek/vlw/VideoScene;

    #setter for: Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;
    invoke-static {v3, v2}, Lcom/mediatek/vlw/VideoScene;->access$302(Lcom/mediatek/vlw/VideoScene;Landroid/net/Uri;)Landroid/net/Uri;

    .line 635
    .end local v2           #nextUri:Landroid/net/Uri;
    :goto_0
    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene$7;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/mediatek/vlw/VideoScene;->access$1900(Lcom/mediatek/vlw/VideoScene;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 636
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "uri"

    iget-object v4, p0, Lcom/mediatek/vlw/VideoScene$7;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/mediatek/vlw/VideoScene;->access$300(Lcom/mediatek/vlw/VideoScene;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 637
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 639
    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene$7;->this$0:Lcom/mediatek/vlw/VideoScene;

    #calls: Lcom/mediatek/vlw/VideoScene;->release(Z)V
    invoke-static {v3, v8}, Lcom/mediatek/vlw/VideoScene;->access$200(Lcom/mediatek/vlw/VideoScene;Z)V

    .line 640
    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene$7;->this$0:Lcom/mediatek/vlw/VideoScene;

    invoke-virtual {v3}, Lcom/mediatek/vlw/VideoScene;->startPlayback()V

    .line 651
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #lastUri:Landroid/net/Uri;
    :goto_1
    return-void

    .line 630
    .restart local v1       #lastUri:Landroid/net/Uri;
    :cond_3
    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene$7;->this$0:Lcom/mediatek/vlw/VideoScene;

    #calls: Lcom/mediatek/vlw/VideoScene;->clear(ZZ)V
    invoke-static {v3, v9, v9}, Lcom/mediatek/vlw/VideoScene;->access$1200(Lcom/mediatek/vlw/VideoScene;ZZ)V

    .line 631
    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene$7;->this$0:Lcom/mediatek/vlw/VideoScene;

    #setter for: Lcom/mediatek/vlw/VideoScene;->mMode:I
    invoke-static {v3, v8}, Lcom/mediatek/vlw/VideoScene;->access$3902(Lcom/mediatek/vlw/VideoScene;I)I

    goto :goto_0

    .line 643
    .end local v1           #lastUri:Landroid/net/Uri;
    :cond_4
    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene$7;->this$0:Lcom/mediatek/vlw/VideoScene;

    iget-object v4, p0, Lcom/mediatek/vlw/VideoScene$7;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mStartTime:I
    invoke-static {v4}, Lcom/mediatek/vlw/VideoScene;->access$100(Lcom/mediatek/vlw/VideoScene;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/vlw/VideoScene;->seekTo(J)V

    .line 644
    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene$7;->this$0:Lcom/mediatek/vlw/VideoScene;

    invoke-virtual {v3}, Lcom/mediatek/vlw/VideoScene;->start()V

    goto :goto_1

    .line 648
    :cond_5
    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene$7;->this$0:Lcom/mediatek/vlw/VideoScene;

    iget-object v4, p0, Lcom/mediatek/vlw/VideoScene$7;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mStartTime:I
    invoke-static {v4}, Lcom/mediatek/vlw/VideoScene;->access$100(Lcom/mediatek/vlw/VideoScene;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/vlw/VideoScene;->seekTo(J)V

    .line 649
    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene$7;->this$0:Lcom/mediatek/vlw/VideoScene;

    invoke-virtual {v3}, Lcom/mediatek/vlw/VideoScene;->start()V

    goto :goto_1
.end method

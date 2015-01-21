.class Lcom/mediatek/vlw/VideoScene$3;
.super Landroid/content/BroadcastReceiver;
.source "VideoScene.java"


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
    .line 368
    iput-object p1, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 372
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, action:Ljava/lang/String;
    const-string v9, "storage_volume"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageVolume;

    .line 375
    .local v5, sv:Landroid/os/storage/StorageVolume;
    const/4 v4, 0x0

    .line 376
    .local v4, path:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 377
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 379
    :cond_0
    if-nez v4, :cond_1

    .line 380
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 381
    .local v2, data:Landroid/net/Uri;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    const-string v10, "file"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 382
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 386
    .end local v2           #data:Landroid/net/Uri;
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 387
    const-string v9, "VideoScene"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Receive intent action="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " path="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const-string v9, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 390
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #calls: Lcom/mediatek/vlw/VideoScene;->correctUriIfNeeded(Ljava/lang/String;)V
    invoke-static {v9, v4}, Lcom/mediatek/vlw/VideoScene;->access$2000(Lcom/mediatek/vlw/VideoScene;Ljava/lang/String;)V

    .line 391
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mStoragesList:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/mediatek/vlw/VideoScene;->access$2100(Lcom/mediatek/vlw/VideoScene;)Ljava/util/ArrayList;

    move-result-object v9

    if-nez v9, :cond_2

    .line 392
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    new-instance v10, Ljava/util/ArrayList;

    const/4 v11, 0x2

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    #setter for: Lcom/mediatek/vlw/VideoScene;->mStoragesList:Ljava/util/ArrayList;
    invoke-static {v9, v10}, Lcom/mediatek/vlw/VideoScene;->access$2102(Lcom/mediatek/vlw/VideoScene;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 394
    :cond_2
    if-eqz v4, :cond_3

    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mStoragesList:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/mediatek/vlw/VideoScene;->access$2100(Lcom/mediatek/vlw/VideoScene;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 395
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mStoragesList:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/mediatek/vlw/VideoScene;->access$2100(Lcom/mediatek/vlw/VideoScene;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    :cond_3
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v9}, Lcom/mediatek/vlw/VideoScene;->access$2200(Lcom/mediatek/vlw/VideoScene;)Landroid/media/MediaPlayer;

    move-result-object v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v9}, Lcom/mediatek/vlw/VideoScene;->access$2200(Lcom/mediatek/vlw/VideoScene;)Landroid/media/MediaPlayer;

    move-result-object v9

    invoke-virtual {v9}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v9

    if-nez v9, :cond_7

    :cond_4
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mStartFromBoot:Z
    invoke-static {v9}, Lcom/mediatek/vlw/VideoScene;->access$1400(Lcom/mediatek/vlw/VideoScene;)Z

    move-result v9

    if-eqz v9, :cond_7

    if-eqz v4, :cond_7

    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;
    invoke-static {v9}, Lcom/mediatek/vlw/VideoScene;->access$300(Lcom/mediatek/vlw/VideoScene;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 403
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;
    invoke-static {v9}, Lcom/mediatek/vlw/VideoScene;->access$300(Lcom/mediatek/vlw/VideoScene;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/vlw/Utils;->isDefaultVideo(Landroid/net/Uri;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 404
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/mediatek/vlw/VideoScene;->access$1300(Lcom/mediatek/vlw/VideoScene;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v9

    if-nez v9, :cond_5

    .line 405
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/mediatek/vlw/VideoScene;->access$1300(Lcom/mediatek/vlw/VideoScene;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 407
    :cond_5
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    const/4 v10, 0x1

    #setter for: Lcom/mediatek/vlw/VideoScene;->mWaitingReload:Z
    invoke-static {v9, v10}, Lcom/mediatek/vlw/VideoScene;->access$502(Lcom/mediatek/vlw/VideoScene;Z)Z

    .line 540
    :cond_6
    :goto_0
    return-void

    .line 410
    :cond_7
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mPrevUri:Landroid/net/Uri;
    invoke-static {v9}, Lcom/mediatek/vlw/VideoScene;->access$2300(Lcom/mediatek/vlw/VideoScene;)Landroid/net/Uri;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 411
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mPrevUri:Landroid/net/Uri;
    invoke-static {v9}, Lcom/mediatek/vlw/VideoScene;->access$2300(Lcom/mediatek/vlw/VideoScene;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 412
    .local v8, videoPath:Ljava/lang/String;
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mPrevUri:Landroid/net/Uri;
    invoke-static {v9}, Lcom/mediatek/vlw/VideoScene;->access$2300(Lcom/mediatek/vlw/VideoScene;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/vlw/Utils;->swapSdcardUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 415
    .local v7, swapPath:Ljava/lang/String;
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mPrevBucketId:Ljava/lang/String;
    invoke-static {v9}, Lcom/mediatek/vlw/VideoScene;->access$2400(Lcom/mediatek/vlw/VideoScene;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_d

    .line 416
    const/4 v9, 0x0

    const-string v10, "/"

    invoke-virtual {v8, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 417
    .local v1, bucketPath:Ljava/lang/String;
    const/4 v9, 0x0

    const-string v10, "/"

    invoke-virtual {v7, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 418
    .local v6, swapBucketPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/vlw/Utils;->isExternalFileExists(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-static {v6}, Lcom/mediatek/vlw/Utils;->isExternalFileExists(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 420
    const-string v9, "VideoScene"

    const-string v10, "The video belonging sdcard unmounted"

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 423
    :cond_8
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    iget-object v10, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mPrevBucketId:Ljava/lang/String;
    invoke-static {v10}, Lcom/mediatek/vlw/VideoScene;->access$2400(Lcom/mediatek/vlw/VideoScene;)Ljava/lang/String;

    move-result-object v10

    #setter for: Lcom/mediatek/vlw/VideoScene;->mBucketId:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/mediatek/vlw/VideoScene;->access$2502(Lcom/mediatek/vlw/VideoScene;Ljava/lang/String;)Ljava/lang/String;

    .line 424
    invoke-static {v8}, Lcom/mediatek/vlw/Utils;->isExternalFileExists(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 427
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    iget-object v10, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mPrevUri:Landroid/net/Uri;
    invoke-static {v10}, Lcom/mediatek/vlw/VideoScene;->access$2300(Lcom/mediatek/vlw/VideoScene;)Landroid/net/Uri;

    move-result-object v10

    #setter for: Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;
    invoke-static {v9, v10}, Lcom/mediatek/vlw/VideoScene;->access$302(Lcom/mediatek/vlw/VideoScene;Landroid/net/Uri;)Landroid/net/Uri;

    .line 428
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    iget-object v10, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mPrevStartTime:I
    invoke-static {v10}, Lcom/mediatek/vlw/VideoScene;->access$2600(Lcom/mediatek/vlw/VideoScene;)I

    move-result v10

    #setter for: Lcom/mediatek/vlw/VideoScene;->mStartTime:I
    invoke-static {v9, v10}, Lcom/mediatek/vlw/VideoScene;->access$102(Lcom/mediatek/vlw/VideoScene;I)I

    .line 429
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    iget-object v10, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mPrevEndTime:I
    invoke-static {v10}, Lcom/mediatek/vlw/VideoScene;->access$2700(Lcom/mediatek/vlw/VideoScene;)I

    move-result v10

    #setter for: Lcom/mediatek/vlw/VideoScene;->mEndTime:I
    invoke-static {v9, v10}, Lcom/mediatek/vlw/VideoScene;->access$002(Lcom/mediatek/vlw/VideoScene;I)I

    .line 430
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    iget-object v10, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mPrevCurrentPos:I
    invoke-static {v10}, Lcom/mediatek/vlw/VideoScene;->access$2800(Lcom/mediatek/vlw/VideoScene;)I

    move-result v10

    #setter for: Lcom/mediatek/vlw/VideoScene;->mCurrentPos:I
    invoke-static {v9, v10}, Lcom/mediatek/vlw/VideoScene;->access$802(Lcom/mediatek/vlw/VideoScene;I)I

    .line 468
    .end local v1           #bucketPath:Ljava/lang/String;
    .end local v6           #swapBucketPath:Ljava/lang/String;
    :goto_1
    const-string v9, "VideoScene"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Restore the video last time. mPrevUri="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mPrevUri:Landroid/net/Uri;
    invoke-static {v11}, Lcom/mediatek/vlw/VideoScene;->access$2300(Lcom/mediatek/vlw/VideoScene;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mPrevBucketId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mPrevBucketId:Ljava/lang/String;
    invoke-static {v11}, Lcom/mediatek/vlw/VideoScene;->access$2400(Lcom/mediatek/vlw/VideoScene;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mPrevStartTime="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mPrevStartTime:I
    invoke-static {v11}, Lcom/mediatek/vlw/VideoScene;->access$2600(Lcom/mediatek/vlw/VideoScene;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mPrevEndTime="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mPrevEndTime:I
    invoke-static {v11}, Lcom/mediatek/vlw/VideoScene;->access$2700(Lcom/mediatek/vlw/VideoScene;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mPrevCurrentPos="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mPrevCurrentPos:I
    invoke-static {v11}, Lcom/mediatek/vlw/VideoScene;->access$2800(Lcom/mediatek/vlw/VideoScene;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    const/4 v10, 0x0

    #setter for: Lcom/mediatek/vlw/VideoScene;->mPrevUri:Landroid/net/Uri;
    invoke-static {v9, v10}, Lcom/mediatek/vlw/VideoScene;->access$2302(Lcom/mediatek/vlw/VideoScene;Landroid/net/Uri;)Landroid/net/Uri;

    .line 475
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    const/4 v10, 0x0

    #setter for: Lcom/mediatek/vlw/VideoScene;->mPrevBucketId:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/mediatek/vlw/VideoScene;->access$2402(Lcom/mediatek/vlw/VideoScene;Ljava/lang/String;)Ljava/lang/String;

    .line 476
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v9}, Lcom/mediatek/vlw/VideoScene;->access$1900(Lcom/mediatek/vlw/VideoScene;)Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 477
    .local v3, edit:Landroid/content/SharedPreferences$Editor;
    const-string v9, "bucketId"

    iget-object v10, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mBucketId:Ljava/lang/String;
    invoke-static {v10}, Lcom/mediatek/vlw/VideoScene;->access$2500(Lcom/mediatek/vlw/VideoScene;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 478
    const-string v9, "uri"

    iget-object v10, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;
    invoke-static {v10}, Lcom/mediatek/vlw/VideoScene;->access$300(Lcom/mediatek/vlw/VideoScene;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 479
    const-string v9, "pos"

    iget-object v10, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mCurrentPos:I
    invoke-static {v10}, Lcom/mediatek/vlw/VideoScene;->access$800(Lcom/mediatek/vlw/VideoScene;)I

    move-result v10

    int-to-long v10, v10

    invoke-interface {v3, v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 480
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mBucketId:Ljava/lang/String;
    invoke-static {v9}, Lcom/mediatek/vlw/VideoScene;->access$2500(Lcom/mediatek/vlw/VideoScene;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_9

    .line 481
    const-string v9, "start"

    iget-object v10, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mStartTime:I
    invoke-static {v10}, Lcom/mediatek/vlw/VideoScene;->access$100(Lcom/mediatek/vlw/VideoScene;)I

    move-result v10

    int-to-long v10, v10

    invoke-interface {v3, v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 482
    const-string v9, "end"

    iget-object v10, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mEndTime:I
    invoke-static {v10}, Lcom/mediatek/vlw/VideoScene;->access$000(Lcom/mediatek/vlw/VideoScene;)I

    move-result v10

    int-to-long v10, v10

    invoke-interface {v3, v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 484
    :cond_9
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 487
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mPreview:Z
    invoke-static {v9}, Lcom/mediatek/vlw/VideoScene;->access$600(Lcom/mediatek/vlw/VideoScene;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 488
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    iget-object v10, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mCurrentPos:I
    invoke-static {v10}, Lcom/mediatek/vlw/VideoScene;->access$800(Lcom/mediatek/vlw/VideoScene;)I

    move-result v10

    int-to-long v10, v10

    #setter for: Lcom/mediatek/vlw/VideoScene;->mSeekWhenPrepared:J
    invoke-static {v9, v10, v11}, Lcom/mediatek/vlw/VideoScene;->access$702(Lcom/mediatek/vlw/VideoScene;J)J

    .line 490
    :cond_a
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #calls: Lcom/mediatek/vlw/VideoScene;->openVideo()V
    invoke-static {v9}, Lcom/mediatek/vlw/VideoScene;->access$900(Lcom/mediatek/vlw/VideoScene;)V

    .line 493
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    const/4 v10, 0x0

    #setter for: Lcom/mediatek/vlw/VideoScene;->mHasShutdown:Z
    invoke-static {v9, v10}, Lcom/mediatek/vlw/VideoScene;->access$402(Lcom/mediatek/vlw/VideoScene;Z)Z

    goto/16 :goto_0

    .line 431
    .end local v3           #edit:Landroid/content/SharedPreferences$Editor;
    .restart local v1       #bucketPath:Ljava/lang/String;
    .restart local v6       #swapBucketPath:Ljava/lang/String;
    :cond_b
    invoke-static {v7}, Lcom/mediatek/vlw/Utils;->isExternalFileExists(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 436
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    #setter for: Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;
    invoke-static {v9, v10}, Lcom/mediatek/vlw/VideoScene;->access$302(Lcom/mediatek/vlw/VideoScene;Landroid/net/Uri;)Landroid/net/Uri;

    .line 437
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    iget-object v10, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mPrevStartTime:I
    invoke-static {v10}, Lcom/mediatek/vlw/VideoScene;->access$2600(Lcom/mediatek/vlw/VideoScene;)I

    move-result v10

    #setter for: Lcom/mediatek/vlw/VideoScene;->mStartTime:I
    invoke-static {v9, v10}, Lcom/mediatek/vlw/VideoScene;->access$102(Lcom/mediatek/vlw/VideoScene;I)I

    .line 438
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    iget-object v10, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mPrevEndTime:I
    invoke-static {v10}, Lcom/mediatek/vlw/VideoScene;->access$2700(Lcom/mediatek/vlw/VideoScene;)I

    move-result v10

    #setter for: Lcom/mediatek/vlw/VideoScene;->mEndTime:I
    invoke-static {v9, v10}, Lcom/mediatek/vlw/VideoScene;->access$002(Lcom/mediatek/vlw/VideoScene;I)I

    .line 439
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    iget-object v10, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mPrevCurrentPos:I
    invoke-static {v10}, Lcom/mediatek/vlw/VideoScene;->access$2800(Lcom/mediatek/vlw/VideoScene;)I

    move-result v10

    #setter for: Lcom/mediatek/vlw/VideoScene;->mCurrentPos:I
    invoke-static {v9, v10}, Lcom/mediatek/vlw/VideoScene;->access$802(Lcom/mediatek/vlw/VideoScene;I)I

    goto/16 :goto_1

    .line 444
    :cond_c
    const-string v9, "VideoScene"

    const-string v10, "cannot reload videos selected last time"

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 449
    .end local v1           #bucketPath:Ljava/lang/String;
    .end local v6           #swapBucketPath:Ljava/lang/String;
    :cond_d
    invoke-static {v8}, Lcom/mediatek/vlw/Utils;->isExternalFileExists(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 450
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    iget-object v10, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mPrevUri:Landroid/net/Uri;
    invoke-static {v10}, Lcom/mediatek/vlw/VideoScene;->access$2300(Lcom/mediatek/vlw/VideoScene;)Landroid/net/Uri;

    move-result-object v10

    #setter for: Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;
    invoke-static {v9, v10}, Lcom/mediatek/vlw/VideoScene;->access$302(Lcom/mediatek/vlw/VideoScene;Landroid/net/Uri;)Landroid/net/Uri;

    .line 451
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    const/4 v10, 0x0

    #setter for: Lcom/mediatek/vlw/VideoScene;->mBucketId:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/mediatek/vlw/VideoScene;->access$2502(Lcom/mediatek/vlw/VideoScene;Ljava/lang/String;)Ljava/lang/String;

    .line 452
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    iget-object v10, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mPrevStartTime:I
    invoke-static {v10}, Lcom/mediatek/vlw/VideoScene;->access$2600(Lcom/mediatek/vlw/VideoScene;)I

    move-result v10

    #setter for: Lcom/mediatek/vlw/VideoScene;->mStartTime:I
    invoke-static {v9, v10}, Lcom/mediatek/vlw/VideoScene;->access$102(Lcom/mediatek/vlw/VideoScene;I)I

    .line 453
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    iget-object v10, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mPrevEndTime:I
    invoke-static {v10}, Lcom/mediatek/vlw/VideoScene;->access$2700(Lcom/mediatek/vlw/VideoScene;)I

    move-result v10

    #setter for: Lcom/mediatek/vlw/VideoScene;->mEndTime:I
    invoke-static {v9, v10}, Lcom/mediatek/vlw/VideoScene;->access$002(Lcom/mediatek/vlw/VideoScene;I)I

    .line 454
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    iget-object v10, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mPrevCurrentPos:I
    invoke-static {v10}, Lcom/mediatek/vlw/VideoScene;->access$2800(Lcom/mediatek/vlw/VideoScene;)I

    move-result v10

    #setter for: Lcom/mediatek/vlw/VideoScene;->mCurrentPos:I
    invoke-static {v9, v10}, Lcom/mediatek/vlw/VideoScene;->access$802(Lcom/mediatek/vlw/VideoScene;I)I

    goto/16 :goto_1

    .line 456
    :cond_e
    invoke-static {v7}, Lcom/mediatek/vlw/Utils;->isExternalFileExists(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 457
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    #setter for: Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;
    invoke-static {v9, v10}, Lcom/mediatek/vlw/VideoScene;->access$302(Lcom/mediatek/vlw/VideoScene;Landroid/net/Uri;)Landroid/net/Uri;

    .line 458
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    const/4 v10, 0x0

    #setter for: Lcom/mediatek/vlw/VideoScene;->mBucketId:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/mediatek/vlw/VideoScene;->access$2502(Lcom/mediatek/vlw/VideoScene;Ljava/lang/String;)Ljava/lang/String;

    .line 459
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    iget-object v10, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mPrevStartTime:I
    invoke-static {v10}, Lcom/mediatek/vlw/VideoScene;->access$2600(Lcom/mediatek/vlw/VideoScene;)I

    move-result v10

    #setter for: Lcom/mediatek/vlw/VideoScene;->mStartTime:I
    invoke-static {v9, v10}, Lcom/mediatek/vlw/VideoScene;->access$102(Lcom/mediatek/vlw/VideoScene;I)I

    .line 460
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    iget-object v10, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mPrevEndTime:I
    invoke-static {v10}, Lcom/mediatek/vlw/VideoScene;->access$2700(Lcom/mediatek/vlw/VideoScene;)I

    move-result v10

    #setter for: Lcom/mediatek/vlw/VideoScene;->mEndTime:I
    invoke-static {v9, v10}, Lcom/mediatek/vlw/VideoScene;->access$002(Lcom/mediatek/vlw/VideoScene;I)I

    .line 461
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    iget-object v10, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mPrevCurrentPos:I
    invoke-static {v10}, Lcom/mediatek/vlw/VideoScene;->access$2800(Lcom/mediatek/vlw/VideoScene;)I

    move-result v10

    #setter for: Lcom/mediatek/vlw/VideoScene;->mCurrentPos:I
    invoke-static {v9, v10}, Lcom/mediatek/vlw/VideoScene;->access$802(Lcom/mediatek/vlw/VideoScene;I)I

    goto/16 :goto_1

    .line 464
    :cond_f
    const-string v9, "VideoScene"

    const-string v10, "video file selected last time does not exists"

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 496
    .end local v7           #swapPath:Ljava/lang/String;
    .end local v8           #videoPath:Ljava/lang/String;
    :cond_10
    const-string v9, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 500
    :cond_11
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mHasShutdown:Z
    invoke-static {v9}, Lcom/mediatek/vlw/VideoScene;->access$400(Lcom/mediatek/vlw/VideoScene;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 501
    const-string v9, "VideoScene"

    const-string v10, "Has been shutdown, Ignore"

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 504
    :cond_12
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mStoragesList:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/mediatek/vlw/VideoScene;->access$2100(Lcom/mediatek/vlw/VideoScene;)Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_13

    if-eqz v4, :cond_13

    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mStoragesList:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/mediatek/vlw/VideoScene;->access$2100(Lcom/mediatek/vlw/VideoScene;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 506
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mStoragesList:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/mediatek/vlw/VideoScene;->access$2100(Lcom/mediatek/vlw/VideoScene;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 508
    :cond_13
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;
    invoke-static {v9}, Lcom/mediatek/vlw/VideoScene;->access$300(Lcom/mediatek/vlw/VideoScene;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 509
    .restart local v8       #videoPath:Ljava/lang/String;
    if-eqz v8, :cond_6

    if-eqz v4, :cond_6

    invoke-virtual {v8, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 511
    const-string v9, "VideoScene"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "action: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " revert to default video. sdcard path: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " absolute path: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mUri: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;
    invoke-static {v11}, Lcom/mediatek/vlw/VideoScene;->access$300(Lcom/mediatek/vlw/VideoScene;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/mediatek/vlw/VideoScene;->access$1100(Lcom/mediatek/vlw/VideoScene;)Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f080007

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Lcom/mediatek/vlw/Utils;->showInfo(Landroid/content/Context;IZ)V

    .line 519
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    iget-object v10, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mBucketId:Ljava/lang/String;
    invoke-static {v10}, Lcom/mediatek/vlw/VideoScene;->access$2500(Lcom/mediatek/vlw/VideoScene;)Ljava/lang/String;

    move-result-object v10

    #setter for: Lcom/mediatek/vlw/VideoScene;->mPrevBucketId:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/mediatek/vlw/VideoScene;->access$2402(Lcom/mediatek/vlw/VideoScene;Ljava/lang/String;)Ljava/lang/String;

    .line 520
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    iget-object v10, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;
    invoke-static {v10}, Lcom/mediatek/vlw/VideoScene;->access$300(Lcom/mediatek/vlw/VideoScene;)Landroid/net/Uri;

    move-result-object v10

    #setter for: Lcom/mediatek/vlw/VideoScene;->mPrevUri:Landroid/net/Uri;
    invoke-static {v9, v10}, Lcom/mediatek/vlw/VideoScene;->access$2302(Lcom/mediatek/vlw/VideoScene;Landroid/net/Uri;)Landroid/net/Uri;

    .line 521
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    iget-object v10, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mStartTime:I
    invoke-static {v10}, Lcom/mediatek/vlw/VideoScene;->access$100(Lcom/mediatek/vlw/VideoScene;)I

    move-result v10

    #setter for: Lcom/mediatek/vlw/VideoScene;->mPrevStartTime:I
    invoke-static {v9, v10}, Lcom/mediatek/vlw/VideoScene;->access$2602(Lcom/mediatek/vlw/VideoScene;I)I

    .line 522
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    iget-object v10, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mEndTime:I
    invoke-static {v10}, Lcom/mediatek/vlw/VideoScene;->access$000(Lcom/mediatek/vlw/VideoScene;)I

    move-result v10

    #setter for: Lcom/mediatek/vlw/VideoScene;->mPrevEndTime:I
    invoke-static {v9, v10}, Lcom/mediatek/vlw/VideoScene;->access$2702(Lcom/mediatek/vlw/VideoScene;I)I

    .line 523
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    iget-object v10, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    invoke-virtual {v10}, Lcom/mediatek/vlw/VideoScene;->getCurrentPosition()I

    move-result v10

    #setter for: Lcom/mediatek/vlw/VideoScene;->mPrevCurrentPos:I
    invoke-static {v9, v10}, Lcom/mediatek/vlw/VideoScene;->access$2802(Lcom/mediatek/vlw/VideoScene;I)I

    .line 525
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #calls: Lcom/mediatek/vlw/VideoScene;->stopAndReleaseVideoObserver()V
    invoke-static {v9}, Lcom/mediatek/vlw/VideoScene;->access$1600(Lcom/mediatek/vlw/VideoScene;)V

    .line 526
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    const/4 v10, 0x0

    #calls: Lcom/mediatek/vlw/VideoScene;->release(Z)V
    invoke-static {v9, v10}, Lcom/mediatek/vlw/VideoScene;->access$200(Lcom/mediatek/vlw/VideoScene;Z)V

    .line 527
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    const/4 v10, 0x1

    const/4 v11, 0x1

    #calls: Lcom/mediatek/vlw/VideoScene;->clear(ZZ)V
    invoke-static {v9, v10, v11}, Lcom/mediatek/vlw/VideoScene;->access$1200(Lcom/mediatek/vlw/VideoScene;ZZ)V

    .line 528
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #calls: Lcom/mediatek/vlw/VideoScene;->openVideo()V
    invoke-static {v9}, Lcom/mediatek/vlw/VideoScene;->access$900(Lcom/mediatek/vlw/VideoScene;)V

    .line 529
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mVisible:Z
    invoke-static {v9}, Lcom/mediatek/vlw/VideoScene;->access$1000(Lcom/mediatek/vlw/VideoScene;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 530
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    invoke-virtual {v9}, Lcom/mediatek/vlw/VideoScene;->start()V

    goto/16 :goto_0

    .line 533
    .end local v8           #videoPath:Ljava/lang/String;
    :cond_14
    const-string v9, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 534
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;
    invoke-static {v9}, Lcom/mediatek/vlw/VideoScene;->access$300(Lcom/mediatek/vlw/VideoScene;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 535
    .restart local v8       #videoPath:Ljava/lang/String;
    if-eqz v8, :cond_6

    if-eqz v4, :cond_6

    invoke-virtual {v8, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mBucketId:Ljava/lang/String;
    invoke-static {v9}, Lcom/mediatek/vlw/VideoScene;->access$2500(Lcom/mediatek/vlw/VideoScene;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 537
    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$3;->this$0:Lcom/mediatek/vlw/VideoScene;

    #calls: Lcom/mediatek/vlw/VideoScene;->correctBucketIdIfNeeded()Z
    invoke-static {v9}, Lcom/mediatek/vlw/VideoScene;->access$2900(Lcom/mediatek/vlw/VideoScene;)Z

    goto/16 :goto_0
.end method

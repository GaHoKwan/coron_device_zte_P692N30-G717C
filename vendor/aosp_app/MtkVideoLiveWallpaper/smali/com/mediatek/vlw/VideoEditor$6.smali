.class Lcom/mediatek/vlw/VideoEditor$6;
.super Landroid/content/BroadcastReceiver;
.source "VideoEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/vlw/VideoEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/vlw/VideoEditor;


# direct methods
.method constructor <init>(Lcom/mediatek/vlw/VideoEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/mediatek/vlw/VideoEditor$6;->this$0:Lcom/mediatek/vlw/VideoEditor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 359
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, action:Ljava/lang/String;
    const-string v5, "storage_volume"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    .line 362
    .local v3, sv:Landroid/os/storage/StorageVolume;
    const/4 v2, 0x0

    .line 363
    .local v2, path:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 364
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 366
    :cond_0
    if-nez v2, :cond_1

    .line 367
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 368
    .local v1, data:Landroid/net/Uri;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "file"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 369
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 373
    .end local v1           #data:Landroid/net/Uri;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 374
    const-string v5, "VideoEditor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mReceive intent action="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " path="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mUri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/vlw/VideoEditor$6;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mUri:Landroid/net/Uri;
    invoke-static {v7}, Lcom/mediatek/vlw/VideoEditor;->access$400(Lcom/mediatek/vlw/VideoEditor;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const-string v5, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 377
    iget-object v5, p0, Lcom/mediatek/vlw/VideoEditor$6;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mPrevUri:Landroid/net/Uri;
    invoke-static {v5}, Lcom/mediatek/vlw/VideoEditor;->access$2400(Lcom/mediatek/vlw/VideoEditor;)Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/mediatek/vlw/VideoEditor$6;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mHavaUnmountedData:Z
    invoke-static {v5}, Lcom/mediatek/vlw/VideoEditor;->access$2500(Lcom/mediatek/vlw/VideoEditor;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 378
    iget-object v5, p0, Lcom/mediatek/vlw/VideoEditor$6;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mPrevBucketId:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/vlw/VideoEditor;->access$2600(Lcom/mediatek/vlw/VideoEditor;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    .line 379
    iget-object v5, p0, Lcom/mediatek/vlw/VideoEditor$6;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #calls: Lcom/mediatek/vlw/VideoEditor;->restoreMountedData()V
    invoke-static {v5}, Lcom/mediatek/vlw/VideoEditor;->access$2700(Lcom/mediatek/vlw/VideoEditor;)V

    .line 380
    iget-object v5, p0, Lcom/mediatek/vlw/VideoEditor$6;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #calls: Lcom/mediatek/vlw/VideoEditor;->startPlayback()V
    invoke-static {v5}, Lcom/mediatek/vlw/VideoEditor;->access$1200(Lcom/mediatek/vlw/VideoEditor;)V

    .line 431
    :cond_2
    :goto_0
    return-void

    .line 382
    :cond_3
    iget-object v5, p0, Lcom/mediatek/vlw/VideoEditor$6;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/mediatek/vlw/VideoEditor;->access$1700(Lcom/mediatek/vlw/VideoEditor;)Landroid/app/ProgressDialog;

    move-result-object v5

    if-nez v5, :cond_2

    .line 383
    iget-object v5, p0, Lcom/mediatek/vlw/VideoEditor$6;->this$0:Lcom/mediatek/vlw/VideoEditor;

    new-instance v6, Landroid/app/ProgressDialog;

    iget-object v7, p0, Lcom/mediatek/vlw/VideoEditor$6;->this$0:Lcom/mediatek/vlw/VideoEditor;

    invoke-direct {v6, v7}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/mediatek/vlw/VideoEditor;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5, v6}, Lcom/mediatek/vlw/VideoEditor;->access$1702(Lcom/mediatek/vlw/VideoEditor;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 384
    iget-object v5, p0, Lcom/mediatek/vlw/VideoEditor$6;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/mediatek/vlw/VideoEditor;->access$1700(Lcom/mediatek/vlw/VideoEditor;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 386
    iget-object v5, p0, Lcom/mediatek/vlw/VideoEditor$6;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/mediatek/vlw/VideoEditor;->access$1700(Lcom/mediatek/vlw/VideoEditor;)Landroid/app/ProgressDialog;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/vlw/VideoEditor$6;->this$0:Lcom/mediatek/vlw/VideoEditor;

    const v7, 0x7f08000f

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 388
    iget-object v5, p0, Lcom/mediatek/vlw/VideoEditor$6;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/mediatek/vlw/VideoEditor;->access$1700(Lcom/mediatek/vlw/VideoEditor;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 389
    const-string v5, "VideoEditor"

    const-string v6, "create dialog"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 393
    :cond_4
    const-string v5, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 394
    iget-object v5, p0, Lcom/mediatek/vlw/VideoEditor$6;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mPrevUri:Landroid/net/Uri;
    invoke-static {v5}, Lcom/mediatek/vlw/VideoEditor;->access$2400(Lcom/mediatek/vlw/VideoEditor;)Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/mediatek/vlw/VideoEditor$6;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mPrevBucketId:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/vlw/VideoEditor;->access$2600(Lcom/mediatek/vlw/VideoEditor;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/mediatek/vlw/VideoEditor$6;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mHavaUnmountedData:Z
    invoke-static {v5}, Lcom/mediatek/vlw/VideoEditor;->access$2500(Lcom/mediatek/vlw/VideoEditor;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/mediatek/vlw/VideoEditor$6;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mUnMounted:Z
    invoke-static {v5}, Lcom/mediatek/vlw/VideoEditor;->access$2800(Lcom/mediatek/vlw/VideoEditor;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 396
    iget-object v5, p0, Lcom/mediatek/vlw/VideoEditor$6;->this$0:Lcom/mediatek/vlw/VideoEditor;

    iget-object v6, p0, Lcom/mediatek/vlw/VideoEditor$6;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mPrevBucketId:Ljava/lang/String;
    invoke-static {v6}, Lcom/mediatek/vlw/VideoEditor;->access$2600(Lcom/mediatek/vlw/VideoEditor;)Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/mediatek/vlw/VideoEditor;->mBucketId:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/mediatek/vlw/VideoEditor;->access$302(Lcom/mediatek/vlw/VideoEditor;Ljava/lang/String;)Ljava/lang/String;

    .line 397
    const-string v5, "VideoEditor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Receive ACTION_MEDIA_SCANNER_FINISHED , mBucketId"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/vlw/VideoEditor$6;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mBucketId:Ljava/lang/String;
    invoke-static {v7}, Lcom/mediatek/vlw/VideoEditor;->access$300(Lcom/mediatek/vlw/VideoEditor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v5, p0, Lcom/mediatek/vlw/VideoEditor$6;->this$0:Lcom/mediatek/vlw/VideoEditor;

    iget-object v6, p0, Lcom/mediatek/vlw/VideoEditor$6;->this$0:Lcom/mediatek/vlw/VideoEditor;

    iget-object v7, p0, Lcom/mediatek/vlw/VideoEditor$6;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mBucketId:Ljava/lang/String;
    invoke-static {v7}, Lcom/mediatek/vlw/VideoEditor;->access$300(Lcom/mediatek/vlw/VideoEditor;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/vlw/Utils;->getUrisFromBucketId(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    #setter for: Lcom/mediatek/vlw/VideoEditor;->mUriList:Ljava/util/ArrayList;
    invoke-static {v5, v6}, Lcom/mediatek/vlw/VideoEditor;->access$602(Lcom/mediatek/vlw/VideoEditor;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 402
    iget-object v5, p0, Lcom/mediatek/vlw/VideoEditor$6;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #calls: Lcom/mediatek/vlw/VideoEditor;->restoreMountedData()V
    invoke-static {v5}, Lcom/mediatek/vlw/VideoEditor;->access$2700(Lcom/mediatek/vlw/VideoEditor;)V

    .line 403
    iget-object v5, p0, Lcom/mediatek/vlw/VideoEditor$6;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/mediatek/vlw/VideoEditor;->access$1700(Lcom/mediatek/vlw/VideoEditor;)Landroid/app/ProgressDialog;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 404
    iget-object v5, p0, Lcom/mediatek/vlw/VideoEditor$6;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/mediatek/vlw/VideoEditor;->access$1700(Lcom/mediatek/vlw/VideoEditor;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 406
    :cond_5
    iget-object v5, p0, Lcom/mediatek/vlw/VideoEditor$6;->this$0:Lcom/mediatek/vlw/VideoEditor;

    const/4 v6, 0x0

    #setter for: Lcom/mediatek/vlw/VideoEditor;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5, v6}, Lcom/mediatek/vlw/VideoEditor;->access$1702(Lcom/mediatek/vlw/VideoEditor;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 407
    iget-object v5, p0, Lcom/mediatek/vlw/VideoEditor$6;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #calls: Lcom/mediatek/vlw/VideoEditor;->startPlayback()V
    invoke-static {v5}, Lcom/mediatek/vlw/VideoEditor;->access$1200(Lcom/mediatek/vlw/VideoEditor;)V

    .line 408
    iget-object v5, p0, Lcom/mediatek/vlw/VideoEditor$6;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #setter for: Lcom/mediatek/vlw/VideoEditor;->mHavaUnmountedData:Z
    invoke-static {v5, v8}, Lcom/mediatek/vlw/VideoEditor;->access$2502(Lcom/mediatek/vlw/VideoEditor;Z)Z

    .line 409
    iget-object v5, p0, Lcom/mediatek/vlw/VideoEditor$6;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #setter for: Lcom/mediatek/vlw/VideoEditor;->mUnMounted:Z
    invoke-static {v5, v8}, Lcom/mediatek/vlw/VideoEditor;->access$2802(Lcom/mediatek/vlw/VideoEditor;Z)Z

    .line 412
    :cond_6
    iget-object v5, p0, Lcom/mediatek/vlw/VideoEditor$6;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #calls: Lcom/mediatek/vlw/VideoEditor;->updateInfo()V
    invoke-static {v5}, Lcom/mediatek/vlw/VideoEditor;->access$2900(Lcom/mediatek/vlw/VideoEditor;)V

    goto/16 :goto_0

    .line 413
    :cond_7
    const-string v5, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 417
    :cond_8
    const-string v5, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 418
    iget-object v5, p0, Lcom/mediatek/vlw/VideoEditor$6;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #setter for: Lcom/mediatek/vlw/VideoEditor;->mUnMounted:Z
    invoke-static {v5, v9}, Lcom/mediatek/vlw/VideoEditor;->access$2802(Lcom/mediatek/vlw/VideoEditor;Z)Z

    .line 420
    :cond_9
    iget-object v5, p0, Lcom/mediatek/vlw/VideoEditor$6;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mUri:Landroid/net/Uri;
    invoke-static {v5}, Lcom/mediatek/vlw/VideoEditor;->access$400(Lcom/mediatek/vlw/VideoEditor;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 421
    .local v4, videoPath:Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 422
    const-string v5, "VideoEditor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "action: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " revert to default video. sdcard path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " absolute path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mUri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/vlw/VideoEditor$6;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mUri:Landroid/net/Uri;
    invoke-static {v7}, Lcom/mediatek/vlw/VideoEditor;->access$400(Lcom/mediatek/vlw/VideoEditor;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v5, p0, Lcom/mediatek/vlw/VideoEditor$6;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #calls: Lcom/mediatek/vlw/VideoEditor;->saveUnmountedData()V
    invoke-static {v5}, Lcom/mediatek/vlw/VideoEditor;->access$3000(Lcom/mediatek/vlw/VideoEditor;)V

    .line 427
    iget-object v5, p0, Lcom/mediatek/vlw/VideoEditor$6;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #calls: Lcom/mediatek/vlw/VideoEditor;->clear(ZZZ)V
    invoke-static {v5, v8, v9, v9}, Lcom/mediatek/vlw/VideoEditor;->access$900(Lcom/mediatek/vlw/VideoEditor;ZZZ)V

    .line 428
    iget-object v5, p0, Lcom/mediatek/vlw/VideoEditor$6;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #calls: Lcom/mediatek/vlw/VideoEditor;->startPlayback()V
    invoke-static {v5}, Lcom/mediatek/vlw/VideoEditor;->access$1200(Lcom/mediatek/vlw/VideoEditor;)V

    goto/16 :goto_0
.end method

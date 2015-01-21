.class Lcom/android/gallery3d/app/PhotoPage$24;
.super Ljava/lang/Thread;
.source "PhotoPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/PhotoPage;->onShareAsVideoRequested(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoPage;

.field final synthetic val$finalIntent:Landroid/content/Intent;

.field final synthetic val$genProgressDialog:Landroid/app/DialogFragment;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/PhotoPage;Landroid/content/Intent;Landroid/app/DialogFragment;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3080
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$24;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iput-object p2, p0, Lcom/android/gallery3d/app/PhotoPage$24;->val$finalIntent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/gallery3d/app/PhotoPage$24;->val$genProgressDialog:Landroid/app/DialogFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method private dismissDialogAndForwardIntent(Landroid/content/Intent;Landroid/app/DialogFragment;)V
    .locals 2
    .parameter "finalIntent"
    .parameter "genProgressDialog"

    .prologue
    .line 3122
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$24;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v0, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/android/gallery3d/app/PhotoPage$24$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/gallery3d/app/PhotoPage$24$2;-><init>(Lcom/android/gallery3d/app/PhotoPage$24;Landroid/app/DialogFragment;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3131
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 3083
    const-string v3, "onShareAsVideoRequested"

    invoke-virtual {p0, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 3084
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage$24;->val$finalIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage$24;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v4, v4, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailHelper;->getVideoSharableImageFromIntent(Landroid/content/Intent;Lcom/android/gallery3d/app/AbstractGalleryActivity;)Lcom/android/gallery3d/data/LocalMediaItem;

    move-result-object v1

    .line 3086
    .local v1, item:Lcom/android/gallery3d/data/LocalMediaItem;
    if-nez v1, :cond_0

    .line 3087
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage$24;->val$finalIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage$24;->val$genProgressDialog:Landroid/app/DialogFragment;

    invoke-direct {p0, v3, v4}, Lcom/android/gallery3d/app/PhotoPage$24;->dismissDialogAndForwardIntent(Landroid/content/Intent;Landroid/app/DialogFragment;)V

    .line 3117
    :goto_0
    return-void

    .line 3091
    :cond_0
    invoke-static {v1}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailHelper;->getVideoShareUriFromMediaItem(Lcom/android/gallery3d/data/LocalMediaItem;)Landroid/net/Uri;

    move-result-object v2

    .line 3092
    .local v2, shareUri:Landroid/net/Uri;
    if-eqz v2, :cond_1

    .line 3093
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage$24;->val$finalIntent:Landroid/content/Intent;

    const-string v4, "video/*"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3094
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage$24;->val$finalIntent:Landroid/content/Intent;

    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3095
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage$24;->val$finalIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage$24;->val$genProgressDialog:Landroid/app/DialogFragment;

    invoke-direct {p0, v3, v4}, Lcom/android/gallery3d/app/PhotoPage$24;->dismissDialogAndForwardIntent(Landroid/content/Intent;Landroid/app/DialogFragment;)V

    goto :goto_0

    .line 3096
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage$24;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mIsActive:Z
    invoke-static {v3}, Lcom/android/gallery3d/app/PhotoPage;->access$4300(Lcom/android/gallery3d/app/PhotoPage;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3097
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage$24;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v3, v3, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v4, Lcom/android/gallery3d/app/PhotoPage$24$1;

    invoke-direct {v4, p0}, Lcom/android/gallery3d/app/PhotoPage$24$1;-><init>(Lcom/android/gallery3d/app/PhotoPage$24;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3105
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage$24;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->reShareLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/gallery3d/app/PhotoPage;->access$5500(Lcom/android/gallery3d/app/PhotoPage;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 3107
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage$24;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mIsActive:Z
    invoke-static {v3}, Lcom/android/gallery3d/app/PhotoPage;->access$4300(Lcom/android/gallery3d/app/PhotoPage;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3108
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage$24;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->reShareLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/gallery3d/app/PhotoPage;->access$5500(Lcom/android/gallery3d/app/PhotoPage;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3110
    :catch_0
    move-exception v0

    .line 3111
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 3113
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3114
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage$24;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/gallery3d/app/PhotoPage;->access$200(Lcom/android/gallery3d/app/PhotoPage;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x35f7

    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage$24;->val$finalIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 3113
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

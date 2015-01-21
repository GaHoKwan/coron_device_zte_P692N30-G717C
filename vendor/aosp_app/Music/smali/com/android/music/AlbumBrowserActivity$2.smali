.class Lcom/android/music/AlbumBrowserActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "AlbumBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/AlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/AlbumBrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/music/AlbumBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/android/music/AlbumBrowserActivity$2;->this$0:Lcom/android/music/AlbumBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 337
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, status:Ljava/lang/String;
    const-string v2, "Album"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mScanListener.onReceive:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 346
    :cond_0
    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity$2;->this$0:Lcom/android/music/AlbumBrowserActivity;

    invoke-static {v2}, Lcom/android/music/MusicUtils;->setSpinnerState(Landroid/app/Activity;)V

    .line 347
    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity$2;->this$0:Lcom/android/music/AlbumBrowserActivity;

    #getter for: Lcom/android/music/AlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/music/AlbumBrowserActivity;->access$200(Lcom/android/music/AlbumBrowserActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 362
    :cond_1
    :goto_0
    return-void

    .line 348
    :cond_2
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 349
    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity$2;->this$0:Lcom/android/music/AlbumBrowserActivity;

    #setter for: Lcom/android/music/AlbumBrowserActivity;->mIsMounted:Z
    invoke-static {v2, v5}, Lcom/android/music/AlbumBrowserActivity;->access$302(Lcom/android/music/AlbumBrowserActivity;Z)Z

    .line 350
    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity$2;->this$0:Lcom/android/music/AlbumBrowserActivity;

    #getter for: Lcom/android/music/AlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/music/AlbumBrowserActivity;->access$200(Lcom/android/music/AlbumBrowserActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 351
    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity$2;->this$0:Lcom/android/music/AlbumBrowserActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->closeContextMenu()V

    .line 352
    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity$2;->this$0:Lcom/android/music/AlbumBrowserActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 353
    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity$2;->this$0:Lcom/android/music/AlbumBrowserActivity;

    #getter for: Lcom/android/music/AlbumBrowserActivity;->mSubMenu:Landroid/view/SubMenu;
    invoke-static {v2}, Lcom/android/music/AlbumBrowserActivity;->access$400(Lcom/android/music/AlbumBrowserActivity;)Landroid/view/SubMenu;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 354
    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity$2;->this$0:Lcom/android/music/AlbumBrowserActivity;

    #getter for: Lcom/android/music/AlbumBrowserActivity;->mSubMenu:Landroid/view/SubMenu;
    invoke-static {v2}, Lcom/android/music/AlbumBrowserActivity;->access$400(Lcom/android/music/AlbumBrowserActivity;)Landroid/view/SubMenu;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/SubMenu;->close()V

    .line 356
    :cond_3
    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity$2;->this$0:Lcom/android/music/AlbumBrowserActivity;

    #getter for: Lcom/android/music/AlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/music/AlbumBrowserActivity;->access$200(Lcom/android/music/AlbumBrowserActivity;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 357
    :cond_4
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 358
    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity$2;->this$0:Lcom/android/music/AlbumBrowserActivity;

    const/4 v3, 0x1

    #setter for: Lcom/android/music/AlbumBrowserActivity;->mIsMounted:Z
    invoke-static {v2, v3}, Lcom/android/music/AlbumBrowserActivity;->access$302(Lcom/android/music/AlbumBrowserActivity;Z)Z

    .line 359
    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity$2;->this$0:Lcom/android/music/AlbumBrowserActivity;

    #getter for: Lcom/android/music/AlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/music/AlbumBrowserActivity;->access$200(Lcom/android/music/AlbumBrowserActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.class Lcom/android/music/TrackBrowserActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "TrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/music/TrackBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 499
    iput-object p1, p0, Lcom/android/music/TrackBrowserActivity$1;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x12

    const/4 v5, 0x0

    .line 502
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 504
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 505
    .local v1, status:Ljava/lang/String;
    const-string v2, "TrackBrowser"

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

    .line 506
    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 508
    :cond_0
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$1;->this$0:Lcom/android/music/TrackBrowserActivity;

    #getter for: Lcom/android/music/TrackBrowserActivity;->mReScanHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/music/TrackBrowserActivity;->access$000(Lcom/android/music/TrackBrowserActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 533
    :cond_1
    :goto_0
    return-void

    .line 509
    :cond_2
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 511
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$1;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/music/MusicUtils;->hasMountedSDcard(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$1;->this$0:Lcom/android/music/TrackBrowserActivity;

    #getter for: Lcom/android/music/TrackBrowserActivity;->mOptionMenu:Landroid/view/Menu;
    invoke-static {v2}, Lcom/android/music/TrackBrowserActivity;->access$100(Lcom/android/music/TrackBrowserActivity;)Landroid/view/Menu;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$1;->this$0:Lcom/android/music/TrackBrowserActivity;

    #getter for: Lcom/android/music/TrackBrowserActivity;->mOptionMenu:Landroid/view/Menu;
    invoke-static {v2}, Lcom/android/music/TrackBrowserActivity;->access$100(Lcom/android/music/TrackBrowserActivity;)Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 513
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$1;->this$0:Lcom/android/music/TrackBrowserActivity;

    #getter for: Lcom/android/music/TrackBrowserActivity;->mOptionMenu:Landroid/view/Menu;
    invoke-static {v2}, Lcom/android/music/TrackBrowserActivity;->access$100(Lcom/android/music/TrackBrowserActivity;)Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 515
    :cond_3
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$1;->this$0:Lcom/android/music/TrackBrowserActivity;

    #setter for: Lcom/android/music/TrackBrowserActivity;->mIsMounted:Z
    invoke-static {v2, v5}, Lcom/android/music/TrackBrowserActivity;->access$202(Lcom/android/music/TrackBrowserActivity;Z)Z

    .line 516
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$1;->this$0:Lcom/android/music/TrackBrowserActivity;

    #setter for: Lcom/android/music/TrackBrowserActivity;->mResetSdStatus:Z
    invoke-static {v2, v7}, Lcom/android/music/TrackBrowserActivity;->access$302(Lcom/android/music/TrackBrowserActivity;Z)Z

    .line 517
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$1;->this$0:Lcom/android/music/TrackBrowserActivity;

    #getter for: Lcom/android/music/TrackBrowserActivity;->mReScanHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/music/TrackBrowserActivity;->access$000(Lcom/android/music/TrackBrowserActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 518
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$1;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->closeContextMenu()V

    .line 519
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$1;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 520
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$1;->this$0:Lcom/android/music/TrackBrowserActivity;

    #getter for: Lcom/android/music/TrackBrowserActivity;->mSubMenu:Landroid/view/SubMenu;
    invoke-static {v2}, Lcom/android/music/TrackBrowserActivity;->access$400(Lcom/android/music/TrackBrowserActivity;)Landroid/view/SubMenu;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 521
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$1;->this$0:Lcom/android/music/TrackBrowserActivity;

    #getter for: Lcom/android/music/TrackBrowserActivity;->mSubMenu:Landroid/view/SubMenu;
    invoke-static {v2}, Lcom/android/music/TrackBrowserActivity;->access$400(Lcom/android/music/TrackBrowserActivity;)Landroid/view/SubMenu;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/SubMenu;->close()V

    .line 523
    :cond_4
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$1;->this$0:Lcom/android/music/TrackBrowserActivity;

    #getter for: Lcom/android/music/TrackBrowserActivity;->mReScanHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/music/TrackBrowserActivity;->access$000(Lcom/android/music/TrackBrowserActivity;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 524
    :cond_5
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 526
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$1;->this$0:Lcom/android/music/TrackBrowserActivity;

    #getter for: Lcom/android/music/TrackBrowserActivity;->mOptionMenu:Landroid/view/Menu;
    invoke-static {v2}, Lcom/android/music/TrackBrowserActivity;->access$100(Lcom/android/music/TrackBrowserActivity;)Landroid/view/Menu;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$1;->this$0:Lcom/android/music/TrackBrowserActivity;

    #getter for: Lcom/android/music/TrackBrowserActivity;->mOptionMenu:Landroid/view/Menu;
    invoke-static {v2}, Lcom/android/music/TrackBrowserActivity;->access$100(Lcom/android/music/TrackBrowserActivity;)Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 527
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$1;->this$0:Lcom/android/music/TrackBrowserActivity;

    #getter for: Lcom/android/music/TrackBrowserActivity;->mOptionMenu:Landroid/view/Menu;
    invoke-static {v2}, Lcom/android/music/TrackBrowserActivity;->access$100(Lcom/android/music/TrackBrowserActivity;)Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 530
    :cond_6
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$1;->this$0:Lcom/android/music/TrackBrowserActivity;

    #setter for: Lcom/android/music/TrackBrowserActivity;->mIsMounted:Z
    invoke-static {v2, v7}, Lcom/android/music/TrackBrowserActivity;->access$202(Lcom/android/music/TrackBrowserActivity;Z)Z

    .line 531
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$1;->this$0:Lcom/android/music/TrackBrowserActivity;

    #getter for: Lcom/android/music/TrackBrowserActivity;->mReScanHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/music/TrackBrowserActivity;->access$000(Lcom/android/music/TrackBrowserActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

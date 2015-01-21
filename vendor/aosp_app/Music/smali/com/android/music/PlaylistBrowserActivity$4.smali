.class Lcom/android/music/PlaylistBrowserActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "PlaylistBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/PlaylistBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/PlaylistBrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/music/PlaylistBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 859
    iput-object p1, p0, Lcom/android/music/PlaylistBrowserActivity$4;->this$0:Lcom/android/music/PlaylistBrowserActivity;

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

    .line 863
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 864
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 866
    .local v1, status:Ljava/lang/String;
    const-string v2, "PlaylistBrowser"

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

    .line 869
    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 871
    :cond_0
    iget-object v2, p0, Lcom/android/music/PlaylistBrowserActivity$4;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    invoke-static {v2}, Lcom/android/music/MusicUtils;->setSpinnerState(Landroid/app/Activity;)V

    .line 872
    iget-object v2, p0, Lcom/android/music/PlaylistBrowserActivity$4;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    #getter for: Lcom/android/music/PlaylistBrowserActivity;->mReScanHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/music/PlaylistBrowserActivity;->access$1000(Lcom/android/music/PlaylistBrowserActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 885
    :cond_1
    :goto_0
    return-void

    .line 873
    :cond_2
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 874
    iget-object v2, p0, Lcom/android/music/PlaylistBrowserActivity$4;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    #setter for: Lcom/android/music/PlaylistBrowserActivity;->mIsMounted:Z
    invoke-static {v2, v5}, Lcom/android/music/PlaylistBrowserActivity;->access$1102(Lcom/android/music/PlaylistBrowserActivity;Z)Z

    .line 875
    iget-object v2, p0, Lcom/android/music/PlaylistBrowserActivity$4;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    #getter for: Lcom/android/music/PlaylistBrowserActivity;->mReScanHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/music/PlaylistBrowserActivity;->access$1000(Lcom/android/music/PlaylistBrowserActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 876
    iget-object v2, p0, Lcom/android/music/PlaylistBrowserActivity$4;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->closeContextMenu()V

    .line 877
    iget-object v2, p0, Lcom/android/music/PlaylistBrowserActivity$4;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 878
    iget-object v2, p0, Lcom/android/music/PlaylistBrowserActivity$4;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    #getter for: Lcom/android/music/PlaylistBrowserActivity;->mReScanHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/music/PlaylistBrowserActivity;->access$1000(Lcom/android/music/PlaylistBrowserActivity;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 879
    :cond_3
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 881
    iget-object v2, p0, Lcom/android/music/PlaylistBrowserActivity$4;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    const/4 v3, 0x1

    #setter for: Lcom/android/music/PlaylistBrowserActivity;->mIsMounted:Z
    invoke-static {v2, v3}, Lcom/android/music/PlaylistBrowserActivity;->access$1102(Lcom/android/music/PlaylistBrowserActivity;Z)Z

    .line 882
    iget-object v2, p0, Lcom/android/music/PlaylistBrowserActivity$4;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    #getter for: Lcom/android/music/PlaylistBrowserActivity;->mReScanHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/music/PlaylistBrowserActivity;->access$1000(Lcom/android/music/PlaylistBrowserActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

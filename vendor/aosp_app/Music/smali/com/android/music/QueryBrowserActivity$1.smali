.class Lcom/android/music/QueryBrowserActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "QueryBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/QueryBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/QueryBrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/music/QueryBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/music/QueryBrowserActivity$1;->this$0:Lcom/android/music/QueryBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const-wide/16 v7, 0x3e8

    const/4 v6, 0x1

    const/16 v5, 0x9

    .line 281
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, status:Ljava/lang/String;
    const-string v2, "QueryBrowser"

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

    .line 284
    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 285
    iget-object v2, p0, Lcom/android/music/QueryBrowserActivity$1;->this$0:Lcom/android/music/QueryBrowserActivity;

    invoke-static {v2}, Lcom/android/music/MusicUtils;->setSpinnerState(Landroid/app/Activity;)V

    .line 286
    iget-object v2, p0, Lcom/android/music/QueryBrowserActivity$1;->this$0:Lcom/android/music/QueryBrowserActivity;

    #setter for: Lcom/android/music/QueryBrowserActivity;->mResetSdStatus:Z
    invoke-static {v2, v6}, Lcom/android/music/QueryBrowserActivity;->access$002(Lcom/android/music/QueryBrowserActivity;Z)Z

    .line 287
    iget-object v2, p0, Lcom/android/music/QueryBrowserActivity$1;->this$0:Lcom/android/music/QueryBrowserActivity;

    #getter for: Lcom/android/music/QueryBrowserActivity;->mReScanHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/music/QueryBrowserActivity;->access$100(Lcom/android/music/QueryBrowserActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/music/QueryBrowserActivity$1;->this$0:Lcom/android/music/QueryBrowserActivity;

    #getter for: Lcom/android/music/QueryBrowserActivity;->mReScanHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/music/QueryBrowserActivity;->access$100(Lcom/android/music/QueryBrowserActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 288
    iget-object v2, p0, Lcom/android/music/QueryBrowserActivity$1;->this$0:Lcom/android/music/QueryBrowserActivity;

    #getter for: Lcom/android/music/QueryBrowserActivity;->mReScanHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/music/QueryBrowserActivity;->access$100(Lcom/android/music/QueryBrowserActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/music/QueryBrowserActivity$1;->this$0:Lcom/android/music/QueryBrowserActivity;

    #getter for: Lcom/android/music/QueryBrowserActivity;->mReScanHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/music/QueryBrowserActivity;->access$100(Lcom/android/music/QueryBrowserActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 290
    iget-object v2, p0, Lcom/android/music/QueryBrowserActivity$1;->this$0:Lcom/android/music/QueryBrowserActivity;

    const/4 v3, 0x0

    #setter for: Lcom/android/music/QueryBrowserActivity;->mIsMounted:Z
    invoke-static {v2, v3}, Lcom/android/music/QueryBrowserActivity;->access$202(Lcom/android/music/QueryBrowserActivity;Z)Z

    .line 291
    iget-object v2, p0, Lcom/android/music/QueryBrowserActivity$1;->this$0:Lcom/android/music/QueryBrowserActivity;

    #setter for: Lcom/android/music/QueryBrowserActivity;->mResetSdStatus:Z
    invoke-static {v2, v6}, Lcom/android/music/QueryBrowserActivity;->access$002(Lcom/android/music/QueryBrowserActivity;Z)Z

    .line 292
    iget-object v2, p0, Lcom/android/music/QueryBrowserActivity$1;->this$0:Lcom/android/music/QueryBrowserActivity;

    #getter for: Lcom/android/music/QueryBrowserActivity;->mReScanHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/music/QueryBrowserActivity;->access$100(Lcom/android/music/QueryBrowserActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/music/QueryBrowserActivity$1;->this$0:Lcom/android/music/QueryBrowserActivity;

    #getter for: Lcom/android/music/QueryBrowserActivity;->mReScanHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/music/QueryBrowserActivity;->access$100(Lcom/android/music/QueryBrowserActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 293
    iget-object v2, p0, Lcom/android/music/QueryBrowserActivity$1;->this$0:Lcom/android/music/QueryBrowserActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->closeContextMenu()V

    .line 294
    iget-object v2, p0, Lcom/android/music/QueryBrowserActivity$1;->this$0:Lcom/android/music/QueryBrowserActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 295
    iget-object v2, p0, Lcom/android/music/QueryBrowserActivity$1;->this$0:Lcom/android/music/QueryBrowserActivity;

    #getter for: Lcom/android/music/QueryBrowserActivity;->mReScanHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/music/QueryBrowserActivity;->access$100(Lcom/android/music/QueryBrowserActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/music/QueryBrowserActivity$1;->this$0:Lcom/android/music/QueryBrowserActivity;

    #getter for: Lcom/android/music/QueryBrowserActivity;->mReScanHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/music/QueryBrowserActivity;->access$100(Lcom/android/music/QueryBrowserActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 296
    :cond_2
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 297
    iget-object v2, p0, Lcom/android/music/QueryBrowserActivity$1;->this$0:Lcom/android/music/QueryBrowserActivity;

    #setter for: Lcom/android/music/QueryBrowserActivity;->mIsMounted:Z
    invoke-static {v2, v6}, Lcom/android/music/QueryBrowserActivity;->access$202(Lcom/android/music/QueryBrowserActivity;Z)Z

    .line 298
    iget-object v2, p0, Lcom/android/music/QueryBrowserActivity$1;->this$0:Lcom/android/music/QueryBrowserActivity;

    #getter for: Lcom/android/music/QueryBrowserActivity;->mReScanHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/music/QueryBrowserActivity;->access$100(Lcom/android/music/QueryBrowserActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/music/QueryBrowserActivity$1;->this$0:Lcom/android/music/QueryBrowserActivity;

    #getter for: Lcom/android/music/QueryBrowserActivity;->mReScanHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/music/QueryBrowserActivity;->access$100(Lcom/android/music/QueryBrowserActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

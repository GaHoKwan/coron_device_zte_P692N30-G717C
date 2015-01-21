.class Lzte/com/cn/cloudnotepad/ui/HomeActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/ui/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$1;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    .line 244
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "arg0"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 248
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 249
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$1;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 250
    .local v1, manager:Landroid/net/ConnectivityManager;
    invoke-virtual {v1, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 251
    .local v0, gprs:Landroid/net/NetworkInfo;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 252
    .local v2, wifi:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 254
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$1;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->access$0(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$1;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->access$0(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 255
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$1;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->access$0(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 256
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$1;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    const/4 v4, 0x0

    #setter for: Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3, v4}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->access$1(Lzte/com/cn/cloudnotepad/ui/HomeActivity;Landroid/app/ProgressDialog;)V

    .line 257
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$1;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$1;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    invoke-virtual {v4}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900ab

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 258
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$1;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    #calls: Lzte/com/cn/cloudnotepad/ui/HomeActivity;->cancelDownload()V
    invoke-static {v3}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->access$2(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)V

    .line 259
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$1;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/HomeActivity;->isNeedUpdate:Z
    invoke-static {v3}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->access$3(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 260
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$1;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    invoke-virtual {v3}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->finish()V

    .line 272
    .end local v0           #gprs:Landroid/net/NetworkInfo;
    .end local v1           #manager:Landroid/net/ConnectivityManager;
    .end local v2           #wifi:Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return-void

    .line 263
    .restart local v0       #gprs:Landroid/net/NetworkInfo;
    .restart local v1       #manager:Landroid/net/ConnectivityManager;
    .restart local v2       #wifi:Landroid/net/NetworkInfo;
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 265
    :cond_2
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$1;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/HomeActivity;->isNeedReSend:Z
    invoke-static {v3}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->access$4(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 266
    const-string v3, "zhangxue"

    const-string v4, "NeedReSend"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-static {}, Lcom/zte/statistics/sdk/ZTEStatistics;->sendCollectionInfo()V

    .line 268
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$1;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    #setter for: Lzte/com/cn/cloudnotepad/ui/HomeActivity;->isNeedReSend:Z
    invoke-static {v3, v6}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->access$5(Lzte/com/cn/cloudnotepad/ui/HomeActivity;Z)V

    goto :goto_0
.end method

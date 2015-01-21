.class Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$5;
.super Landroid/content/BroadcastReceiver;
.source "ZteAccountUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->getConnectivityReceiver()Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$5;->this$0:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    .line 299
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

    .line 304
    const-string v3, "zhangxue"

    const-string v4, "onReceive"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 306
    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 307
    .local v1, manager:Landroid/net/ConnectivityManager;
    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 308
    .local v0, gprs:Landroid/net/NetworkInfo;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 309
    .local v2, wifi:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 311
    const-string v3, "zhangxue"

    const-string v4, "no network"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$5;->this$0:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    #getter for: Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->access$1(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$5;->this$0:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    #getter for: Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->access$1(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 313
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$5;->this$0:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    #getter for: Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->access$1(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 314
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$5;->this$0:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    const/4 v4, 0x0

    #setter for: Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3, v4}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->access$2(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;Landroid/app/ProgressDialog;)V

    .line 315
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900ab

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 316
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$5;->this$0:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    #calls: Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->cancelDownload()V
    invoke-static {v3}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->access$3(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;)V

    .line 320
    .end local v0           #gprs:Landroid/net/NetworkInfo;
    .end local v1           #manager:Landroid/net/ConnectivityManager;
    .end local v2           #wifi:Landroid/net/NetworkInfo;
    :cond_0
    return-void
.end method

.class Lcom/autonavi/xmgd/citydata/DataUpdate$2;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/citydata/DataUpdate;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$2;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/16 v5, 0xe

    const/4 v4, 0x4

    const/4 v3, 0x1

    sget-object v0, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    const-string v1, "DataUpdate------------ onReceive"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$2;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$000(Lcom/autonavi/xmgd/citydata/DataUpdate;)Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$2;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    const-string v1, "DataUpdate \u6ca1\u6709\u7f51\u7edc"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$2;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    const/4 v1, -0x1

    #setter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mLastNetType:I
    invoke-static {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$302(Lcom/autonavi/xmgd/citydata/DataUpdate;I)I

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$2;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$000(Lcom/autonavi/xmgd/citydata/DataUpdate;)Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$2;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #setter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->isNeedStartDownloadWhenHaveWifi:Z
    invoke-static {v0, v3}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$502(Lcom/autonavi/xmgd/citydata/DataUpdate;Z)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$2;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdate;->stopDownloadTask()V
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$600(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$2;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    invoke-virtual {v0, v4}, Lcom/autonavi/xmgd/citydata/DataUpdate;->showDialog(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$2;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mLastNetType:I
    invoke-static {v2}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$300(Lcom/autonavi/xmgd/citydata/DataUpdate;)I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    if-ne v1, v3, :cond_4

    sget-object v0, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    const-string v2, "DataUpdate  \u662f wifi\u3002\u3002"

    invoke-static {v0, v2}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$2;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->isNeedStartDownloadWhenHaveWifi:Z
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$500(Lcom/autonavi/xmgd/citydata/DataUpdate;)Z

    move-result v0

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$2;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    const/4 v2, 0x0

    #setter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->isNeedStartDownloadWhenHaveWifi:Z
    invoke-static {v0, v2}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$502(Lcom/autonavi/xmgd/citydata/DataUpdate;Z)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$2;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdate;->startDownloadTask()V
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$700(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$2;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    invoke-virtual {v0, v5}, Lcom/autonavi/xmgd/citydata/DataUpdate;->removeDialog(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$2;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    invoke-virtual {v0, v4}, Lcom/autonavi/xmgd/citydata/DataUpdate;->removeDialog(I)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$2;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #setter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mLastNetType:I
    invoke-static {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$302(Lcom/autonavi/xmgd/citydata/DataUpdate;I)I

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    const-string v2, "DataUpdate  \u4e0d\u662f wifi\u3002\u3002"

    invoke-static {v0, v2}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$2;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$000(Lcom/autonavi/xmgd/citydata/DataUpdate;)Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$2;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #setter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->isNeedStartDownloadWhenHaveWifi:Z
    invoke-static {v0, v3}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$502(Lcom/autonavi/xmgd/citydata/DataUpdate;Z)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$2;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdate;->stopDownloadTask()V
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$600(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$2;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    invoke-virtual {v0, v5}, Lcom/autonavi/xmgd/citydata/DataUpdate;->showDialog(I)V

    goto :goto_1
.end method

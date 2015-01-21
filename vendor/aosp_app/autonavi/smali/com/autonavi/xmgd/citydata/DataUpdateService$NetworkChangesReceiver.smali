.class Lcom/autonavi/xmgd/citydata/DataUpdateService$NetworkChangesReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/citydata/DataUpdateService;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$NetworkChangesReceiver;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x1

    sget-object v0, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    const-string v1, "DataUpdateService onReceive"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$NetworkChangesReceiver;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mIsInBackground:Z
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$100(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$NetworkChangesReceiver;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    const-string v1, "DataUpdateService  \u6ca1\u6709\u7f51\u7edc"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$NetworkChangesReceiver;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mIsRunning:Z
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$200(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$NetworkChangesReceiver;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #setter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->isNeedStartDownloadWhenHaveNet:Z
    invoke-static {v0, v3}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$302(Lcom/autonavi/xmgd/citydata/DataUpdateService;Z)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$NetworkChangesReceiver;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->stopDownloadTask()V
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$400(Lcom/autonavi/xmgd/citydata/DataUpdateService;)V

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$NetworkChangesReceiver;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    const/4 v1, -0x1

    #setter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->lastType:I
    invoke-static {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$502(Lcom/autonavi/xmgd/citydata/DataUpdateService;I)I

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$NetworkChangesReceiver;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->lastType:I
    invoke-static {v2}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$500(Lcom/autonavi/xmgd/citydata/DataUpdateService;)I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    if-ne v1, v3, :cond_5

    sget-object v0, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    const-string v2, "DataUpdateService  \u662f wifi\u3002\u3002"

    invoke-static {v0, v2}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$NetworkChangesReceiver;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->isNeedStartDownloadWhenHaveNet:Z
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$300(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Z

    move-result v0

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$NetworkChangesReceiver;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    const/4 v2, 0x0

    #setter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->isNeedStartDownloadWhenHaveNet:Z
    invoke-static {v0, v2}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$302(Lcom/autonavi/xmgd/citydata/DataUpdateService;Z)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$NetworkChangesReceiver;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->startDownloadTask()Z
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$600(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Z

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$NetworkChangesReceiver;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #setter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->lastType:I
    invoke-static {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$502(Lcom/autonavi/xmgd/citydata/DataUpdateService;I)I

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    const-string v2, "DataUpdateService  \u4e0d\u662f wifi\u3002\u3002"

    invoke-static {v0, v2}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$NetworkChangesReceiver;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mIsRunning:Z
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$200(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$NetworkChangesReceiver;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #setter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->isNeedStartDownloadWhenHaveNet:Z
    invoke-static {v0, v3}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$302(Lcom/autonavi/xmgd/citydata/DataUpdateService;Z)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$NetworkChangesReceiver;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->stopDownloadTask()V
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$400(Lcom/autonavi/xmgd/citydata/DataUpdateService;)V

    goto :goto_1
.end method

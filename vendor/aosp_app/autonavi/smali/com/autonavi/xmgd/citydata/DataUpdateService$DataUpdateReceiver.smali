.class Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/citydata/DataUpdateService;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateReceiver;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataUpdateServiceReciver action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.autonavi.xmgd.citydata.BROADCAST_ENTER_MAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateReceiver;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #setter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mIsMapRunning:Z
    invoke-static {v0, v5}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$8102(Lcom/autonavi/xmgd/citydata/DataUpdateService;Z)Z

    goto :goto_0

    :cond_2
    const-string v1, "com.autonavi.xmgd.citydata.BROADCAST_EXIT_MAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateReceiver;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #setter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mIsMapRunning:Z
    invoke-static {v0, v4}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$8102(Lcom/autonavi/xmgd/citydata/DataUpdateService;Z)Z

    sget-object v0, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsMapRunning : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateReceiver;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mIsMapRunning:Z
    invoke-static {v2}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$8100(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateReceiver;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->stopService()V
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$9000(Lcom/autonavi/xmgd/citydata/DataUpdateService;)V

    goto :goto_0

    :cond_3
    const-string v1, "com.autonavi.xmgd.citydata.STOP_DATA_UPDATE_SERVICE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateReceiver;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #setter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->isStopService:Z
    invoke-static {v0, v5}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$9102(Lcom/autonavi/xmgd/citydata/DataUpdateService;Z)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateReceiver;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->stopService()V
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$9000(Lcom/autonavi/xmgd/citydata/DataUpdateService;)V

    goto :goto_0

    :cond_4
    const-string v1, "com.autonavi.xmgd.citydata.SERVICE_RESTART_DATAUPDATE_SERVICE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateReceiver;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #setter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->isStopService:Z
    invoke-static {v0, v4}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$9102(Lcom/autonavi/xmgd/citydata/DataUpdateService;Z)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateReceiver;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #setter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mIsInBackground:Z
    invoke-static {v0, v4}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$102(Lcom/autonavi/xmgd/citydata/DataUpdateService;Z)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateReceiver;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #setter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mIsMapRunning:Z
    invoke-static {v0, v4}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$8102(Lcom/autonavi/xmgd/citydata/DataUpdateService;Z)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateReceiver;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->setIsRunning(Z)V
    invoke-static {v0, v4}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$9200(Lcom/autonavi/xmgd/citydata/DataUpdateService;Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateReceiver;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->stopDownloadTask()V
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$400(Lcom/autonavi/xmgd/citydata/DataUpdateService;)V

    goto/16 :goto_0
.end method

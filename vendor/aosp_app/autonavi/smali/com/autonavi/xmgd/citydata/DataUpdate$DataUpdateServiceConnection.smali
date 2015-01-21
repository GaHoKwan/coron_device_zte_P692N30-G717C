.class Lcom/autonavi/xmgd/citydata/DataUpdate$DataUpdateServiceConnection;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/citydata/DataUpdate;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$DataUpdateServiceConnection;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    sget-object v0, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    const-string v1, "DataUpdate  onServiceConnected"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$DataUpdateServiceConnection;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    check-cast p2, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    #setter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;
    invoke-static {v0, p2}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$002(Lcom/autonavi/xmgd/citydata/DataUpdate;Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;)Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$DataUpdateServiceConnection;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$000(Lcom/autonavi/xmgd/citydata/DataUpdate;)Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->getIsInitService()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$DataUpdateServiceConnection;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$DataUpdateServiceConnection;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$000(Lcom/autonavi/xmgd/citydata/DataUpdate;)Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$DataUpdateServiceConnection;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->setOnGetDataListListener(Lcom/autonavi/xmgd/citydata/DataUpdateService$IGetDataListListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$DataUpdateServiceConnection;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$000(Lcom/autonavi/xmgd/citydata/DataUpdate;)Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$DataUpdateServiceConnection;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->setOnAllCompletionListener(Lcom/autonavi/xmgd/citydata/DataUpdateService$IAllCompletionListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$DataUpdateServiceConnection;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$000(Lcom/autonavi/xmgd/citydata/DataUpdate;)Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$DataUpdateServiceConnection;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->setFileDownloadListener(Lcom/autonavi/xmgd/citydata/DataUpdateService$IFileDownloadListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$DataUpdateServiceConnection;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$000(Lcom/autonavi/xmgd/citydata/DataUpdate;)Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$DataUpdateServiceConnection;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->setOnFileRemovedListener(Lcom/autonavi/xmgd/citydata/DataUpdateService$IFileRemovedListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$DataUpdateServiceConnection;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$000(Lcom/autonavi/xmgd/citydata/DataUpdate;)Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->setInBackground(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$DataUpdateServiceConnection;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->hasCheckNetworkSuccess:Z
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$100(Lcom/autonavi/xmgd/citydata/DataUpdate;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$DataUpdateServiceConnection;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdate;->startGetDataList()V
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$200(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    sget-object v0, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    const-string v1, "DataUpdate  onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.class Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$DataUpdateServiceConnection;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$DataUpdateServiceConnection;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    sget-object v0, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    const-string v1, "DataUpdate  onServiceConnected"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$DataUpdateServiceConnection;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;

    check-cast p2, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    #setter for: Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;
    invoke-static {v0, p2}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->access$002(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;)Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$DataUpdateServiceConnection;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->access$000(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;)Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->getIsInitService()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$DataUpdateServiceConnection;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$DataUpdateServiceConnection;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->access$000(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;)Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$DataUpdateServiceConnection;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->setOnFileRemovedListener(Lcom/autonavi/xmgd/citydata/DataUpdateService$IFileRemovedListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$DataUpdateServiceConnection;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->access$000(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;)Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->setInBackground(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$DataUpdateServiceConnection;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$DataUpdateServiceConnection;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;
    invoke-static {v1}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->access$000(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;)Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->getDownloadedDataListFromLocal()Ljava/util/ArrayList;

    move-result-object v1

    #setter for: Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadData:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->access$102(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$DataUpdateServiceConnection;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadData:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->access$100(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$DataUpdateServiceConnection;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadData:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->access$100(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$DataUpdateServiceConnection;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->showDialog(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$DataUpdateServiceConnection;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->initViews()V
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->access$200(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    sget-object v0, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    const-string v1, "DataUpdate  onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.class Lcom/autonavi/xmgd/citydata/DataUpdateService$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xmgd/citydata/DownloadInterface;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/citydata/DataUpdateService;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$1;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(I)V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$1;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mIsRunning:Z
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$200(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$1;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$1;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->checkIsDownloadBaseData(I)Z
    invoke-static {v1, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$900(Lcom/autonavi/xmgd/citydata/DataUpdateService;I)Z

    move-result v1

    #setter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mIsDownloadBaseData:Z
    invoke-static {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$802(Lcom/autonavi/xmgd/citydata/DataUpdateService;Z)Z

    sget-object v0, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsDownloadBaseData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$1;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mIsDownloadBaseData:Z
    invoke-static {v2}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$800(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$1;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->unzipData(I)V
    invoke-static {v0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$1000(Lcom/autonavi/xmgd/citydata/DataUpdateService;I)V

    :cond_0
    return-void
.end method

.method public onError(II)V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$1;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mMainHandler:Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$700(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;

    move-result-object v0

    const/4 v1, 0x4

    add-int/lit16 v2, p2, 0x2710

    invoke-virtual {v0, v1, p1, v2}, Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onPrepared(II)V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$1;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mMainHandler:Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$700(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;

    move-result-object v0

    const/4 v1, 0x1

    add-int/lit16 v2, p2, 0x2710

    invoke-virtual {v0, v1, p1, v2}, Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onProgressUpdate(II)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$1;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mMainHandler:Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$700(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onStarted(I)V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$1;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mMainHandler:Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$700(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onStopped(I)V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$1;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mMainHandler:Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$700(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;

    move-result-object v0

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

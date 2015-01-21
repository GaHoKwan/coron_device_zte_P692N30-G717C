.class Lcom/autonavi/xmgd/citydata/DataUpdate$12;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/citydata/DataUpdate;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$12;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$12;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$000(Lcom/autonavi/xmgd/citydata/DataUpdate;)Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$12;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$12;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    #setter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mLastNetType:I
    invoke-static {v1, v2}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$302(Lcom/autonavi/xmgd/citydata/DataUpdate;I)I

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$12;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdate;->showDialog(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$12;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mBtnDownloadStart:Landroid/widget/Button;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$400(Lcom/autonavi/xmgd/citydata/DataUpdate;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f070208

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$12;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$000(Lcom/autonavi/xmgd/citydata/DataUpdate;)Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->startDownloadTask()Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$12;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdate;->showDialog(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$12;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mBtnDownloadStart:Landroid/widget/Button;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$400(Lcom/autonavi/xmgd/citydata/DataUpdate;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f070207

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$12;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$000(Lcom/autonavi/xmgd/citydata/DataUpdate;)Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->stopDownloadTask()V

    goto :goto_0
.end method

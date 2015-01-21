.class Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$13;
.super Landroid/content/BroadcastReceiver;
.source "OmacpMessageSettingsDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;


# direct methods
.method constructor <init>(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)V
    .locals 0
    .parameter

    .prologue
    .line 1535
    iput-object p1, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$13;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1538
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1540
    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 1542
    .local v0, info:Landroid/net/NetworkInfo;
    const-string v1, "Omacp/OmacpMessageSettingsDetail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network Receiver info.getType():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "--info.isConnected():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "--info.isAvailable():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/omacp/utils/MTKlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1545
    iget-object v1, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$13;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    #getter for: Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mStickyIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->access$1600(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1546
    iget-object v1, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$13;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    const/4 v2, 0x0

    #setter for: Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mStickyIntent:Landroid/content/Intent;
    invoke-static {v1, v2}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->access$1602(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;Landroid/content/Intent;)Landroid/content/Intent;

    .line 1547
    const-string v1, "Omacp/OmacpMessageSettingsDetail"

    const-string v2, "OmacpMessageSettingsDetail mNetworkStateIntentReceiver it is sticky intent, ignore it."

    invoke-static {v1, v2}, Lcom/mediatek/omacp/utils/MTKlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1558
    .end local v0           #info:Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return-void

    .line 1551
    .restart local v0       #info:Landroid/net/NetworkInfo;
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_0

    .line 1552
    iget-object v1, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$13;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    #calls: Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sendIntentsToApplications()V
    invoke-static {v1}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->access$1700(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)V

    .line 1553
    iget-object v1, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$13;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    iget-object v2, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$13;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    #getter for: Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->access$1800(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1554
    iget-object v1, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$13;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    const/4 v2, 0x0

    #setter for: Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mIsNetworkStateReceiverRegistered:Z
    invoke-static {v1, v2}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->access$1902(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;Z)Z

    .line 1555
    iget-object v1, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$13;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    #getter for: Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mTimerHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->access$1300(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x7d2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

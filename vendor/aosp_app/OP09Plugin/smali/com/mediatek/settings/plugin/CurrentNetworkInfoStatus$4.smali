.class Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$4;
.super Landroid/telephony/PhoneStateListener;
.source "CurrentNetworkInfoStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;)V
    .locals 0
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$4;->this$0:Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(II)V
    .locals 1
    .parameter "state"
    .parameter "networkType"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$4;->this$0:Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;

    #calls: Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->updateNetworkType()V
    invoke-static {v0}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->access$600(Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;)V

    .line 207
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .parameter "serviceState"

    .prologue
    .line 220
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getMySimId()I

    move-result v0

    iget-object v1, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$4;->this$0:Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;

    #getter for: Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mSimId:I
    invoke-static {v1}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->access$200(Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 221
    iget-object v0, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$4;->this$0:Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    #setter for: Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mServiceState:I
    invoke-static {v0, v1}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->access$802(Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;I)I

    .line 222
    const-string v0, "CurrentNetworkInfoStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChanged, mSimId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$4;->this$0:Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;

    #getter for: Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mSimId:I
    invoke-static {v2}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->access$200(Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mServiceState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$4;->this$0:Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;

    #getter for: Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mServiceState:I
    invoke-static {v2}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->access$800(Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$4;->this$0:Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;

    #calls: Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->updateServiceState(Landroid/telephony/ServiceState;)V
    invoke-static {v0, p1}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->access$900(Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;Landroid/telephony/ServiceState;)V

    .line 224
    iget-object v0, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$4;->this$0:Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;

    invoke-virtual {v0}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->updateSignalStrength()V

    .line 225
    iget-object v0, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$4;->this$0:Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;

    #calls: Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->setMccMnc()V
    invoke-static {v0}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->access$1000(Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;)V

    .line 227
    :cond_0
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 3
    .parameter "signalStrength"

    .prologue
    .line 211
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getMySimId()I

    move-result v0

    iget-object v1, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$4;->this$0:Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;

    #getter for: Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mSimId:I
    invoke-static {v1}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->access$200(Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$4;->this$0:Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;

    #setter for: Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mSignalStrength:Landroid/telephony/SignalStrength;
    invoke-static {v0, p1}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->access$702(Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;

    .line 213
    const-string v0, "CurrentNetworkInfoStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSignalStrengthsChanged, mSimId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$4;->this$0:Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;

    #getter for: Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mSimId:I
    invoke-static {v2}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->access$200(Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSignalStrength : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$4;->this$0:Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;

    #getter for: Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mSignalStrength:Landroid/telephony/SignalStrength;
    invoke-static {v2}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->access$700(Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;)Landroid/telephony/SignalStrength;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$4;->this$0:Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;

    invoke-virtual {v0}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->updateSignalStrength()V

    .line 216
    :cond_0
    return-void
.end method

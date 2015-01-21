.class Lcom/mediatek/bluetooth/simap/BluetoothSimapService$3;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothSimapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/simap/BluetoothSimapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)V
    .locals 0
    .parameter

    .prologue
    .line 939
    iput-object p1, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$3;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 943
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 944
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 946
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBluetoothReceiver:[Intent] action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$3;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    #getter for: Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mState:I
    invoke-static {v4}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$1100(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$2100(Ljava/lang/String;)V

    .line 948
    iget-object v3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$3;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    #getter for: Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mState:I
    invoke-static {v3}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$1100(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)I

    move-result v3

    if-ne v3, v6, :cond_1

    const-string v3, "android.bluetooth.device.action.ACL_DISCONNECT_REQUESTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$3;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    #getter for: Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$000(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$3;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    #getter for: Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$000(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 953
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$3;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    #getter for: Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mBinder:Landroid/bluetooth/IBluetoothSimap$Stub;
    invoke-static {v3}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$2200(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)Landroid/bluetooth/IBluetoothSimap$Stub;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/IBluetoothSimap$Stub;->disconnect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 994
    :cond_0
    :goto_0
    return-void

    .line 955
    :cond_1
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 957
    const-string v3, "android.bluetooth.adapter.extra.STATE"

    const/high16 v4, -0x8000

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 960
    :pswitch_0
    iget-object v3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$3;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    #calls: Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->clearService()V
    invoke-static {v3}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$2300(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)V

    goto :goto_0

    .line 963
    :cond_2
    const-string v3, "com.mediatek.bluetooth.simap.accessallowed"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 965
    const-string v3, "BluetoothSimapService"

    const-string v4, "ACCESS_ALLOWED_ACTION"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    const-string v3, "com.mediatek.bluetooth.simap.alwaysallowed"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 967
    iget-object v3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$3;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    #getter for: Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$000(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/bluetooth/BluetoothDevice;->setTrust(Z)Z

    move-result v2

    .line 968
    .local v2, result:Z
    const-string v3, "BluetoothSimapService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setTrust() result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    .end local v2           #result:Z
    :cond_3
    iget-object v3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$3;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    invoke-static {}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$500()I

    move-result v4

    #calls: Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->removeSimapAuthNotification(I)V
    invoke-static {v3, v4}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$600(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;I)V

    .line 972
    iget-object v3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$3;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    #calls: Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->authorizeRsp(Z)V
    invoke-static {v3, v6}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$200(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;Z)V

    goto :goto_0

    .line 974
    :cond_4
    const-string v3, "com.mediatek.bluetooth.simap.accessdisallowed"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 976
    iget-object v3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$3;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    invoke-static {}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$500()I

    move-result v4

    #calls: Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->removeSimapAuthNotification(I)V
    invoke-static {v3, v4}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$600(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;I)V

    .line 977
    iget-object v3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$3;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    #calls: Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->authorizeRsp(Z)V
    invoke-static {v3, v5}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$200(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;Z)V

    goto :goto_0

    .line 978
    :cond_5
    const-string v3, "simap_disconnect_request"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 981
    iget-object v3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$3;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    iget-object v4, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$3;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    #getter for: Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->GRACEFUL_DISC_MODE:I
    invoke-static {v4}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$2400(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)I

    move-result v4

    #calls: Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->disconnectClient(I)V
    invoke-static {v3, v4}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$1300(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;I)V

    goto/16 :goto_0

    .line 982
    :cond_6
    const-string v3, "com.mediatek.bluetooth.simap.intent.action.SEND_SIMUNAVALIBLE_IND"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 985
    iget-object v3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$3;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    #calls: Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->sendSIMUnaccessibleInd()V
    invoke-static {v3}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$2500(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)V

    goto/16 :goto_0

    .line 986
    :cond_7
    const-string v3, "android.bluetooth.device.action.NAME_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 987
    iget-object v3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$3;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    #getter for: Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$000(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$3;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    #getter for: Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$000(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 989
    const-string v3, "BluetoothSimapService"

    const-string v4, "mRemoteDevice name changed!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    iget-object v3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$3;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    #calls: Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->updateDeviceName()V
    invoke-static {v3}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$2600(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)V

    goto/16 :goto_0

    .line 954
    :catch_0
    move-exception v3

    goto/16 :goto_0

    .line 957
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

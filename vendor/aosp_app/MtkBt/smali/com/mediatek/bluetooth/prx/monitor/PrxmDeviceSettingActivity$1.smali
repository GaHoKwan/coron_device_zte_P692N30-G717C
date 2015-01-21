.class Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity$1;
.super Landroid/os/ResultReceiver;
.source "PrxmDeviceSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 199
    iput-object p1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity$1;->this$0:Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 5
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    .line 204
    packed-switch p1, :pswitch_data_0

    .line 244
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PrxmDeviceSettingActivity: unexpected resultCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/bluetooth/util/BtLog;->e(Ljava/lang/String;)V

    .line 246
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 209
    :pswitch_2
    const-string v2, "rspcode"

    const/16 v3, 0x7f

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    .line 211
    .local v1, rspcode:B
    if-eqz v1, :cond_2

    .line 213
    const/4 v0, 0x0

    .line 214
    .local v0, msg:Ljava/lang/String;
    const/16 v2, 0xb55

    if-ne p1, v2, :cond_3

    .line 215
    iget-object v2, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity$1;->this$0:Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;

    const v3, 0x7f07012d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 223
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity$1;->this$0:Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 226
    .end local v0           #msg:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity$1;->this$0:Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;

    #getter for: Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->helper:Lcom/mediatek/activity/ServiceActivityHelper;
    invoke-static {v2}, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->access$000(Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;)Lcom/mediatek/activity/ServiceActivityHelper;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 228
    iget-object v2, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity$1;->this$0:Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;

    #getter for: Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->helper:Lcom/mediatek/activity/ServiceActivityHelper;
    invoke-static {v2}, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->access$000(Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;)Lcom/mediatek/activity/ServiceActivityHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/activity/ServiceActivityHelper;->releaseServiceLock()V

    .line 229
    iget-object v2, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity$1;->this$0:Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;

    #getter for: Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->helper:Lcom/mediatek/activity/ServiceActivityHelper;
    invoke-static {v2}, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->access$000(Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;)Lcom/mediatek/activity/ServiceActivityHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity$1;->this$0:Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;

    invoke-virtual {v2, v3}, Lcom/mediatek/activity/ServiceActivityHelper;->refreshUi(Landroid/app/Activity;)V

    goto :goto_0

    .line 217
    .restart local v0       #msg:Ljava/lang/String;
    :cond_3
    const/16 v2, 0xb57

    if-ne p1, v2, :cond_4

    .line 218
    iget-object v2, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity$1;->this$0:Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;

    const v3, 0x7f07012e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 220
    :cond_4
    const/16 v2, 0xb5f

    if-ne p1, v2, :cond_1

    .line 221
    iget-object v2, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity$1;->this$0:Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;

    const v3, 0x7f070135

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 238
    .end local v0           #msg:Ljava/lang/String;
    .end local v1           #rspcode:B
    :pswitch_3
    iget-object v2, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity$1;->this$0:Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;

    #getter for: Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->pathLossThresholdPref:Lcom/mediatek/bluetooth/prx/monitor/PrxmPathLossThresholdPreference;
    invoke-static {v2}, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->access$200(Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;)Lcom/mediatek/bluetooth/prx/monitor/PrxmPathLossThresholdPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity$1;->this$0:Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;

    #getter for: Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->deviceInfo:Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;
    invoke-static {v3}, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->access$100(Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;)Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->getCurrentRssi()B

    move-result v3

    iget-object v4, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity$1;->this$0:Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;

    #getter for: Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->deviceInfo:Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;
    invoke-static {v4}, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->access$100(Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;)Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->getRemoteTxPower()B

    move-result v4

    invoke-static {v3, v4}, Lcom/mediatek/bluetooth/prx/monitor/PrxmUtils;->getPathLoss(BB)B

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mediatek/bluetooth/prx/monitor/PrxmPathLossThresholdPreference;->updateCurPathLoss(I)V

    goto/16 :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch 0xb55
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

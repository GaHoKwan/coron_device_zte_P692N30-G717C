.class Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings$1;
.super Landroid/os/ResultReceiver;
.source "PrxrBluetoothSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 242
    iput-object p1, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings$1;->this$0:Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 4
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    .line 248
    packed-switch p1, :pswitch_data_0

    .line 266
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "undefined resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetooth/util/BtLog;->w(Ljava/lang/String;)V

    .line 268
    :goto_0
    return-void

    .line 251
    :pswitch_1
    const-string v1, "rspcode"

    const/16 v2, 0x7f

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 252
    .local v0, rspcode:I
    if-eqz v0, :cond_0

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PrxrBluetoothSettings.onReceiveResult(): RXR_REGISTER_CNF fail with rspcode["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetooth/util/BtLog;->i(Ljava/lang/String;)V

    .line 255
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings$1;->this$0:Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;

    #getter for: Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->parentActivity:Landroid/preference/PreferenceActivity;
    invoke-static {v1}, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->access$000(Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;)Landroid/preference/PreferenceActivity;

    move-result-object v1

    const v2, 0x7f070143

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings$1;->this$0:Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;

    #getter for: Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->saHelper:Lcom/mediatek/activity/ServiceActivityHelper;
    invoke-static {v1}, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->access$100(Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;)Lcom/mediatek/activity/ServiceActivityHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/activity/ServiceActivityHelper;->releaseServiceLock()V

    .line 258
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings$1;->this$0:Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;

    #getter for: Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->saHelper:Lcom/mediatek/activity/ServiceActivityHelper;
    invoke-static {v1}, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->access$100(Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;)Lcom/mediatek/activity/ServiceActivityHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings$1;->this$0:Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;

    #getter for: Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->parentActivity:Landroid/preference/PreferenceActivity;
    invoke-static {v2}, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->access$000(Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;)Landroid/preference/PreferenceActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/activity/ServiceActivityHelper;->refreshUi(Landroid/app/Activity;)V

    goto :goto_0

    .line 261
    .end local v0           #rspcode:I
    :pswitch_2
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings$1;->this$0:Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;

    #getter for: Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->saHelper:Lcom/mediatek/activity/ServiceActivityHelper;
    invoke-static {v1}, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->access$100(Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;)Lcom/mediatek/activity/ServiceActivityHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/activity/ServiceActivityHelper;->releaseServiceLock()V

    .line 262
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings$1;->this$0:Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;

    #getter for: Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->saHelper:Lcom/mediatek/activity/ServiceActivityHelper;
    invoke-static {v1}, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->access$100(Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;)Lcom/mediatek/activity/ServiceActivityHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings$1;->this$0:Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;

    #getter for: Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->parentActivity:Landroid/preference/PreferenceActivity;
    invoke-static {v2}, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->access$000(Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;)Landroid/preference/PreferenceActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/activity/ServiceActivityHelper;->refreshUi(Landroid/app/Activity;)V

    goto :goto_0

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0xbb9
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

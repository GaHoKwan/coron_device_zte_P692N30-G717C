.class Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings$3;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothSimapSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings$3;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, -0x1

    .line 192
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 194
    const-string v4, "android.bluetooth.adapter.extra.STATE"

    const/high16 v5, -0x8000

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 196
    .local v3, state:I
    packed-switch v3, :pswitch_data_0

    .line 221
    .end local v3           #state:I
    :cond_0
    :goto_0
    return-void

    .line 198
    .restart local v3       #state:I
    :pswitch_0
    iget-object v4, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings$3;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;

    #getter for: Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapService:Landroid/bluetooth/IBluetoothSimap;
    invoke-static {v4}, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->access$100(Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;)Landroid/bluetooth/IBluetoothSimap;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 199
    iget-object v4, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings$3;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;

    #getter for: Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapServerEnable:Landroid/preference/CheckBoxPreference;
    invoke-static {v4}, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->access$300(Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 204
    :pswitch_1
    iget-object v4, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings$3;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;

    #getter for: Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapServerEnable:Landroid/preference/CheckBoxPreference;
    invoke-static {v4}, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->access$300(Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 212
    .end local v3           #state:I
    :cond_1
    const-string v4, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 213
    const-string v4, "BluetoothSimapSettings"

    const-string v5, "receiver: TelephonyIntents.ACTION_SIM_INDICATOR_STATE_CHANGED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const-string v4, "slotId"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 215
    .local v2, slotId:I
    const-string v4, "state"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 216
    .local v1, simStatus:I
    const-string v4, "BluetoothSimapSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "slotid is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "status is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v4, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings$3;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;

    #getter for: Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->access$000(Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 196
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

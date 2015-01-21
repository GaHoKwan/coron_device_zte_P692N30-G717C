.class Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings$4;
.super Landroid/os/Handler;
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
    .line 225
    iput-object p1, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings$4;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 227
    const-string v0, "BluetoothSimapSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSimapHandler handling event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 251
    :goto_0
    return-void

    .line 232
    :sswitch_0
    const-string v0, "BluetoothSimapSettings"

    const-string v1, "SIMAP Server is turned on ! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings$4;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;

    #getter for: Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapServerEnable:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->access$300(Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 234
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings$4;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;

    #getter for: Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapServerEnable:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->access$300(Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 239
    :sswitch_1
    const-string v0, "BluetoothSimapSettings"

    const-string v1, "SIMAP Server is turned off."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings$4;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;

    #getter for: Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapServerEnable:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->access$300(Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 241
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings$4;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;

    #getter for: Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapServerEnable:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->access$300(Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 245
    :sswitch_2
    const-string v0, "BluetoothSimapSettings"

    const-string v1, "SIMAP sim state check!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings$4;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->handleCheckSimState()V

    goto :goto_0

    .line 229
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0xd -> :sswitch_1
        0x64 -> :sswitch_2
    .end sparse-switch
.end method

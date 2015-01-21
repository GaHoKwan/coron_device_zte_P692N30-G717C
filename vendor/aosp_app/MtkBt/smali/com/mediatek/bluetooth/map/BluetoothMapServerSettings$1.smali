.class Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothMapServerSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 131
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    .line 133
    .local v0, state:I
    packed-switch v0, :pswitch_data_0

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 135
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mMapServerEnabler:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->access$000(Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mMapServerEnabler:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->access$000(Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 141
    :pswitch_1
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mMapServerEnabler:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->access$000(Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

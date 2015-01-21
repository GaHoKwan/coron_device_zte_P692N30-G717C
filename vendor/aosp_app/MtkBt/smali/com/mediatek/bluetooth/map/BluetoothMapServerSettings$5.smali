.class Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$5;
.super Lcom/mediatek/bluetooth/map/IBluetoothMapSettingCallback$Stub;
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
    .line 201
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$5;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;

    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/IBluetoothMapSettingCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$5;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->updateMapState(I)V
    invoke-static {v0, p1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->access$500(Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;I)V

    .line 204
    return-void
.end method

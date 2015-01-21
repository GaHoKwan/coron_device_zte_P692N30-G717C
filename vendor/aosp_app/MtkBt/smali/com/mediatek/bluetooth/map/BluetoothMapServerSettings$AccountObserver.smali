.class Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$AccountObserver;
.super Landroid/database/ContentObserver;
.source "BluetoothMapServerSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccountObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;


# direct methods
.method public constructor <init>(Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$AccountObserver;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;

    .line 155
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 156
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "onSelf"

    .prologue
    .line 159
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 160
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$AccountObserver;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;

    const-string v1, "AccountObserver: onChange"

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->access$100(Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$AccountObserver;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->updateAccount()V
    invoke-static {v0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->access$200(Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;)V

    .line 162
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$AccountObserver;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mMapServerAccountIndex:Lcom/mediatek/bluetooth/map/AccountListPreference;
    invoke-static {v0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->access$300(Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;)Lcom/mediatek/bluetooth/map/AccountListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/map/AccountListPreference;->onAccountChanged()V

    .line 163
    return-void
.end method

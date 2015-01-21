.class Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$2;
.super Ljava/lang/Object;
.source "BluetoothMapServerSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


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
    .line 167
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$2;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 3
    .parameter "dialog"
    .parameter "which"
    .parameter "isChecked"

    .prologue
    .line 169
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$2;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mService:Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;
    invoke-static {v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->access$400(Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;)Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;

    move-result-object v1

    if-nez v1, :cond_0

    .line 185
    :goto_0
    return-void

    .line 172
    :cond_0
    if-eqz p3, :cond_1

    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$2;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mService:Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;
    invoke-static {v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->access$400(Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;)Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;->registerSim(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, e:Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$2;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->access$100(Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;Ljava/lang/String;)V

    goto :goto_0

    .line 180
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$2;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mService:Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;
    invoke-static {v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->access$400(Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;)Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;->unregisterSim(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 181
    :catch_1
    move-exception v0

    .line 182
    .restart local v0       #e:Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$2;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->access$100(Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;Ljava/lang/String;)V

    goto :goto_0
.end method

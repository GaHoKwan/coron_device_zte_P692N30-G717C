.class Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings$1;
.super Landroid/bluetooth/IBluetoothSimapCallback$Stub;
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
    .line 119
    iput-object p1, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings$1;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothSimapCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public postEvent(ILandroid/os/Bundle;)V
    .locals 4
    .parameter "event"
    .parameter "data"

    .prologue
    .line 122
    const-string v1, "BluetoothSimapSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SimapUICallback received event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 124
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 125
    if-eqz p2, :cond_0

    .line 126
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings$1;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;

    #getter for: Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->access$000(Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 129
    return-void
.end method

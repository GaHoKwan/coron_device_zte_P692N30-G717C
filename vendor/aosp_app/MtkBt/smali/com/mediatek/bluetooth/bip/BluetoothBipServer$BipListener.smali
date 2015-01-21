.class Lcom/mediatek/bluetooth/bip/BluetoothBipServer$BipListener;
.super Ljava/lang/Thread;
.source "BluetoothBipServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/bip/BluetoothBipServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BipListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/bip/BluetoothBipServer;


# direct methods
.method public constructor <init>(Lcom/mediatek/bluetooth/bip/BluetoothBipServer;)V
    .locals 1
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer$BipListener;->this$0:Lcom/mediatek/bluetooth/bip/BluetoothBipServer;

    .line 104
    const-string v0, "BipListener"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 105
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 109
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 111
    const-string v0, "BluetoothBipServer"

    const-string v1, "[BIP Server] listen thread run......"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer$BipListener;->this$0:Lcom/mediatek/bluetooth/bip/BluetoothBipServer;

    #calls: Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->startListenNative()Z
    invoke-static {v0}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->access$000(Lcom/mediatek/bluetooth/bip/BluetoothBipServer;)Z

    .line 113
    const-string v0, "BluetoothBipServer"

    const-string v1, "[BIP Server] listen thread stopped......"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer$BipListener;->this$0:Lcom/mediatek/bluetooth/bip/BluetoothBipServer;

    #calls: Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->stopListenNative()Z
    invoke-static {v0}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->access$100(Lcom/mediatek/bluetooth/bip/BluetoothBipServer;)Z

    .line 128
    return-void
.end method

.method public startup()V
    .locals 0

    .prologue
    .line 123
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 124
    return-void
.end method

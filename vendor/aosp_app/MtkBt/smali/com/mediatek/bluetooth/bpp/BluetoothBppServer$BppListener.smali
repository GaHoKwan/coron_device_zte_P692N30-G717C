.class Lcom/mediatek/bluetooth/bpp/BluetoothBppServer$BppListener;
.super Ljava/lang/Thread;
.source "BluetoothBppServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BppListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;


# direct methods
.method public constructor <init>(Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;)V
    .locals 1
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer$BppListener;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;

    .line 138
    const-string v0, "BipListener"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 139
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 143
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 145
    const-string v0, "BluetoothBppServer"

    const-string v1, "[BPP Server] listen thread run......"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer$BppListener;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;

    #calls: Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->startListenNative()Z
    invoke-static {v0}, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->access$000(Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;)Z

    .line 147
    const-string v0, "BluetoothBppServer"

    const-string v1, "[BPP Server] listen thread stopped......"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer$BppListener;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;

    #calls: Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->stopListenNative()Z
    invoke-static {v0}, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->access$100(Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;)Z

    .line 161
    return-void
.end method

.method public startup()V
    .locals 0

    .prologue
    .line 156
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 157
    return-void
.end method

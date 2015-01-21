.class Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$5;
.super Landroid/bluetooth/IBluetoothFtpCtrl$Stub;
.source "BluetoothFtpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)V
    .locals 0
    .parameter

    .prologue
    .line 612
    iput-object p1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$5;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothFtpCtrl$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .parameter "device"

    .prologue
    .line 624
    return-void
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .parameter "device"

    .prologue
    .line 627
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$5;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mCurrentClient:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$1200(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$5;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mNM:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$1500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Landroid/app/NotificationManager;

    move-result-object v0

    const v1, 0x5b8d82

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 629
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$5;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->serverDisconnectReqNative()V
    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$3400(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)V

    .line 633
    :goto_0
    return-void

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$5;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    const-string v1, "Invalid disconnect command"

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printErr(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$000(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCurrentDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$5;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mCurrentClient:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$1200(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$5;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServerState:I
    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$1700(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)I

    move-result v0

    return v0
.end method

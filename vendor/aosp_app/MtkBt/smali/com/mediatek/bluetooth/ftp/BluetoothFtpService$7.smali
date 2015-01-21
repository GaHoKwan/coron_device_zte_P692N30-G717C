.class Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$7;
.super Lcom/mediatek/bluetooth/ftp/IBluetoothFtpServerNotify$Stub;
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
    .line 704
    iput-object p1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$7;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/IBluetoothFtpServerNotify$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public authResult(Z)V
    .locals 3
    .parameter "res"

    .prologue
    .line 707
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$7;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Authorize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)V

    .line 708
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$7;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    const/16 v2, 0x1394

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->sendServiceMsg(II)V
    invoke-static {v1, v2, v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$800(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;II)V

    .line 709
    return-void

    .line 708
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 712
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$7;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    const-string v1, "Disconnect from UI"

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)V

    .line 713
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$7;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->serverDisconnectReqNative()V
    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$3400(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)V

    .line 714
    return-void
.end method

.method public updateNotify(I)V
    .locals 2
    .parameter "notify"

    .prologue
    .line 717
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$7;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    const/16 v1, 0x138c

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->sendServiceMsg(II)V
    invoke-static {v0, v1, p1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$800(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;II)V

    .line 718
    return-void
.end method

.class Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$SocketListenerThread;
.super Ljava/lang/Thread;
.source "BluetoothFtpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SocketListenerThread"
.end annotation


# instance fields
.field private init_ok:Z

.field final synthetic this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;


# direct methods
.method public constructor <init>(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)V
    .locals 2
    .parameter

    .prologue
    .line 514
    iput-object p1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$SocketListenerThread;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    .line 515
    const-string v0, "BtFtpMessageListener"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 512
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$SocketListenerThread;->init_ok:Z

    .line 516
    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->prepareListentoSocketNative()Z
    invoke-static {p1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$2800(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$SocketListenerThread;->init_ok:Z

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "After preparing, init_ok: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$SocketListenerThread;->init_ok:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)V

    .line 518
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 522
    const/4 v0, 0x0

    .line 523
    .local v0, job_done:Z
    iget-boolean v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$SocketListenerThread;->init_ok:Z

    if-eqz v1, :cond_0

    .line 524
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$SocketListenerThread;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->listentoSocketNative()Z
    invoke-static {v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$2900(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Z

    move-result v0

    .line 526
    :cond_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$SocketListenerThread;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SocketListener exited. job_done: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)V

    .line 527
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$SocketListenerThread;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    const-string v1, "Shutdown socketListener."

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$SocketListenerThread;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->stopListentoSocketNative()V
    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$3000(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)V

    .line 532
    return-void
.end method

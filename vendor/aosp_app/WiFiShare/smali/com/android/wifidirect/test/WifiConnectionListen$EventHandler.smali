.class Lcom/android/wifidirect/test/WifiConnectionListen$EventHandler;
.super Landroid/os/Handler;
.source "WifiConnectionListen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wifidirect/test/WifiConnectionListen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wifidirect/test/WifiConnectionListen;


# direct methods
.method public constructor <init>(Lcom/android/wifidirect/test/WifiConnectionListen;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiConnectionListen$EventHandler;->this$0:Lcom/android/wifidirect/test/WifiConnectionListen;

    .line 85
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 86
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 88
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 106
    :goto_0
    return-void

    .line 90
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 91
    .local v2, owerIp:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/wifidirect/test/WifiConnectionListen$EventHandler;->this$0:Lcom/android/wifidirect/test/WifiConnectionListen;

    #calls: Lcom/android/wifidirect/test/WifiConnectionListen;->getLocalIPAddress()Ljava/lang/String;
    invoke-static {v4}, Lcom/android/wifidirect/test/WifiConnectionListen;->access$000(Lcom/android/wifidirect/test/WifiConnectionListen;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, clientIp:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/wifidirect/test/WifiConnectionListen;->access$100()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, clientInfo:Ljava/lang/String;
    const-string v4, "WifiConnectionListen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DELAY_SEND_IP clientAddr  : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v4, "WifiConnectionListen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "us  : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/wifidirect/test/WifiConnectionListen$EventHandler;->this$0:Lcom/android/wifidirect/test/WifiConnectionListen;

    #getter for: Lcom/android/wifidirect/test/WifiConnectionListen;->us:Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;
    invoke-static {v6}, Lcom/android/wifidirect/test/WifiConnectionListen;->access$200(Lcom/android/wifidirect/test/WifiConnectionListen;)Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-instance v3, Lcom/android/wifidirect/test/WifiConnectionListen$UdpCSendIp;

    iget-object v4, p0, Lcom/android/wifidirect/test/WifiConnectionListen$EventHandler;->this$0:Lcom/android/wifidirect/test/WifiConnectionListen;

    invoke-direct {v3, v4, v0, v2}, Lcom/android/wifidirect/test/WifiConnectionListen$UdpCSendIp;-><init>(Lcom/android/wifidirect/test/WifiConnectionListen;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .local v3, uc:Lcom/android/wifidirect/test/WifiConnectionListen$UdpCSendIp;
    invoke-virtual {v3}, Lcom/android/wifidirect/test/WifiConnectionListen$UdpCSendIp;->start()V

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

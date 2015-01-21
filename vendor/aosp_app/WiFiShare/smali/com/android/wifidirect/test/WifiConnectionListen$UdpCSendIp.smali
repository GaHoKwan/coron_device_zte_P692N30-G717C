.class Lcom/android/wifidirect/test/WifiConnectionListen$UdpCSendIp;
.super Ljava/lang/Thread;
.source "WifiConnectionListen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wifidirect/test/WifiConnectionListen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UdpCSendIp"
.end annotation


# instance fields
.field private buffer:[B

.field private dataString:Ljava/lang/String;

.field private groupOwnerIp:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/wifidirect/test/WifiConnectionListen;

.field private udpSocket:Ljava/net/DatagramSocket;


# direct methods
.method public constructor <init>(Lcom/android/wifidirect/test/WifiConnectionListen;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "clientInfo"
    .parameter "goIp"

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpCSendIp;->this$0:Lcom/android/wifidirect/test/WifiConnectionListen;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 253
    const/16 v0, 0x50

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpCSendIp;->buffer:[B

    .line 255
    iput-object p2, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpCSendIp;->dataString:Ljava/lang/String;

    .line 256
    iput-object p3, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpCSendIp;->groupOwnerIp:Ljava/lang/String;

    .line 257
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 260
    const/4 v2, 0x0

    .line 262
    .local v2, dataPacket:Ljava/net/DatagramPacket;
    :try_start_0
    new-instance v5, Ljava/net/DatagramSocket;

    invoke-direct {v5}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v5, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpCSendIp;->udpSocket:Ljava/net/DatagramSocket;

    .line 263
    iget-object v5, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpCSendIp;->udpSocket:Ljava/net/DatagramSocket;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 264
    iget-object v5, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpCSendIp;->udpSocket:Ljava/net/DatagramSocket;

    iget-object v6, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpCSendIp;->groupOwnerIp:Ljava/lang/String;

    invoke-static {v6}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    const/16 v7, 0x7a12

    invoke-virtual {v5, v6, v7}, Ljava/net/DatagramSocket;->connect(Ljava/net/InetAddress;I)V

    .line 266
    new-instance v3, Ljava/net/DatagramPacket;

    iget-object v5, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpCSendIp;->buffer:[B

    iget-object v6, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpCSendIp;->buffer:[B

    array-length v6, v6

    invoke-direct {v3, v5, v6}, Ljava/net/DatagramPacket;-><init>([BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    .end local v2           #dataPacket:Ljava/net/DatagramPacket;
    .local v3, dataPacket:Ljava/net/DatagramPacket;
    :try_start_1
    iget-object v5, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpCSendIp;->dataString:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 268
    .local v1, data:[B
    const-string v5, "WifiConnectionListen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-virtual {v3, v1}, Ljava/net/DatagramPacket;->setData([B)V

    .line 270
    array-length v5, v1

    invoke-virtual {v3, v5}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 271
    const/16 v5, 0x7a12

    invoke-virtual {v3, v5}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 273
    iget-object v5, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpCSendIp;->groupOwnerIp:Ljava/lang/String;

    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 274
    .local v0, broadcastAddr:Ljava/net/InetAddress;
    invoke-virtual {v3, v0}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v2, v3

    .line 280
    .end local v0           #broadcastAddr:Ljava/net/InetAddress;
    .end local v1           #data:[B
    .end local v3           #dataPacket:Ljava/net/DatagramPacket;
    .restart local v2       #dataPacket:Ljava/net/DatagramPacket;
    :goto_0
    :try_start_2
    const-string v5, "WifiConnectionListen"

    const-string v6, " udpSocket.send(dataPacket); :"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v5, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpCSendIp;->udpSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v5, v2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 285
    :goto_1
    iget-object v5, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpCSendIp;->udpSocket:Ljava/net/DatagramSocket;

    if-eqz v5, :cond_0

    .line 287
    iget-object v5, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpCSendIp;->udpSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v5}, Ljava/net/DatagramSocket;->close()V

    .line 289
    :cond_0
    return-void

    .line 276
    :catch_0
    move-exception v4

    .line 277
    .local v4, e:Ljava/lang/Exception;
    :goto_2
    const-string v5, "WifiConnectionListen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 282
    .end local v4           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 283
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v5, "WifiConnectionListen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 276
    .end local v2           #dataPacket:Ljava/net/DatagramPacket;
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v3       #dataPacket:Ljava/net/DatagramPacket;
    :catch_2
    move-exception v4

    move-object v2, v3

    .end local v3           #dataPacket:Ljava/net/DatagramPacket;
    .restart local v2       #dataPacket:Ljava/net/DatagramPacket;
    goto :goto_2
.end method

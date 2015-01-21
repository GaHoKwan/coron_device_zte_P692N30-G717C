.class Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp$1;
.super Ljava/lang/Thread;
.source "WifiConnectionListen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->startUdps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;


# direct methods
.method constructor <init>(Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp$1;->this$1:Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/16 v8, 0x50

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 181
    const-string v2, "WifiConnectionListen"

    const-string v3, "startUdps"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :try_start_0
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp$1;->this$1:Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;

    new-instance v3, Ljava/net/DatagramSocket;

    iget-object v4, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp$1;->this$1:Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;

    #getter for: Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->mUdpPort:I
    invoke-static {v4}, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->access$400(Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/net/DatagramSocket;-><init>(I)V

    #setter for: Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->udpServerSocket:Ljava/net/DatagramSocket;
    invoke-static {v2, v3}, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->access$302(Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;Ljava/net/DatagramSocket;)Ljava/net/DatagramSocket;

    .line 185
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp$1;->this$1:Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;

    #getter for: Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->udpServerSocket:Ljava/net/DatagramSocket;
    invoke-static {v2}, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->access$300(Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;)Ljava/net/DatagramSocket;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp$1;->this$1:Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;

    new-array v3, v8, [B

    #setter for: Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->data:[B
    invoke-static {v2, v3}, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->access$602(Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;[B)[B

    .line 191
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp$1;->this$1:Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;

    new-instance v3, Ljava/net/DatagramPacket;

    iget-object v4, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp$1;->this$1:Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;

    #getter for: Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->data:[B
    invoke-static {v4}, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->access$600(Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;)[B

    move-result-object v4

    iget-object v5, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp$1;->this$1:Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;

    #getter for: Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->data:[B
    invoke-static {v5}, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->access$600(Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;)[B

    move-result-object v5

    array-length v5, v5

    invoke-direct {v3, v4, v5}, Ljava/net/DatagramPacket;-><init>([BI)V

    #setter for: Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->udpPacket:Ljava/net/DatagramPacket;
    invoke-static {v2, v3}, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->access$702(Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;Ljava/net/DatagramPacket;)Ljava/net/DatagramPacket;

    .line 192
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp$1;->this$1:Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;

    #getter for: Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->mInterrupted:Z
    invoke-static {v2}, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->access$500(Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 194
    :try_start_1
    const-string v2, "WifiConnectionListen"

    const-string v3, "udpServerSocket.receive(udpPacket)"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp$1;->this$1:Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;

    #getter for: Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->udpServerSocket:Ljava/net/DatagramSocket;
    invoke-static {v2}, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->access$300(Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;)Ljava/net/DatagramSocket;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp$1;->this$1:Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;

    #getter for: Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->udpPacket:Ljava/net/DatagramPacket;
    invoke-static {v3}, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->access$700(Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;)Ljava/net/DatagramPacket;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 200
    :goto_2
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp$1;->this$1:Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;

    #getter for: Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->udpPacket:Ljava/net/DatagramPacket;
    invoke-static {v2}, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->access$700(Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;)Ljava/net/DatagramPacket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp$1;->this$1:Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp$1;->this$1:Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;

    #getter for: Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->data:[B
    invoke-static {v4}, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->access$600(Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;)[B

    move-result-object v4

    iget-object v5, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp$1;->this$1:Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;

    #getter for: Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->udpPacket:Ljava/net/DatagramPacket;
    invoke-static {v5}, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->access$700(Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;)Ljava/net/DatagramPacket;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/DatagramPacket;->getLength()I

    move-result v5

    invoke-direct {v3, v4, v6, v5}, Ljava/lang/String;-><init>([BII)V

    #setter for: Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->ipString:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->access$802(Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;Ljava/lang/String;)Ljava/lang/String;

    .line 202
    const-string v2, "WifiConnectionListen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Client ipString :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp$1;->this$1:Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;

    #getter for: Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->ipString:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->access$800(Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp$1;->this$1:Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;

    #getter for: Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->ipString:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->access$800(Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, arrays:[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2

    .line 206
    const-string v2, "WifiConnectionListen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "arrays[0]  :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " arrays[1]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    aget-object v2, v0, v6

    if-eqz v2, :cond_1

    aget-object v2, v0, v7

    if-eqz v2, :cond_1

    .line 209
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp$1;->this$1:Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;

    iget-object v2, v2, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->this$0:Lcom/android/wifidirect/test/WifiConnectionListen;

    #getter for: Lcom/android/wifidirect/test/WifiConnectionListen;->hm:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/wifidirect/test/WifiConnectionListen;->access$900(Lcom/android/wifidirect/test/WifiConnectionListen;)Ljava/util/HashMap;

    move-result-object v2

    aget-object v3, v0, v7

    aget-object v4, v0, v6

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_1
    :goto_3
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp$1;->this$1:Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;

    #getter for: Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->udpPacket:Ljava/net/DatagramPacket;
    invoke-static {v2}, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->access$700(Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;)Ljava/net/DatagramPacket;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/net/DatagramPacket;->setLength(I)V

    goto/16 :goto_1

    .line 186
    .end local v0           #arrays:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 187
    .local v1, e:Ljava/net/SocketException;
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp$1;->this$1:Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;

    #setter for: Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->mInterrupted:Z
    invoke-static {v2, v7}, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->access$502(Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;Z)Z

    .line 188
    const-string v2, "WifiConnectionListen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 196
    .end local v1           #e:Ljava/net/SocketException;
    :catch_1
    move-exception v1

    .line 197
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "WifiConnectionListen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 214
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #arrays:[Ljava/lang/String;
    :cond_2
    const-string v2, "WifiConnectionListen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "arrays[0]  :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp$1;->this$1:Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;

    iget-object v2, v2, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->this$0:Lcom/android/wifidirect/test/WifiConnectionListen;

    #getter for: Lcom/android/wifidirect/test/WifiConnectionListen;->hm:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/wifidirect/test/WifiConnectionListen;->access$900(Lcom/android/wifidirect/test/WifiConnectionListen;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "OldVersion"

    aget-object v4, v0, v6

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 221
    .end local v0           #arrays:[Ljava/lang/String;
    :cond_3
    return-void
.end method

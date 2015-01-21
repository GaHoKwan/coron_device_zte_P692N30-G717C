.class Lcom/android/wifidirect/test/WifiOppTransfer$SocketConnectThread;
.super Ljava/lang/Thread;
.source "WifiOppTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wifidirect/test/WifiOppTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SocketConnectThread"
.end annotation


# instance fields
.field private final channel:I

.field private final host:Ljava/lang/String;

.field private isConnected:Z

.field final synthetic this$0:Lcom/android/wifidirect/test/WifiOppTransfer;

.field private timestamp:J

.field private wifiSocket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lcom/android/wifidirect/test/WifiOppTransfer;Ljava/lang/String;II)V
    .locals 1
    .parameter
    .parameter "host"
    .parameter "port"
    .parameter "dummy"

    .prologue
    .line 508
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiOppTransfer$SocketConnectThread;->this$0:Lcom/android/wifidirect/test/WifiOppTransfer;

    .line 509
    const-string v0, "Socket Connect Thread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 505
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransfer$SocketConnectThread;->wifiSocket:Ljava/net/Socket;

    .line 510
    iput-object p2, p0, Lcom/android/wifidirect/test/WifiOppTransfer$SocketConnectThread;->host:Ljava/lang/String;

    .line 511
    iput p3, p0, Lcom/android/wifidirect/test/WifiOppTransfer$SocketConnectThread;->channel:I

    .line 513
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wifidirect/test/WifiOppTransfer$SocketConnectThread;->isConnected:Z

    .line 514
    return-void
.end method

.method private markConnectionFailed(Ljava/net/Socket;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 586
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    :goto_0
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransfer$SocketConnectThread;->this$0:Lcom/android/wifidirect/test/WifiOppTransfer;

    #getter for: Lcom/android/wifidirect/test/WifiOppTransfer;->mSessionHandler:Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;
    invoke-static {v1}, Lcom/android/wifidirect/test/WifiOppTransfer;->access$1300(Lcom/android/wifidirect/test/WifiOppTransfer;)Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 591
    return-void

    .line 587
    :catch_0
    move-exception v0

    .line 588
    .local v0, e:Ljava/io/IOException;
    const-string v1, "<==>tsjWFD WifiOppTransfer"

    const-string v2, "TCP socket close error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public interrupt()V
    .locals 0

    .prologue
    .line 526
    return-void
.end method

.method public run()V
    .locals 11

    .prologue
    .line 531
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/wifidirect/test/WifiOppTransfer$SocketConnectThread;->timestamp:J

    .line 532
    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3}, Ljava/net/Socket;-><init>()V

    .line 534
    .local v3, s:Ljava/net/Socket;
    const/4 v2, 0x0

    .line 535
    .local v2, result:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v5, 0xc8

    if-ge v1, v5, :cond_0

    if-nez v2, :cond_0

    .line 537
    :try_start_0
    const-string v5, "<==>tsjWFD WifiOppTransfer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TCP socket connect to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/wifidirect/test/WifiOppTransfer$SocketConnectThread;->host:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    new-instance v5, Ljava/net/InetSocketAddress;

    iget-object v6, p0, Lcom/android/wifidirect/test/WifiOppTransfer$SocketConnectThread;->host:Ljava/lang/String;

    iget v7, p0, Lcom/android/wifidirect/test/WifiOppTransfer$SocketConnectThread;->channel:I

    invoke-direct {v5, v6, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const v6, 0x14c08

    invoke-virtual {v3, v5, v6}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 544
    :goto_1
    invoke-virtual {v3}, Ljava/net/Socket;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 545
    const-string v5, "<==>tsjWFD WifiOppTransfer"

    const-string v6, "TCP socket connected "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/wifidirect/test/WifiOppTransfer$SocketConnectThread;->isConnected:Z

    .line 555
    :cond_0
    iget-boolean v5, p0, Lcom/android/wifidirect/test/WifiOppTransfer$SocketConnectThread;->isConnected:Z

    if-nez v5, :cond_3

    .line 556
    const-string v5, "<==>tsjWFD WifiOppTransfer"

    const-string v6, "TCP socket connect failed after 20 seconds"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    invoke-direct {p0, v3}, Lcom/android/wifidirect/test/WifiOppTransfer$SocketConnectThread;->markConnectionFailed(Ljava/net/Socket;)V

    .line 582
    :goto_2
    return-void

    .line 539
    :catch_0
    move-exception v0

    .line 540
    .local v0, e:Ljava/net/UnknownHostException;
    const-string v5, "<==>tsjWFD WifiOppTransfer"

    const-string v6, "TCP socket connect unknown host "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 541
    .end local v0           #e:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v0

    .line 542
    .local v0, e:Ljava/io/IOException;
    const-string v5, "<==>tsjWFD WifiOppTransfer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TCP socket connect failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 549
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    invoke-virtual {p0}, Lcom/android/wifidirect/test/WifiOppTransfer$SocketConnectThread;->isInterrupted()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 550
    const-string v5, "<==>tsjWFD WifiOppTransfer"

    const-string v6, "TCP socket connect interrupted "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-direct {p0, v3}, Lcom/android/wifidirect/test/WifiOppTransfer$SocketConnectThread;->markConnectionFailed(Ljava/net/Socket;)V

    goto :goto_2

    .line 535
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 561
    :cond_3
    const-string v5, "<==>tsjWFD WifiOppTransfer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TCP Socket connection attempt took "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/wifidirect/test/WifiOppTransfer$SocketConnectThread;->timestamp:J

    sub-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    new-instance v4, Lcom/android/wifidirect/test/WifiTcpTransport;

    invoke-direct {v4, v3}, Lcom/android/wifidirect/test/WifiTcpTransport;-><init>(Ljava/net/Socket;)V

    .line 567
    .local v4, transport:Lcom/android/wifidirect/test/WifiTcpTransport;
    invoke-virtual {p0}, Lcom/android/wifidirect/test/WifiOppTransfer$SocketConnectThread;->isInterrupted()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 568
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/wifidirect/test/WifiOppTransfer$SocketConnectThread;->isConnected:Z

    .line 569
    invoke-direct {p0, v3}, Lcom/android/wifidirect/test/WifiOppTransfer$SocketConnectThread;->markConnectionFailed(Ljava/net/Socket;)V

    .line 570
    const/4 v4, 0x0

    .line 571
    goto :goto_2

    .line 573
    :cond_4
    iget-boolean v5, p0, Lcom/android/wifidirect/test/WifiOppTransfer$SocketConnectThread;->isConnected:Z

    if-nez v5, :cond_5

    .line 574
    const/4 v4, 0x0

    .line 575
    const-string v5, "<==>tsjWFD WifiOppTransfer"

    const-string v6, "TCP connect session error: "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    invoke-direct {p0, v3}, Lcom/android/wifidirect/test/WifiOppTransfer$SocketConnectThread;->markConnectionFailed(Ljava/net/Socket;)V

    goto :goto_2

    .line 579
    :cond_5
    const-string v5, "<==>tsjWFD WifiOppTransfer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Send transport message "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v5, p0, Lcom/android/wifidirect/test/WifiOppTransfer$SocketConnectThread;->this$0:Lcom/android/wifidirect/test/WifiOppTransfer;

    #getter for: Lcom/android/wifidirect/test/WifiOppTransfer;->mSessionHandler:Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;
    invoke-static {v5}, Lcom/android/wifidirect/test/WifiOppTransfer;->access$1300(Lcom/android/wifidirect/test/WifiOppTransfer;)Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;

    move-result-object v5

    const/16 v6, 0xb

    invoke-virtual {v5, v6, v4}, Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_2
.end method

.class Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;
.super Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;
.source "BipChannel.java"


# instance fields
.field private mListen:Lcom/android/internal/telephony/cdma/utk/ListenPortManager;

.field private mListenPort:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/utk/BipService;Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;I)V
    .locals 1
    .parameter "bs"
    .parameter "p"
    .parameter "id"

    .prologue
    .line 474
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;-><init>(Lcom/android/internal/telephony/cdma/utk/BipService;Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;I)V

    .line 475
    iget-object v0, p2, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->transportLevel:Lcom/android/internal/telephony/cdma/utk/TransportLevel;

    iget v0, v0, Lcom/android/internal/telephony/cdma/utk/TransportLevel;->port:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->mListenPort:I

    .line 476
    return-void
.end method


# virtual methods
.method public linkDisconnect(Z)I
    .locals 5
    .parameter "listen"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 495
    const-string v0, "TcpServerChannel"

    const-string v1, " linkDisconnect"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    if-eqz p1, :cond_2

    .line 498
    const-string v0, "TcpServerChannel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " keep listen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->mListenPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->setStatus(I)V

    .line 511
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->mReceiver:Lcom/android/internal/telephony/cdma/utk/BipRunnable;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->mReceiver:Lcom/android/internal/telephony/cdma/utk/BipRunnable;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/BipRunnable;->stop()V

    .line 513
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->mReceiver:Lcom/android/internal/telephony/cdma/utk/BipRunnable;

    .line 517
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 519
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->mSocket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    :cond_1
    :goto_1
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->mRxBuffer:[B

    .line 527
    return v4

    .line 505
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->mListen:Lcom/android/internal/telephony/cdma/utk/ListenPortManager;

    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->mListenPort:I

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/cdma/utk/ListenPortManager;->removeListenPort(ILcom/android/internal/telephony/cdma/utk/BipChannel;)V

    .line 507
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->setStatus(I)V

    goto :goto_0

    .line 521
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public linkEstablish()I
    .locals 3

    .prologue
    .line 480
    const/4 v0, 0x0

    .line 482
    .local v0, ret:I
    const-string v1, "TcpServerChannel"

    const-string v2, " linkEstablish"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    invoke-static {}, Lcom/android/internal/telephony/cdma/utk/ListenPortManager;->getInstance()Lcom/android/internal/telephony/cdma/utk/ListenPortManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->mListen:Lcom/android/internal/telephony/cdma/utk/ListenPortManager;

    .line 485
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->mListen:Lcom/android/internal/telephony/cdma/utk/ListenPortManager;

    iget v2, p0, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->mListenPort:I

    invoke-virtual {v1, v2, p0}, Lcom/android/internal/telephony/cdma/utk/ListenPortManager;->addListenPort(ILcom/android/internal/telephony/cdma/utk/BipChannel;)V

    .line 487
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->setStatus(I)V

    .line 490
    return v0
.end method

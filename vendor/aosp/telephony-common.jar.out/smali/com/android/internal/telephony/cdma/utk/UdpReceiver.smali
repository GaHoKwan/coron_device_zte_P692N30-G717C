.class Lcom/android/internal/telephony/cdma/utk/UdpReceiver;
.super Lcom/android/internal/telephony/cdma/utk/BipRunnable;
.source "BipChannel.java"


# instance fields
.field private mBufSize:I

.field private mDatagramSocket:Ljava/net/DatagramSocket;


# direct methods
.method constructor <init>(Ljava/net/DatagramSocket;ILcom/android/internal/telephony/cdma/utk/BipChannel;)V
    .locals 0
    .parameter "dataSocket"
    .parameter "bufSize"
    .parameter "ch"

    .prologue
    .line 928
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/BipRunnable;-><init>()V

    .line 929
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/utk/UdpReceiver;->mDatagramSocket:Ljava/net/DatagramSocket;

    .line 930
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/utk/UdpReceiver;->mCaller:Lcom/android/internal/telephony/cdma/utk/BipChannel;

    .line 931
    iput p2, p0, Lcom/android/internal/telephony/cdma/utk/UdpReceiver;->mBufSize:I

    .line 932
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 936
    const-string v5, "UdpReceiver"

    const-string v6, " enter UdpReceiver Thread"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/utk/UdpReceiver;->mRun:Z

    if-eqz v5, :cond_2

    .line 939
    iget v5, p0, Lcom/android/internal/telephony/cdma/utk/UdpReceiver;->mBufSize:I

    new-array v4, v5, [B

    .line 941
    .local v4, tmp:[B
    new-instance v2, Ljava/net/DatagramPacket;

    array-length v5, v4

    invoke-direct {v2, v4, v5}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 943
    .local v2, datagramPacket:Ljava/net/DatagramPacket;
    const/4 v1, 0x0

    .line 945
    .local v1, dataLen:I
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/UdpReceiver;->mDatagramSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v5, v2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 946
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v1

    .line 948
    const-string v5, "UdpReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " receive data len="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    if-lez v1, :cond_0

    .line 952
    iget v5, p0, Lcom/android/internal/telephony/cdma/utk/UdpReceiver;->mBufSize:I

    if-ge v1, v5, :cond_1

    .line 953
    new-array v0, v1, [B

    .line 954
    .local v0, buf:[B
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 959
    :goto_1
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v6, v7, v0}, Lcom/android/internal/telephony/cdma/utk/UdpReceiver;->sendMessageToChannel(IIILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 961
    .end local v0           #buf:[B
    :catch_0
    move-exception v3

    .line 962
    .local v3, e:Ljava/io/IOException;
    const-string v5, "UdpReceiver"

    const-string v6, " catch  IOException"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 956
    .end local v3           #e:Ljava/io/IOException;
    :cond_1
    move-object v0, v4

    .restart local v0       #buf:[B
    goto :goto_1

    .line 966
    .end local v0           #buf:[B
    .end local v1           #dataLen:I
    .end local v2           #datagramPacket:Ljava/net/DatagramPacket;
    .end local v4           #tmp:[B
    :cond_2
    const-string v5, "UdpReceiver"

    const-string v6, " exit UdpReceiver Thread"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    return-void
.end method

.class Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;
.super Ljava/lang/Object;
.source "WifiConnectionListen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wifidirect/test/WifiConnectionListen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UdpSReceiveIp"
.end annotation


# instance fields
.field private data:[B

.field private ipString:Ljava/lang/String;

.field private mInterrupted:Z

.field private final mUdpPort:I

.field private mUdpSThread:Ljava/lang/Thread;

.field final synthetic this$0:Lcom/android/wifidirect/test/WifiConnectionListen;

.field private udpPacket:Ljava/net/DatagramPacket;

.field private udpServerSocket:Ljava/net/DatagramSocket;


# direct methods
.method public constructor <init>(Lcom/android/wifidirect/test/WifiConnectionListen;I)V
    .locals 1
    .parameter
    .parameter "port"

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->this$0:Lcom/android/wifidirect/test/WifiConnectionListen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->mInterrupted:Z

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->mUdpSThread:Ljava/lang/Thread;

    .line 173
    iput p2, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->mUdpPort:I

    .line 174
    return-void
.end method

.method static synthetic access$300(Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;)Ljava/net/DatagramSocket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->udpServerSocket:Ljava/net/DatagramSocket;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;Ljava/net/DatagramSocket;)Ljava/net/DatagramSocket;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->udpServerSocket:Ljava/net/DatagramSocket;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    iget v0, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->mUdpPort:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->mInterrupted:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 164
    iput-boolean p1, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->mInterrupted:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->data:[B

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->data:[B

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;)Ljava/net/DatagramPacket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->udpPacket:Ljava/net/DatagramPacket;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;Ljava/net/DatagramPacket;)Ljava/net/DatagramPacket;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->udpPacket:Ljava/net/DatagramPacket;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->ipString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->ipString:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public declared-synchronized startUdps()V
    .locals 2

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->mUdpSThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->mInterrupted:Z

    .line 179
    new-instance v0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp$1;

    const-string v1, "WifiConnectionListen"

    invoke-direct {v0, p0, v1}, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp$1;-><init>(Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->mUdpSThread:Ljava/lang/Thread;

    .line 223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->mInterrupted:Z

    .line 224
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->mUdpSThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :cond_0
    monitor-exit p0

    return-void

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopUdpS()V
    .locals 3

    .prologue
    .line 228
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->mUdpSThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 229
    const-string v1, "WifiConnectionListen"

    const-string v2, "stopping Accept Thread"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->mInterrupted:Z

    .line 232
    const-string v1, "WifiConnectionListen"

    const-string v2, "close mTcpServerSocket"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->udpServerSocket:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->udpServerSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->mUdpSThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 238
    const-string v1, "WifiConnectionListen"

    const-string v2, "waiting for thread to terminate"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->mUdpSThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 240
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->mUdpSThread:Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 245
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "WifiConnectionListen"

    const-string v2, "mUdpSThread Interrupted waiting for Accept Thread to join"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 228
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.class Ljava/nio/SocketChannelImpl;
.super Ljava/nio/channels/SocketChannel;
.source "SocketChannelImpl.java"

# interfaces
.implements Ljava/nio/FileDescriptorChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/SocketChannelImpl$SocketChannelInputStream;,
        Ljava/nio/SocketChannelImpl$SocketChannelOutputStream;,
        Ljava/nio/SocketChannelImpl$SocketAdapter;
    }
.end annotation


# static fields
.field private static final SOCKET_STATUS_CLOSED:I = 0x3

.field private static final SOCKET_STATUS_CONNECTED:I = 0x2

.field private static final SOCKET_STATUS_PENDING:I = 0x1

.field private static final SOCKET_STATUS_UNCONNECTED:I = 0x0

.field private static final SOCKET_STATUS_UNINITIALIZED:I = -0x1


# instance fields
.field private connectAddress:Ljava/net/InetSocketAddress;

.field private final fd:Ljava/io/FileDescriptor;

.field private volatile isBound:Z

.field private localAddress:Ljava/net/InetAddress;

.field private localPort:I

.field private final readLock:Ljava/lang/Object;

.field private socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

.field private status:I

.field private final writeLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 1
    .parameter "selectorProvider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/nio/SocketChannelImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;Z)V

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;)V
    .locals 1
    .parameter "selectorProvider"
    .parameter "existingFd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, p1}, Ljava/nio/channels/SocketChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 72
    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    .line 75
    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    .line 77
    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->localAddress:Ljava/net/InetAddress;

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/SocketChannelImpl;->status:I

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/nio/SocketChannelImpl;->isBound:Z

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->readLock:Ljava/lang/Object;

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    .line 110
    const/4 v0, 0x2

    iput v0, p0, Ljava/nio/SocketChannelImpl;->status:I

    .line 111
    iput-object p2, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/spi/SelectorProvider;Z)V
    .locals 2
    .parameter "selectorProvider"
    .parameter "connect"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1}, Ljava/nio/channels/SocketChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 72
    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    .line 75
    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    .line 77
    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->localAddress:Ljava/net/InetAddress;

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/SocketChannelImpl;->status:I

    .line 83
    iput-boolean v1, p0, Ljava/nio/SocketChannelImpl;->isBound:Z

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->readLock:Ljava/lang/Object;

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    .line 101
    iput v1, p0, Ljava/nio/SocketChannelImpl;->status:I

    .line 102
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Llibcore/io/IoBridge;->socket(Z)Ljava/io/FileDescriptor;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 103
    return-void

    .line 102
    :cond_0
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    goto :goto_0
.end method

.method static synthetic access$000(Ljava/nio/SocketChannelImpl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Ljava/nio/SocketChannelImpl;->isBound:Z

    return v0
.end method

.method static synthetic access$002(Ljava/nio/SocketChannelImpl;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Ljava/nio/SocketChannelImpl;->isBound:Z

    return p1
.end method

.method static synthetic access$100(Ljava/nio/SocketChannelImpl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl;->initLocalAddressAndPort()V

    return-void
.end method

.method static synthetic access$200(Ljava/nio/SocketChannelImpl;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Ljava/nio/SocketChannelImpl;->status:I

    return v0
.end method

.method static synthetic access$202(Ljava/nio/SocketChannelImpl;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Ljava/nio/SocketChannelImpl;->status:I

    return p1
.end method

.method private declared-synchronized checkOpenConnected()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    .prologue
    .line 408
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 409
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 411
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 412
    new-instance v0, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 414
    :cond_1
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized checkUnconnected()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 420
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 423
    :cond_0
    :try_start_1
    iget v0, p0, Ljava/nio/SocketChannelImpl;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 424
    new-instance v0, Ljava/nio/channels/AlreadyConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/AlreadyConnectedException;-><init>()V

    throw v0

    .line 426
    :cond_1
    iget v0, p0, Ljava/nio/SocketChannelImpl;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 427
    new-instance v0, Ljava/nio/channels/ConnectionPendingException;

    invoke-direct {v0}, Ljava/nio/channels/ConnectionPendingException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 429
    :cond_2
    monitor-exit p0

    return-void
.end method

.method private initLocalAddressAndPort()V
    .locals 5

    .prologue
    .line 228
    :try_start_0
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v4, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v3, v4}, Llibcore/io/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .local v2, sa:Ljava/net/SocketAddress;
    move-object v1, v2

    .line 232
    check-cast v1, Ljava/net/InetSocketAddress;

    .line 233
    .local v1, isa:Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    iput-object v3, p0, Ljava/nio/SocketChannelImpl;->localAddress:Ljava/net/InetAddress;

    .line 234
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    iput v3, p0, Ljava/nio/SocketChannelImpl;->localPort:I

    .line 235
    iget-object v3, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    if-eqz v3, :cond_0

    .line 236
    iget-object v3, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    invoke-virtual {v3}, Ljava/nio/SocketChannelImpl$SocketAdapter;->socketImpl()Ljava/net/PlainSocketImpl;

    move-result-object v3

    iget v4, p0, Ljava/nio/SocketChannelImpl;->localPort:I

    invoke-virtual {v3, v4}, Ljava/net/PlainSocketImpl;->initLocalPort(I)V

    .line 238
    :cond_0
    return-void

    .line 229
    .end local v1           #isa:Ljava/net/InetSocketAddress;
    .end local v2           #sa:Ljava/net/SocketAddress;
    :catch_0
    move-exception v0

    .line 230
    .local v0, errnoException:Llibcore/io/ErrnoException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method private isEINPROGRESS(Ljava/io/IOException;)Z
    .locals 4
    .parameter "e"

    .prologue
    const/4 v1, 0x0

    .line 213
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 222
    :cond_0
    :goto_0
    return v1

    .line 216
    :cond_1
    instance-of v2, p1, Ljava/net/ConnectException;

    if-eqz v2, :cond_0

    .line 217
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 218
    .local v0, cause:Ljava/lang/Throwable;
    instance-of v2, v0, Llibcore/io/ErrnoException;

    if-eqz v2, :cond_0

    .line 219
    check-cast v0, Llibcore/io/ErrnoException;

    .end local v0           #cause:Ljava/lang/Throwable;
    iget v2, v0, Llibcore/io/ErrnoException;->errno:I

    sget v3, Llibcore/io/OsConstants;->EINPROGRESS:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private readImpl(Ljava/nio/ByteBuffer;)I
    .locals 10
    .parameter "dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 321
    iget-object v9, p0, Ljava/nio/SocketChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v9

    .line 322
    const/4 v6, 0x0

    .line 324
    .local v6, readCount:I
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->begin()V

    .line 327
    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Llibcore/io/IoBridge;->recvfrom(ZLjava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/DatagramPacket;Z)I

    move-result v6

    .line 328
    if-lez v6, :cond_1

    .line 329
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v6

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 333
    if-lez v6, :cond_5

    move v0, v7

    :goto_0
    invoke-virtual {p0, v0}, Ljava/nio/SocketChannelImpl;->end(Z)V

    .line 336
    :cond_2
    monitor-exit v9

    return v6

    .line 332
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 333
    if-lez v6, :cond_4

    :goto_1
    invoke-virtual {p0, v7}, Ljava/nio/SocketChannelImpl;->end(Z)V

    .line 332
    :cond_3
    throw v0

    .line 337
    :catchall_1
    move-exception v0

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_4
    move v7, v8

    .line 333
    goto :goto_1

    :cond_5
    move v0, v8

    goto :goto_0
.end method

.method static validateAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;
    .locals 3
    .parameter "socketAddress"

    .prologue
    .line 436
    if-nez p0, :cond_0

    .line 437
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "socketAddress == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 439
    :cond_0
    instance-of v1, p0, Ljava/net/InetSocketAddress;

    if-nez v1, :cond_1

    .line 440
    new-instance v1, Ljava/nio/channels/UnsupportedAddressTypeException;

    invoke-direct {v1}, Ljava/nio/channels/UnsupportedAddressTypeException;-><init>()V

    throw v1

    :cond_1
    move-object v0, p0

    .line 442
    check-cast v0, Ljava/net/InetSocketAddress;

    .line 443
    .local v0, inetSocketAddress:Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 444
    new-instance v1, Ljava/nio/channels/UnresolvedAddressException;

    invoke-direct {v1}, Ljava/nio/channels/UnresolvedAddressException;-><init>()V

    throw v1

    .line 446
    :cond_2
    return-object v0
.end method

.method private writeImpl(Ljava/nio/ByteBuffer;)I
    .locals 8
    .parameter "src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 382
    iget-object v4, p0, Ljava/nio/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v4

    .line 383
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_0

    .line 384
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 400
    :goto_0
    return v0

    .line 386
    :cond_0
    const/4 v0, 0x0

    .line 388
    .local v0, writeCount:I
    :try_start_1
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 389
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->begin()V

    .line 391
    :cond_1
    iget-object v2, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v2, p1, v5, v6, v7}, Llibcore/io/IoBridge;->sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I

    move-result v0

    .line 392
    if-lez v0, :cond_2

    .line 393
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 396
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 397
    if-ltz v0, :cond_3

    move v1, v3

    :cond_3
    invoke-virtual {p0, v1}, Ljava/nio/SocketChannelImpl;->end(Z)V

    .line 400
    :cond_4
    monitor-exit v4

    goto :goto_0

    .line 401
    .end local v0           #writeCount:I
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 396
    .restart local v0       #writeCount:I
    :catchall_1
    move-exception v2

    :try_start_3
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 397
    if-ltz v0, :cond_6

    :goto_1
    invoke-virtual {p0, v3}, Ljava/nio/SocketChannelImpl;->end(Z)V

    .line 396
    :cond_5
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    move v3, v1

    .line 397
    goto :goto_1
.end method


# virtual methods
.method public connect(Ljava/net/SocketAddress;)Z
    .locals 8
    .parameter "socketAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl;->checkUnconnected()V

    .line 163
    invoke-static {p1}, Ljava/nio/SocketChannelImpl;->validateAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v2

    .line 164
    .local v2, inetSocketAddress:Ljava/net/InetSocketAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 165
    .local v3, normalAddr:Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    .line 168
    .local v4, port:I
    invoke-virtual {v3}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 169
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v3

    .line 172
    :cond_0
    const/4 v1, 0x0

    .line 174
    .local v1, finished:Z
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 175
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->begin()V

    .line 177
    :cond_1
    iget-object v5, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v5, v3, v4}, Llibcore/io/IoBridge;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)Z

    move-result v1

    .line 178
    iput-boolean v1, p0, Ljava/nio/SocketChannelImpl;->isBound:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 191
    :goto_0
    invoke-virtual {p0, v1}, Ljava/nio/SocketChannelImpl;->end(Z)V

    .line 195
    :cond_2
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl;->initLocalAddressAndPort()V

    .line 196
    iput-object v2, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    .line 197
    iget-object v5, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    if-eqz v5, :cond_3

    .line 198
    iget-object v5, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    invoke-virtual {v5}, Ljava/nio/SocketChannelImpl$SocketAdapter;->socketImpl()Ljava/net/PlainSocketImpl;

    move-result-object v5

    iget-object v6, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v6}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    iget-object v7, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v7}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/net/PlainSocketImpl;->initRemoteAddressAndPort(Ljava/net/InetAddress;I)V

    .line 202
    :cond_3
    monitor-enter p0

    .line 203
    :try_start_1
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 204
    if-eqz v1, :cond_7

    const/4 v5, 0x2

    :goto_1
    iput v5, p0, Ljava/nio/SocketChannelImpl;->status:I

    .line 208
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 209
    return v1

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    invoke-direct {p0, v0}, Ljava/nio/SocketChannelImpl;->isEINPROGRESS(Ljava/io/IOException;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 181
    const/4 v5, 0x1

    iput v5, p0, Ljava/nio/SocketChannelImpl;->status:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 183
    :cond_4
    :try_start_3
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 184
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->close()V

    .line 185
    const/4 v1, 0x1

    .line 187
    :cond_5
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 190
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 191
    invoke-virtual {p0, v1}, Ljava/nio/SocketChannelImpl;->end(Z)V

    .line 190
    :cond_6
    throw v5

    .line 204
    :cond_7
    const/4 v5, 0x0

    goto :goto_1

    .line 206
    :cond_8
    const/4 v5, 0x1

    :try_start_4
    iput v5, p0, Ljava/nio/SocketChannelImpl;->status:I

    goto :goto_2

    .line 208
    :catchall_1
    move-exception v5

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5
.end method

.method finishAccept()V
    .locals 0

    .prologue
    .line 279
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl;->initLocalAddressAndPort()V

    .line 280
    return-void
.end method

.method public finishConnect()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 242
    monitor-enter p0

    .line 243
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isOpen()Z

    move-result v5

    if-nez v5, :cond_0

    .line 244
    new-instance v4, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v4}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v4

    .line 252
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 246
    :cond_0
    :try_start_1
    iget v5, p0, Ljava/nio/SocketChannelImpl;->status:I

    if-ne v5, v4, :cond_1

    .line 247
    monitor-exit p0

    .line 275
    :goto_0
    return v1

    .line 249
    :cond_1
    iget v5, p0, Ljava/nio/SocketChannelImpl;->status:I

    if-eq v5, v1, :cond_2

    .line 250
    new-instance v4, Ljava/nio/channels/NoConnectionPendingException;

    invoke-direct {v4}, Ljava/nio/channels/NoConnectionPendingException;-><init>()V

    throw v4

    .line 252
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    const/4 v1, 0x0

    .line 256
    .local v1, finished:Z
    :try_start_2
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->begin()V

    .line 257
    iget-object v5, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 258
    .local v2, inetAddress:Ljava/net/InetAddress;
    iget-object v5, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    .line 259
    .local v3, port:I
    iget-object v5, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v2, v3, v6, v7}, Llibcore/io/IoBridge;->isConnected(Ljava/io/FileDescriptor;Ljava/net/InetAddress;III)Z

    move-result v1

    .line 260
    iput-boolean v1, p0, Ljava/nio/SocketChannelImpl;->isBound:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_0

    .line 268
    invoke-virtual {p0, v1}, Ljava/nio/SocketChannelImpl;->end(Z)V

    .line 271
    monitor-enter p0

    .line 272
    if-eqz v1, :cond_4

    :goto_1
    :try_start_3
    iput v4, p0, Ljava/nio/SocketChannelImpl;->status:I

    .line 273
    iput-boolean v1, p0, Ljava/nio/SocketChannelImpl;->isBound:Z

    .line 274
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 261
    .end local v2           #inetAddress:Ljava/net/InetAddress;
    .end local v3           #port:I
    :catch_0
    move-exception v0

    .line 262
    .local v0, e:Ljava/net/ConnectException;
    :try_start_4
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 263
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->close()V

    .line 264
    const/4 v1, 0x1

    .line 266
    :cond_3
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 268
    .end local v0           #e:Ljava/net/ConnectException;
    :catchall_2
    move-exception v4

    invoke-virtual {p0, v1}, Ljava/nio/SocketChannelImpl;->end(Z)V

    throw v4

    .line 272
    .restart local v2       #inetAddress:Ljava/net/InetAddress;
    .restart local v3       #port:I
    :cond_4
    :try_start_5
    iget v4, p0, Ljava/nio/SocketChannelImpl;->status:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1
.end method

.method public getFD()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 453
    iget-boolean v0, p0, Ljava/nio/SocketChannelImpl;->isBound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->localAddress:Ljava/net/InetAddress;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    goto :goto_0
.end method

.method protected declared-synchronized implCloseSelectableChannel()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x3

    .line 461
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/nio/SocketChannelImpl;->status:I

    if-eq v0, v1, :cond_0

    .line 462
    const/4 v0, 0x3

    iput v0, p0, Ljava/nio/SocketChannelImpl;->status:I

    .line 463
    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    invoke-virtual {v0}, Ljava/nio/SocketChannelImpl$SocketAdapter;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 464
    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    invoke-virtual {v0}, Ljava/nio/SocketChannelImpl$SocketAdapter;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 466
    :cond_1
    :try_start_1
    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 461
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected implConfigureBlocking(Z)V
    .locals 1
    .parameter "blocking"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 472
    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    .line 473
    return-void
.end method

.method public declared-synchronized isConnected()Z
    .locals 2

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/nio/SocketChannelImpl;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isConnectionPending()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 154
    monitor-enter p0

    :try_start_0
    iget v1, p0, Ljava/nio/SocketChannelImpl;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v0, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 1
    .parameter "dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->checkWritable()V

    .line 285
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl;->checkOpenConnected()V

    .line 286
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    const/4 v0, 0x0

    .line 289
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Ljava/nio/SocketChannelImpl;->readImpl(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_0
.end method

.method public read([Ljava/nio/ByteBuffer;II)J
    .locals 9
    .parameter "targets"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 294
    array-length v7, p1

    invoke-static {v7, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 295
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl;->checkOpenConnected()V

    .line 296
    const/4 v7, 0x1

    invoke-static {p1, p2, p3, v7}, Ljava/nio/FileChannelImpl;->calculateTotalRemaining([Ljava/nio/ByteBuffer;IIZ)I

    move-result v6

    .line 297
    .local v6, totalCount:I
    if-nez v6, :cond_0

    .line 298
    const-wide/16 v7, 0x0

    .line 317
    :goto_0
    return-wide v7

    .line 300
    :cond_0
    new-array v3, v6, [B

    .line 301
    .local v3, readArray:[B
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 304
    .local v4, readBuffer:Ljava/nio/ByteBuffer;
    invoke-direct {p0, v4}, Ljava/nio/SocketChannelImpl;->readImpl(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 305
    .local v5, readCount:I
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 306
    if-lez v5, :cond_1

    .line 307
    move v1, v5

    .line 308
    .local v1, left:I
    move v0, p2

    .line 310
    .local v0, index:I
    :goto_1
    if-lez v1, :cond_1

    .line 311
    aget-object v7, p1, v0

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 312
    .local v2, putLength:I
    aget-object v7, p1, v0

    sub-int v8, v5, v1

    invoke-virtual {v7, v3, v8, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 313
    add-int/lit8 v0, v0, 0x1

    .line 314
    sub-int/2addr v1, v2

    .line 315
    goto :goto_1

    .line 317
    .end local v0           #index:I
    .end local v1           #left:I
    .end local v2           #putLength:I
    :cond_1
    int-to-long v7, v5

    goto :goto_0
.end method

.method setBound(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 149
    iput-boolean p1, p0, Ljava/nio/SocketChannelImpl;->isBound:Z

    .line 150
    return-void
.end method

.method declared-synchronized setConnected()V
    .locals 1

    .prologue
    .line 145
    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    iput v0, p0, Ljava/nio/SocketChannelImpl;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit p0

    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized socket()Ljava/net/Socket;
    .locals 7

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, addr:Ljava/net/InetAddress;
    const/4 v2, 0x0

    .line 124
    .local v2, port:I
    :try_start_1
    iget-object v3, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    if-eqz v3, :cond_0

    .line 125
    iget-object v3, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 126
    iget-object v3, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    .line 128
    :cond_0
    new-instance v3, Ljava/nio/SocketChannelImpl$SocketAdapter;

    new-instance v4, Ljava/net/PlainSocketImpl;

    iget-object v5, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget v6, p0, Ljava/nio/SocketChannelImpl;->localPort:I

    invoke-direct {v4, v5, v6, v0, v2}, Ljava/net/PlainSocketImpl;-><init>(Ljava/io/FileDescriptor;ILjava/net/InetAddress;I)V

    invoke-direct {v3, v4, p0}, Ljava/nio/SocketChannelImpl$SocketAdapter;-><init>(Ljava/net/PlainSocketImpl;Ljava/nio/SocketChannelImpl;)V

    iput-object v3, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    .line 133
    .end local v0           #addr:Ljava/net/InetAddress;
    .end local v2           #port:I
    :cond_1
    :try_start_2
    iget-object v3, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v3

    .line 129
    .restart local v0       #addr:Ljava/net/InetAddress;
    .restart local v2       #port:I
    :catch_0
    move-exception v1

    .line 130
    .local v1, e:Ljava/net/SocketException;
    const/4 v3, 0x0

    goto :goto_0

    .line 120
    .end local v0           #addr:Ljava/net/InetAddress;
    .end local v1           #e:Ljava/net/SocketException;
    .end local v2           #port:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 2
    .parameter "src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 342
    if-nez p1, :cond_0

    .line 343
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "src == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_0
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl;->checkOpenConnected()V

    .line 346
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1

    .line 347
    const/4 v0, 0x0

    .line 349
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Ljava/nio/SocketChannelImpl;->writeImpl(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_0
.end method

.method public write([Ljava/nio/ByteBuffer;II)J
    .locals 10
    .parameter "sources"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 354
    array-length v8, p1

    invoke-static {v8, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 355
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl;->checkOpenConnected()V

    .line 356
    const/4 v8, 0x0

    invoke-static {p1, p2, p3, v8}, Ljava/nio/FileChannelImpl;->calculateTotalRemaining([Ljava/nio/ByteBuffer;IIZ)I

    move-result v0

    .line 357
    .local v0, count:I
    if-nez v0, :cond_0

    .line 358
    const-wide/16 v8, 0x0

    .line 378
    :goto_0
    return-wide v8

    .line 360
    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 361
    .local v6, writeBuf:Ljava/nio/ByteBuffer;
    move v5, p2

    .local v5, val:I
    :goto_1
    add-int v8, p3, p2

    if-ge v5, v8, :cond_1

    .line 362
    aget-object v4, p1, v5

    .line 363
    .local v4, source:Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 364
    .local v2, oldPosition:I
    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 365
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 361
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 367
    .end local v2           #oldPosition:I
    .end local v4           #source:Ljava/nio/ByteBuffer;
    :cond_1
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 368
    invoke-direct {p0, v6}, Ljava/nio/SocketChannelImpl;->writeImpl(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 369
    .local v3, result:I
    move v5, p2

    .line 370
    move v7, v3

    .line 371
    .local v7, written:I
    :goto_2
    if-lez v3, :cond_2

    .line 372
    aget-object v4, p1, v5

    .line 373
    .restart local v4       #source:Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 374
    .local v1, gap:I
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v8, v1

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 375
    add-int/lit8 v5, v5, 0x1

    .line 376
    sub-int/2addr v3, v1

    .line 377
    goto :goto_2

    .line 378
    .end local v1           #gap:I
    .end local v4           #source:Ljava/nio/ByteBuffer;
    :cond_2
    int-to-long v8, v7

    goto :goto_0
.end method

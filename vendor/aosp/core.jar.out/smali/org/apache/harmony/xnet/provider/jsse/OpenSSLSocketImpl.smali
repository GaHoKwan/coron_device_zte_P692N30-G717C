.class public Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;
.super Ljavax/net/ssl/SSLSocket;
.source "OpenSSLSocketImpl.java"

# interfaces
.implements Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto$SSLHandshakeCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLOutputStream;,
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLInputStream;
    }
.end annotation


# instance fields
.field private autoClose:Z

.field private enabledCipherSuites:[Ljava/lang/String;

.field private enabledProtocols:[Ljava/lang/String;

.field private final guard:Ldalvik/system/CloseGuard;

.field private handshakeCompleted:Z

.field private final handshakeLock:Ljava/lang/Object;

.field private handshakeStarted:Z

.field private handshakeTimeoutMilliseconds:I

.field private hostname:Ljava/lang/String;

.field private is:Ljava/io/InputStream;

.field private listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljavax/net/ssl/HandshakeCompletedListener;",
            ">;"
        }
    .end annotation
.end field

.field private npnProtocols:[B

.field private os:Ljava/io/OutputStream;

.field private final readLock:Ljava/lang/Object;

.field private readTimeoutMilliseconds:I

.field private final socket:Ljava/net/Socket;

.field private sslNativePointer:I

.field private sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

.field private sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

.field private useSessionTickets:Z

.field private wrappedHost:Ljava/lang/String;

.field private wrappedPort:I

.field private final writeLock:Ljava/lang/Object;

.field private writeTimeoutMilliseconds:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .locals 2
    .parameter "host"
    .parameter "port"
    .parameter "clientAddress"
    .parameter "clientPort"
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 137
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;

    .line 81
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    .line 82
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    .line 90
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeCompleted:Z

    .line 100
    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readTimeoutMilliseconds:I

    .line 101
    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeTimeoutMilliseconds:I

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    .line 138
    iput-object p0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    .line 139
    invoke-direct {p0, p5}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->init(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    .line 140
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .locals 2
    .parameter "host"
    .parameter "port"
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/lang/String;I)V

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;

    .line 81
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    .line 82
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    .line 90
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeCompleted:Z

    .line 100
    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readTimeoutMilliseconds:I

    .line 101
    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeTimeoutMilliseconds:I

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    .line 122
    iput-object p0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    .line 123
    invoke-direct {p0, p3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->init(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    .line 124
    return-void
.end method

.method protected constructor <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .locals 2
    .parameter "address"
    .parameter "port"
    .parameter "clientAddress"
    .parameter "clientPort"
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;

    .line 81
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    .line 82
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    .line 90
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeCompleted:Z

    .line 100
    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readTimeoutMilliseconds:I

    .line 101
    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeTimeoutMilliseconds:I

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    .line 146
    iput-object p0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    .line 147
    invoke-direct {p0, p5}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->init(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    .line 148
    return-void
.end method

.method protected constructor <init>(Ljava/net/InetAddress;ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .locals 2
    .parameter "address"
    .parameter "port"
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/net/InetAddress;I)V

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;

    .line 81
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    .line 82
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    .line 90
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeCompleted:Z

    .line 100
    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readTimeoutMilliseconds:I

    .line 101
    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeTimeoutMilliseconds:I

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    .line 129
    iput-object p0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    .line 130
    invoke-direct {p0, p3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->init(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    .line 131
    return-void
.end method

.method protected constructor <init>(Ljava/net/Socket;Ljava/lang/String;IZLorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .locals 2
    .parameter "socket"
    .parameter "host"
    .parameter "port"
    .parameter "autoClose"
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 155
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocket;-><init>()V

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;

    .line 81
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    .line 82
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    .line 90
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeCompleted:Z

    .line 100
    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readTimeoutMilliseconds:I

    .line 101
    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeTimeoutMilliseconds:I

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    .line 156
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    .line 157
    iput-object p2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->wrappedHost:Ljava/lang/String;

    .line 158
    iput p3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->wrappedPort:I

    .line 159
    iput-boolean p4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->autoClose:Z

    .line 160
    invoke-direct {p0, p5}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->init(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    .line 165
    return-void
.end method

.method protected constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .locals 2
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocket;-><init>()V

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;

    .line 81
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    .line 82
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    .line 90
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeCompleted:Z

    .line 100
    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readTimeoutMilliseconds:I

    .line 101
    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeTimeoutMilliseconds:I

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    .line 108
    iput-object p0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    .line 109
    invoke-direct {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->init(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    .line 110
    return-void
.end method

.method protected constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "sslParameters"
    .parameter "enabledProtocols"
    .parameter "enabledCipherSuites"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 114
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocket;-><init>()V

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;

    .line 81
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    .line 82
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    .line 90
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeCompleted:Z

    .line 100
    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readTimeoutMilliseconds:I

    .line 101
    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeTimeoutMilliseconds:I

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    .line 115
    iput-object p0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    .line 116
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->init(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method static synthetic access$000(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->checkOpen()V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    return v0
.end method

.method static synthetic access$300(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)Ljava/net/Socket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeTimeoutMilliseconds:I

    return v0
.end method

.method private checkOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 231
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_0
    return-void
.end method

.method private static createCertChain([[B)[Ljava/security/cert/X509Certificate;
    .locals 6
    .parameter "certificatesBytes"

    .prologue
    const/4 v3, 0x0

    .line 450
    if-nez p0, :cond_1

    move-object v0, v3

    .line 461
    :cond_0
    :goto_0
    return-object v0

    .line 453
    :cond_1
    array-length v4, p0

    new-array v0, v4, [Ljava/security/cert/X509Certificate;

    .line 454
    .local v0, certificates:[Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v4, p0

    if-ge v2, v4, :cond_0

    .line 456
    :try_start_0
    new-instance v4, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    aget-object v5, p0, v2

    invoke-direct {v4, v5}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>([B)V

    aput-object v4, v0, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 457
    :catch_0
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    move-object v0, v3

    .line 458
    goto :goto_0
.end method

.method private free()V
    .locals 1

    .prologue
    .line 942
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    if-nez v0, :cond_0

    .line 948
    :goto_0
    return-void

    .line 945
    :cond_0
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_free(I)V

    .line 946
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    .line 947
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    goto :goto_0
.end method

.method private getCachedClientSession(Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;
    .locals 14
    .parameter "sessionContext"

    .prologue
    const/4 v12, 0x0

    .line 193
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->getPeerHostName()Ljava/lang/String;

    move-result-object v5

    .line 194
    .local v5, hostName:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->getPeerPort()I

    move-result v8

    .line 195
    .local v8, port:I
    if-nez v5, :cond_1

    move-object v11, v12

    .line 227
    :cond_0
    :goto_0
    return-object v11

    .line 198
    :cond_1
    invoke-virtual {p1, v5, v8}, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->getSession(Ljava/lang/String;I)Ljavax/net/ssl/SSLSession;

    move-result-object v11

    check-cast v11, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    .line 199
    .local v11, session:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;
    if-nez v11, :cond_2

    move-object v11, v12

    .line 200
    goto :goto_0

    .line 203
    :cond_2
    invoke-virtual {v11}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->getProtocol()Ljava/lang/String;

    move-result-object v9

    .line 204
    .local v9, protocol:Ljava/lang/String;
    const/4 v10, 0x0

    .line 205
    .local v10, protocolFound:Z
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledProtocols:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_1
    if-ge v6, v7, :cond_3

    aget-object v4, v0, v6

    .line 206
    .local v4, enabledProtocol:Ljava/lang/String;
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 207
    const/4 v10, 0x1

    .line 211
    .end local v4           #enabledProtocol:Ljava/lang/String;
    :cond_3
    if-nez v10, :cond_5

    move-object v11, v12

    .line 212
    goto :goto_0

    .line 205
    .restart local v4       #enabledProtocol:Ljava/lang/String;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 215
    .end local v4           #enabledProtocol:Ljava/lang/String;
    :cond_5
    invoke-virtual {v11}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->getCipherSuite()Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, cipherSuite:Ljava/lang/String;
    const/4 v2, 0x0

    .line 217
    .local v2, cipherSuiteFound:Z
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledCipherSuites:[Ljava/lang/String;

    array-length v7, v0

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v7, :cond_6

    aget-object v3, v0, v6

    .line 218
    .local v3, enabledCipherSuite:Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 219
    const/4 v2, 0x1

    .line 223
    .end local v3           #enabledCipherSuite:Ljava/lang/String;
    :cond_6
    if-nez v2, :cond_0

    move-object v11, v12

    .line 224
    goto :goto_0

    .line 217
    .restart local v3       #enabledCipherSuite:Ljava/lang/String;
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method private init(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .locals 2
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getDefaultProtocols()[Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->init(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method private init(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "sslParameters"
    .parameter "enabledProtocols"
    .parameter "enabledCipherSuites"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    .line 185
    iput-object p2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledProtocols:[Ljava/lang/String;

    .line 186
    iput-object p3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledCipherSuites:[Ljava/lang/String;

    .line 187
    return-void
.end method

.method private notifyHandshakeCompletedListeners()V
    .locals 6

    .prologue
    .line 549
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 551
    new-instance v1, Ljavax/net/ssl/HandshakeCompletedEvent;

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    invoke-direct {v1, p0, v5}, Ljavax/net/ssl/HandshakeCompletedEvent;-><init>(Ljavax/net/ssl/SSLSocket;Ljavax/net/ssl/SSLSession;)V

    .line 553
    .local v1, event:Ljavax/net/ssl/HandshakeCompletedEvent;
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/net/ssl/HandshakeCompletedListener;

    .line 555
    .local v3, listener:Ljavax/net/ssl/HandshakeCompletedListener;
    :try_start_0
    invoke-interface {v3, v1}, Ljavax/net/ssl/HandshakeCompletedListener;->handshakeCompleted(Ljavax/net/ssl/HandshakeCompletedEvent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 556
    :catch_0
    move-exception v0

    .line 562
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    .line 563
    .local v4, thread:Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v5

    invoke-interface {v5, v4, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 567
    .end local v0           #e:Ljava/lang/RuntimeException;
    .end local v1           #event:Ljavax/net/ssl/HandshakeCompletedEvent;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #listener:Ljavax/net/ssl/HandshakeCompletedListener;
    .end local v4           #thread:Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method private setCertificate(Ljava/lang/String;)V
    .locals 10
    .parameter "alias"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 465
    if-nez p1, :cond_1

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getKeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v7

    invoke-interface {v7, p1}, Ljavax/net/ssl/X509KeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v4

    .line 469
    .local v4, privateKey:Ljava/security/PrivateKey;
    if-eqz v4, :cond_0

    .line 472
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getKeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v7

    invoke-interface {v7, p1}, Ljavax/net/ssl/X509KeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 473
    .local v1, certificates:[Ljava/security/cert/X509Certificate;
    if-eqz v1, :cond_0

    .line 477
    instance-of v7, v4, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;

    if-eqz v7, :cond_2

    move-object v6, v4

    .line 478
    check-cast v6, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;

    .line 479
    .local v6, rsaKey:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;
    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;->getOpenSSLKey()Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    move-result-object v3

    .line 480
    .local v3, key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;
    iget v7, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->getPkeyContext()I

    move-result v8

    invoke-static {v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_use_OpenSSL_PrivateKey(II)V

    .line 492
    .end local v3           #key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;
    .end local v6           #rsaKey:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;
    :goto_1
    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->encodeCertificates([Ljava/security/cert/Certificate;)[[B

    move-result-object v0

    .line 493
    .local v0, certificateBytes:[[B
    iget v7, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    invoke-static {v7, v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_use_certificate(I[[B)V

    .line 497
    iget v7, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    invoke-static {v7}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_check_private_key(I)V

    goto :goto_0

    .line 481
    .end local v0           #certificateBytes:[[B
    :cond_2
    instance-of v7, v4, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;

    if-eqz v7, :cond_3

    move-object v2, v4

    .line 482
    check-cast v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;

    .line 483
    .local v2, dsaKey:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;
    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;->getOpenSSLKey()Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    move-result-object v3

    .line 484
    .restart local v3       #key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;
    iget v7, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->getPkeyContext()I

    move-result v8

    invoke-static {v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_use_OpenSSL_PrivateKey(II)V

    goto :goto_1

    .line 485
    .end local v2           #dsaKey:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;
    .end local v3           #key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;
    :cond_3
    const-string v7, "PKCS#8"

    invoke-interface {v4}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 486
    invoke-interface {v4}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v5

    .line 487
    .local v5, privateKeyBytes:[B
    iget v7, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    invoke-static {v7, v5}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_use_PrivateKey(I[B)V

    goto :goto_1

    .line 489
    .end local v5           #privateKeyBytes:[B
    :cond_4
    new-instance v7, Ljavax/net/ssl/SSLException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported PrivateKey format: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v4}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v7
.end method


# virtual methods
.method public addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 727
    if-nez p1, :cond_0

    .line 728
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 730
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 731
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    .line 733
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    return-void
.end method

.method public clientCertificateRequested([B[[B)V
    .locals 5
    .parameter "keyTypeBytes"
    .parameter "asn1DerEncodedPrincipals"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 504
    array-length v3, p1

    new-array v2, v3, [Ljava/lang/String;

    .line 505
    .local v2, keyTypes:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 506
    aget-byte v3, p1, v0

    invoke-static {v3}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getClientKeyType(B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 505
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 510
    :cond_0
    if-nez p2, :cond_2

    .line 511
    const/4 v1, 0x0

    .line 518
    .local v1, issuers:[Ljavax/security/auth/x500/X500Principal;
    :cond_1
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getKeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v3

    invoke-interface {v3, v2, v1, p0}, Ljavax/net/ssl/X509KeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setCertificate(Ljava/lang/String;)V

    .line 519
    return-void

    .line 513
    .end local v1           #issuers:[Ljavax/security/auth/x500/X500Principal;
    :cond_2
    array-length v3, p2

    new-array v1, v3, [Ljavax/security/auth/x500/X500Principal;

    .line 514
    .restart local v1       #issuers:[Ljavax/security/auth/x500/X500Principal;
    const/4 v0, 0x0

    :goto_1
    array-length v3, p2

    if-ge v0, v3, :cond_1

    .line 515
    new-instance v3, Ljavax/security/auth/x500/X500Principal;

    aget-object v4, p2, v0

    invoke-direct {v3, v4}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    aput-object v3, v1, v0

    .line 514
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 878
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 879
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    if-nez v0, :cond_2

    .line 881
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    .line 883
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 884
    :try_start_1
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->free()V

    .line 886
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    if-eq v0, p0, :cond_1

    .line 887
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->autoClose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 891
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 893
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 939
    :goto_1
    return-void

    .line 889
    :cond_1
    :try_start_3
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->close()V

    goto :goto_0

    .line 891
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 895
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_2
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 897
    monitor-enter p0

    .line 900
    :try_start_6
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_interrupt(I)V

    .line 902
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 903
    :try_start_7
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 906
    :try_start_8
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    if-eqz v0, :cond_3

    .line 907
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 908
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v0, v3, p0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_shutdown(ILjava/io/FileDescriptor;Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto$SSLHandshakeCallbacks;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 924
    :cond_3
    :try_start_9
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->free()V

    .line 926
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    if-eq v0, p0, :cond_8

    .line 927
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->autoClose:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 928
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 936
    :cond_4
    :goto_2
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 937
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 938
    :try_start_b
    monitor-exit p0

    goto :goto_1

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v0

    .line 924
    :catchall_3
    move-exception v0

    :try_start_c
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->free()V

    .line 926
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    if-eq v3, p0, :cond_7

    .line 927
    iget-boolean v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->autoClose:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 928
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    .line 924
    :cond_5
    :goto_3
    throw v0

    .line 936
    :catchall_4
    move-exception v0

    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    throw v0

    .line 937
    :catchall_5
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 911
    :catch_0
    move-exception v0

    .line 924
    :try_start_f
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->free()V

    .line 926
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    if-eq v0, p0, :cond_6

    .line 927
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->autoClose:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 928
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    goto :goto_2

    .line 931
    :cond_6
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 932
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->close()V

    goto :goto_2

    .line 931
    :cond_7
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->isClosed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 932
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->close()V

    goto :goto_3

    .line 931
    :cond_8
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 932
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    goto :goto_2
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 968
    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 969
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 971
    :cond_0
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->free()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 973
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 975
    return-void

    .line 973
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getEnableSessionCreation()Z
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v0

    return v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledCipherSuites:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledProtocols:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getFileDescriptor$()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 979
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    .line 980
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 982
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    goto :goto_0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 603
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->checkOpen()V

    .line 604
    monitor-enter p0

    .line 605
    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->is:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 606
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLInputStream;

    invoke-direct {v0, p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLInputStream;-><init>(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->is:Ljava/io/InputStream;

    .line 609
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->is:Ljava/io/InputStream;

    monitor-exit p0

    return-object v0

    .line 610
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getNeedClientAuth()Z
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v0

    return v0
.end method

.method public getNpnSelectedProtocol()[B
    .locals 1

    .prologue
    .line 991
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_get_npn_negotiated_protocol(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 614
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->checkOpen()V

    .line 615
    monitor-enter p0

    .line 616
    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->os:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 617
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLOutputStream;

    invoke-direct {v0, p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLOutputStream;-><init>(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->os:Ljava/io/OutputStream;

    .line 620
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->os:Ljava/io/OutputStream;

    monitor-exit p0

    return-object v0

    .line 621
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getPeerHostName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 431
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->wrappedHost:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 432
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->wrappedHost:Ljava/lang/String;

    .line 438
    :goto_0
    return-object v1

    .line 434
    :cond_0
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 435
    .local v0, inetAddress:Ljava/net/InetAddress;
    if-eqz v0, :cond_1

    .line 436
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 438
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getPeerPort()I
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->wrappedHost:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getPort()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->wrappedPort:I

    goto :goto_0
.end method

.method public getSession()Ljavax/net/ssl/SSLSession;
    .locals 2

    .prologue
    .line 713
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    if-nez v1, :cond_0

    .line 715
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->startHandshake()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 722
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    :goto_0
    return-object v1

    .line 716
    :catch_0
    move-exception v0

    .line 719
    .local v0, e:Ljava/io/IOException;
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->getNullSession()Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-result-object v1

    goto :goto_0
.end method

.method public getSoTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 843
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readTimeoutMilliseconds:I

    return v0
.end method

.method public getSoWriteTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 864
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeTimeoutMilliseconds:I

    return v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 760
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 772
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseClientMode()Z
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method public getWantClientAuth()Z
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method public handshakeCompleted()V
    .locals 2

    .prologue
    .line 523
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeCompleted:Z

    .line 531
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    if-nez v1, :cond_0

    .line 546
    :goto_0
    return-void

    .line 537
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->resetId()V

    .line 538
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getUseClientMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getClientSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    move-result-object v0

    .line 542
    .local v0, sessionContext:Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;
    :goto_1
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->putSession(Ljavax/net/ssl/SSLSession;)V

    .line 545
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->notifyHandshakeCompletedListeners()V

    goto :goto_0

    .line 538
    .end local v0           #sessionContext:Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;
    :cond_1
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getServerSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    move-result-object v0

    goto :goto_1
.end method

.method public removeHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 738
    if-nez p1, :cond_0

    .line 739
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 741
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 742
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided listener is not registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 745
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 746
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided listener is not registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 749
    :cond_2
    return-void
.end method

.method public sendUrgentData(I)V
    .locals 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 830
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Method sendUrgentData() is not supported."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEnableSessionCreation(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 756
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setEnableSessionCreation(Z)V

    .line 757
    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 1
    .parameter "suites"

    .prologue
    .line 768
    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->checkEnabledCipherSuites([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledCipherSuites:[Ljava/lang/String;

    .line 769
    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .locals 1
    .parameter "protocols"

    .prologue
    .line 780
    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->checkEnabledProtocols([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledProtocols:[Ljava/lang/String;

    .line 781
    return-void
.end method

.method public setHandshakeTimeout(I)V
    .locals 0
    .parameter "handshakeTimeoutMilliseconds"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 872
    iput p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    .line 873
    return-void
.end method

.method public setHostname(Ljava/lang/String;)V
    .locals 0
    .parameter "hostname"

    .prologue
    .line 798
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->hostname:Ljava/lang/String;

    .line 799
    return-void
.end method

.method public setNeedClientAuth(Z)V
    .locals 1
    .parameter "need"

    .prologue
    .line 822
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setNeedClientAuth(Z)V

    .line 823
    return-void
.end method

.method public setNpnProtocols([B)V
    .locals 2
    .parameter "npnProtocols"

    .prologue
    .line 1004
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_0

    .line 1005
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "npnProtocols.length == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1007
    :cond_0
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->npnProtocols:[B

    .line 1008
    return-void
.end method

.method public setOOBInline(Z)V
    .locals 2
    .parameter "on"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 834
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Methods sendUrgentData, setOOBInline are not supported."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSoTimeout(I)V
    .locals 0
    .parameter "readTimeoutMilliseconds"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 838
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 839
    iput p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readTimeoutMilliseconds:I

    .line 840
    return-void
.end method

.method public setSoWriteTimeout(I)V
    .locals 6
    .parameter "writeTimeoutMilliseconds"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 850
    iput p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeTimeoutMilliseconds:I

    .line 852
    int-to-long v2, p1

    invoke-static {v2, v3}, Llibcore/io/StructTimeval;->fromMillis(J)Llibcore/io/StructTimeval;

    move-result-object v1

    .line 854
    .local v1, tv:Llibcore/io/StructTimeval;
    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v3

    sget v4, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v5, Llibcore/io/OsConstants;->SO_SNDTIMEO:I

    invoke-interface {v2, v3, v4, v5, v1}, Llibcore/io/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILlibcore/io/StructTimeval;)V
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 858
    return-void

    .line 855
    :catch_0
    move-exception v0

    .line 856
    .local v0, errnoException:Llibcore/io/ErrnoException;
    invoke-virtual {v0}, Llibcore/io/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v2

    throw v2
.end method

.method public setUseClientMode(Z)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 806
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    if-eqz v0, :cond_0

    .line 807
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not change the mode after the initial handshake has begun."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 810
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setUseClientMode(Z)V

    .line 811
    return-void
.end method

.method public setUseSessionTickets(Z)V
    .locals 0
    .parameter "useSessionTickets"

    .prologue
    .line 789
    iput-boolean p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->useSessionTickets:Z

    .line 790
    return-void
.end method

.method public setWantClientAuth(Z)V
    .locals 1
    .parameter "want"

    .prologue
    .line 826
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setWantClientAuth(Z)V

    .line 827
    return-void
.end method

.method public declared-synchronized startHandshake()V
    .locals 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 245
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->checkOpen()V

    .line 246
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    if-nez v2, :cond_2

    .line 247
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    .line 251
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    const/16 v30, 0x400

    .line 255
    .local v30, seedLengthInBytes:I
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getSecureRandomMember()Ljava/security/SecureRandom;

    move-result-object v29

    .line 256
    .local v29, secureRandom:Ljava/security/SecureRandom;
    if-nez v29, :cond_4

    .line 257
    const-string v2, "/dev/urandom"

    const-wide/16 v3, 0x400

    invoke-static {v2, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->RAND_load_file(Ljava/lang/String;J)I

    .line 262
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getUseClientMode()Z

    move-result v6

    .line 264
    .local v6, client:Z
    if-eqz v6, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getClientSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    move-result-object v2

    iget v0, v2, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sslCtxNativePointer:I

    move/from16 v33, v0

    .line 268
    .local v33, sslCtxNativePointer:I
    :goto_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 269
    const/16 v20, 0x1

    .line 271
    .local v20, exception:Z
    :try_start_3
    invoke-static/range {v33 .. v33}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_new(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    .line 272
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    const-string v3, "close"

    invoke-virtual {v2, v3}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->npnProtocols:[B

    if-eqz v2, :cond_0

    .line 275
    invoke-static/range {v33 .. v33}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_CTX_enable_npn(I)V

    .line 280
    :cond_0
    if-nez v6, :cond_9

    .line 281
    new-instance v25, Ljava/util/HashSet;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashSet;-><init>()V

    .line 282
    .local v25, keyTypes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledCipherSuites:[Ljava/lang/String;

    .local v14, arr$:[Ljava/lang/String;
    array-length v0, v14

    move/from16 v26, v0

    .local v26, len$:I
    const/16 v21, 0x0

    .local v21, i$:I
    :goto_2
    move/from16 v0, v21

    move/from16 v1, v26

    if-ge v0, v1, :cond_8

    aget-object v19, v14, v21

    .line 283
    .local v19, enabledCipherSuite:Ljava/lang/String;
    const-string v2, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v2

    if-eqz v2, :cond_6

    .line 282
    :cond_1
    :goto_3
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 249
    .end local v6           #client:Z
    .end local v14           #arr$:[Ljava/lang/String;
    .end local v19           #enabledCipherSuite:Ljava/lang/String;
    .end local v20           #exception:Z
    .end local v21           #i$:I
    .end local v25           #keyTypes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v26           #len$:I
    .end local v29           #secureRandom:Ljava/security/SecureRandom;
    .end local v30           #seedLengthInBytes:I
    .end local v33           #sslCtxNativePointer:I
    :cond_2
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 428
    :cond_3
    :goto_4
    monitor-exit p0

    return-void

    .line 251
    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 244
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 259
    .restart local v29       #secureRandom:Ljava/security/SecureRandom;
    .restart local v30       #seedLengthInBytes:I
    :cond_4
    const/16 v2, 0x400

    :try_start_7
    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->RAND_seed([B)V

    goto :goto_0

    .line 264
    .restart local v6       #client:Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getServerSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    move-result-object v2

    iget v0, v2, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sslCtxNativePointer:I

    move/from16 v33, v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    .line 286
    .restart local v14       #arr$:[Ljava/lang/String;
    .restart local v19       #enabledCipherSuite:Ljava/lang/String;
    .restart local v20       #exception:Z
    .restart local v21       #i$:I
    .restart local v25       #keyTypes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v26       #len$:I
    .restart local v33       #sslCtxNativePointer:I
    :cond_6
    :try_start_8
    invoke-static/range {v19 .. v19}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getByName(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getServerKeyType()Ljava/lang/String;

    move-result-object v24

    .line 287
    .local v24, keyType:Ljava/lang/String;
    if-eqz v24, :cond_1

    .line 288
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_3

    .line 419
    .end local v14           #arr$:[Ljava/lang/String;
    .end local v19           #enabledCipherSuite:Ljava/lang/String;
    .end local v21           #i$:I
    .end local v24           #keyType:Ljava/lang/String;
    .end local v25           #keyTypes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v26           #len$:I
    :catch_0
    move-exception v17

    .line 420
    .local v17, e:Ljavax/net/ssl/SSLProtocolException;
    :try_start_9
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SSL:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 421
    new-instance v2, Ljavax/net/ssl/SSLHandshakeException;

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 424
    .end local v17           #e:Ljavax/net/ssl/SSLProtocolException;
    :catchall_2
    move-exception v2

    if-eqz v20, :cond_7

    .line 425
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->close()V

    .line 424
    :cond_7
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 291
    .restart local v14       #arr$:[Ljava/lang/String;
    .restart local v21       #i$:I
    .restart local v25       #keyTypes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v26       #len$:I
    :cond_8
    :try_start_b
    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_b .. :try_end_b} :catch_0

    .line 293
    .restart local v24       #keyType:Ljava/lang/String;
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getKeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-interface {v2, v0, v3, v1}, Ljavax/net/ssl/X509KeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setCertificate(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_c .. :try_end_c} :catch_0

    goto :goto_5

    .line 296
    :catch_1
    move-exception v17

    .line 297
    .local v17, e:Ljava/security/cert/CertificateEncodingException;
    :try_start_d
    new-instance v2, Ljava/io/IOException;

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 302
    .end local v14           #arr$:[Ljava/lang/String;
    .end local v17           #e:Ljava/security/cert/CertificateEncodingException;
    .end local v21           #i$:Ljava/util/Iterator;
    .end local v24           #keyType:Ljava/lang/String;
    .end local v25           #keyTypes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v26           #len$:I
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledProtocols:[Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->setEnabledProtocols(I[Ljava/lang/String;)V

    .line 303
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledCipherSuites:[Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->setEnabledCipherSuites(I[Ljava/lang/String;)V

    .line 304
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->useSessionTickets:Z

    if-eqz v2, :cond_a

    .line 305
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    const-wide/16 v3, 0x4000

    invoke-static {v2, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_clear_options(IJ)J

    .line 307
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->hostname:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 308
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->hostname:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_set_tlsext_host_name(ILjava/lang/String;)V

    .line 311
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v18

    .line 312
    .local v18, enableSessionCreation:Z
    if-nez v18, :cond_c

    .line 313
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    move/from16 v0, v18

    invoke-static {v2, v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_set_session_creation_enabled(IZ)V

    .line 318
    :cond_c
    if-eqz v6, :cond_13

    .line 320
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getClientSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    move-result-object v16

    .line 321
    .local v16, clientSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;
    move-object/from16 v13, v16

    .line 322
    .local v13, sessionContext:Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->getCachedClientSession(Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    move-result-object v31

    .line 323
    .local v31, session:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;
    if-eqz v31, :cond_d

    .line 324
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    move-object/from16 v0, v31

    iget v3, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->sslSessionNativePointer:I

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_set_session(II)V

    .line 332
    .end local v16           #clientSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;
    .end local v31           #session:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;
    :cond_d
    :goto_6
    if-eqz v6, :cond_14

    .line 369
    :cond_e
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->getSoTimeout()I

    move-result v27

    .line 370
    .local v27, savedReadTimeoutMilliseconds:I
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->getSoWriteTimeout()I

    move-result v28

    .line 371
    .local v28, savedWriteTimeoutMilliseconds:I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    if-ltz v2, :cond_f

    .line 372
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setSoTimeout(I)V

    .line 373
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setSoWriteTimeout(I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_d .. :try_end_d} :catch_0

    .line 378
    :cond_f
    :try_start_e
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->getSoTimeout()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->npnProtocols:[B

    move-object/from16 v4, p0

    invoke-static/range {v2 .. v7}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_do_handshake(ILjava/io/FileDescriptor;Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto$SSLHandshakeCallbacks;IZ[B)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2
    .catch Ljava/security/cert/CertificateException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_e .. :try_end_e} :catch_0

    move-result v8

    .line 385
    .local v8, sslSessionNativePointer:I
    :try_start_f
    invoke-static {v8}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_SESSION_session_id(I)[B

    move-result-object v32

    .line 386
    .local v32, sessionId:[B
    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->getSession([B)Ljavax/net/ssl/SSLSession;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    .line 387
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    if-eqz v2, :cond_17

    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->lastAccessedTime:J

    .line 389
    invoke-static {v8}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_SESSION_free(I)V

    .line 408
    :cond_10
    :goto_8
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    if-ltz v2, :cond_11

    .line 409
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setSoTimeout(I)V

    .line 410
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setSoWriteTimeout(I)V

    .line 414
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeCompleted:Z

    if-eqz v2, :cond_12

    .line 415
    invoke-direct/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->notifyHandshakeCompletedListeners()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_f .. :try_end_f} :catch_0

    .line 418
    :cond_12
    const/16 v20, 0x0

    .line 424
    if-eqz v20, :cond_3

    .line 425
    :try_start_10
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto/16 :goto_4

    .line 328
    .end local v8           #sslSessionNativePointer:I
    .end local v13           #sessionContext:Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;
    .end local v27           #savedReadTimeoutMilliseconds:I
    .end local v28           #savedWriteTimeoutMilliseconds:I
    .end local v32           #sessionId:[B
    :cond_13
    :try_start_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getServerSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    move-result-object v13

    .restart local v13       #sessionContext:Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;
    goto/16 :goto_6

    .line 338
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 339
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_set_verify(II)V

    .line 342
    const/4 v15, 0x1

    .line 353
    .local v15, certRequested:Z
    :goto_9
    if-eqz v15, :cond_e

    .line 354
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v34

    .line 355
    .local v34, trustManager:Ljavax/net/ssl/X509TrustManager;
    invoke-interface/range {v34 .. v34}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v22

    .line 356
    .local v22, issuers:[Ljava/security/cert/X509Certificate;
    if-eqz v22, :cond_e

    move-object/from16 v0, v22

    array-length v2, v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_11 .. :try_end_11} :catch_0

    if-eqz v2, :cond_e

    .line 359
    :try_start_12
    invoke-static/range {v22 .. v22}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->encodeIssuerX509Principals([Ljava/security/cert/X509Certificate;)[[B
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_12 .. :try_end_12} :catch_0

    move-result-object v23

    .line 363
    .local v23, issuersBytes:[[B
    :try_start_13
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    move-object/from16 v0, v23

    invoke-static {v2, v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_set_client_CA_list(I[[B)V

    goto/16 :goto_7

    .line 344
    .end local v15           #certRequested:Z
    .end local v22           #issuers:[Ljava/security/cert/X509Certificate;
    .end local v23           #issuersBytes:[[B
    .end local v34           #trustManager:Ljavax/net/ssl/X509TrustManager;
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getWantClientAuth()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 345
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_set_verify(II)V

    .line 347
    const/4 v15, 0x1

    .restart local v15       #certRequested:Z
    goto :goto_9

    .line 350
    .end local v15           #certRequested:Z
    :cond_16
    const/4 v15, 0x0

    .restart local v15       #certRequested:Z
    goto :goto_9

    .line 360
    .restart local v22       #issuers:[Ljava/security/cert/X509Certificate;
    .restart local v34       #trustManager:Ljavax/net/ssl/X509TrustManager;
    :catch_2
    move-exception v17

    .line 361
    .restart local v17       #e:Ljava/security/cert/CertificateEncodingException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Problem encoding principals"

    move-object/from16 v0, v17

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 380
    .end local v15           #certRequested:Z
    .end local v17           #e:Ljava/security/cert/CertificateEncodingException;
    .end local v22           #issuers:[Ljava/security/cert/X509Certificate;
    .end local v34           #trustManager:Ljavax/net/ssl/X509TrustManager;
    .restart local v27       #savedReadTimeoutMilliseconds:I
    .restart local v28       #savedWriteTimeoutMilliseconds:I
    :catch_3
    move-exception v17

    .line 381
    .local v17, e:Ljava/security/cert/CertificateException;
    new-instance v35, Ljavax/net/ssl/SSLHandshakeException;

    invoke-virtual/range {v17 .. v17}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v35

    invoke-direct {v0, v2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .line 382
    .local v35, wrapper:Ljavax/net/ssl/SSLHandshakeException;
    move-object/from16 v0, v35

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 383
    throw v35

    .line 391
    .end local v17           #e:Ljava/security/cert/CertificateException;
    .end local v35           #wrapper:Ljavax/net/ssl/SSLHandshakeException;
    .restart local v8       #sslSessionNativePointer:I
    .restart local v32       #sessionId:[B
    :cond_17
    if-nez v18, :cond_18

    .line 393
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "SSL Session may not be created"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 395
    :cond_18
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    invoke-static {v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_get_certificate(I)[[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->createCertChain([[B)[Ljava/security/cert/X509Certificate;

    move-result-object v9

    .line 397
    .local v9, localCertificates:[Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    invoke-static {v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_get_peer_cert_chain(I)[[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->createCertChain([[B)[Ljava/security/cert/X509Certificate;

    move-result-object v10

    .line 399
    .local v10, peerCertificates:[Ljava/security/cert/X509Certificate;
    new-instance v7, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->getPeerHostName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->getPeerPort()I

    move-result v12

    invoke-direct/range {v7 .. v13}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;-><init>(I[Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;Ljava/lang/String;ILorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    .line 402
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeCompleted:Z

    if-eqz v2, :cond_10

    .line 403
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    invoke-virtual {v13, v2}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->putSession(Ljavax/net/ssl/SSLSession;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_13 .. :try_end_13} :catch_0

    goto/16 :goto_8
.end method

.method public verifyCertificateChain([[BLjava/lang/String;)V
    .locals 10
    .parameter "bytes"
    .parameter "authMethod"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 573
    if-eqz p1, :cond_0

    :try_start_0
    array-length v8, p1

    if-nez v8, :cond_1

    .line 574
    :cond_0
    new-instance v8, Ljavax/net/ssl/SSLException;

    const-string v9, "Peer sent no certificate"

    invoke-direct {v8, v9}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 595
    :catch_0
    move-exception v3

    .line 596
    .local v3, e:Ljava/security/cert/CertificateException;
    throw v3

    .line 576
    .end local v3           #e:Ljava/security/cert/CertificateException;
    :cond_1
    :try_start_1
    array-length v8, p1

    new-array v5, v8, [Ljava/security/cert/X509Certificate;

    .line 577
    .local v5, peerCertificateChain:[Ljava/security/cert/X509Certificate;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v8, p1

    if-ge v4, v8, :cond_2

    .line 578
    new-instance v8, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    aget-object v9, p1, v4

    invoke-direct {v8, v9}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>([B)V

    aput-object v8, v5, v4

    .line 577
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 580
    :cond_2
    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v8}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getUseClientMode()Z

    move-result v2

    .line 581
    .local v2, client:Z
    if-eqz v2, :cond_4

    .line 582
    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v8}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v7

    .line 583
    .local v7, x509tm:Ljavax/net/ssl/X509TrustManager;
    instance-of v8, v7, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;

    if-eqz v8, :cond_3

    .line 584
    move-object v0, v7

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;

    move-object v6, v0

    .line 585
    .local v6, tm:Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;
    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->wrappedHost:Ljava/lang/String;

    invoke-virtual {v6, v5, p2, v8}, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 600
    .end local v6           #tm:Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;
    .end local v7           #x509tm:Ljavax/net/ssl/X509TrustManager;
    :goto_1
    return-void

    .line 587
    .restart local v7       #x509tm:Ljavax/net/ssl/X509TrustManager;
    :cond_3
    invoke-interface {v7, v5, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 597
    .end local v2           #client:Z
    .end local v4           #i:I
    .end local v5           #peerCertificateChain:[Ljava/security/cert/X509Certificate;
    .end local v7           #x509tm:Ljavax/net/ssl/X509TrustManager;
    :catch_1
    move-exception v3

    .line 598
    .local v3, e:Ljava/lang/Exception;
    new-instance v8, Ljava/security/cert/CertificateException;

    invoke-direct {v8, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 590
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v2       #client:Z
    .restart local v4       #i:I
    .restart local v5       #peerCertificateChain:[Ljava/security/cert/X509Certificate;
    :cond_4
    const/4 v8, 0x0

    :try_start_2
    aget-object v8, v5, v8

    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v8

    invoke-interface {v8}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 591
    .local v1, authType:Ljava/lang/String;
    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v8}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v8

    invoke-interface {v8, v5, v1}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method

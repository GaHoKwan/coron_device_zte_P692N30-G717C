.class public Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;
.super Ljavax/net/ssl/SSLSocket;
.source "SSLSocketImpl.java"


# instance fields
.field private alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

.field private appDataIS:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;

.field private appDataOS:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketOutputStream;

.field private handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

.field private handshake_started:Z

.field protected input:Ljava/io/InputStream;

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

.field private logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

.field protected output:Ljava/io/OutputStream;

.field protected recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

.field private session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

.field private socket_was_closed:Z

.field protected sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

.field private final wrappedHost:Ljava/lang/String;

.field private final wrappedPort:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .locals 1
    .parameter "host"
    .parameter "port"
    .parameter "localHost"
    .parameter "localPort"
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 130
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    .line 42
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshake_started:Z

    .line 63
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->socket_was_closed:Z

    .line 78
    const-string v0, "socket"

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger;->getStream(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    .line 131
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->wrappedHost:Ljava/lang/String;

    .line 132
    iput p2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->wrappedPort:I

    .line 133
    iput-object p5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    .line 134
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->init()V

    .line 135
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .locals 1
    .parameter "host"
    .parameter "port"
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/lang/String;I)V

    .line 42
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshake_started:Z

    .line 63
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->socket_was_closed:Z

    .line 78
    const-string v0, "socket"

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger;->getStream(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    .line 108
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->wrappedHost:Ljava/lang/String;

    .line 109
    iput p2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->wrappedPort:I

    .line 110
    iput-object p3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    .line 111
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->init()V

    .line 112
    return-void
.end method

.method protected constructor <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .locals 1
    .parameter "address"
    .parameter "port"
    .parameter "localAddress"
    .parameter "localPort"
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 171
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    .line 42
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshake_started:Z

    .line 63
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->socket_was_closed:Z

    .line 78
    const-string v0, "socket"

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger;->getStream(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    .line 172
    iput-object p5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->wrappedHost:Ljava/lang/String;

    .line 174
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->wrappedPort:I

    .line 175
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->init()V

    .line 176
    return-void
.end method

.method protected constructor <init>(Ljava/net/InetAddress;ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .locals 1
    .parameter "host"
    .parameter "port"
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 149
    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/net/InetAddress;I)V

    .line 42
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshake_started:Z

    .line 63
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->socket_was_closed:Z

    .line 78
    const-string v0, "socket"

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger;->getStream(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    .line 150
    iput-object p3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->wrappedHost:Ljava/lang/String;

    .line 152
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->wrappedPort:I

    .line 153
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->init()V

    .line 154
    return-void
.end method

.method protected constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .locals 1
    .parameter "sslParameters"

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocket;-><init>()V

    .line 42
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshake_started:Z

    .line 63
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->socket_was_closed:Z

    .line 78
    const-string v0, "socket"

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger;->getStream(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    .line 89
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->wrappedHost:Ljava/lang/String;

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->wrappedPort:I

    .line 93
    return-void
.end method

.method private doHandshake()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 722
    :cond_0
    :goto_0
    :try_start_0
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->getStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v5

    .local v5, status:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    sget-object v7, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v5, v7}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 724
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v7, :cond_1

    .line 725
    sget-object v7, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v5, v7}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v3, "NEED_WRAP"

    .line 732
    .local v3, s:Ljava/lang/String;
    :goto_1
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SSLSocketImpl: HS status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 734
    .end local v3           #s:Ljava/lang/String;
    :cond_1
    sget-object v7, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v5, v7}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 735
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->output:Ljava/io/OutputStream;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v8}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->wrap()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/OutputStream;->write([B)V

    .line 773
    :cond_2
    :goto_2
    :pswitch_0
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->hasAlert()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 777
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->output:Ljava/io/OutputStream;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v8}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->wrap()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/OutputStream;->write([B)V

    .line 778
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->setProcessed()V
    :try_end_0
    .catch Lorg/apache/harmony/xnet/provider/jsse/EndOfSourceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/harmony/xnet/provider/jsse/AlertException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 781
    .end local v5           #status:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :catch_0
    move-exception v0

    .line 782
    .local v0, e:Lorg/apache/harmony/xnet/provider/jsse/EndOfSourceException;
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->appDataIS:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->setEnd()V

    .line 783
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Connection was closed"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 725
    .end local v0           #e:Lorg/apache/harmony/xnet/provider/jsse/EndOfSourceException;
    .restart local v5       #status:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :cond_3
    :try_start_1
    sget-object v7, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v5, v7}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v3, "NEED_UNWRAP"

    goto :goto_1

    :cond_4
    const-string v3, "STATUS: OTHER!"

    goto :goto_1

    .line 736
    :cond_5
    sget-object v7, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v5, v7}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 742
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->unwrap()I

    move-result v6

    .local v6, type:I
    packed-switch v6, :pswitch_data_0

    .line 762
    const/16 v7, 0xa

    new-instance v8, Ljavax/net/ssl/SSLException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected message of type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " has been got"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->reportFatalAlert(BLjavax/net/ssl/SSLException;)V
    :try_end_1
    .catch Lorg/apache/harmony/xnet/provider/jsse/EndOfSourceException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/harmony/xnet/provider/jsse/AlertException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 784
    .end local v5           #status:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v6           #type:I
    :catch_1
    move-exception v0

    .line 786
    .local v0, e:Lorg/apache/harmony/xnet/provider/jsse/AlertException;
    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;->getDescriptionCode()B

    move-result v7

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;->getReason()Ljavax/net/ssl/SSLException;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->reportFatalAlert(BLjavax/net/ssl/SSLException;)V

    .line 789
    .end local v0           #e:Lorg/apache/harmony/xnet/provider/jsse/AlertException;
    :cond_6
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->getSession()Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-result-object v7

    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    .line 790
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->listeners:Ljava/util/ArrayList;

    if-eqz v7, :cond_7

    .line 792
    new-instance v1, Ljavax/net/ssl/HandshakeCompletedEvent;

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-direct {v1, p0, v7}, Ljavax/net/ssl/HandshakeCompletedEvent;-><init>(Ljavax/net/ssl/SSLSocket;Ljavax/net/ssl/SSLSession;)V

    .line 794
    .local v1, event:Ljavax/net/ssl/HandshakeCompletedEvent;
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 795
    .local v4, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    if-ge v2, v4, :cond_7

    .line 796
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/net/ssl/HandshakeCompletedListener;

    invoke-interface {v7, v1}, Ljavax/net/ssl/HandshakeCompletedListener;->handshakeCompleted(Ljavax/net/ssl/HandshakeCompletedEvent;)V

    .line 795
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 755
    .end local v1           #event:Ljavax/net/ssl/HandshakeCompletedEvent;
    .end local v2           #i:I
    .end local v4           #size:I
    .restart local v5       #status:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .restart local v6       #type:I
    :pswitch_1
    :try_start_2
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->processAlert()V

    .line 756
    iget-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->socket_was_closed:Z

    if-eqz v7, :cond_2

    .line 800
    .end local v5           #status:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v6           #type:I
    :cond_7
    return-void

    .line 769
    .restart local v5       #status:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :cond_8
    const/16 v7, 0x50

    new-instance v8, Ljavax/net/ssl/SSLException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Handshake passed unexpected status: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->reportFatalAlert(BLjavax/net/ssl/SSLException;)V
    :try_end_2
    .catch Lorg/apache/harmony/xnet/provider/jsse/EndOfSourceException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/harmony/xnet/provider/jsse/AlertException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 742
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private processAlert()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 806
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->hasAlert()Z

    move-result v1

    if-nez v1, :cond_0

    .line 831
    :goto_0
    return-void

    .line 809
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->isFatalAlert()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 810
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->setProcessed()V

    .line 811
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fatal alert received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->getAlertDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 813
    .local v0, description:Ljava/lang/String;
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->shutdown()V

    .line 814
    new-instance v1, Ljavax/net/ssl/SSLException;

    invoke-direct {v1, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 817
    .end local v0           #description:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v1, :cond_2

    .line 818
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning alert received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->getAlertDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 821
    :cond_2
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->getDescriptionCode()B

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 828
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->setProcessed()V

    goto :goto_0

    .line 823
    :pswitch_0
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->setProcessed()V

    .line 824
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->appDataIS:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->setEnd()V

    .line 825
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->close()V

    goto :goto_0

    .line 821
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private reportFatalAlert(BLjavax/net/ssl/SSLException;)V
    .locals 2
    .parameter "description_code"
    .parameter "reason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 838
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->alert(BB)V

    .line 841
    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->output:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->wrap()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 843
    :goto_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->setProcessed()V

    .line 844
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->shutdown()V

    .line 845
    throw p2

    .line 842
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private shutdown()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 584
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshake_started:Z

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->shutdown()V

    .line 586
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    .line 587
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->shutdown()V

    .line 588
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    .line 589
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->shutdown()V

    .line 590
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    .line 592
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->socket_was_closed:Z

    .line 593
    return-void
.end method


# virtual methods
.method public addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 408
    if-nez p1, :cond_0

    .line 409
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->listeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 412
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->listeners:Ljava/util/ArrayList;

    .line 414
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    return-void
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 545
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SSLSocket.close "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->socket_was_closed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 548
    :cond_0
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->socket_was_closed:Z

    if-nez v0, :cond_2

    .line 549
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshake_started:Z

    if-eqz v0, :cond_1

    .line 550
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->alert(BB)V

    .line 553
    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->output:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->wrap()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    :goto_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->setProcessed()V

    .line 557
    :cond_1
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->shutdown()V

    .line 558
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->closeTransportLayer()V

    .line 559
    iput-boolean v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->socket_was_closed:Z

    .line 561
    :cond_2
    return-void

    .line 554
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected closeTransportLayer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->close()V

    .line 204
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->input:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 206
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 208
    :cond_0
    return-void
.end method

.method public connect(Ljava/net/SocketAddress;)V
    .locals 0
    .parameter "endpoint"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 522
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;)V

    .line 523
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->init()V

    .line 524
    return-void
.end method

.method public connect(Ljava/net/SocketAddress;I)V
    .locals 0
    .parameter "endpoint"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 534
    invoke-super {p0, p1, p2}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;I)V

    .line 535
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->init()V

    .line 536
    return-void
.end method

.method public getEnableSessionCreation()Z
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v0

    return v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 496
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->socket_was_closed:Z

    if-eqz v0, :cond_0

    .line 497
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Socket has already been closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 499
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->appDataIS:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;

    return-object v0
.end method

.method public getNeedClientAuth()Z
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v0

    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 509
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->socket_was_closed:Z

    if-eqz v0, :cond_0

    .line 510
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Socket has already been closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 512
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->appDataOS:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketOutputStream;

    return-object v0
.end method

.method getPeerHostName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 219
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->wrappedHost:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->wrappedHost:Ljava/lang/String;

    .line 226
    :goto_0
    return-object v1

    .line 222
    :cond_0
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 223
    .local v0, inetAddress:Ljava/net/InetAddress;
    if-eqz v0, :cond_1

    .line 224
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 226
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getPeerPort()I
    .locals 2

    .prologue
    .line 230
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->wrappedPort:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getPort()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->wrappedPort:I

    goto :goto_0
.end method

.method public getSession()Ljavax/net/ssl/SSLSession;
    .locals 2

    .prologue
    .line 388
    iget-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshake_started:Z

    if-nez v1, :cond_0

    .line 390
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->startHandshake()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    :goto_0
    return-object v1

    .line 391
    :catch_0
    move-exception v0

    .line 394
    .local v0, e:Ljava/io/IOException;
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->getNullSession()Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-result-object v1

    goto :goto_0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getSupportedCipherSuiteNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->supportedProtocols:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getUseClientMode()Z
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method public getWantClientAuth()Z
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method getWrappedHostName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->wrappedHost:Ljava/lang/String;

    return-object v0
.end method

.method getWrappedPort()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->wrappedPort:I

    return v0
.end method

.method protected init()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->appDataIS:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;

    if-eqz v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->initTransportLayer()V

    .line 187
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;

    invoke-direct {v0, p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;-><init>(Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->appDataIS:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;

    .line 188
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketOutputStream;

    invoke-direct {v0, p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketOutputStream;-><init>(Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->appDataOS:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketOutputStream;

    goto :goto_0
.end method

.method protected initTransportLayer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->input:Ljava/io/InputStream;

    .line 196
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->output:Ljava/io/OutputStream;

    .line 197
    return-void
.end method

.method protected needAppData()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 602
    iget-boolean v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshake_started:Z

    if-nez v2, :cond_0

    .line 603
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->startHandshake()V

    .line 606
    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v2, :cond_1

    .line 607
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v3, "SSLSocket.needAppData.."

    invoke-virtual {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 610
    :cond_1
    :try_start_0
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->appDataIS:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->available()I

    move-result v2

    if-nez v2, :cond_5

    .line 615
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->unwrap()I

    move-result v1

    .local v1, type:I
    packed-switch v1, :pswitch_data_0

    .line 639
    const/16 v2, 0xa

    new-instance v3, Ljavax/net/ssl/SSLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected message of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has been got"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->reportFatalAlert(BLjavax/net/ssl/SSLException;)V

    .line 643
    :cond_2
    :goto_0
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->hasAlert()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 647
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->output:Ljava/io/OutputStream;

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->wrap()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 648
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->setProcessed()V

    .line 650
    :cond_3
    iget-boolean v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->socket_was_closed:Z

    if-eqz v2, :cond_1

    .line 651
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->appDataIS:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->setEnd()V

    .line 666
    .end local v1           #type:I
    :cond_4
    :goto_1
    return-void

    .line 617
    .restart local v1       #type:I
    :pswitch_0
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->getStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v2

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v2, v3}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 622
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->doHandshake()V
    :try_end_0
    .catch Lorg/apache/harmony/xnet/provider/jsse/AlertException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/harmony/xnet/provider/jsse/EndOfSourceException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 655
    .end local v1           #type:I
    :catch_0
    move-exception v0

    .line 657
    .local v0, e:Lorg/apache/harmony/xnet/provider/jsse/AlertException;
    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;->getDescriptionCode()B

    move-result v2

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;->getReason()Ljavax/net/ssl/SSLException;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->reportFatalAlert(BLjavax/net/ssl/SSLException;)V

    .line 662
    .end local v0           #e:Lorg/apache/harmony/xnet/provider/jsse/AlertException;
    :cond_5
    :goto_2
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v2, :cond_4

    .line 663
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SSLSocket.needAppData: app data len: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->appDataIS:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;

    invoke-virtual {v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->available()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 626
    .restart local v1       #type:I
    :pswitch_1
    :try_start_1
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->processAlert()V

    .line 627
    iget-boolean v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->socket_was_closed:Z

    if-eqz v2, :cond_2

    goto :goto_1

    .line 632
    :pswitch_2
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v2, :cond_2

    .line 633
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v3, "SSLSocket.needAppData: got the data"

    invoke-virtual {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/apache/harmony/xnet/provider/jsse/AlertException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/harmony/xnet/provider/jsse/EndOfSourceException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 658
    .end local v1           #type:I
    :catch_1
    move-exception v0

    .line 660
    .local v0, e:Lorg/apache/harmony/xnet/provider/jsse/EndOfSourceException;
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->appDataIS:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->setEnd()V

    goto :goto_2

    .line 615
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public removeHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 425
    if-nez p1, :cond_0

    .line 426
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->listeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 429
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided listener is not registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 432
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 433
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided listener is not registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
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
    .line 568
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Method sendUrgentData() is not supported."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEnableSessionCreation(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 366
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setEnableSessionCreation(Z)V

    .line 367
    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 1
    .parameter "suites"

    .prologue
    .line 262
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .locals 1
    .parameter "protocols"

    .prologue
    .line 292
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setEnabledProtocols([Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public setNeedClientAuth(Z)V
    .locals 1
    .parameter "need"

    .prologue
    .line 326
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setNeedClientAuth(Z)V

    .line 327
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
    .line 577
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Methods sendUrgentData, setOOBInline are not supported."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUseClientMode(Z)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 302
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshake_started:Z

    if-eqz v0, :cond_0

    .line 303
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not change the mode after the initial handshake has begun."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setUseClientMode(Z)V

    .line 307
    return-void
.end method

.method public setWantClientAuth(Z)V
    .locals 1
    .parameter "want"

    .prologue
    .line 346
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setWantClientAuth(Z)V

    .line 347
    return-void
.end method

.method public startHandshake()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 449
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->appDataIS:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;

    if-nez v0, :cond_0

    .line 450
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Socket is not connected."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 452
    :cond_0
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->socket_was_closed:Z

    if-eqz v0, :cond_1

    .line 453
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Socket has already been closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 456
    :cond_1
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshake_started:Z

    if-nez v0, :cond_3

    .line 457
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshake_started:Z

    .line 458
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getUseClientMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 459
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v0, :cond_2

    .line 460
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v1, "SSLSocketImpl: CLIENT"

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 462
    :cond_2
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;

    invoke-direct {v0, p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    .line 470
    :goto_0
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-direct {v0}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    .line 471
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    new-instance v3, Lorg/apache/harmony/xnet/provider/jsse/SSLStreamedInput;

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->input:Ljava/io/InputStream;

    invoke-direct {v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLStreamedInput;-><init>(Ljava/io/InputStream;)V

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->appDataIS:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;

    iget-object v4, v4, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->dataPoint:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream$Adapter;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;Lorg/apache/harmony/xnet/provider/jsse/Appendable;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    .line 476
    :cond_3
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v0, :cond_4

    .line 477
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v1, "SSLSocketImpl.startHandshake"

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 480
    :cond_4
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->start()V

    .line 482
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->doHandshake()V

    .line 484
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v0, :cond_5

    .line 485
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v1, "SSLSocketImpl.startHandshake: END"

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 487
    :cond_5
    return-void

    .line 464
    :cond_6
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v0, :cond_7

    .line 465
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v1, "SSLSocketImpl: SERVER"

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 467
    :cond_7
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;

    invoke-direct {v0, p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    goto :goto_0
.end method

.method protected writeAppData([BII)V
    .locals 6
    .parameter "data"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x4000

    .line 673
    iget-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshake_started:Z

    if-nez v1, :cond_0

    .line 674
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->startHandshake()V

    .line 676
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v1, :cond_1

    .line 677
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SSLSocket.writeAppData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 682
    :cond_1
    if-ge p3, v5, :cond_3

    .line 683
    :try_start_0
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->output:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    const/16 v3, 0x17

    invoke-virtual {v2, v3, p1, p2, p3}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->wrap(B[BII)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 703
    :cond_2
    :goto_0
    return-void

    .line 686
    :cond_3
    :goto_1
    if-lt p3, v5, :cond_4

    .line 687
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->output:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    const/16 v3, 0x17

    const/16 v4, 0x4000

    invoke-virtual {v2, v3, p1, p2, v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->wrap(B[BII)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 690
    add-int/lit16 p2, p2, 0x4000

    .line 691
    add-int/lit16 p3, p3, -0x4000

    goto :goto_1

    .line 693
    :cond_4
    if-lez p3, :cond_2

    .line 694
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->output:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    const/16 v3, 0x17

    invoke-virtual {v2, v3, p1, p2, p3}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->wrap(B[BII)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Lorg/apache/harmony/xnet/provider/jsse/AlertException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 699
    :catch_0
    move-exception v0

    .line 701
    .local v0, e:Lorg/apache/harmony/xnet/provider/jsse/AlertException;
    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;->getDescriptionCode()B

    move-result v1

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;->getReason()Ljavax/net/ssl/SSLException;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->reportFatalAlert(BLjavax/net/ssl/SSLException;)V

    goto :goto_0
.end method

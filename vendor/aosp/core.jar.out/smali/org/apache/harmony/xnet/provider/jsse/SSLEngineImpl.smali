.class public Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;
.super Ljavax/net/ssl/SSLEngine;
.source "SSLEngineImpl.java"


# instance fields
.field private alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

.field private appData:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineAppData;

.field private close_notify_was_received:Z

.field private close_notify_was_sent:Z

.field private dataStream:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;

.field private engine_was_closed:Z

.field private engine_was_shutteddown:Z

.field private handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

.field private handshake_started:Z

.field private isInboundDone:Z

.field private isOutboundDone:Z

.field private logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

.field private peer_mode_was_set:Z

.field private recProtIS:Lorg/apache/harmony/xnet/provider/jsse/SSLBufferedInput;

.field protected recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

.field private remaining_hsh_data:[B

.field private remaining_wrapped_data:[B

.field private session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

.field protected sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;


# direct methods
.method protected constructor <init>(Ljava/lang/String;ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .locals 2
    .parameter "host"
    .parameter "port"
    .parameter "sslParameters"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLEngine;-><init>(Ljava/lang/String;I)V

    .line 38
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->peer_mode_was_set:Z

    .line 40
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshake_started:Z

    .line 42
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isInboundDone:Z

    .line 44
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isOutboundDone:Z

    .line 46
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->close_notify_was_sent:Z

    .line 48
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->close_notify_was_received:Z

    .line 51
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_closed:Z

    .line 54
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_shutteddown:Z

    .line 67
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;

    invoke-direct {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->dataStream:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;

    .line 77
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_wrapped_data:[B

    .line 78
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_hsh_data:[B

    .line 81
    const-string v0, "engine"

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger;->getStream(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    .line 89
    iput-object p3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    .line 90
    return-void
.end method

.method protected constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .locals 2
    .parameter "sslParameters"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Ljavax/net/ssl/SSLEngine;-><init>()V

    .line 38
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->peer_mode_was_set:Z

    .line 40
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshake_started:Z

    .line 42
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isInboundDone:Z

    .line 44
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isOutboundDone:Z

    .line 46
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->close_notify_was_sent:Z

    .line 48
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->close_notify_was_received:Z

    .line 51
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_closed:Z

    .line 54
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_shutteddown:Z

    .line 67
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;

    invoke-direct {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->dataStream:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;

    .line 77
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_wrapped_data:[B

    .line 78
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_hsh_data:[B

    .line 81
    const-string v0, "engine"

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger;->getStream(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    .line 84
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    .line 85
    return-void
.end method

.method private getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;
    .locals 1

    .prologue
    .line 750
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_closed:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    goto :goto_0
.end method

.method private shutdown()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 734
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_closed:Z

    .line 735
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_shutteddown:Z

    .line 736
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isOutboundDone:Z

    .line 737
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isInboundDone:Z

    .line 738
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshake_started:Z

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->shutdown()V

    .line 740
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    .line 741
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->shutdown()V

    .line 742
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    .line 743
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->shutdown()V

    .line 744
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    .line 746
    :cond_0
    return-void
.end method


# virtual methods
.method public beginHandshake()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 100
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_closed:Z

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "Engine has already been closed."

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->peer_mode_was_set:Z

    if-nez v0, :cond_1

    .line 104
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client/Server mode was not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_1
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshake_started:Z

    if-nez v0, :cond_2

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshake_started:Z

    .line 108
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getUseClientMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 109
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;

    invoke-direct {v0, p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    .line 113
    :goto_0
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineAppData;

    invoke-direct {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineAppData;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->appData:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineAppData;

    .line 114
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-direct {v0}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    .line 115
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLBufferedInput;

    invoke-direct {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLBufferedInput;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recProtIS:Lorg/apache/harmony/xnet/provider/jsse/SSLBufferedInput;

    .line 116
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recProtIS:Lorg/apache/harmony/xnet/provider/jsse/SSLBufferedInput;

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->appData:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineAppData;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;Lorg/apache/harmony/xnet/provider/jsse/Appendable;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    .line 119
    :cond_2
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->start()V

    .line 120
    return-void

    .line 111
    :cond_3
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;

    invoke-direct {v0, p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    goto :goto_0
.end method

.method public closeInbound()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 130
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeInbound() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isInboundDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 133
    :cond_0
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isInboundDone:Z

    if-eqz v0, :cond_2

    .line 152
    :cond_1
    :goto_0
    return-void

    .line 136
    :cond_2
    iput-boolean v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isInboundDone:Z

    .line 137
    iput-boolean v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_closed:Z

    .line 138
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshake_started:Z

    if-eqz v0, :cond_4

    .line 139
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->close_notify_was_received:Z

    if-nez v0, :cond_1

    .line 140
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    if-eqz v0, :cond_3

    .line 141
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->invalidate()V

    .line 143
    :cond_3
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    const/4 v1, 0x2

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->alert(BB)V

    .line 145
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "Inbound is closed before close_notify alert has been received."

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_4
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->shutdown()V

    goto :goto_0
.end method

.method public closeOutbound()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 161
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeOutbound() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isOutboundDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 164
    :cond_0
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isOutboundDone:Z

    if-eqz v0, :cond_1

    .line 178
    :goto_0
    return-void

    .line 167
    :cond_1
    iput-boolean v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isOutboundDone:Z

    .line 168
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshake_started:Z

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->alert(BB)V

    .line 172
    iput-boolean v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->close_notify_was_sent:Z

    .line 177
    :goto_1
    iput-boolean v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_closed:Z

    goto :goto_0

    .line 175
    :cond_2
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->shutdown()V

    goto :goto_1
.end method

.method public getDelegatedTask()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->getTask()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public getEnableSessionCreation()Z
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v0

    return v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 1

    .prologue
    .line 348
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshake_started:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_shutteddown:Z

    if-eqz v0, :cond_1

    .line 350
    :cond_0
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 360
    :goto_0
    return-object v0

    .line 352
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->hasAlert()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 354
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_0

    .line 356
    :cond_2
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->close_notify_was_sent:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->close_notify_was_received:Z

    if-nez v0, :cond_3

    .line 358
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_0

    .line 360
    :cond_3
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->getStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public getNeedClientAuth()Z
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v0

    return v0
.end method

.method public getSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    .line 373
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->getNullSession()Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-result-object v0

    goto :goto_0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getSupportedCipherSuiteNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->supportedProtocols:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getUseClientMode()Z
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method public getWantClientAuth()Z
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method public isInboundDone()Z
    .locals 1

    .prologue
    .line 383
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isInboundDone:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_closed:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOutboundDone()Z
    .locals 1

    .prologue
    .line 393
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isOutboundDone:Z

    return v0
.end method

.method public setEnableSessionCreation(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 326
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setEnableSessionCreation(Z)V

    .line 327
    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 1
    .parameter "suites"

    .prologue
    .line 221
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .locals 1
    .parameter "protocols"

    .prologue
    .line 251
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setEnabledProtocols([Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method public setNeedClientAuth(Z)V
    .locals 1
    .parameter "need"

    .prologue
    .line 286
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setNeedClientAuth(Z)V

    .line 287
    return-void
.end method

.method public setUseClientMode(Z)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 261
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshake_started:Z

    if-eqz v0, :cond_0

    .line 262
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not change the mode after the initial handshake has begun."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setUseClientMode(Z)V

    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->peer_mode_was_set:Z

    .line 267
    return-void
.end method

.method public setWantClientAuth(Z)V
    .locals 1
    .parameter "want"

    .prologue
    .line 306
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setWantClientAuth(Z)V

    .line 307
    return-void
.end method

.method public unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
    .locals 11
    .parameter "src"
    .parameter "dsts"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 410
    iget-boolean v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_shutteddown:Z

    if-eqz v6, :cond_0

    .line 411
    new-instance v6, Ljavax/net/ssl/SSLEngineResult;

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v8, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    .line 532
    :goto_0
    return-object v6

    .line 414
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 415
    :cond_1
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Some of the input parameters are null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 419
    :cond_2
    iget-boolean v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshake_started:Z

    if-nez v6, :cond_3

    .line 420
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->beginHandshake()V

    .line 423
    :cond_3
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    .line 426
    .local v3, handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_closed:Z

    if-eqz v6, :cond_6

    :cond_4
    sget-object v6, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v3, v6}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v3, v6}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 431
    :cond_5
    new-instance v6, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v6, v7, v3, v8, v9}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto :goto_0

    .line 435
    :cond_6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->getMinRecordSize()I

    move-result v7

    if-ge v6, v7, :cond_7

    .line 436
    new-instance v6, Ljavax/net/ssl/SSLEngineResult;

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto :goto_0

    .line 442
    :cond_7
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 444
    const/4 v0, 0x0

    .line 445
    .local v0, capacity:I
    move v4, p3

    .local v4, i:I
    :goto_1
    add-int v6, p3, p4

    if-ge v4, v6, :cond_b

    .line 446
    aget-object v6, p2, v4

    if-nez v6, :cond_8

    .line 447
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Some of the input parameters are null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/harmony/xnet/provider/jsse/AlertException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 529
    .end local v0           #capacity:I
    .end local v4           #i:I
    :catch_0
    move-exception v2

    .line 531
    .local v2, e:Ljava/nio/BufferUnderflowException;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 532
    new-instance v6, Ljavax/net/ssl/SSLEngineResult;

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto :goto_0

    .line 450
    .end local v2           #e:Ljava/nio/BufferUnderflowException;
    .restart local v0       #capacity:I
    .restart local v4       #i:I
    :cond_8
    :try_start_1
    aget-object v6, p2, v4

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 451
    new-instance v6, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v6}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v6
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/harmony/xnet/provider/jsse/AlertException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 534
    .end local v0           #capacity:I
    .end local v4           #i:I
    :catch_1
    move-exception v2

    .line 536
    .local v2, e:Lorg/apache/harmony/xnet/provider/jsse/AlertException;
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    const/4 v7, 0x2

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;->getDescriptionCode()B

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->alert(BB)V

    .line 537
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_closed:Z

    .line 538
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 539
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    if-eqz v6, :cond_9

    .line 540
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->invalidate()V

    .line 544
    :cond_9
    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;->getReason()Ljavax/net/ssl/SSLException;

    move-result-object v6

    throw v6

    .line 453
    .end local v2           #e:Lorg/apache/harmony/xnet/provider/jsse/AlertException;
    .restart local v0       #capacity:I
    .restart local v4       #i:I
    :cond_a
    :try_start_2
    aget-object v6, p2, v4

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    add-int/2addr v0, v6

    .line 445
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 455
    :cond_b
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->getDataSize(I)I

    move-result v6

    if-ge v0, v6, :cond_c

    .line 456
    new-instance v6, Ljavax/net/ssl/SSLEngineResult;

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_2
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/harmony/xnet/provider/jsse/AlertException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    .line 545
    .end local v0           #capacity:I
    .end local v4           #i:I
    :catch_2
    move-exception v2

    .line 546
    .local v2, e:Ljavax/net/ssl/SSLException;
    throw v2

    .line 460
    .end local v2           #e:Ljavax/net/ssl/SSLException;
    .restart local v0       #capacity:I
    .restart local v4       #i:I
    :cond_c
    :try_start_3
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recProtIS:Lorg/apache/harmony/xnet/provider/jsse/SSLBufferedInput;

    invoke-virtual {v6, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLBufferedInput;->setSourceBuffer(Ljava/nio/ByteBuffer;)V

    .line 464
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->unwrap()I

    move-result v5

    .line 466
    .local v5, type:I
    packed-switch v5, :pswitch_data_0

    .line 524
    :cond_d
    :goto_2
    :pswitch_0
    new-instance v6, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v7

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recProtIS:Lorg/apache/harmony/xnet/provider/jsse/SSLBufferedInput;

    invoke-virtual {v9}, Lorg/apache/harmony/xnet/provider/jsse/SSLBufferedInput;->consumed()I

    move-result v9

    iget-object v10, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->appData:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineAppData;

    invoke-virtual {v10, p2, p3, p4}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineAppData;->placeTo([Ljava/nio/ByteBuffer;II)I

    move-result v10

    invoke-direct {v6, v7, v8, v9, v10}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_3
    .catch Ljava/nio/BufferUnderflowException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/harmony/xnet/provider/jsse/AlertException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 547
    .end local v0           #capacity:I
    .end local v4           #i:I
    .end local v5           #type:I
    :catch_3
    move-exception v2

    .line 548
    .local v2, e:Ljava/io/IOException;
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    const/4 v7, 0x2

    const/16 v8, 0x50

    invoke-virtual {v6, v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->alert(BB)V

    .line 550
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_closed:Z

    .line 553
    new-instance v6, Ljavax/net/ssl/SSLException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 469
    .end local v2           #e:Ljava/io/IOException;
    .restart local v0       #capacity:I
    .restart local v4       #i:I
    .restart local v5       #type:I
    :pswitch_1
    :try_start_4
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->getStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v6, v7}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 471
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->getSession()Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    goto :goto_2

    .line 477
    :pswitch_2
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->isFatalAlert()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 478
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->setProcessed()V

    .line 479
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    if-eqz v6, :cond_e

    .line 480
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->invalidate()V

    .line 482
    :cond_e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fatal alert received "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->getAlertDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 484
    .local v1, description:Ljava/lang/String;
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->shutdown()V

    .line 485
    new-instance v6, Ljavax/net/ssl/SSLException;

    invoke-direct {v6, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 487
    .end local v1           #description:Ljava/lang/String;
    :cond_f
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v6, :cond_10

    .line 488
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Warning allert has been received: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v8}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->getAlertDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 491
    :cond_10
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->getDescriptionCode()B

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 519
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->setProcessed()V

    goto/16 :goto_2

    .line 493
    :sswitch_0
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->setProcessed()V

    .line 494
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->close_notify_was_received:Z

    .line 495
    iget-boolean v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->close_notify_was_sent:Z

    if-nez v6, :cond_11

    .line 496
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->closeOutbound()V

    .line 497
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->closeInbound()V

    goto/16 :goto_2

    .line 499
    :cond_11
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->closeInbound()V

    .line 500
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->shutdown()V

    goto/16 :goto_2

    .line 504
    :sswitch_1
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->setProcessed()V

    .line 505
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    if-nez v6, :cond_12

    .line 508
    new-instance v6, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    const/16 v7, 0x28

    new-instance v8, Ljavax/net/ssl/SSLHandshakeException;

    const-string v9, "Received no_renegotiation during the initial handshake"

    invoke-direct {v8, v9}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v6

    .line 515
    :cond_12
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->stop()V
    :try_end_4
    .catch Ljava/nio/BufferUnderflowException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/apache/harmony/xnet/provider/jsse/AlertException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_2

    .line 466
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 491
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch
.end method

.method public wrap([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 11
    .parameter "srcs"
    .parameter "offset"
    .parameter "len"
    .parameter "dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 575
    iget-boolean v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_shutteddown:Z

    if-eqz v5, :cond_0

    .line 576
    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v5, v6, v7, v9, v9}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    .line 716
    :goto_0
    return-object v5

    .line 579
    :cond_0
    if-eqz p1, :cond_1

    if-nez p4, :cond_2

    .line 580
    :cond_1
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Some of the input parameters are null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 583
    :cond_2
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 584
    new-instance v5, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v5}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v5

    .line 587
    :cond_3
    iget-boolean v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshake_started:Z

    if-nez v5, :cond_4

    .line 588
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->beginHandshake()V

    .line 591
    :cond_4
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    .line 594
    .local v3, handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_closed:Z

    if-eqz v5, :cond_7

    :cond_5
    sget-object v5, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v3, v5}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v3, v5}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 599
    :cond_6
    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v6

    invoke-direct {v5, v6, v3, v9, v9}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto :goto_0

    .line 603
    :cond_7
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 604
    .local v1, capacity:I
    const/4 v4, 0x0

    .line 606
    .local v4, produced:I
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->hasAlert()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 608
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    invoke-virtual {v5, v10}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->getRecordSize(I)I

    move-result v5

    if-ge v1, v5, :cond_8

    .line 609
    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct {v5, v6, v3, v9, v9}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto :goto_0

    .line 613
    :cond_8
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->wrap()[B

    move-result-object v0

    .line 615
    .local v0, alert_data:[B
    invoke-virtual {p4, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 616
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->isFatalAlert()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 617
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->setProcessed()V

    .line 618
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    if-eqz v5, :cond_9

    .line 619
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->invalidate()V

    .line 622
    :cond_9
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->shutdown()V

    .line 623
    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    array-length v8, v0

    invoke-direct {v5, v6, v7, v9, v8}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto/16 :goto_0

    .line 628
    :cond_a
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->setProcessed()V

    .line 630
    iget-boolean v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->close_notify_was_sent:Z

    if-eqz v5, :cond_b

    iget-boolean v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->close_notify_was_received:Z

    if-eqz v5, :cond_b

    .line 631
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->shutdown()V

    .line 632
    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    array-length v8, v0

    invoke-direct {v5, v6, v7, v9, v8}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto/16 :goto_0

    .line 636
    :cond_b
    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v6

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v7

    array-length v8, v0

    invoke-direct {v5, v6, v7, v9, v8}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto/16 :goto_0

    .line 643
    .end local v0           #alert_data:[B
    :cond_c
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->getMinRecordSize()I

    move-result v5

    if-ge v1, v5, :cond_e

    .line 644
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v5, :cond_d

    .line 645
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Capacity of the destination("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") < MIN_PACKET_SIZE("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->getMinRecordSize()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 649
    :cond_d
    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct {v5, v6, v3, v9, v9}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto/16 :goto_0

    .line 654
    :cond_e
    :try_start_0
    sget-object v5, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v3, v5}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    .line 657
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->dataStream:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;

    invoke-virtual {v5, p1, p2, p3}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;->setSourceBuffers([Ljava/nio/ByteBuffer;II)V

    .line 658
    const/16 v5, 0x4805

    if-ge v1, v5, :cond_11

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->dataStream:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;->available()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->getRecordSize(I)I

    move-result v5

    if-ge v1, v5, :cond_11

    .line 661
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v5, :cond_f

    .line 662
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The destination buffer("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") can not take the resulting packet("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->dataStream:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;

    invoke-virtual {v8}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;->available()I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->getRecordSize(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 667
    :cond_f
    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v5, v6, v3, v7, v8}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_0
    .catch Lorg/apache/harmony/xnet/provider/jsse/AlertException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 719
    :catch_0
    move-exception v2

    .line 721
    .local v2, e:Lorg/apache/harmony/xnet/provider/jsse/AlertException;
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;->getDescriptionCode()B

    move-result v6

    invoke-virtual {v5, v10, v6}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->alert(BB)V

    .line 722
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_closed:Z

    .line 723
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    if-eqz v5, :cond_10

    .line 724
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->invalidate()V

    .line 728
    :cond_10
    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;->getReason()Ljavax/net/ssl/SSLException;

    move-result-object v5

    throw v5

    .line 671
    .end local v2           #e:Lorg/apache/harmony/xnet/provider/jsse/AlertException;
    :cond_11
    :try_start_1
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_wrapped_data:[B

    if-nez v5, :cond_12

    .line 672
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    const/16 v6, 0x17

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->dataStream:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;

    invoke-virtual {v5, v6, v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->wrap(BLorg/apache/harmony/xnet/provider/jsse/DataStream;)[B

    move-result-object v5

    iput-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_wrapped_data:[B

    .line 676
    :cond_12
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_wrapped_data:[B

    array-length v5, v5

    if-ge v1, v5, :cond_13

    .line 682
    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->dataStream:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;->consumed()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct {v5, v6, v3, v7, v8}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto/16 :goto_0

    .line 686
    :cond_13
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_wrapped_data:[B

    invoke-virtual {p4, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 687
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_wrapped_data:[B

    array-length v4, v5

    .line 688
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_wrapped_data:[B

    .line 689
    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->dataStream:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;->consumed()I

    move-result v7

    invoke-direct {v5, v6, v3, v7, v4}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto/16 :goto_0

    .line 693
    :cond_14
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_hsh_data:[B

    if-nez v5, :cond_15

    .line 694
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->wrap()[B

    move-result-object v5

    iput-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_hsh_data:[B

    .line 696
    :cond_15
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_hsh_data:[B

    array-length v5, v5

    if-ge v1, v5, :cond_16

    .line 702
    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v5, v6, v3, v7, v8}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto/16 :goto_0

    .line 706
    :cond_16
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_hsh_data:[B

    invoke-virtual {p4, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 707
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_hsh_data:[B

    array-length v4, v5

    .line 708
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_hsh_data:[B

    .line 710
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->getStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    .line 711
    sget-object v5, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v3, v5}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 713
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->getSession()Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    .line 716
    :cond_17
    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v6

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8, v4}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_1
    .catch Lorg/apache/harmony/xnet/provider/jsse/AlertException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

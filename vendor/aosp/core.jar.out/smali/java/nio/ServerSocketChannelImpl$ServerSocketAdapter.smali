.class Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;
.super Ljava/net/ServerSocket;
.source "ServerSocketChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/ServerSocketChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServerSocketAdapter"
.end annotation


# instance fields
.field private final channelImpl:Ljava/nio/ServerSocketChannelImpl;


# direct methods
.method constructor <init>(Ljava/nio/ServerSocketChannelImpl;)V
    .locals 0
    .parameter "aChannelImpl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/net/ServerSocket;-><init>()V

    .line 120
    iput-object p1, p0, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->channelImpl:Ljava/nio/ServerSocketChannelImpl;

    .line 121
    return-void
.end method


# virtual methods
.method public accept()Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v1, p0, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->channelImpl:Ljava/nio/ServerSocketChannelImpl;

    #getter for: Ljava/nio/ServerSocketChannelImpl;->isBound:Z
    invoke-static {v1}, Ljava/nio/ServerSocketChannelImpl;->access$000(Ljava/nio/ServerSocketChannelImpl;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    new-instance v1, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v1}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v1

    .line 132
    :cond_0
    iget-object v1, p0, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->channelImpl:Ljava/nio/ServerSocketChannelImpl;

    invoke-virtual {v1}, Ljava/nio/ServerSocketChannelImpl;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    .line 133
    .local v0, sc:Ljava/nio/channels/SocketChannel;
    if-nez v0, :cond_1

    .line 134
    new-instance v1, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v1}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v1

    .line 136
    :cond_1
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    return-object v1
.end method

.method public bind(Ljava/net/SocketAddress;)V
    .locals 2
    .parameter "localAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-super {p0, p1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 168
    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->channelImpl:Ljava/nio/ServerSocketChannelImpl;

    const/4 v1, 0x1

    #setter for: Ljava/nio/ServerSocketChannelImpl;->isBound:Z
    invoke-static {v0, v1}, Ljava/nio/ServerSocketChannelImpl;->access$002(Ljava/nio/ServerSocketChannelImpl;Z)Z

    .line 169
    return-void
.end method

.method public bind(Ljava/net/SocketAddress;I)V
    .locals 2
    .parameter "localAddress"
    .parameter "backlog"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-super {p0, p1, p2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V

    .line 125
    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->channelImpl:Ljava/nio/ServerSocketChannelImpl;

    const/4 v1, 0x1

    #setter for: Ljava/nio/ServerSocketChannelImpl;->isBound:Z
    invoke-static {v0, v1}, Ljava/nio/ServerSocketChannelImpl;->access$002(Ljava/nio/ServerSocketChannelImpl;Z)Z

    .line 126
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    iget-object v1, p0, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->channelImpl:Ljava/nio/ServerSocketChannelImpl;

    monitor-enter v1

    .line 173
    :try_start_0
    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->channelImpl:Ljava/nio/ServerSocketChannelImpl;

    invoke-virtual {v0}, Ljava/nio/ServerSocketChannelImpl;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->channelImpl:Ljava/nio/ServerSocketChannelImpl;

    invoke-virtual {v0}, Ljava/nio/ServerSocketChannelImpl;->close()V

    .line 178
    :goto_0
    monitor-exit v1

    .line 179
    return-void

    .line 176
    :cond_0
    invoke-super {p0}, Ljava/net/ServerSocket;->close()V

    goto :goto_0

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getChannel()Ljava/nio/channels/ServerSocketChannel;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->channelImpl:Ljava/nio/ServerSocketChannelImpl;

    return-object v0
.end method

.method public implAccept(Ljava/nio/SocketChannelImpl;)Ljava/net/Socket;
    .locals 3
    .parameter "clientSocketChannel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-virtual {p1}, Ljava/nio/SocketChannelImpl;->socket()Ljava/net/Socket;

    move-result-object v0

    .line 141
    .local v0, clientSocket:Ljava/net/Socket;
    const/4 v1, 0x0

    .line 143
    .local v1, connectOK:Z
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 144
    :try_start_1
    invoke-super {p0, v0}, Ljava/net/ServerSocket;->implAccept(Ljava/net/Socket;)V

    .line 145
    invoke-virtual {p1}, Ljava/nio/SocketChannelImpl;->setConnected()V

    .line 146
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/nio/SocketChannelImpl;->setBound(Z)V

    .line 147
    invoke-virtual {p1}, Ljava/nio/SocketChannelImpl;->finishAccept()V

    .line 148
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    const/4 v1, 0x1

    .line 151
    if-nez v1, :cond_0

    .line 152
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 155
    :cond_0
    return-object v0

    .line 148
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 151
    :catchall_1
    move-exception v2

    if-nez v1, :cond_1

    .line 152
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 151
    :cond_1
    throw v2
.end method

.method public isBound()Z
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->channelImpl:Ljava/nio/ServerSocketChannelImpl;

    #getter for: Ljava/nio/ServerSocketChannelImpl;->isBound:Z
    invoke-static {v0}, Ljava/nio/ServerSocketChannelImpl;->access$000(Ljava/nio/ServerSocketChannelImpl;)Z

    move-result v0

    return v0
.end method

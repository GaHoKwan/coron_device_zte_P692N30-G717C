.class public Lcom/mediatek/engineermode/emsvr/Client;
.super Ljava/lang/Object;
.source "Client.java"


# static fields
.field private static final EMPTY:Ljava/lang/String; = ""

.field private static final EM_SERVER_NAME:Ljava/lang/String; = "EngineerModeServer"

.field private static final ERROR_NO_INIT:Ljava/lang/String; = "NOT INIT"

.field private static final ERROR_PARAM_NUM:Ljava/lang/String; = "param < 0"

.field private static final MAX_BUFFER_SIZE:I = 0x400

.field private static final PARAM_INT_LENGTH:I = 0x4

.field public static final PARAM_TYPE_INT:I = 0x2

.field public static final PARAM_TYPE_STRING:I = 0x1

.field private static final STATUS_ERROR:I = -0x1

.field private static final STATUS_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "EM/client"


# instance fields
.field private mInputStream:Ljava/io/DataInputStream;

.field private mOutputStream:Ljava/io/DataOutputStream;

.field private mSocket:Landroid/net/LocalSocket;

.field private mStatus:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object v0, p0, Lcom/mediatek/engineermode/emsvr/Client;->mSocket:Landroid/net/LocalSocket;

    .line 71
    iput-object v0, p0, Lcom/mediatek/engineermode/emsvr/Client;->mInputStream:Ljava/io/DataInputStream;

    .line 72
    iput-object v0, p0, Lcom/mediatek/engineermode/emsvr/Client;->mOutputStream:Ljava/io/DataOutputStream;

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/engineermode/emsvr/Client;->mStatus:I

    return-void
.end method


# virtual methods
.method declared-synchronized read()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 102
    monitor-enter p0

    :try_start_0
    iget v4, p0, Lcom/mediatek/engineermode/emsvr/Client;->mStatus:I

    if-eq v6, v4, :cond_0

    iget-object v4, p0, Lcom/mediatek/engineermode/emsvr/Client;->mInputStream:Ljava/io/DataInputStream;

    if-nez v4, :cond_1

    .line 103
    :cond_0
    new-instance v4, Ljava/io/IOException;

    const-string v5, "NOT INIT"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 105
    :cond_1
    const/4 v2, 0x0

    .line 106
    .local v2, result:Ljava/lang/String;
    :try_start_1
    iget-object v4, p0, Lcom/mediatek/engineermode/emsvr/Client;->mInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 107
    .local v1, len:I
    const/16 v4, 0x400

    if-le v1, v4, :cond_2

    .line 108
    const/16 v1, 0x400

    .line 110
    :cond_2
    new-array v0, v1, [B

    .line 111
    .local v0, bb:[B
    iget-object v4, p0, Lcom/mediatek/engineermode/emsvr/Client;->mInputStream:Ljava/io/DataInputStream;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v1}, Ljava/io/DataInputStream;->read([BII)I

    move-result v3

    .line 112
    .local v3, x:I
    if-ne v6, v3, :cond_3

    .line 113
    const-string v2, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    :goto_0
    monitor-exit p0

    return-object v2

    .line 115
    :cond_3
    :try_start_2
    new-instance v2, Ljava/lang/String;

    .end local v2           #result:Ljava/lang/String;
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v2, v0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v2       #result:Ljava/lang/String;
    goto :goto_0
.end method

.method public startClient()V
    .locals 4

    .prologue
    .line 82
    :try_start_0
    new-instance v1, Landroid/net/LocalSocket;

    invoke-direct {v1}, Landroid/net/LocalSocket;-><init>()V

    iput-object v1, p0, Lcom/mediatek/engineermode/emsvr/Client;->mSocket:Landroid/net/LocalSocket;

    .line 84
    iget-object v1, p0, Lcom/mediatek/engineermode/emsvr/Client;->mSocket:Landroid/net/LocalSocket;

    new-instance v2, Landroid/net/LocalSocketAddress;

    const-string v3, "EngineerModeServer"

    invoke-direct {v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 85
    new-instance v1, Ljava/io/DataInputStream;

    iget-object v2, p0, Lcom/mediatek/engineermode/emsvr/Client;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/mediatek/engineermode/emsvr/Client;->mInputStream:Ljava/io/DataInputStream;

    .line 86
    new-instance v1, Ljava/io/DataOutputStream;

    iget-object v2, p0, Lcom/mediatek/engineermode/emsvr/Client;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/mediatek/engineermode/emsvr/Client;->mOutputStream:Ljava/io/DataOutputStream;

    .line 87
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/engineermode/emsvr/Client;->mStatus:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, e:Ljava/io/IOException;
    const-string v1, "EM/client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startclient IOException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v1, -0x1

    iput v1, p0, Lcom/mediatek/engineermode/emsvr/Client;->mStatus:I

    goto :goto_0
.end method

.method public stopClient()V
    .locals 4

    .prologue
    .line 196
    iget-object v1, p0, Lcom/mediatek/engineermode/emsvr/Client;->mInputStream:Ljava/io/DataInputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/engineermode/emsvr/Client;->mOutputStream:Ljava/io/DataOutputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/engineermode/emsvr/Client;->mSocket:Landroid/net/LocalSocket;

    if-nez v1, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/engineermode/emsvr/Client;->mOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/FilterOutputStream;->close()V

    .line 201
    iget-object v1, p0, Lcom/mediatek/engineermode/emsvr/Client;->mInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/FilterInputStream;->close()V

    .line 202
    iget-object v1, p0, Lcom/mediatek/engineermode/emsvr/Client;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, e:Ljava/io/IOException;
    const-string v1, "EM/client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop client IOException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method declared-synchronized writeFunctionNo(Ljava/lang/String;)V
    .locals 4
    .parameter "functionNo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    iget v1, p0, Lcom/mediatek/engineermode/emsvr/Client;->mStatus:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mediatek/engineermode/emsvr/Client;->mOutputStream:Ljava/io/DataOutputStream;

    if-nez v0, :cond_1

    .line 130
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "NOT INIT"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 132
    :cond_1
    if-eqz p1, :cond_2

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 137
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 135
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/mediatek/engineermode/emsvr/Client;->mOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 136
    iget-object v0, p0, Lcom/mediatek/engineermode/emsvr/Client;->mOutputStream:Ljava/io/DataOutputStream;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized writeParamInt(I)V
    .locals 2
    .parameter "param"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    iget v1, p0, Lcom/mediatek/engineermode/emsvr/Client;->mStatus:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mediatek/engineermode/emsvr/Client;->mOutputStream:Ljava/io/DataOutputStream;

    if-nez v0, :cond_1

    .line 168
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "NOT INIT"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 170
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/engineermode/emsvr/Client;->mOutputStream:Ljava/io/DataOutputStream;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 171
    iget-object v0, p0, Lcom/mediatek/engineermode/emsvr/Client;->mOutputStream:Ljava/io/DataOutputStream;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 172
    iget-object v0, p0, Lcom/mediatek/engineermode/emsvr/Client;->mOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    monitor-exit p0

    return-void
.end method

.method declared-synchronized writeParamNo(I)V
    .locals 2
    .parameter "paramNum"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    iget v1, p0, Lcom/mediatek/engineermode/emsvr/Client;->mStatus:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mediatek/engineermode/emsvr/Client;->mOutputStream:Ljava/io/DataOutputStream;

    if-nez v0, :cond_1

    .line 150
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "NOT INIT"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 152
    :cond_1
    if-gez p1, :cond_2

    .line 153
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "param < 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/mediatek/engineermode/emsvr/Client;->mOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    monitor-exit p0

    return-void
.end method

.method declared-synchronized writeParamString(Ljava/lang/String;)V
    .locals 4
    .parameter "param"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    iget v1, p0, Lcom/mediatek/engineermode/emsvr/Client;->mStatus:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mediatek/engineermode/emsvr/Client;->mOutputStream:Ljava/io/DataOutputStream;

    if-nez v0, :cond_1

    .line 185
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "NOT INIT"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 187
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/engineermode/emsvr/Client;->mOutputStream:Ljava/io/DataOutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 188
    iget-object v0, p0, Lcom/mediatek/engineermode/emsvr/Client;->mOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 189
    iget-object v0, p0, Lcom/mediatek/engineermode/emsvr/Client;->mOutputStream:Ljava/io/DataOutputStream;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    monitor-exit p0

    return-void
.end method

.class public Lcom/mediatek/engineermode/hqanfc/NfcClient;
.super Ljava/lang/Object;
.source "NfcClient.java"


# static fields
.field public static final DEFAULT_PORT:I = 0x1d4c

.field public static final DEFAULT_TIMEOUT:I = 0xfa0

.field private static final LOCALHOST_IP_ADDRESS:Ljava/lang/String; = "127.0.0.1"

.field private static final LOCALSOCKET_NAME:Ljava/lang/String; = "/data/nfc_socket/mtknfc_server"

.field private static final MAX_DISCON_TIMES:I = 0x5

.field private static final SLEEP_TIME:I = 0x64

.field private static sInstance:Lcom/mediatek/engineermode/hqanfc/NfcClient;


# instance fields
.field private mConnected:Z

.field protected mInputStream:Ljava/io/DataInputStream;

.field protected mOutputStream:Ljava/io/DataOutputStream;

.field protected mPollingThr:Lcom/mediatek/engineermode/hqanfc/ReceiveThread;

.field protected mSocket:Landroid/net/LocalSocket;

.field protected mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/engineermode/hqanfc/NfcClient;->mConnected:Z

    return-void
.end method

.method public static getInstance()Lcom/mediatek/engineermode/hqanfc/NfcClient;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/mediatek/engineermode/hqanfc/NfcClient;->sInstance:Lcom/mediatek/engineermode/hqanfc/NfcClient;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/mediatek/engineermode/hqanfc/NfcClient;

    invoke-direct {v0}, Lcom/mediatek/engineermode/hqanfc/NfcClient;-><init>()V

    sput-object v0, Lcom/mediatek/engineermode/hqanfc/NfcClient;->sInstance:Lcom/mediatek/engineermode/hqanfc/NfcClient;

    .line 42
    :cond_0
    sget-object v0, Lcom/mediatek/engineermode/hqanfc/NfcClient;->sInstance:Lcom/mediatek/engineermode/hqanfc/NfcClient;

    return-object v0
.end method


# virtual methods
.method public closeConnection()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 82
    const-string v3, "EM/HQA/NFC"

    const-string v4, "[NfcClient]closeConnection()."

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v3, p0, Lcom/mediatek/engineermode/hqanfc/NfcClient;->mSocket:Landroid/net/LocalSocket;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/engineermode/hqanfc/NfcClient;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 84
    :cond_0
    const-string v3, "EM/HQA/NFC"

    const-string v4, "[NfcClient]close connection fail"

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :goto_0
    return v2

    .line 87
    :cond_1
    iget-object v3, p0, Lcom/mediatek/engineermode/hqanfc/NfcClient;->mPollingThr:Lcom/mediatek/engineermode/hqanfc/ReceiveThread;

    invoke-virtual {v3, v2}, Lcom/mediatek/engineermode/hqanfc/ReceiveThread;->setRunning(Z)V

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, cnt:I
    :goto_1
    iget-object v3, p0, Lcom/mediatek/engineermode/hqanfc/NfcClient;->mPollingThr:Lcom/mediatek/engineermode/hqanfc/ReceiveThread;

    invoke-virtual {v3}, Lcom/mediatek/engineermode/hqanfc/ReceiveThread;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/mediatek/engineermode/hqanfc/NfcClient;->mThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x5

    if-ge v0, v3, :cond_2

    .line 91
    const-wide/16 v3, 0x64

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 93
    :catch_0
    move-exception v1

    .line 94
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 97
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_2
    iget-object v3, p0, Lcom/mediatek/engineermode/hqanfc/NfcClient;->mPollingThr:Lcom/mediatek/engineermode/hqanfc/ReceiveThread;

    invoke-virtual {v3}, Lcom/mediatek/engineermode/hqanfc/ReceiveThread;->isRunning()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/mediatek/engineermode/hqanfc/NfcClient;->mThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 98
    :cond_3
    iget-object v3, p0, Lcom/mediatek/engineermode/hqanfc/NfcClient;->mThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 101
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/engineermode/hqanfc/NfcClient;->mInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/FilterInputStream;->close()V

    .line 102
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/engineermode/hqanfc/NfcClient;->mInputStream:Ljava/io/DataInputStream;

    .line 103
    iget-object v3, p0, Lcom/mediatek/engineermode/hqanfc/NfcClient;->mOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/io/FilterOutputStream;->close()V

    .line 104
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/engineermode/hqanfc/NfcClient;->mOutputStream:Ljava/io/DataOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 108
    :goto_2
    iget-object v3, p0, Lcom/mediatek/engineermode/hqanfc/NfcClient;->mSocket:Landroid/net/LocalSocket;

    if-eqz v3, :cond_5

    .line 110
    :try_start_2
    iget-object v3, p0, Lcom/mediatek/engineermode/hqanfc/NfcClient;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 115
    :goto_3
    iput-object v6, p0, Lcom/mediatek/engineermode/hqanfc/NfcClient;->mSocket:Landroid/net/LocalSocket;

    .line 117
    :cond_5
    sput-object v6, Lcom/mediatek/engineermode/hqanfc/NfcClient;->sInstance:Lcom/mediatek/engineermode/hqanfc/NfcClient;

    .line 118
    invoke-virtual {p0, v2}, Lcom/mediatek/engineermode/hqanfc/NfcClient;->setConnected(Z)V

    .line 119
    const-string v2, "EM/HQA/NFC"

    const-string v3, "[NfcClient]close connection success"

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const/4 v2, 0x1

    goto :goto_0

    .line 105
    :catch_1
    move-exception v1

    .line 106
    .local v1, e:Ljava/io/IOException;
    const-string v3, "EM/HQA/NFC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[NfcClient]closeConnection IOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/Elog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 111
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 112
    .restart local v1       #e:Ljava/io/IOException;
    const-string v3, "EM/HQA/NFC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[NfcClient]closeConnection finally IOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/Elog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public createConnection(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x1

    .line 125
    const-string v6, "EM/HQA/NFC"

    const-string v7, "[NfcClient]createConnection()."

    invoke-static {v6, v7}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const/16 v3, 0x7530

    .line 127
    .local v3, timeout:I
    iget-object v6, p0, Lcom/mediatek/engineermode/hqanfc/NfcClient;->mSocket:Landroid/net/LocalSocket;

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/engineermode/hqanfc/NfcClient;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 128
    const-string v5, "EM/HQA/NFC"

    const-string v6, "[NfcClient]createConnection: has connected"

    invoke-static {v5, v6}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :goto_0
    return v4

    .line 133
    :cond_0
    :try_start_0
    new-instance v6, Landroid/net/LocalSocket;

    invoke-direct {v6}, Landroid/net/LocalSocket;-><init>()V

    iput-object v6, p0, Lcom/mediatek/engineermode/hqanfc/NfcClient;->mSocket:Landroid/net/LocalSocket;

    .line 134
    new-instance v2, Landroid/net/LocalSocketAddress;

    const-string v6, "/data/nfc_socket/mtknfc_server"

    sget-object v7, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v2, v6, v7}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 135
    .local v2, name:Landroid/net/LocalSocketAddress;
    iget-object v6, p0, Lcom/mediatek/engineermode/hqanfc/NfcClient;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v6, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 136
    iget-object v6, p0, Lcom/mediatek/engineermode/hqanfc/NfcClient;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v6, v3}, Landroid/net/LocalSocket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v2           #name:Landroid/net/LocalSocketAddress;
    :goto_1
    iget-object v6, p0, Lcom/mediatek/engineermode/hqanfc/NfcClient;->mSocket:Landroid/net/LocalSocket;

    if-nez v6, :cond_1

    move v4, v5

    .line 142
    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Ljava/io/IOException;
    const-string v6, "EM/HQA/NFC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[NfcClient]createConnection IOException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/engineermode/Elog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iput-object v9, p0, Lcom/mediatek/engineermode/hqanfc/NfcClient;->mSocket:Landroid/net/LocalSocket;

    goto :goto_1

    .line 145
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    :try_start_1
    new-instance v6, Ljava/io/DataOutputStream;

    iget-object v7, p0, Lcom/mediatek/engineermode/hqanfc/NfcClient;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v7}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v6, p0, Lcom/mediatek/engineermode/hqanfc/NfcClient;->mOutputStream:Ljava/io/DataOutputStream;

    .line 146
    new-instance v6, Ljava/io/DataInputStream;

    iget-object v7, p0, Lcom/mediatek/engineermode/hqanfc/NfcClient;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v7}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v6, p0, Lcom/mediatek/engineermode/hqanfc/NfcClient;->mInputStream:Ljava/io/DataInputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 157
    invoke-virtual {p0, v4}, Lcom/mediatek/engineermode/hqanfc/NfcClient;->setConnected(Z)V

    .line 158
    new-instance v5, Lcom/mediatek/engineermode/hqanfc/ReceiveThread;

    iget-object v6, p0, Lcom/mediatek/engineermode/hqanfc/NfcClient;->mInputStream:Ljava/io/DataInputStream;

    invoke-direct {v5, v6, p1}, Lcom/mediatek/engineermode/hqanfc/ReceiveThread;-><init>(Ljava/io/DataInputStream;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/mediatek/engineermode/hqanfc/NfcClient;->mPollingThr:Lcom/mediatek/engineermode/hqanfc/ReceiveThread;

    .line 159
    new-instance v5, Ljava/lang/Thread;

    iget-object v6, p0, Lcom/mediatek/engineermode/hqanfc/NfcClient;->mPollingThr:Lcom/mediatek/engineermode/hqanfc/ReceiveThread;

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v5, p0, Lcom/mediatek/engineermode/hqanfc/NfcClient;->mThread:Ljava/lang/Thread;

    .line 160
    iget-object v5, p0, Lcom/mediatek/engineermode/hqanfc/NfcClient;->mThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 147
    :catch_1
    move-exception v0

    .line 148
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "EM/HQA/NFC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[NfcClient]getStream IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/mediatek/engineermode/Elog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :try_start_2
    iget-object v4, p0, Lcom/mediatek/engineermode/hqanfc/NfcClient;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->close()V

    .line 151
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/mediatek/engineermode/hqanfc/NfcClient;->mSocket:Landroid/net/LocalSocket;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    move v4, v5

    .line 155
    goto/16 :goto_0

    .line 152
    :catch_2
    move-exception v1

    .line 153
    .local v1, e1:Ljava/io/IOException;
    iput-object v9, p0, Lcom/mediatek/engineermode/hqanfc/NfcClient;->mSocket:Landroid/net/LocalSocket;

    goto :goto_2
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/mediatek/engineermode/hqanfc/NfcClient;->mConnected:Z

    return v0
.end method

.method public declared-synchronized sendCommand(ILcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmReq;)I
    .locals 8
    .parameter "msgType"
    .parameter "cmdReq"

    .prologue
    const/4 v4, -0x1

    .line 46
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/mediatek/engineermode/hqanfc/NfcClient;->mSocket:Landroid/net/LocalSocket;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/mediatek/engineermode/hqanfc/NfcClient;->mOutputStream:Ljava/io/DataOutputStream;

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/engineermode/hqanfc/NfcClient;->isConnected()Z

    move-result v5

    if-nez v5, :cond_1

    .line 47
    :cond_0
    const-string v5, "EM/HQA/NFC"

    const-string v6, "[NfcClient]send command fail"

    invoke-static {v5, v6}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move p1, v4

    .line 77
    .end local p1
    :goto_0
    monitor-exit p0

    return p1

    .line 50
    .restart local p1
    :cond_1
    :try_start_1
    const-string v5, "EM/HQA/NFC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[NfcClient]Send command type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, buffer:Ljava/nio/ByteBuffer;
    if-nez p2, :cond_2

    .line 54
    const/16 v5, 0x8

    :try_start_2
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 55
    invoke-static {p1}, Lcom/mediatek/engineermode/hqanfc/NfcCommand$DataConvert;->intToLH(I)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 56
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/mediatek/engineermode/hqanfc/NfcCommand$DataConvert;->intToLH(I)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 66
    :goto_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    array-length v5, v5

    if-ge v2, v5, :cond_3

    .line 67
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    aget-byte v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 66
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 58
    .end local v2           #i:I
    :cond_2
    invoke-virtual {p2}, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmReq;->getContentSize()I

    move-result v5

    add-int/lit8 v5, v5, 0x8

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 60
    invoke-static {p1}, Lcom/mediatek/engineermode/hqanfc/NfcCommand$DataConvert;->intToLH(I)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 61
    invoke-virtual {p2}, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmReq;->getContentSize()I

    move-result v3

    .line 62
    .local v3, msglen:I
    const-string v5, "EM/HQA/NFC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[NfcClient]Send command lenght: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {v3}, Lcom/mediatek/engineermode/hqanfc/NfcCommand$DataConvert;->intToLH(I)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 64
    invoke-virtual {p2, v0}, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmReq;->writeRaw(Ljava/nio/ByteBuffer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 72
    .end local v3           #msglen:I
    :catch_0
    move-exception v1

    .line 73
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    const-string v5, "EM/HQA/NFC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[NfcClient]sendCommand IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/engineermode/Elog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move p1, v4

    .line 75
    goto/16 :goto_0

    .line 69
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #i:I
    :cond_3
    :try_start_4
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "done send"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 70
    iget-object v5, p0, Lcom/mediatek/engineermode/hqanfc/NfcClient;->mOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    .line 71
    iget-object v5, p0, Lcom/mediatek/engineermode/hqanfc/NfcClient;->mOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 46
    .end local v0           #buffer:Ljava/nio/ByteBuffer;
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public setConnected(Z)V
    .locals 0
    .parameter "connected"

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/mediatek/engineermode/hqanfc/NfcClient;->mConnected:Z

    .line 166
    return-void
.end method

.class public Lcom/mediatek/engineermode/cwtest/ClientSocket;
.super Ljava/lang/Object;
.source "ClientSocket.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x800

.field private static final LINE_OUT_SIZE:I = 0x3e8

.field private static final MASK_8_BIT:I = 0xff

.field private static final SERVER_PORT:I = 0x1b58

.field private static final SOCKET_TIME_OUT_TIME:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "CWTEST/ClientSocket"


# instance fields
.field private mCallBack:Lcom/mediatek/engineermode/cwtest/CWTest;

.field private mClientSocket:Ljava/net/Socket;

.field private mCommand:Ljava/lang/String;

.field private mCommandQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDataBuffer:[B

.field private mDataInput:Ljava/io/DataInputStream;

.field private mDataOutput:Ljava/io/DataOutputStream;

.field private mResponse:Ljava/lang/String;

.field private mSendThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/mediatek/engineermode/cwtest/CWTest;)V
    .locals 2
    .parameter "callBack"

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket;->mClientSocket:Ljava/net/Socket;

    .line 66
    iput-object v0, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket;->mDataInput:Ljava/io/DataInputStream;

    .line 67
    iput-object v0, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket;->mDataOutput:Ljava/io/DataOutputStream;

    .line 68
    iput-object v0, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket;->mCommand:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket;->mResponse:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket;->mCommandQueue:Ljava/util/concurrent/BlockingQueue;

    .line 71
    iput-object v0, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket;->mCallBack:Lcom/mediatek/engineermode/cwtest/CWTest;

    .line 72
    iput-object v0, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket;->mSendThread:Ljava/lang/Thread;

    .line 73
    iput-object v0, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket;->mDataBuffer:[B

    .line 82
    const-string v0, "CWTEST/ClientSocket"

    const-string v1, "ClientSocket constructor"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iput-object p1, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket;->mCallBack:Lcom/mediatek/engineermode/cwtest/CWTest;

    .line 84
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket;->mCommandQueue:Ljava/util/concurrent/BlockingQueue;

    .line 85
    const/16 v0, 0x800

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket;->mDataBuffer:[B

    .line 88
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mediatek/engineermode/cwtest/ClientSocket$1;

    invoke-direct {v1, p0}, Lcom/mediatek/engineermode/cwtest/ClientSocket$1;-><init>(Lcom/mediatek/engineermode/cwtest/ClientSocket;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket;->mSendThread:Ljava/lang/Thread;

    .line 144
    iget-object v0, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket;->mSendThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 145
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/cwtest/ClientSocket;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket;->mCommand:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mediatek/engineermode/cwtest/ClientSocket;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket;->mCommand:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/cwtest/ClientSocket;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket;->mCommandQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/cwtest/ClientSocket;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/mediatek/engineermode/cwtest/ClientSocket;->openClient()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/cwtest/ClientSocket;)Ljava/io/DataOutputStream;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket;->mDataOutput:Ljava/io/DataOutputStream;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/cwtest/ClientSocket;)Ljava/io/DataInputStream;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket;->mDataInput:Ljava/io/DataInputStream;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/engineermode/cwtest/ClientSocket;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket;->mDataBuffer:[B

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/engineermode/cwtest/ClientSocket;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket;->mResponse:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/mediatek/engineermode/cwtest/ClientSocket;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket;->mResponse:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/mediatek/engineermode/cwtest/ClientSocket;)Lcom/mediatek/engineermode/cwtest/CWTest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket;->mCallBack:Lcom/mediatek/engineermode/cwtest/CWTest;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/engineermode/cwtest/ClientSocket;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/mediatek/engineermode/cwtest/ClientSocket;->closeClient()V

    return-void
.end method

.method private calcCS(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "command"

    .prologue
    .line 236
    if-eqz p1, :cond_0

    const-string v6, ""

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 237
    :cond_0
    const-string v6, ""

    .line 244
    :goto_0
    return-object v6

    .line 239
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 240
    .local v2, ba:[B
    const/4 v5, 0x0

    .line 241
    .local v5, temp:I
    move-object v0, v2

    .local v0, arr$:[B
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-byte v1, v0, v3

    .line 242
    .local v1, b:B
    xor-int/2addr v5, v1

    .line 241
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 244
    .end local v1           #b:B
    :cond_2
    const-string v6, "%1$02x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    and-int/lit16 v9, v5, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private closeClient()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 172
    const-string v1, "CWTEST/ClientSocket"

    const-string v2, "enter closeClient"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket;->mDataInput:Ljava/io/DataInputStream;

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket;->mDataInput:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/FilterInputStream;->close()V

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket;->mDataOutput:Ljava/io/DataOutputStream;

    if-eqz v1, :cond_1

    .line 178
    iget-object v1, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket;->mDataOutput:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/FilterOutputStream;->close()V

    .line 180
    :cond_1
    iget-object v1, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket;->mClientSocket:Ljava/net/Socket;

    if-eqz v1, :cond_2

    .line 181
    iget-object v1, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket;->mClientSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :cond_2
    iput-object v4, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket;->mClientSocket:Ljava/net/Socket;

    .line 187
    iput-object v4, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket;->mDataInput:Ljava/io/DataInputStream;

    .line 188
    iput-object v4, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket;->mDataOutput:Ljava/io/DataOutputStream;

    .line 190
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    const-string v1, "CWTEST/ClientSocket"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeClient IOException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    iput-object v4, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket;->mClientSocket:Ljava/net/Socket;

    .line 187
    iput-object v4, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket;->mDataInput:Ljava/io/DataInputStream;

    .line 188
    iput-object v4, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket;->mDataOutput:Ljava/io/DataOutputStream;

    goto :goto_0

    .line 186
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    iput-object v4, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket;->mClientSocket:Ljava/net/Socket;

    .line 187
    iput-object v4, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket;->mDataInput:Ljava/io/DataInputStream;

    .line 188
    iput-object v4, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket;->mDataOutput:Ljava/io/DataOutputStream;

    throw v1
.end method

.method private openClient()V
    .locals 4

    .prologue
    .line 151
    const-string v1, "CWTEST/ClientSocket"

    const-string v2, "enter startClient"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v1, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket;->mClientSocket:Ljava/net/Socket;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket;->mClientSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    const-string v1, "CWTEST/ClientSocket"

    const-string v2, "localSocket has started, return"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :goto_0
    return-void

    .line 157
    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/Socket;

    const-string v2, "127.0.0.1"

    const/16 v3, 0x1b58

    invoke-direct {v1, v2, v3}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket;->mClientSocket:Ljava/net/Socket;

    .line 158
    iget-object v1, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket;->mClientSocket:Ljava/net/Socket;

    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 159
    new-instance v1, Ljava/io/DataOutputStream;

    iget-object v2, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket;->mClientSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket;->mDataOutput:Ljava/io/DataOutputStream;

    .line 160
    new-instance v1, Ljava/io/DataInputStream;

    iget-object v2, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket;->mClientSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket;->mDataInput:Ljava/io/DataInputStream;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, e:Ljava/net/UnknownHostException;
    const-string v1, "CWTEST/ClientSocket"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 163
    .end local v0           #e:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v0

    .line 164
    .local v0, e:Ljava/io/IOException;
    const-string v1, "CWTEST/ClientSocket"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public endClient()V
    .locals 3

    .prologue
    .line 196
    const-string v0, "CWTEST/ClientSocket"

    const-string v1, "enter endClient"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket;->mSendThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 198
    const-string v0, "CWTEST/ClientSocket"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Queue remaining:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket;->mCommandQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-direct {p0}, Lcom/mediatek/engineermode/cwtest/ClientSocket;->closeClient()V

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket;->mCallBack:Lcom/mediatek/engineermode/cwtest/CWTest;

    .line 201
    return-void
.end method

.method public sendCommand(Ljava/lang/String;)V
    .locals 5
    .parameter "command"

    .prologue
    .line 210
    const-string v2, "CWTEST/ClientSocket"

    const-string v3, "enter sendCommand"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/cwtest/ClientSocket;->calcCS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, sendComm:Ljava/lang/String;
    const-string v2, "CWTEST/ClientSocket"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v2, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket;->mSendThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 214
    const-string v2, "CWTEST/ClientSocket"

    const-string v3, "sendThread is not alive"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v2, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket;->mSendThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 217
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket;->mCommandQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v1}, Ljava/util/concurrent/BlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 218
    :cond_1
    const-string v2, "CWTEST/ClientSocket"

    const-string v3, "send command return because of hasn\'t handle the same"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :goto_0
    return-void

    .line 222
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket;->mCommandQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, ie:Ljava/lang/InterruptedException;
    const-string v2, "CWTEST/ClientSocket"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send command interrupted:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

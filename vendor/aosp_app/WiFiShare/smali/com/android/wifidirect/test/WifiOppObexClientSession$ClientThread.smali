.class Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;
.super Ljava/lang/Thread;
.source "WifiOppObexClientSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wifidirect/test/WifiOppObexClientSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientThread"
.end annotation


# static fields
.field private static final sSleepTime:I = 0x1f4


# instance fields
.field private mConnected:Z

.field private mContext1:Landroid/content/Context;

.field private mCs:Lcom/android/wifidirect/test/ClientSession;

.field private mFileInfo:Lcom/android/wifidirect/test/WifiOppSendFileInfo;

.field private mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

.field private mTransport1:Lcom/android/wifidirect/test/ObexTransport;

.field final synthetic this$0:Lcom/android/wifidirect/test/WifiOppObexClientSession;

.field private volatile waitingForShare:Z

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Lcom/android/wifidirect/test/WifiOppObexClientSession;Landroid/content/Context;Lcom/android/wifidirect/test/ObexTransport;)V
    .locals 4
    .parameter
    .parameter "context"
    .parameter "transport"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 109
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->this$0:Lcom/android/wifidirect/test/WifiOppObexClientSession;

    .line 110
    const-string v1, "WifiOpp ClientThread"

    invoke-direct {p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 105
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/wifidirect/test/WifiOppSendFileInfo;

    .line 107
    iput-boolean v2, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mConnected:Z

    .line 111
    iput-object p2, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    .line 112
    iput-object p3, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mTransport1:Lcom/android/wifidirect/test/ObexTransport;

    .line 113
    iput-boolean v3, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->waitingForShare:Z

    .line 114
    #setter for: Lcom/android/wifidirect/test/WifiOppObexClientSession;->mWaitingForRemote:Z
    invoke-static {p1, v2}, Lcom/android/wifidirect/test/WifiOppObexClientSession;->access$002(Lcom/android/wifidirect/test/WifiOppObexClientSession;Z)Z

    .line 116
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 117
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "WifiOppObexClientSession"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 118
    const-string v1, "WifiOppObexClientSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run: mInterrupted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    #getter for: Lcom/android/wifidirect/test/WifiOppObexClientSession;->mInterrupted:Z
    invoke-static {p1}, Lcom/android/wifidirect/test/WifiOppObexClientSession;->access$100(Lcom/android/wifidirect/test/WifiOppObexClientSession;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void
.end method

.method private FtpClientConnect()V
    .locals 3

    .prologue
    .line 200
    const-string v0, "WifiOppObexClientSession"

    const-string v1, "FtpClientConnect"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->this$0:Lcom/android/wifidirect/test/WifiOppObexClientSession;

    #getter for: Lcom/android/wifidirect/test/WifiOppObexClientSession;->mClient:Lcom/android/wifidirect/test/FTPClient;
    invoke-static {v0}, Lcom/android/wifidirect/test/WifiOppObexClientSession;->access$300(Lcom/android/wifidirect/test/WifiOppObexClientSession;)Lcom/android/wifidirect/test/FTPClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->this$0:Lcom/android/wifidirect/test/WifiOppObexClientSession;

    #getter for: Lcom/android/wifidirect/test/WifiOppObexClientSession;->mClient:Lcom/android/wifidirect/test/FTPClient;
    invoke-static {v0}, Lcom/android/wifidirect/test/WifiOppObexClientSession;->access$300(Lcom/android/wifidirect/test/WifiOppObexClientSession;)Lcom/android/wifidirect/test/FTPClient;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/wifidirect/test/WifiOppSendFileInfo;

    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    invoke-virtual {v0, v1, v2}, Lcom/android/wifidirect/test/FTPClient;->renewInfos(Lcom/android/wifidirect/test/WifiOppSendFileInfo;Lcom/android/wifidirect/test/WifiOppShareInfo;)V

    .line 203
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->this$0:Lcom/android/wifidirect/test/WifiOppObexClientSession;

    #getter for: Lcom/android/wifidirect/test/WifiOppObexClientSession;->mClient:Lcom/android/wifidirect/test/FTPClient;
    invoke-static {v0}, Lcom/android/wifidirect/test/WifiOppObexClientSession;->access$300(Lcom/android/wifidirect/test/WifiOppObexClientSession;)Lcom/android/wifidirect/test/FTPClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wifidirect/test/FTPClient;->connect()V

    .line 207
    :cond_0
    return-void
.end method

.method private FtpClientSendFile()V
    .locals 2

    .prologue
    .line 210
    const-string v0, "WifiOppObexClientSession"

    const-string v1, "FtpClientSendFile"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->this$0:Lcom/android/wifidirect/test/WifiOppObexClientSession;

    #getter for: Lcom/android/wifidirect/test/WifiOppObexClientSession;->mClient:Lcom/android/wifidirect/test/FTPClient;
    invoke-static {v0}, Lcom/android/wifidirect/test/WifiOppObexClientSession;->access$300(Lcom/android/wifidirect/test/WifiOppObexClientSession;)Lcom/android/wifidirect/test/FTPClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->this$0:Lcom/android/wifidirect/test/WifiOppObexClientSession;

    #getter for: Lcom/android/wifidirect/test/WifiOppObexClientSession;->mClient:Lcom/android/wifidirect/test/FTPClient;
    invoke-static {v0}, Lcom/android/wifidirect/test/WifiOppObexClientSession;->access$300(Lcom/android/wifidirect/test/WifiOppObexClientSession;)Lcom/android/wifidirect/test/FTPClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wifidirect/test/FTPClient;->ClientSendFile()V

    .line 214
    :cond_0
    return-void
.end method

.method private connect()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 273
    const-string v4, "WifiOppObexClientSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Create ClientSession with transport "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mTransport1:Lcom/android/wifidirect/test/ObexTransport;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :try_start_0
    new-instance v4, Lcom/android/wifidirect/test/ClientSession;

    iget-object v5, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mTransport1:Lcom/android/wifidirect/test/ObexTransport;

    invoke-direct {v4, v5}, Lcom/android/wifidirect/test/ClientSession;-><init>(Lcom/android/wifidirect/test/ObexTransport;)V

    iput-object v4, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mCs:Lcom/android/wifidirect/test/ClientSession;

    .line 276
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mConnected:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :goto_0
    iget-boolean v4, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mConnected:Z

    if-eqz v4, :cond_0

    .line 281
    iput-boolean v7, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mConnected:Z

    .line 282
    new-instance v2, Lcom/android/wifidirect/test/HeaderSet;

    invoke-direct {v2}, Lcom/android/wifidirect/test/HeaderSet;-><init>()V

    .line 283
    .local v2, hs:Lcom/android/wifidirect/test/HeaderSet;
    monitor-enter p0

    .line 284
    :try_start_1
    iget-object v4, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->this$0:Lcom/android/wifidirect/test/WifiOppObexClientSession;

    const/4 v5, 0x1

    #setter for: Lcom/android/wifidirect/test/WifiOppObexClientSession;->mWaitingForRemote:Z
    invoke-static {v4, v5}, Lcom/android/wifidirect/test/WifiOppObexClientSession;->access$002(Lcom/android/wifidirect/test/WifiOppObexClientSession;Z)Z

    .line 285
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    new-instance v3, Lcom/android/wifidirect/test/HeaderSet;

    invoke-direct {v3}, Lcom/android/wifidirect/test/HeaderSet;-><init>()V

    .line 288
    .local v3, returnHs:Lcom/android/wifidirect/test/HeaderSet;
    :try_start_2
    iget-object v4, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mCs:Lcom/android/wifidirect/test/ClientSession;

    invoke-virtual {v4, v2}, Lcom/android/wifidirect/test/ClientSession;->connect(Lcom/android/wifidirect/test/HeaderSet;)Lcom/android/wifidirect/test/HeaderSet;

    move-result-object v3

    .line 289
    const-string v4, "WifiOppObexClientSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "returnHs.responseCode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/wifidirect/test/HeaderSet;->responseCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget v4, v3, Lcom/android/wifidirect/test/HeaderSet;->responseCode:I

    const/16 v5, 0xd5

    if-ne v4, v5, :cond_1

    .line 292
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/wifidirect/test/Constants;->IS_USE_FTP_TRANSFOR_MODE:Z

    .line 298
    :goto_1
    const-string v4, "WifiOppObexClientSession"

    const-string v5, "OBEX session created"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mConnected:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 304
    .end local v2           #hs:Lcom/android/wifidirect/test/HeaderSet;
    .end local v3           #returnHs:Lcom/android/wifidirect/test/HeaderSet;
    :cond_0
    :goto_2
    monitor-enter p0

    .line 305
    :try_start_3
    iget-object v4, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->this$0:Lcom/android/wifidirect/test/WifiOppObexClientSession;

    const/4 v5, 0x0

    #setter for: Lcom/android/wifidirect/test/WifiOppObexClientSession;->mWaitingForRemote:Z
    invoke-static {v4, v5}, Lcom/android/wifidirect/test/WifiOppObexClientSession;->access$002(Lcom/android/wifidirect/test/WifiOppObexClientSession;Z)Z

    .line 306
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 307
    return-void

    .line 277
    :catch_0
    move-exception v1

    .line 278
    .local v1, e1:Ljava/io/IOException;
    const-string v4, "WifiOppObexClientSession"

    const-string v5, "OBEX session create error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 285
    .end local v1           #e1:Ljava/io/IOException;
    .restart local v2       #hs:Lcom/android/wifidirect/test/HeaderSet;
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 296
    .restart local v3       #returnHs:Lcom/android/wifidirect/test/HeaderSet;
    :cond_1
    const/4 v4, 0x0

    :try_start_5
    sput-boolean v4, Lcom/android/wifidirect/test/Constants;->IS_USE_FTP_TRANSFOR_MODE:Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 300
    :catch_1
    move-exception v0

    .line 301
    .local v0, e:Ljava/io/IOException;
    const-string v4, "WifiOppObexClientSession"

    const-string v5, "OBEX session connect error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 306
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #hs:Lcom/android/wifidirect/test/HeaderSet;
    .end local v3           #returnHs:Lcom/android/wifidirect/test/HeaderSet;
    :catchall_1
    move-exception v4

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v4
.end method

.method private disconnect()V
    .locals 4

    .prologue
    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mCs:Lcom/android/wifidirect/test/ClientSession;

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mCs:Lcom/android/wifidirect/test/ClientSession;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/wifidirect/test/ClientSession;->disconnect(Lcom/android/wifidirect/test/HeaderSet;)Lcom/android/wifidirect/test/HeaderSet;

    .line 248
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mCs:Lcom/android/wifidirect/test/ClientSession;

    .line 249
    const-string v1, "WifiOppObexClientSession"

    const-string v2, "OBEX session disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mCs:Lcom/android/wifidirect/test/ClientSession;

    if-eqz v1, :cond_1

    .line 255
    const-string v1, "WifiOppObexClientSession"

    const-string v2, "OBEX session close mCs"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mCs:Lcom/android/wifidirect/test/ClientSession;

    invoke-virtual {v1}, Lcom/android/wifidirect/test/ClientSession;->close()V

    .line 257
    const-string v1, "WifiOppObexClientSession"

    const-string v2, "OBEX session closed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 262
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mTransport1:Lcom/android/wifidirect/test/ObexTransport;

    if-eqz v1, :cond_2

    .line 264
    :try_start_2
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mTransport1:Lcom/android/wifidirect/test/ObexTransport;

    invoke-interface {v1}, Lcom/android/wifidirect/test/ObexTransport;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 270
    :cond_2
    :goto_2
    return-void

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, e:Ljava/io/IOException;
    const-string v1, "WifiOppObexClientSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OBEX session disconnect error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 259
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 260
    .restart local v0       #e:Ljava/io/IOException;
    const-string v1, "WifiOppObexClientSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OBEX session close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 265
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 266
    .restart local v0       #e:Ljava/io/IOException;
    const-string v1, "WifiOppObexClientSession"

    const-string v2, "mTransport.close error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private doSend()V
    .locals 6

    .prologue
    const/16 v5, 0xc8

    .line 311
    const/16 v2, 0xc8

    .line 314
    .local v2, status:I
    :goto_0
    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/wifidirect/test/WifiOppSendFileInfo;

    if-nez v3, :cond_0

    .line 316
    const-wide/16 v3, 0x32

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, e:Ljava/lang/InterruptedException;
    const/16 v2, 0x1ea

    .line 319
    goto :goto_0

    .line 321
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    iget-boolean v3, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mConnected:Z

    if-nez v3, :cond_1

    .line 323
    const/16 v2, 0x1f1

    .line 325
    :cond_1
    if-ne v2, v5, :cond_3

    .line 327
    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/wifidirect/test/WifiOppSendFileInfo;

    iget-object v3, v3, Lcom/android/wifidirect/test/WifiOppSendFileInfo;->mFileName:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 328
    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/wifidirect/test/WifiOppSendFileInfo;

    invoke-direct {p0, v3}, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->sendFile(Lcom/android/wifidirect/test/WifiOppSendFileInfo;)I

    move-result v2

    .line 333
    :goto_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->waitingForShare:Z

    .line 338
    :goto_2
    if-ne v2, v5, :cond_4

    .line 339
    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->this$0:Lcom/android/wifidirect/test/WifiOppObexClientSession;

    #getter for: Lcom/android/wifidirect/test/WifiOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/wifidirect/test/WifiOppObexClientSession;->access$200(Lcom/android/wifidirect/test/WifiOppObexClientSession;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 340
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x0

    iput v3, v1, Landroid/os/Message;->what:I

    .line 341
    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 342
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 350
    :goto_3
    return-void

    .line 331
    .end local v1           #msg:Landroid/os/Message;
    :cond_2
    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/wifidirect/test/WifiOppSendFileInfo;

    iget v2, v3, Lcom/android/wifidirect/test/WifiOppSendFileInfo;->mStatus:I

    goto :goto_1

    .line 335
    :cond_3
    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    iget v4, v4, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    invoke-static {v3, v4, v2}, Lcom/android/wifidirect/test/Constants;->wifiupdateShareStatus(Landroid/content/Context;II)V

    goto :goto_2

    .line 344
    :cond_4
    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->this$0:Lcom/android/wifidirect/test/WifiOppObexClientSession;

    #getter for: Lcom/android/wifidirect/test/WifiOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/wifidirect/test/WifiOppObexClientSession;->access$200(Lcom/android/wifidirect/test/WifiOppObexClientSession;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 345
    .restart local v1       #msg:Landroid/os/Message;
    const/4 v3, 0x2

    iput v3, v1, Landroid/os/Message;->what:I

    .line 346
    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    iput v2, v3, Lcom/android/wifidirect/test/WifiOppShareInfo;->mStatus:I

    .line 347
    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 348
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3
.end method

.method private handleSendException(Ljava/lang/String;)V
    .locals 4
    .parameter "exception"

    .prologue
    .line 596
    const-string v1, "WifiOppObexClientSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when sending file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const/16 v0, 0x1f0

    .line 598
    .local v0, status:I
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    iget v2, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    invoke-static {v1, v2, v0}, Lcom/android/wifidirect/test/Constants;->wifiupdateShareStatus(Landroid/content/Context;II)V

    .line 599
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->this$0:Lcom/android/wifidirect/test/WifiOppObexClientSession;

    #getter for: Lcom/android/wifidirect/test/WifiOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/wifidirect/test/WifiOppObexClientSession;->access$200(Lcom/android/wifidirect/test/WifiOppObexClientSession;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 600
    return-void
.end method

.method private initialFtpClient()V
    .locals 7

    .prologue
    .line 192
    const-string v0, "WifiOppObexClientSession"

    const-string v1, "initialFtpClient"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v6, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->this$0:Lcom/android/wifidirect/test/WifiOppObexClientSession;

    new-instance v0, Lcom/android/wifidirect/test/FTPClient;

    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->this$0:Lcom/android/wifidirect/test/WifiOppObexClientSession;

    #getter for: Lcom/android/wifidirect/test/WifiOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/wifidirect/test/WifiOppObexClientSession;->access$200(Lcom/android/wifidirect/test/WifiOppObexClientSession;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/wifidirect/test/WifiOppSendFileInfo;

    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    iget-object v4, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mTransport1:Lcom/android/wifidirect/test/ObexTransport;

    invoke-direct/range {v0 .. v5}, Lcom/android/wifidirect/test/FTPClient;-><init>(Landroid/os/Handler;Lcom/android/wifidirect/test/WifiOppSendFileInfo;Lcom/android/wifidirect/test/WifiOppShareInfo;Landroid/content/Context;Lcom/android/wifidirect/test/ObexTransport;)V

    #setter for: Lcom/android/wifidirect/test/WifiOppObexClientSession;->mClient:Lcom/android/wifidirect/test/FTPClient;
    invoke-static {v6, v0}, Lcom/android/wifidirect/test/WifiOppObexClientSession;->access$302(Lcom/android/wifidirect/test/WifiOppObexClientSession;Lcom/android/wifidirect/test/FTPClient;)Lcom/android/wifidirect/test/FTPClient;

    .line 197
    return-void
.end method

.method private processShareInfo()Lcom/android/wifidirect/test/WifiOppSendFileInfo;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 356
    const-string v3, "WifiOppObexClientSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Client thread processShareInfo() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    iget v5, v5, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    iget-object v4, v4, Lcom/android/wifidirect/test/WifiOppShareInfo;->mUri:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    iget-object v5, v5, Lcom/android/wifidirect/test/WifiOppShareInfo;->mMimetype:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    iget-object v6, v6, Lcom/android/wifidirect/test/WifiOppShareInfo;->mDestination:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lcom/android/wifidirect/test/WifiOppSendFileInfo;->generateFileInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/wifidirect/test/WifiOppSendFileInfo;

    move-result-object v1

    .line 360
    .local v1, fileInfo:Lcom/android/wifidirect/test/WifiOppSendFileInfo;
    iget-object v3, v1, Lcom/android/wifidirect/test/WifiOppSendFileInfo;->mFileName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-wide v3, v1, Lcom/android/wifidirect/test/WifiOppSendFileInfo;->mLength:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 361
    :cond_0
    const-string v3, "WifiOppObexClientSession"

    const-string v4, "WifiOppSendFileInfo get invalid file"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    iget v4, v4, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    iget v5, v1, Lcom/android/wifidirect/test/WifiOppSendFileInfo;->mStatus:I

    invoke-static {v3, v4, v5}, Lcom/android/wifidirect/test/Constants;->wifiupdateShareStatus(Landroid/content/Context;II)V

    .line 382
    :goto_0
    return-object v1

    .line 366
    :cond_1
    const-string v3, "WifiOppObexClientSession"

    const-string v4, "Generate WifiOppSendFileInfo:"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const-string v3, "WifiOppObexClientSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filename  :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/wifidirect/test/WifiOppSendFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const-string v3, "WifiOppObexClientSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "length    :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v1, Lcom/android/wifidirect/test/WifiOppSendFileInfo;->mLength:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const-string v3, "WifiOppObexClientSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mimetype  :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/wifidirect/test/WifiOppSendFileInfo;->mMimetype:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 373
    .local v2, updateValues:Landroid/content/ContentValues;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/wifidirect/test/WifiShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    iget v4, v4, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 375
    .local v0, contentUri:Landroid/net/Uri;
    const-string v3, "hint"

    iget-object v4, v1, Lcom/android/wifidirect/test/WifiOppSendFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string v3, "total_bytes"

    iget-wide v4, v1, Lcom/android/wifidirect/test/WifiOppSendFileInfo;->mLength:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 377
    const-string v3, "mimetype"

    iget-object v4, v1, Lcom/android/wifidirect/test/WifiOppSendFileInfo;->mMimetype:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private sendFile(Lcom/android/wifidirect/test/WifiOppSendFileInfo;)I
    .locals 28
    .parameter "fileInfo"

    .prologue
    .line 386
    const/4 v8, 0x0

    .line 387
    .local v8, error:Z
    const/16 v19, -0x1

    .line 388
    .local v19, responseCode:I
    const/16 v20, 0xc8

    .line 389
    .local v20, status:I
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v25, Lcom/android/wifidirect/test/WifiShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 392
    .local v6, contentUri:Landroid/net/Uri;
    new-instance v18, Lcom/android/wifidirect/test/HeaderSet;

    invoke-direct/range {v18 .. v18}, Lcom/android/wifidirect/test/HeaderSet;-><init>()V

    .line 393
    .local v18, request:Lcom/android/wifidirect/test/HeaderSet;
    const/16 v24, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/wifidirect/test/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 394
    const/16 v24, 0x42

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppSendFileInfo;->mMimetype:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/wifidirect/test/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 395
    const/16 v24, 0x5

    invoke-static {}, Lcom/android/wifidirect/test/WifiTransferMgr;->getSendDeviceName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v18

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/wifidirect/test/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 397
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/wifidirect/test/WifiOppObexClientSession;->applyRemoteDeviceQuirks(Lcom/android/wifidirect/test/HeaderSet;Lcom/android/wifidirect/test/WifiOppSendFileInfo;)V

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    move/from16 v25, v0

    const/16 v26, 0xc0

    invoke-static/range {v24 .. v26}, Lcom/android/wifidirect/test/Constants;->wifiupdateShareStatus(Landroid/content/Context;II)V

    .line 401
    const/16 v24, 0xc3

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/wifidirect/test/WifiOppSendFileInfo;->mLength:J

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v0, v18

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/wifidirect/test/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 402
    const/16 v16, 0x0

    .line 403
    .local v16, putOperation:Lcom/android/wifidirect/test/ClientOperation;
    const/4 v13, 0x0

    .line 404
    .local v13, outputStream:Ljava/io/OutputStream;
    const/4 v10, 0x0

    .line 406
    .local v10, inputStream:Ljava/io/InputStream;
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_5

    .line 407
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->this$0:Lcom/android/wifidirect/test/WifiOppObexClientSession;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    #setter for: Lcom/android/wifidirect/test/WifiOppObexClientSession;->mWaitingForRemote:Z
    invoke-static/range {v24 .. v25}, Lcom/android/wifidirect/test/WifiOppObexClientSession;->access$002(Lcom/android/wifidirect/test/WifiOppObexClientSession;Z)Z

    .line 408
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 410
    :try_start_2
    const-string v24, "WifiOppObexClientSession"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "put headerset for "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-static/range {v18 .. v18}, Lcom/android/wifidirect/test/Constants;->logHeader(Lcom/android/wifidirect/test/HeaderSet;)V

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mCs:Lcom/android/wifidirect/test/ClientSession;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/wifidirect/test/ClientSession;->put(Lcom/android/wifidirect/test/HeaderSet;)Lcom/android/wifidirect/test/Operation;

    move-result-object v24

    move-object/from16 v0, v24

    check-cast v0, Lcom/android/wifidirect/test/ClientOperation;

    move-object/from16 v16, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_5

    .line 420
    :goto_0
    :try_start_3
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_5

    .line 421
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->this$0:Lcom/android/wifidirect/test/WifiOppObexClientSession;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    #setter for: Lcom/android/wifidirect/test/WifiOppObexClientSession;->mWaitingForRemote:Z
    invoke-static/range {v24 .. v25}, Lcom/android/wifidirect/test/WifiOppObexClientSession;->access$002(Lcom/android/wifidirect/test/WifiOppObexClientSession;Z)Z

    .line 422
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 424
    if-nez v8, :cond_0

    .line 426
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Lcom/android/wifidirect/test/ClientOperation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    .line 427
    invoke-virtual/range {v16 .. v16}, Lcom/android/wifidirect/test/ClientOperation;->openInputStream()Ljava/io/InputStream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v10

    .line 435
    :cond_0
    :goto_1
    if-nez v8, :cond_1

    .line 436
    :try_start_6
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 437
    .local v23, updateValues:Landroid/content/ContentValues;
    const-string v24, "current_bytes"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 438
    const-string v24, "status"

    const/16 v25, 0xc0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 442
    .end local v23           #updateValues:Landroid/content/ContentValues;
    :cond_1
    if-nez v8, :cond_1d

    .line 443
    const/4 v15, 0x0

    .line 444
    .local v15, position:I
    const/16 v17, 0x0

    .line 445
    .local v17, readLength:I
    const/4 v11, 0x0

    .line 446
    .local v11, okToProceed:Z
    const-wide/16 v21, 0x0

    .line 447
    .local v21, timestamp:J
    invoke-virtual/range {v16 .. v16}, Lcom/android/wifidirect/test/ClientOperation;->getMaxPacketSize()I

    move-result v12

    .line 448
    .local v12, outputBufferSize:I
    const-string v24, "WifiOppObexClientSession"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Send outputBufferSize:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    new-array v5, v12, [B

    .line 451
    .local v5, buffer:[B
    new-instance v4, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    move-object/from16 v24, v0

    const v25, 0x8000

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v4, v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 453
    .local v4, a:Ljava/io/BufferedInputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->this$0:Lcom/android/wifidirect/test/WifiOppObexClientSession;

    move-object/from16 v24, v0

    #getter for: Lcom/android/wifidirect/test/WifiOppObexClientSession;->mInterrupted:Z
    invoke-static/range {v24 .. v24}, Lcom/android/wifidirect/test/WifiOppObexClientSession;->access$100(Lcom/android/wifidirect/test/WifiOppObexClientSession;)Z

    move-result v24

    if-nez v24, :cond_3

    int-to-long v0, v15

    move-wide/from16 v24, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/wifidirect/test/WifiOppSendFileInfo;->mLength:J

    move-wide/from16 v26, v0

    cmp-long v24, v24, v26

    if-eqz v24, :cond_3

    .line 454
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v4, v5, v0, v12}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v17

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->this$0:Lcom/android/wifidirect/test/WifiOppObexClientSession;

    move-object/from16 v24, v0

    #getter for: Lcom/android/wifidirect/test/WifiOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static/range {v24 .. v24}, Lcom/android/wifidirect/test/WifiOppObexClientSession;->access$200(Lcom/android/wifidirect/test/WifiOppObexClientSession;)Landroid/os/Handler;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->this$0:Lcom/android/wifidirect/test/WifiOppObexClientSession;

    move-object/from16 v25, v0

    #getter for: Lcom/android/wifidirect/test/WifiOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static/range {v25 .. v25}, Lcom/android/wifidirect/test/WifiOppObexClientSession;->access$200(Lcom/android/wifidirect/test/WifiOppObexClientSession;)Landroid/os/Handler;

    move-result-object v25

    const/16 v26, 0x4

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v25

    const-wide/32 v26, 0xc350

    invoke-virtual/range {v24 .. v27}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 459
    monitor-enter p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_5

    .line 460
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->this$0:Lcom/android/wifidirect/test/WifiOppObexClientSession;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    #setter for: Lcom/android/wifidirect/test/WifiOppObexClientSession;->mWaitingForRemote:Z
    invoke-static/range {v24 .. v25}, Lcom/android/wifidirect/test/WifiOppObexClientSession;->access$002(Lcom/android/wifidirect/test/WifiOppObexClientSession;Z)Z

    .line 461
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 464
    const/16 v24, 0x0

    :try_start_8
    move/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v13, v5, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 466
    add-int v15, v15, v17

    .line 468
    int-to-long v0, v15

    move-wide/from16 v24, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/wifidirect/test/WifiOppSendFileInfo;->mLength:J

    move-wide/from16 v26, v0

    cmp-long v24, v24, v26

    if-eqz v24, :cond_17

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->this$0:Lcom/android/wifidirect/test/WifiOppObexClientSession;

    move-object/from16 v24, v0

    #getter for: Lcom/android/wifidirect/test/WifiOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static/range {v24 .. v24}, Lcom/android/wifidirect/test/WifiOppObexClientSession;->access$200(Lcom/android/wifidirect/test/WifiOppObexClientSession;)Landroid/os/Handler;

    move-result-object v24

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->removeMessages(I)V

    .line 470
    monitor-enter p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_5

    .line 471
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->this$0:Lcom/android/wifidirect/test/WifiOppObexClientSession;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    #setter for: Lcom/android/wifidirect/test/WifiOppObexClientSession;->mWaitingForRemote:Z
    invoke-static/range {v24 .. v25}, Lcom/android/wifidirect/test/WifiOppObexClientSession;->access$002(Lcom/android/wifidirect/test/WifiOppObexClientSession;Z)Z

    .line 472
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 483
    :goto_2
    :try_start_a
    invoke-virtual/range {v16 .. v16}, Lcom/android/wifidirect/test/ClientOperation;->getResponseCode()I

    move-result v19

    .line 485
    const/16 v24, 0x90

    move/from16 v0, v19

    move/from16 v1, v24

    if-eq v0, v1, :cond_2

    const/16 v24, 0xa0

    move/from16 v0, v19

    move/from16 v1, v24

    if-ne v0, v1, :cond_18

    .line 487
    :cond_2
    const-string v24, "WifiOppObexClientSession"

    const-string v25, "Remote accept"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const/4 v11, 0x1

    .line 489
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 490
    .restart local v23       #updateValues:Landroid/content/ContentValues;
    const-string v24, "current_bytes"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 497
    .end local v23           #updateValues:Landroid/content/ContentValues;
    :cond_3
    :goto_3
    const/4 v14, 0x0

    .line 498
    .local v14, perCentCounter:I
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/wifidirect/test/WifiOppSendFileInfo;->mLength:J

    move-wide/from16 v24, v0

    mul-int/lit8 v26, v12, 0x14

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    div-long v24, v24, v26

    move-wide/from16 v0, v24

    long-to-int v9, v0

    .line 499
    .local v9, filePercent:I
    const-string v24, "WifiOppObexClientSession"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "filePercent "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->this$0:Lcom/android/wifidirect/test/WifiOppObexClientSession;

    move-object/from16 v24, v0

    #getter for: Lcom/android/wifidirect/test/WifiOppObexClientSession;->mInterrupted:Z
    invoke-static/range {v24 .. v24}, Lcom/android/wifidirect/test/WifiOppObexClientSession;->access$100(Lcom/android/wifidirect/test/WifiOppObexClientSession;)Z

    move-result v24

    if-nez v24, :cond_1b

    if-eqz v11, :cond_1b

    int-to-long v0, v15

    move-wide/from16 v24, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/wifidirect/test/WifiOppSendFileInfo;->mLength:J

    move-wide/from16 v26, v0

    cmp-long v24, v24, v26

    if-eqz v24, :cond_1b

    .line 502
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v4, v5, v0, v12}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v17

    .line 503
    const/16 v24, 0x0

    move/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v13, v5, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 506
    invoke-virtual/range {v16 .. v16}, Lcom/android/wifidirect/test/ClientOperation;->getResponseCode()I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_5

    move-result v19

    .line 507
    const/16 v24, 0x90

    move/from16 v0, v19

    move/from16 v1, v24

    if-eq v0, v1, :cond_19

    const/16 v24, 0xa0

    move/from16 v0, v19

    move/from16 v1, v24

    if-eq v0, v1, :cond_19

    .line 510
    const/4 v11, 0x0

    goto :goto_4

    .line 408
    .end local v4           #a:Ljava/io/BufferedInputStream;
    .end local v5           #buffer:[B
    .end local v9           #filePercent:I
    .end local v11           #okToProceed:Z
    .end local v12           #outputBufferSize:I
    .end local v14           #perCentCounter:I
    .end local v15           #position:I
    .end local v17           #readLength:I
    .end local v21           #timestamp:J
    :catchall_0
    move-exception v24

    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    throw v24
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_5

    .line 550
    :catch_0
    move-exception v7

    .line 551
    .local v7, e:Ljava/io/IOException;
    :try_start_d
    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->handleSendException(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 558
    :try_start_e
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/io/FileInputStream;->close()V

    .line 559
    if-nez v8, :cond_7

    .line 560
    invoke-virtual/range {v16 .. v16}, Lcom/android/wifidirect/test/ClientOperation;->getResponseCode()I

    move-result v19

    .line 561
    const/16 v24, -0x1

    move/from16 v0, v19

    move/from16 v1, v24

    if-eq v0, v1, :cond_26

    .line 562
    const-string v24, "WifiOppObexClientSession"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Get response code "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const/16 v24, 0xa0

    move/from16 v0, v19

    move/from16 v1, v24

    if-eq v0, v1, :cond_7

    .line 564
    const-string v24, "WifiOppObexClientSession"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Response error code is "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const/16 v20, 0x1ef

    .line 566
    const/16 v24, 0xcf

    move/from16 v0, v19

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    .line 567
    const/16 v20, 0x196

    .line 569
    :cond_5
    const/16 v24, 0xc3

    move/from16 v0, v19

    move/from16 v1, v24

    if-eq v0, v1, :cond_6

    const/16 v24, 0xc6

    move/from16 v0, v19

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 571
    :cond_6
    const/16 v20, 0x193

    .line 580
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/wifidirect/test/Constants;->wifiupdateShareStatus(Landroid/content/Context;II)V

    .line 582
    if-eqz v10, :cond_8

    .line 583
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 585
    :cond_8
    if-eqz v16, :cond_9

    .line 586
    invoke-virtual/range {v16 .. v16}, Lcom/android/wifidirect/test/ClientOperation;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    .line 592
    .end local v7           #e:Ljava/io/IOException;
    :cond_9
    :goto_6
    return v20

    .line 413
    :catch_1
    move-exception v7

    .line 414
    .restart local v7       #e:Ljava/io/IOException;
    const/16 v20, 0x1f0

    .line 415
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/wifidirect/test/Constants;->wifiupdateShareStatus(Landroid/content/Context;II)V

    .line 417
    const-string v24, "WifiOppObexClientSession"

    const-string v25, "Error when put HeaderSet "

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_f} :catch_5

    .line 418
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 422
    .end local v7           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v24

    :try_start_10
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :try_start_11
    throw v24
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_11 .. :try_end_11} :catch_5

    .line 552
    :catch_2
    move-exception v7

    .line 553
    .local v7, e:Ljava/lang/NullPointerException;
    :try_start_12
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->handleSendException(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 558
    :try_start_13
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/io/FileInputStream;->close()V

    .line 559
    if-nez v8, :cond_c

    .line 560
    invoke-virtual/range {v16 .. v16}, Lcom/android/wifidirect/test/ClientOperation;->getResponseCode()I

    move-result v19

    .line 561
    const/16 v24, -0x1

    move/from16 v0, v19

    move/from16 v1, v24

    if-eq v0, v1, :cond_27

    .line 562
    const-string v24, "WifiOppObexClientSession"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Get response code "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const/16 v24, 0xa0

    move/from16 v0, v19

    move/from16 v1, v24

    if-eq v0, v1, :cond_c

    .line 564
    const-string v24, "WifiOppObexClientSession"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Response error code is "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const/16 v20, 0x1ef

    .line 566
    const/16 v24, 0xcf

    move/from16 v0, v19

    move/from16 v1, v24

    if-ne v0, v1, :cond_a

    .line 567
    const/16 v20, 0x196

    .line 569
    :cond_a
    const/16 v24, 0xc3

    move/from16 v0, v19

    move/from16 v1, v24

    if-eq v0, v1, :cond_b

    const/16 v24, 0xc6

    move/from16 v0, v19

    move/from16 v1, v24

    if-ne v0, v1, :cond_c

    .line 571
    :cond_b
    const/16 v20, 0x193

    .line 580
    :cond_c
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/wifidirect/test/Constants;->wifiupdateShareStatus(Landroid/content/Context;II)V

    .line 582
    if-eqz v10, :cond_d

    .line 583
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 585
    :cond_d
    if-eqz v16, :cond_9

    .line 586
    invoke-virtual/range {v16 .. v16}, Lcom/android/wifidirect/test/ClientOperation;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_3

    goto/16 :goto_6

    .line 588
    :catch_3
    move-exception v7

    .line 589
    .local v7, e:Ljava/io/IOException;
    const-string v24, "WifiOppObexClientSession"

    const-string v25, "Error when closing stream after send"

    :goto_8
    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 428
    .end local v7           #e:Ljava/io/IOException;
    :catch_4
    move-exception v7

    .line 429
    .restart local v7       #e:Ljava/io/IOException;
    const/16 v20, 0x1f0

    .line 430
    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/wifidirect/test/Constants;->wifiupdateShareStatus(Landroid/content/Context;II)V

    .line 431
    const-string v24, "WifiOppObexClientSession"

    const-string v25, "Error when openOutputStream"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_14} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_14 .. :try_end_14} :catch_5

    .line 432
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 461
    .end local v7           #e:Ljava/io/IOException;
    .restart local v4       #a:Ljava/io/BufferedInputStream;
    .restart local v5       #buffer:[B
    .restart local v11       #okToProceed:Z
    .restart local v12       #outputBufferSize:I
    .restart local v15       #position:I
    .restart local v17       #readLength:I
    .restart local v21       #timestamp:J
    :catchall_2
    move-exception v24

    :try_start_15
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    :try_start_16
    throw v24
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_16} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_16 .. :try_end_16} :catch_5

    .line 554
    .end local v4           #a:Ljava/io/BufferedInputStream;
    .end local v5           #buffer:[B
    .end local v11           #okToProceed:Z
    .end local v12           #outputBufferSize:I
    .end local v15           #position:I
    .end local v17           #readLength:I
    .end local v21           #timestamp:J
    :catch_5
    move-exception v7

    .line 555
    .local v7, e:Ljava/lang/IndexOutOfBoundsException;
    :try_start_17
    invoke-virtual {v7}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->handleSendException(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    .line 558
    :try_start_18
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/io/FileInputStream;->close()V

    .line 559
    if-nez v8, :cond_10

    .line 560
    invoke-virtual/range {v16 .. v16}, Lcom/android/wifidirect/test/ClientOperation;->getResponseCode()I

    move-result v19

    .line 561
    const/16 v24, -0x1

    move/from16 v0, v19

    move/from16 v1, v24

    if-eq v0, v1, :cond_28

    .line 562
    const-string v24, "WifiOppObexClientSession"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Get response code "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const/16 v24, 0xa0

    move/from16 v0, v19

    move/from16 v1, v24

    if-eq v0, v1, :cond_10

    .line 564
    const-string v24, "WifiOppObexClientSession"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Response error code is "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const/16 v20, 0x1ef

    .line 566
    const/16 v24, 0xcf

    move/from16 v0, v19

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    .line 567
    const/16 v20, 0x196

    .line 569
    :cond_e
    const/16 v24, 0xc3

    move/from16 v0, v19

    move/from16 v1, v24

    if-eq v0, v1, :cond_f

    const/16 v24, 0xc6

    move/from16 v0, v19

    move/from16 v1, v24

    if-ne v0, v1, :cond_10

    .line 571
    :cond_f
    const/16 v20, 0x193

    .line 580
    :cond_10
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/wifidirect/test/Constants;->wifiupdateShareStatus(Landroid/content/Context;II)V

    .line 582
    if-eqz v10, :cond_11

    .line 583
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 585
    :cond_11
    if-eqz v16, :cond_9

    .line 586
    invoke-virtual/range {v16 .. v16}, Lcom/android/wifidirect/test/ClientOperation;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_6

    goto/16 :goto_6

    .line 588
    :catch_6
    move-exception v7

    .line 589
    .local v7, e:Ljava/io/IOException;
    const-string v24, "WifiOppObexClientSession"

    const-string v25, "Error when closing stream after send"

    goto/16 :goto_8

    .line 472
    .end local v7           #e:Ljava/io/IOException;
    .restart local v4       #a:Ljava/io/BufferedInputStream;
    .restart local v5       #buffer:[B
    .restart local v11       #okToProceed:Z
    .restart local v12       #outputBufferSize:I
    .restart local v15       #position:I
    .restart local v17       #readLength:I
    .restart local v21       #timestamp:J
    :catchall_3
    move-exception v24

    :try_start_19
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    :try_start_1a
    throw v24
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1a .. :try_end_1a} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1a .. :try_end_1a} :catch_5

    .line 557
    .end local v4           #a:Ljava/io/BufferedInputStream;
    .end local v5           #buffer:[B
    .end local v11           #okToProceed:Z
    .end local v12           #outputBufferSize:I
    .end local v15           #position:I
    .end local v17           #readLength:I
    .end local v21           #timestamp:J
    :catchall_4
    move-exception v24

    .line 558
    :try_start_1b
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/FileInputStream;->close()V

    .line 559
    if-nez v8, :cond_14

    .line 560
    invoke-virtual/range {v16 .. v16}, Lcom/android/wifidirect/test/ClientOperation;->getResponseCode()I

    move-result v19

    .line 561
    const/16 v25, -0x1

    move/from16 v0, v19

    move/from16 v1, v25

    if-eq v0, v1, :cond_25

    .line 562
    const-string v25, "WifiOppObexClientSession"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Get response code "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const/16 v25, 0xa0

    move/from16 v0, v19

    move/from16 v1, v25

    if-eq v0, v1, :cond_14

    .line 564
    const-string v25, "WifiOppObexClientSession"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Response error code is "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const/16 v20, 0x1ef

    .line 566
    const/16 v25, 0xcf

    move/from16 v0, v19

    move/from16 v1, v25

    if-ne v0, v1, :cond_12

    .line 567
    const/16 v20, 0x196

    .line 569
    :cond_12
    const/16 v25, 0xc3

    move/from16 v0, v19

    move/from16 v1, v25

    if-eq v0, v1, :cond_13

    const/16 v25, 0xc6

    move/from16 v0, v19

    move/from16 v1, v25

    if-ne v0, v1, :cond_14

    .line 571
    :cond_13
    const/16 v20, 0x193

    .line 580
    :cond_14
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    move/from16 v26, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/wifidirect/test/Constants;->wifiupdateShareStatus(Landroid/content/Context;II)V

    .line 582
    if-eqz v10, :cond_15

    .line 583
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 585
    :cond_15
    if-eqz v16, :cond_16

    .line 586
    invoke-virtual/range {v16 .. v16}, Lcom/android/wifidirect/test/ClientOperation;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_8

    .line 557
    :cond_16
    :goto_b
    throw v24

    .line 476
    .restart local v4       #a:Ljava/io/BufferedInputStream;
    .restart local v5       #buffer:[B
    .restart local v11       #okToProceed:Z
    .restart local v12       #outputBufferSize:I
    .restart local v15       #position:I
    .restart local v17       #readLength:I
    .restart local v21       #timestamp:J
    :cond_17
    :try_start_1c
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->this$0:Lcom/android/wifidirect/test/WifiOppObexClientSession;

    move-object/from16 v24, v0

    #getter for: Lcom/android/wifidirect/test/WifiOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static/range {v24 .. v24}, Lcom/android/wifidirect/test/WifiOppObexClientSession;->access$200(Lcom/android/wifidirect/test/WifiOppObexClientSession;)Landroid/os/Handler;

    move-result-object v24

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->removeMessages(I)V

    .line 478
    monitor-enter p0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1c .. :try_end_1c} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1c .. :try_end_1c} :catch_5

    .line 479
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->this$0:Lcom/android/wifidirect/test/WifiOppObexClientSession;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    #setter for: Lcom/android/wifidirect/test/WifiOppObexClientSession;->mWaitingForRemote:Z
    invoke-static/range {v24 .. v25}, Lcom/android/wifidirect/test/WifiOppObexClientSession;->access$002(Lcom/android/wifidirect/test/WifiOppObexClientSession;Z)Z

    .line 480
    monitor-exit p0

    goto/16 :goto_2

    :catchall_5
    move-exception v24

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    :try_start_1e
    throw v24

    .line 494
    :cond_18
    const-string v24, "WifiOppObexClientSession"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Remote reject, Response code is "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 512
    .restart local v9       #filePercent:I
    .restart local v14       #perCentCounter:I
    :cond_19
    add-int v15, v15, v17

    .line 514
    add-int/lit8 v14, v14, 0x1

    .line 515
    if-ge v14, v9, :cond_1a

    int-to-long v0, v15

    move-wide/from16 v24, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/wifidirect/test/WifiOppSendFileInfo;->mLength:J

    move-wide/from16 v26, v0

    cmp-long v24, v24, v26

    if-nez v24, :cond_4

    .line 518
    :cond_1a
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 519
    .restart local v23       #updateValues:Landroid/content/ContentValues;
    const-string v24, "current_bytes"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 522
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 529
    .end local v23           #updateValues:Landroid/content/ContentValues;
    :cond_1b
    const/16 v24, 0xc3

    move/from16 v0, v19

    move/from16 v1, v24

    if-eq v0, v1, :cond_1c

    const/16 v24, 0xc6

    move/from16 v0, v19

    move/from16 v1, v24

    if-ne v0, v1, :cond_22

    .line 531
    :cond_1c
    const-string v24, "WifiOppObexClientSession"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Remote reject file "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " length "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/wifidirect/test/WifiOppSendFileInfo;->mLength:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1e .. :try_end_1e} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1e .. :try_end_1e} :catch_5

    .line 533
    const/16 v20, 0x193

    .line 558
    .end local v4           #a:Ljava/io/BufferedInputStream;
    .end local v5           #buffer:[B
    .end local v9           #filePercent:I
    .end local v11           #okToProceed:Z
    .end local v12           #outputBufferSize:I
    .end local v14           #perCentCounter:I
    .end local v15           #position:I
    .end local v17           #readLength:I
    .end local v21           #timestamp:J
    :cond_1d
    :goto_c
    :try_start_1f
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/io/FileInputStream;->close()V

    .line 559
    if-nez v8, :cond_20

    .line 560
    invoke-virtual/range {v16 .. v16}, Lcom/android/wifidirect/test/ClientOperation;->getResponseCode()I

    move-result v19

    .line 561
    const/16 v24, -0x1

    move/from16 v0, v19

    move/from16 v1, v24

    if-eq v0, v1, :cond_29

    .line 562
    const-string v24, "WifiOppObexClientSession"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Get response code "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const/16 v24, 0xa0

    move/from16 v0, v19

    move/from16 v1, v24

    if-eq v0, v1, :cond_20

    .line 564
    const-string v24, "WifiOppObexClientSession"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Response error code is "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const/16 v20, 0x1ef

    .line 566
    const/16 v24, 0xcf

    move/from16 v0, v19

    move/from16 v1, v24

    if-ne v0, v1, :cond_1e

    .line 567
    const/16 v20, 0x196

    .line 569
    :cond_1e
    const/16 v24, 0xc3

    move/from16 v0, v19

    move/from16 v1, v24

    if-eq v0, v1, :cond_1f

    const/16 v24, 0xc6

    move/from16 v0, v19

    move/from16 v1, v24

    if-ne v0, v1, :cond_20

    .line 571
    :cond_1f
    const/16 v20, 0x193

    .line 580
    :cond_20
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/wifidirect/test/Constants;->wifiupdateShareStatus(Landroid/content/Context;II)V

    .line 582
    if-eqz v10, :cond_21

    .line 583
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 585
    :cond_21
    if-eqz v16, :cond_9

    .line 586
    invoke-virtual/range {v16 .. v16}, Lcom/android/wifidirect/test/ClientOperation;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_7

    goto/16 :goto_6

    .line 588
    :catch_7
    move-exception v7

    .line 589
    .restart local v7       #e:Ljava/io/IOException;
    const-string v24, "WifiOppObexClientSession"

    const-string v25, "Error when closing stream after send"

    goto/16 :goto_8

    .line 534
    .end local v7           #e:Ljava/io/IOException;
    .restart local v4       #a:Ljava/io/BufferedInputStream;
    .restart local v5       #buffer:[B
    .restart local v9       #filePercent:I
    .restart local v11       #okToProceed:Z
    .restart local v12       #outputBufferSize:I
    .restart local v14       #perCentCounter:I
    .restart local v15       #position:I
    .restart local v17       #readLength:I
    .restart local v21       #timestamp:J
    :cond_22
    const/16 v24, 0xcf

    move/from16 v0, v19

    move/from16 v1, v24

    if-ne v0, v1, :cond_23

    .line 535
    :try_start_20
    const-string v24, "WifiOppObexClientSession"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Remote reject file type "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppSendFileInfo;->mMimetype:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const/16 v20, 0x196

    goto/16 :goto_c

    .line 537
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->this$0:Lcom/android/wifidirect/test/WifiOppObexClientSession;

    move-object/from16 v24, v0

    #getter for: Lcom/android/wifidirect/test/WifiOppObexClientSession;->mInterrupted:Z
    invoke-static/range {v24 .. v24}, Lcom/android/wifidirect/test/WifiOppObexClientSession;->access$100(Lcom/android/wifidirect/test/WifiOppObexClientSession;)Z

    move-result v24

    if-nez v24, :cond_24

    int-to-long v0, v15

    move-wide/from16 v24, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/wifidirect/test/WifiOppSendFileInfo;->mLength:J

    move-wide/from16 v26, v0

    cmp-long v24, v24, v26

    if-nez v24, :cond_24

    .line 538
    const-string v24, "WifiOppObexClientSession"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "SendFile finished send out file "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " length "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/wifidirect/test/WifiOppSendFileInfo;->mLength:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    goto/16 :goto_c

    .line 542
    :cond_24
    const/4 v8, 0x1

    .line 543
    const/16 v20, 0x1ea

    .line 544
    invoke-virtual/range {v16 .. v16}, Lcom/android/wifidirect/test/ClientOperation;->abort()V

    .line 546
    const-string v24, "WifiOppObexClientSession"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "SendFile interrupted when send out file "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " at "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " of "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/wifidirect/test/WifiOppSendFileInfo;->mLength:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_4
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_20 .. :try_end_20} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_20 .. :try_end_20} :catch_5

    goto/16 :goto_c

    .line 588
    .end local v4           #a:Ljava/io/BufferedInputStream;
    .end local v5           #buffer:[B
    .end local v9           #filePercent:I
    .end local v11           #okToProceed:Z
    .end local v12           #outputBufferSize:I
    .end local v14           #perCentCounter:I
    .end local v15           #position:I
    .end local v17           #readLength:I
    .end local v21           #timestamp:J
    :catch_8
    move-exception v7

    .line 589
    .restart local v7       #e:Ljava/io/IOException;
    const-string v25, "WifiOppObexClientSession"

    const-string v26, "Error when closing stream after send"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 576
    .end local v7           #e:Ljava/io/IOException;
    :cond_25
    const/16 v20, 0x1f1

    goto/16 :goto_a

    .line 588
    .restart local v7       #e:Ljava/io/IOException;
    :catch_9
    move-exception v7

    .line 589
    const-string v24, "WifiOppObexClientSession"

    const-string v25, "Error when closing stream after send"

    goto/16 :goto_8

    .line 576
    :cond_26
    const/16 v20, 0x1f1

    goto/16 :goto_5

    .local v7, e:Ljava/lang/NullPointerException;
    :cond_27
    const/16 v20, 0x1f1

    goto/16 :goto_7

    .local v7, e:Ljava/lang/IndexOutOfBoundsException;
    :cond_28
    const/16 v20, 0x1f1

    goto/16 :goto_9

    .end local v7           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_29
    const/16 v20, 0x1f1

    goto/16 :goto_d
.end method

.method private sendShareInterrupted()V
    .locals 4

    .prologue
    .line 626
    const-string v2, "WifiOppObexClientSession"

    const-string v3, "Interrupted when waitingForRemote"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :try_start_0
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mTransport1:Lcom/android/wifidirect/test/ObexTransport;

    invoke-interface {v2}, Lcom/android/wifidirect/test/ObexTransport;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    :goto_0
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->this$0:Lcom/android/wifidirect/test/WifiOppObexClientSession;

    #getter for: Lcom/android/wifidirect/test/WifiOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/wifidirect/test/WifiOppObexClientSession;->access$200(Lcom/android/wifidirect/test/WifiOppObexClientSession;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 633
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 634
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    if-eqz v2, :cond_0

    .line 635
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 637
    :cond_0
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 638
    return-void

    .line 629
    .end local v1           #msg:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 630
    .local v0, e:Ljava/io/IOException;
    const-string v2, "WifiOppObexClientSession"

    const-string v3, "mTransport.close error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public FtpClientDisconnect()V
    .locals 3

    .prologue
    .line 216
    const-string v1, "WifiOppObexClientSession"

    const-string v2, "FtpClientDisconnect! "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->this$0:Lcom/android/wifidirect/test/WifiOppObexClientSession;

    #getter for: Lcom/android/wifidirect/test/WifiOppObexClientSession;->mClient:Lcom/android/wifidirect/test/FTPClient;
    invoke-static {v1}, Lcom/android/wifidirect/test/WifiOppObexClientSession;->access$300(Lcom/android/wifidirect/test/WifiOppObexClientSession;)Lcom/android/wifidirect/test/FTPClient;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->this$0:Lcom/android/wifidirect/test/WifiOppObexClientSession;

    #getter for: Lcom/android/wifidirect/test/WifiOppObexClientSession;->mClient:Lcom/android/wifidirect/test/FTPClient;
    invoke-static {v1}, Lcom/android/wifidirect/test/WifiOppObexClientSession;->access$300(Lcom/android/wifidirect/test/WifiOppObexClientSession;)Lcom/android/wifidirect/test/FTPClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wifidirect/test/FTPClient;->onSessionComplete()V

    .line 220
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->this$0:Lcom/android/wifidirect/test/WifiOppObexClientSession;

    #getter for: Lcom/android/wifidirect/test/WifiOppObexClientSession;->mClient:Lcom/android/wifidirect/test/FTPClient;
    invoke-static {v1}, Lcom/android/wifidirect/test/WifiOppObexClientSession;->access$300(Lcom/android/wifidirect/test/WifiOppObexClientSession;)Lcom/android/wifidirect/test/FTPClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wifidirect/test/FTPClient;->disconnect()V

    .line 221
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->this$0:Lcom/android/wifidirect/test/WifiOppObexClientSession;

    #getter for: Lcom/android/wifidirect/test/WifiOppObexClientSession;->mClient:Lcom/android/wifidirect/test/FTPClient;
    invoke-static {v1}, Lcom/android/wifidirect/test/WifiOppObexClientSession;->access$300(Lcom/android/wifidirect/test/WifiOppObexClientSession;)Lcom/android/wifidirect/test/FTPClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wifidirect/test/FTPClient;->close()V

    .line 222
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->this$0:Lcom/android/wifidirect/test/WifiOppObexClientSession;

    const/4 v2, 0x0

    #setter for: Lcom/android/wifidirect/test/WifiOppObexClientSession;->mClient:Lcom/android/wifidirect/test/FTPClient;
    invoke-static {v1, v2}, Lcom/android/wifidirect/test/WifiOppObexClientSession;->access$302(Lcom/android/wifidirect/test/WifiOppObexClientSession;Lcom/android/wifidirect/test/FTPClient;)Lcom/android/wifidirect/test/FTPClient;

    .line 225
    :cond_0
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mTransport1:Lcom/android/wifidirect/test/ObexTransport;

    if-eqz v1, :cond_1

    .line 227
    :try_start_0
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mTransport1:Lcom/android/wifidirect/test/ObexTransport;

    invoke-interface {v1}, Lcom/android/wifidirect/test/ObexTransport;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :cond_1
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, e:Ljava/io/IOException;
    const-string v1, "WifiOppObexClientSession"

    const-string v2, "FtpClientDisconnect: mTransport.close error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public addShare(Lcom/android/wifidirect/test/WifiOppShareInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 122
    const-string v0, "WifiOppObexClientSession"

    const-string v1, "addShare!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    .line 124
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->processShareInfo()Lcom/android/wifidirect/test/WifiOppSendFileInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/wifidirect/test/WifiOppSendFileInfo;

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->waitingForShare:Z

    .line 126
    return-void
.end method

.method public interrupt()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 604
    const-string v0, "WifiOppObexClientSession"

    const-string v1, "interrupt: begin"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 606
    const-string v0, "WifiOppObexClientSession"

    const-string v1, "interrupt: bp1"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    sget-boolean v0, Lcom/android/wifidirect/test/Constants;->IS_USE_FTP_TRANSFOR_MODE:Z

    if-eqz v0, :cond_1

    .line 609
    const-string v0, "WifiOppObexClientSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interrupt: mClient="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->this$0:Lcom/android/wifidirect/test/WifiOppObexClientSession;

    #getter for: Lcom/android/wifidirect/test/WifiOppObexClientSession;->mClient:Lcom/android/wifidirect/test/FTPClient;
    invoke-static {v2}, Lcom/android/wifidirect/test/WifiOppObexClientSession;->access$300(Lcom/android/wifidirect/test/WifiOppObexClientSession;)Lcom/android/wifidirect/test/FTPClient;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->this$0:Lcom/android/wifidirect/test/WifiOppObexClientSession;

    #getter for: Lcom/android/wifidirect/test/WifiOppObexClientSession;->mClient:Lcom/android/wifidirect/test/FTPClient;
    invoke-static {v0}, Lcom/android/wifidirect/test/WifiOppObexClientSession;->access$300(Lcom/android/wifidirect/test/WifiOppObexClientSession;)Lcom/android/wifidirect/test/FTPClient;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/wifidirect/test/FTPClient;->setInterrupted(Z)V

    .line 611
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->this$0:Lcom/android/wifidirect/test/WifiOppObexClientSession;

    #getter for: Lcom/android/wifidirect/test/WifiOppObexClientSession;->mClient:Lcom/android/wifidirect/test/FTPClient;
    invoke-static {v0}, Lcom/android/wifidirect/test/WifiOppObexClientSession;->access$300(Lcom/android/wifidirect/test/WifiOppObexClientSession;)Lcom/android/wifidirect/test/FTPClient;

    move-result-object v1

    monitor-enter v1

    .line 612
    :try_start_0
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->this$0:Lcom/android/wifidirect/test/WifiOppObexClientSession;

    #getter for: Lcom/android/wifidirect/test/WifiOppObexClientSession;->mClient:Lcom/android/wifidirect/test/FTPClient;
    invoke-static {v0}, Lcom/android/wifidirect/test/WifiOppObexClientSession;->access$300(Lcom/android/wifidirect/test/WifiOppObexClientSession;)Lcom/android/wifidirect/test/FTPClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wifidirect/test/FTPClient;->getWaitingForRemote()Z

    move-result v0

    if-ne v3, v0, :cond_0

    .line 613
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->sendShareInterrupted()V

    .line 615
    :cond_0
    monitor-exit v1

    .line 623
    :goto_0
    return-void

    .line 615
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 617
    :cond_1
    monitor-enter p0

    .line 618
    :try_start_1
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->this$0:Lcom/android/wifidirect/test/WifiOppObexClientSession;

    #getter for: Lcom/android/wifidirect/test/WifiOppObexClientSession;->mWaitingForRemote:Z
    invoke-static {v0}, Lcom/android/wifidirect/test/WifiOppObexClientSession;->access$000(Lcom/android/wifidirect/test/WifiOppObexClientSession;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 619
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->sendShareInterrupted()V

    .line 621
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 130
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 132
    const-string v2, "WifiOppObexClientSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquire partial WakeLock mInterrupted="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->this$0:Lcom/android/wifidirect/test/WifiOppObexClientSession;

    #getter for: Lcom/android/wifidirect/test/WifiOppObexClientSession;->mInterrupted:Z
    invoke-static {v4}, Lcom/android/wifidirect/test/WifiOppObexClientSession;->access$100(Lcom/android/wifidirect/test/WifiOppObexClientSession;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 136
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->this$0:Lcom/android/wifidirect/test/WifiOppObexClientSession;

    #getter for: Lcom/android/wifidirect/test/WifiOppObexClientSession;->mInterrupted:Z
    invoke-static {v2}, Lcom/android/wifidirect/test/WifiOppObexClientSession;->access$100(Lcom/android/wifidirect/test/WifiOppObexClientSession;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->initialFtpClient()V

    .line 146
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->connect()V

    .line 150
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->this$0:Lcom/android/wifidirect/test/WifiOppObexClientSession;

    #getter for: Lcom/android/wifidirect/test/WifiOppObexClientSession;->mInterrupted:Z
    invoke-static {v2}, Lcom/android/wifidirect/test/WifiOppObexClientSession;->access$100(Lcom/android/wifidirect/test/WifiOppObexClientSession;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 151
    const-string v2, "WifiOppObexClientSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "run: mInterrupted="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->this$0:Lcom/android/wifidirect/test/WifiOppObexClientSession;

    #getter for: Lcom/android/wifidirect/test/WifiOppObexClientSession;->mInterrupted:Z
    invoke-static {v4}, Lcom/android/wifidirect/test/WifiOppObexClientSession;->access$100(Lcom/android/wifidirect/test/WifiOppObexClientSession;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";waitingForShare="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->waitingForShare:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-boolean v2, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->waitingForShare:Z

    if-nez v2, :cond_2

    .line 153
    sget-boolean v2, Lcom/android/wifidirect/test/Constants;->IS_USE_FTP_TRANSFOR_MODE:Z

    if-eqz v2, :cond_1

    .line 154
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->FtpClientConnect()V

    .line 158
    iput-boolean v5, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->waitingForShare:Z

    .line 159
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->FtpClientSendFile()V

    goto :goto_1

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, e1:Ljava/lang/InterruptedException;
    const-string v2, "WifiOppObexClientSession"

    const-string v3, "Client thread was interrupted (1), exiting"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->this$0:Lcom/android/wifidirect/test/WifiOppObexClientSession;

    #setter for: Lcom/android/wifidirect/test/WifiOppObexClientSession;->mInterrupted:Z
    invoke-static {v2, v5}, Lcom/android/wifidirect/test/WifiOppObexClientSession;->access$102(Lcom/android/wifidirect/test/WifiOppObexClientSession;Z)Z

    goto :goto_0

    .line 162
    .end local v0           #e1:Ljava/lang/InterruptedException;
    :cond_1
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->doSend()V

    goto :goto_1

    .line 166
    :cond_2
    :try_start_1
    const-string v2, "WifiOppObexClientSession"

    const-string v3, "Client thread waiting for next share, sleep for 500"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 169
    :catch_1
    move-exception v2

    goto :goto_1

    .line 174
    :cond_3
    sget-boolean v2, Lcom/android/wifidirect/test/Constants;->IS_USE_FTP_TRANSFOR_MODE:Z

    if-eqz v2, :cond_5

    .line 175
    invoke-virtual {p0}, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->FtpClientDisconnect()V

    .line 180
    :goto_2
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 181
    const-string v2, "WifiOppObexClientSession"

    const-string v3, "release partial WakeLock"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 184
    :cond_4
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->this$0:Lcom/android/wifidirect/test/WifiOppObexClientSession;

    #getter for: Lcom/android/wifidirect/test/WifiOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/wifidirect/test/WifiOppObexClientSession;->access$200(Lcom/android/wifidirect/test/WifiOppObexClientSession;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 185
    .local v1, msg:Landroid/os/Message;
    iput v5, v1, Landroid/os/Message;->what:I

    .line 186
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 187
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 189
    return-void

    .line 177
    .end local v1           #msg:Landroid/os/Message;
    :cond_5
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->disconnect()V

    goto :goto_2
.end method

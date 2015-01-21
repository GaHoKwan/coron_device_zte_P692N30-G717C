.class public Lcom/android/wifidirect/test/WifiOppTcpListener;
.super Ljava/lang/Object;
.source "WifiOppTcpListener.java"


# static fields
.field private static final CREATE_RETRY_TIME:I = 0xa

.field private static final D:Z = true

.field private static final DEFAULT_OPP_CHANNEL:I = 0xc

.field public static final MSG_INCOMING_WIFI_CONNECTION:I = 0x64

.field private static final TAG:Ljava/lang/String; = "<==>WifiOppTcpListener"

.field private static final V:Z = true


# instance fields
.field private mCallback:Landroid/os/Handler;

.field private volatile mInterrupted:Z

.field private mSocketAcceptThread:Ljava/lang/Thread;

.field private mTcpServerSocket:Ljava/net/ServerSocket;

.field private final mWifiOppTcpChannel:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/android/wifidirect/test/WifiOppTcpListener;-><init>(I)V

    .line 44
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "channel"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiOppTcpListener;->mTcpServerSocket:Ljava/net/ServerSocket;

    .line 47
    iput p1, p0, Lcom/android/wifidirect/test/WifiOppTcpListener;->mWifiOppTcpChannel:I

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/android/wifidirect/test/WifiOppTcpListener;)Ljava/net/ServerSocket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTcpListener;->mTcpServerSocket:Ljava/net/ServerSocket;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/wifidirect/test/WifiOppTcpListener;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiOppTcpListener;->mTcpServerSocket:Ljava/net/ServerSocket;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/wifidirect/test/WifiOppTcpListener;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/android/wifidirect/test/WifiOppTcpListener;->mInterrupted:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/wifidirect/test/WifiOppTcpListener;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/android/wifidirect/test/WifiOppTcpListener;->mInterrupted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/wifidirect/test/WifiOppTcpListener;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTcpListener;->mCallback:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized start(Landroid/os/Handler;)Z
    .locals 2
    .parameter "callback"

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTcpListener;->mSocketAcceptThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 52
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiOppTcpListener;->mCallback:Landroid/os/Handler;

    .line 53
    new-instance v0, Lcom/android/wifidirect/test/WifiOppTcpListener$1;

    const-string v1, "<==>WifiOppTcpListener"

    invoke-direct {v0, p0, v1}, Lcom/android/wifidirect/test/WifiOppTcpListener$1;-><init>(Lcom/android/wifidirect/test/WifiOppTcpListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiOppTcpListener;->mSocketAcceptThread:Ljava/lang/Thread;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wifidirect/test/WifiOppTcpListener;->mInterrupted:Z

    .line 85
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTcpListener;->mSocketAcceptThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_0
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 3

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTcpListener;->mSocketAcceptThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 92
    const-string v1, "<==>WifiOppTcpListener"

    const-string v2, "stopping Accept Thread"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/wifidirect/test/WifiOppTcpListener;->mInterrupted:Z

    .line 96
    const-string v1, "<==>WifiOppTcpListener"

    const-string v2, "close mTcpServerSocket"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTcpListener;->mTcpServerSocket:Ljava/net/ServerSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 99
    :try_start_1
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTcpListener;->mTcpServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 119
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTcpListener;->mSocketAcceptThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 120
    const-string v1, "<==>WifiOppTcpListener"

    const-string v2, "waiting for thread to terminate"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTcpListener;->mSocketAcceptThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 122
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/wifidirect/test/WifiOppTcpListener;->mSocketAcceptThread:Ljava/lang/Thread;

    .line 123
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/wifidirect/test/WifiOppTcpListener;->mCallback:Landroid/os/Handler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 128
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    const-string v1, "<==>WifiOppTcpListener"

    const-string v2, "Error close mTcpServerSocket"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 91
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 124
    :catch_1
    move-exception v0

    .line 125
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v1, "<==>WifiOppTcpListener"

    const-string v2, "Interrupted waiting for Accept Thread to join"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

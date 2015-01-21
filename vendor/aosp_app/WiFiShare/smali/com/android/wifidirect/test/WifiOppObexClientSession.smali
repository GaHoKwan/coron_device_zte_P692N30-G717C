.class public Lcom/android/wifidirect/test/WifiOppObexClientSession;
.super Ljava/lang/Object;
.source "WifiOppObexClientSession.java"

# interfaces
.implements Lcom/android/wifidirect/test/WifiOppObexSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;
    }
.end annotation


# static fields
.field private static final D:Z = true

#the value of this static final field might be set in the static constructor
.field private static final MAX_OUTPUT_DATA_SIZE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WifiOppObexClientSession"

.field private static final V:Z = true


# instance fields
.field private mCallback:Landroid/os/Handler;

.field private mClient:Lcom/android/wifidirect/test/FTPClient;

.field private mContext:Landroid/content/Context;

.field private volatile mInterrupted:Z

.field private mThread:Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;

.field private mTransport:Lcom/android/wifidirect/test/ObexTransport;

.field private volatile mWaitingForRemote:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    sget v0, Lcom/android/wifidirect/test/Constants;->bufferReader:I

    sput v0, Lcom/android/wifidirect/test/WifiOppObexClientSession;->MAX_OUTPUT_DATA_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wifidirect/test/ObexTransport;)V
    .locals 2
    .parameter "context"
    .parameter "transport"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    if-nez p2, :cond_0

    .line 46
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "transport is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession;->mTransport:Lcom/android/wifidirect/test/ObexTransport;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/android/wifidirect/test/WifiOppObexClientSession;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession;->mWaitingForRemote:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/wifidirect/test/WifiOppObexClientSession;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession;->mWaitingForRemote:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/wifidirect/test/WifiOppObexClientSession;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession;->mInterrupted:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/wifidirect/test/WifiOppObexClientSession;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession;->mInterrupted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/wifidirect/test/WifiOppObexClientSession;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession;->mCallback:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/wifidirect/test/WifiOppObexClientSession;)Lcom/android/wifidirect/test/FTPClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession;->mClient:Lcom/android/wifidirect/test/FTPClient;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/wifidirect/test/WifiOppObexClientSession;Lcom/android/wifidirect/test/FTPClient;)Lcom/android/wifidirect/test/FTPClient;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession;->mClient:Lcom/android/wifidirect/test/FTPClient;

    return-object p1
.end method

.method public static applyRemoteDeviceQuirks(Lcom/android/wifidirect/test/HeaderSet;Lcom/android/wifidirect/test/WifiOppSendFileInfo;)V
    .locals 10
    .parameter "request"
    .parameter "info"

    .prologue
    .line 642
    iget-object v0, p1, Lcom/android/wifidirect/test/WifiOppSendFileInfo;->mDestAddr:Ljava/lang/String;

    .line 643
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 646
    :cond_1
    const-string v7, "00:04:48"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 651
    iget-object v2, p1, Lcom/android/wifidirect/test/WifiOppSendFileInfo;->mFileName:Ljava/lang/String;

    .line 653
    .local v2, filename:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 654
    .local v1, c:[C
    const/4 v3, 0x1

    .line 655
    .local v3, firstDot:Z
    const/4 v5, 0x0

    .line 656
    .local v5, modified:Z
    array-length v7, v1

    add-int/lit8 v4, v7, -0x1

    .local v4, i:I
    :goto_1
    if-ltz v4, :cond_4

    .line 657
    aget-char v7, v1, v4

    const/16 v8, 0x2e

    if-ne v7, v8, :cond_3

    .line 658
    if-nez v3, :cond_2

    .line 659
    const/4 v5, 0x1

    .line 660
    const/16 v7, 0x5f

    aput-char v7, v1, v4

    .line 662
    :cond_2
    const/4 v3, 0x0

    .line 656
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 666
    :cond_4
    if-eqz v5, :cond_0

    .line 667
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([C)V

    .line 668
    .local v6, newFilename:Ljava/lang/String;
    const/4 v7, 0x1

    invoke-virtual {p0, v7, v6}, Lcom/android/wifidirect/test/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 669
    const-string v7, "WifiOppObexClientSession"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sending file \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" as \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" to workaround Poloroid filename quirk"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addShare(Lcom/android/wifidirect/test/WifiOppShareInfo;)V
    .locals 2
    .parameter "share"

    .prologue
    .line 85
    const-string v0, "WifiOppObexClientSession"

    const-string v1, "addShare!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession;->mThread:Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;

    invoke-virtual {v0, p1}, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->addShare(Lcom/android/wifidirect/test/WifiOppShareInfo;)V

    .line 87
    return-void
.end method

.method public start(Landroid/os/Handler;)V
    .locals 3
    .parameter "handler"

    .prologue
    .line 53
    const-string v0, "WifiOppObexClientSession"

    const-string v1, "Start!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession;->mCallback:Landroid/os/Handler;

    .line 55
    new-instance v0, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;

    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession;->mTransport:Lcom/android/wifidirect/test/ObexTransport;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;-><init>(Lcom/android/wifidirect/test/WifiOppObexClientSession;Landroid/content/Context;Lcom/android/wifidirect/test/ObexTransport;)V

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession;->mThread:Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;

    .line 56
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession;->mThread:Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;

    invoke-virtual {v0}, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->start()V

    .line 57
    return-void
.end method

.method public stop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 60
    const-string v1, "WifiOppObexClientSession"

    const-string v2, "Stop!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession;->mThread:Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;

    if-eqz v1, :cond_1

    .line 62
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession;->mInterrupted:Z

    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession;->mThread:Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;

    invoke-virtual {v1}, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->interrupt()V

    .line 65
    const-string v1, "WifiOppObexClientSession"

    const-string v2, "stop: waiting for thread to terminate"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession;->mThread:Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;

    invoke-virtual {v1}, Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;->join()V

    .line 67
    sget-boolean v1, Lcom/android/wifidirect/test/Constants;->IS_USE_FTP_TRANSFOR_MODE:Z

    if-eqz v1, :cond_0

    .line 75
    :cond_0
    const-string v1, "WifiOppObexClientSession"

    const-string v2, "stop: after mThread.join()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession;->mThread:Lcom/android/wifidirect/test/WifiOppObexClientSession$ClientThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :cond_1
    :goto_0
    iput-object v3, p0, Lcom/android/wifidirect/test/WifiOppObexClientSession;->mCallback:Landroid/os/Handler;

    .line 82
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "WifiOppObexClientSession"

    const-string v2, "Interrupted waiting for thread to join"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unblock()V
    .locals 0

    .prologue
    .line 677
    return-void
.end method

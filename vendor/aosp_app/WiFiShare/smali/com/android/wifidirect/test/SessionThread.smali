.class public Lcom/android/wifidirect/test/SessionThread;
.super Ljava/lang/Object;
.source "SessionThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wifidirect/test/SessionThread$ClientThread;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field private static final V:Z = true

.field private static fileSendNum:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private WAKE_LOCK_TAG:Ljava/lang/String;

.field private bCancel:Z

.field private fileNum:I

.field private in:Ljava/io/BufferedReader;

.field private mBytesRead:I

.field private mCallback:Landroid/os/Handler;

.field private mContentUri:Landroid/net/Uri;

.field private mContext:Landroid/content/Context;

.field private mFileInfo:Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;

.field private mFileRecNum:I

.field private mInStream:Ljava/io/InputStream;

.field private mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mSaveFilePath:Ljava/io/File;

.field private mServerBlocking:Z

.field private mStop:Z

.field private mThread:Lcom/android/wifidirect/test/SessionThread$ClientThread;

.field private mTransport:Lcom/android/wifidirect/test/ObexTransport;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private out:Ljava/io/PrintWriter;

.field wakeLock:Landroid/os/PowerManager$WakeLock;

.field protected wifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput v0, Lcom/android/wifidirect/test/SessionThread;->fileSendNum:I

    return-void
.end method

.method public constructor <init>(Lcom/android/wifidirect/test/ObexTransport;Landroid/content/Context;Landroid/os/PowerManager$WakeLock;Landroid/os/PowerManager$WakeLock;)V
    .locals 3
    .parameter "transport"
    .parameter "context"
    .parameter "wakeL"
    .parameter "partialWL"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "<==>tsjWFD SessionThread"

    iput-object v0, p0, Lcom/android/wifidirect/test/SessionThread;->TAG:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/android/wifidirect/test/SessionThread;->out:Ljava/io/PrintWriter;

    .line 41
    iput-object v1, p0, Lcom/android/wifidirect/test/SessionThread;->in:Ljava/io/BufferedReader;

    .line 42
    iput-object v1, p0, Lcom/android/wifidirect/test/SessionThread;->mInStream:Ljava/io/InputStream;

    .line 44
    iput v2, p0, Lcom/android/wifidirect/test/SessionThread;->fileNum:I

    .line 47
    iput-boolean v2, p0, Lcom/android/wifidirect/test/SessionThread;->bCancel:Z

    .line 52
    iput-object v1, p0, Lcom/android/wifidirect/test/SessionThread;->mFileInfo:Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;

    .line 54
    iput-object v1, p0, Lcom/android/wifidirect/test/SessionThread;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    .line 55
    iput v2, p0, Lcom/android/wifidirect/test/SessionThread;->mFileRecNum:I

    .line 57
    iput v2, p0, Lcom/android/wifidirect/test/SessionThread;->mBytesRead:I

    .line 59
    iput-boolean v2, p0, Lcom/android/wifidirect/test/SessionThread;->mStop:Z

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wifidirect/test/SessionThread;->mServerBlocking:Z

    .line 64
    iput-object v1, p0, Lcom/android/wifidirect/test/SessionThread;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 66
    const-string v0, "wififtp"

    iput-object v0, p0, Lcom/android/wifidirect/test/SessionThread;->WAKE_LOCK_TAG:Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lcom/android/wifidirect/test/SessionThread;->mTransport:Lcom/android/wifidirect/test/ObexTransport;

    .line 73
    iput-object p2, p0, Lcom/android/wifidirect/test/SessionThread;->mContext:Landroid/content/Context;

    .line 74
    iput-object p3, p0, Lcom/android/wifidirect/test/SessionThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 75
    iput-object p4, p0, Lcom/android/wifidirect/test/SessionThread;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 77
    const-string v0, "<==>tsjWFD SessionThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<==> SessionThread created! this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/android/wifidirect/test/SessionThread;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/wifidirect/test/SessionThread;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/wifidirect/test/SessionThread;)Lcom/android/wifidirect/test/WifiOppShareInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/wifidirect/test/SessionThread;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/wifidirect/test/SessionThread;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/wifidirect/test/SessionThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/wifidirect/test/SessionThread;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/wifidirect/test/SessionThread;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/wifidirect/test/SessionThread;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/android/wifidirect/test/SessionThread;->mFileRecNum:I

    return v0
.end method

.method static synthetic access$1208(Lcom/android/wifidirect/test/SessionThread;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/android/wifidirect/test/SessionThread;->mFileRecNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/wifidirect/test/SessionThread;->mFileRecNum:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/wifidirect/test/SessionThread;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/wifidirect/test/SessionThread;->mContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/wifidirect/test/SessionThread;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/wifidirect/test/SessionThread;->mContentUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/wifidirect/test/SessionThread;)Ljava/io/InputStream;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/wifidirect/test/SessionThread;->mInStream:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/wifidirect/test/SessionThread;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/wifidirect/test/SessionThread;->mInStream:Ljava/io/InputStream;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/wifidirect/test/SessionThread;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/android/wifidirect/test/SessionThread;->mBytesRead:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/wifidirect/test/SessionThread;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/android/wifidirect/test/SessionThread;->mBytesRead:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/wifidirect/test/SessionThread;)Ljava/io/BufferedReader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/wifidirect/test/SessionThread;->in:Ljava/io/BufferedReader;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/wifidirect/test/SessionThread;Ljava/io/BufferedReader;)Ljava/io/BufferedReader;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/wifidirect/test/SessionThread;->in:Ljava/io/BufferedReader;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/wifidirect/test/SessionThread;)Lcom/android/wifidirect/test/ObexTransport;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/wifidirect/test/SessionThread;->mTransport:Lcom/android/wifidirect/test/ObexTransport;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/wifidirect/test/SessionThread;)Ljava/io/PrintWriter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/wifidirect/test/SessionThread;->out:Ljava/io/PrintWriter;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/wifidirect/test/SessionThread;Ljava/io/PrintWriter;)Ljava/io/PrintWriter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/wifidirect/test/SessionThread;->out:Ljava/io/PrintWriter;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/wifidirect/test/SessionThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/wifidirect/test/SessionThread;->mStop:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/wifidirect/test/SessionThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/wifidirect/test/SessionThread;->mStop:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/wifidirect/test/SessionThread;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/wifidirect/test/SessionThread;->mCallback:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/wifidirect/test/SessionThread;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/android/wifidirect/test/SessionThread;->fileNum:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/wifidirect/test/SessionThread;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/android/wifidirect/test/SessionThread;->fileNum:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/wifidirect/test/SessionThread;)Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/wifidirect/test/SessionThread;->mFileInfo:Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/wifidirect/test/SessionThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/wifidirect/test/SessionThread;->mServerBlocking:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/wifidirect/test/SessionThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/wifidirect/test/SessionThread;->mServerBlocking:Z

    return p1
.end method

.method private releaseWakeLock()V
    .locals 2

    .prologue
    .line 156
    const-string v0, "<==>tsjWFD SessionThread"

    const-string v1, "Releasing wake lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/android/wifidirect/test/SessionThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/wifidirect/test/SessionThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wifidirect/test/SessionThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 160
    const-string v0, "<==>tsjWFD SessionThread"

    const-string v1, "Finished releasing wake lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    const-string v0, "<==>tsjWFD SessionThread"

    const-string v1, "Couldn\'t release null wake lock"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private releaseWifiLock()V
    .locals 2

    .prologue
    .line 177
    const-string v0, "<==>tsjWFD SessionThread"

    const-string v1, "Releasing wifi lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/android/wifidirect/test/SessionThread;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/wifidirect/test/SessionThread;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wifidirect/test/SessionThread;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 182
    :cond_0
    return-void
.end method

.method private takeWakeLock()V
    .locals 3

    .prologue
    .line 134
    iget-object v1, p0, Lcom/android/wifidirect/test/SessionThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/android/wifidirect/test/SessionThread;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 143
    .local v0, pm:Landroid/os/PowerManager;
    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/android/wifidirect/test/SessionThread;->WAKE_LOCK_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wifidirect/test/SessionThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 149
    iget-object v1, p0, Lcom/android/wifidirect/test/SessionThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 151
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    const-string v1, "<==>tsjWFD SessionThread"

    const-string v2, "Acquiring wake lock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v1, p0, Lcom/android/wifidirect/test/SessionThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 153
    return-void
.end method

.method private takeWifiLock()V
    .locals 3

    .prologue
    .line 167
    const-string v1, "<==>tsjWFD SessionThread"

    const-string v2, "Taking wifi lock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v1, p0, Lcom/android/wifidirect/test/SessionThread;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/android/wifidirect/test/SessionThread;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 170
    .local v0, manager:Landroid/net/wifi/WifiManager;
    const-string v1, "FTPClient"

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wifidirect/test/SessionThread;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 171
    iget-object v1, p0, Lcom/android/wifidirect/test/SessionThread;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 173
    .end local v0           #manager:Landroid/net/wifi/WifiManager;
    :cond_0
    iget-object v1, p0, Lcom/android/wifidirect/test/SessionThread;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 174
    return-void
.end method


# virtual methods
.method public interrupt()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/wifidirect/test/SessionThread;->mThread:Lcom/android/wifidirect/test/SessionThread$ClientThread;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/wifidirect/test/SessionThread;->mThread:Lcom/android/wifidirect/test/SessionThread$ClientThread;

    invoke-virtual {v0}, Lcom/android/wifidirect/test/SessionThread$ClientThread;->interrupt()V

    .line 199
    :cond_0
    return-void
.end method

.method public setFileInfo(Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;Lcom/android/wifidirect/test/WifiOppShareInfo;)V
    .locals 3
    .parameter "fileInfo"
    .parameter "info"

    .prologue
    .line 185
    const-string v0, "<==>tsjWFD SessionThread"

    const-string v1, "setFileInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-string v0, "<==>tsjWFD SessionThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileInfoFileName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iput-object p1, p0, Lcom/android/wifidirect/test/SessionThread;->mFileInfo:Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;

    .line 188
    iput-object p2, p0, Lcom/android/wifidirect/test/SessionThread;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    .line 189
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 3
    .parameter "handler"

    .prologue
    .line 191
    const-string v0, "<==>tsjWFD SessionThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHandler! handler="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iput-object p1, p0, Lcom/android/wifidirect/test/SessionThread;->mCallback:Landroid/os/Handler;

    .line 193
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 80
    const-string v0, "<==>tsjWFD SessionThread"

    const-string v1, "SessionThread Start!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v0, Lcom/android/wifidirect/test/SessionThread$ClientThread;

    invoke-direct {v0, p0}, Lcom/android/wifidirect/test/SessionThread$ClientThread;-><init>(Lcom/android/wifidirect/test/SessionThread;)V

    iput-object v0, p0, Lcom/android/wifidirect/test/SessionThread;->mThread:Lcom/android/wifidirect/test/SessionThread$ClientThread;

    .line 82
    iget-object v0, p0, Lcom/android/wifidirect/test/SessionThread;->mThread:Lcom/android/wifidirect/test/SessionThread$ClientThread;

    invoke-virtual {v0}, Lcom/android/wifidirect/test/SessionThread$ClientThread;->start()V

    .line 83
    invoke-direct {p0}, Lcom/android/wifidirect/test/SessionThread;->takeWifiLock()V

    .line 84
    invoke-direct {p0}, Lcom/android/wifidirect/test/SessionThread;->takeWakeLock()V

    .line 85
    return-void
.end method

.method public declared-synchronized stop()V
    .locals 4

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    const-string v1, "<==>tsjWFD SessionThread"

    const-string v2, "stop: SessionThread stop"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/wifidirect/test/SessionThread;->mStop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :try_start_1
    iget-object v1, p0, Lcom/android/wifidirect/test/SessionThread;->mThread:Lcom/android/wifidirect/test/SessionThread$ClientThread;

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/android/wifidirect/test/SessionThread;->mThread:Lcom/android/wifidirect/test/SessionThread$ClientThread;

    invoke-virtual {v1}, Lcom/android/wifidirect/test/SessionThread$ClientThread;->interrupt()V

    .line 93
    const-string v1, "<==>tsjWFD SessionThread"

    const-string v2, "stop: before join"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v1, p0, Lcom/android/wifidirect/test/SessionThread;->mThread:Lcom/android/wifidirect/test/SessionThread$ClientThread;

    invoke-virtual {v1}, Lcom/android/wifidirect/test/SessionThread$ClientThread;->join()V

    .line 95
    const-string v1, "<==>tsjWFD SessionThread"

    const-string v2, "stop: after join"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/wifidirect/test/SessionThread;->mThread:Lcom/android/wifidirect/test/SessionThread$ClientThread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 103
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/android/wifidirect/test/SessionThread;->in:Ljava/io/BufferedReader;

    if-eqz v1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/android/wifidirect/test/SessionThread;->in:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 105
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/wifidirect/test/SessionThread;->in:Ljava/io/BufferedReader;

    .line 107
    :cond_1
    iget-object v1, p0, Lcom/android/wifidirect/test/SessionThread;->out:Ljava/io/PrintWriter;

    if-eqz v1, :cond_2

    .line 108
    iget-object v1, p0, Lcom/android/wifidirect/test/SessionThread;->out:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 109
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/wifidirect/test/SessionThread;->out:Ljava/io/PrintWriter;

    .line 111
    :cond_2
    iget-object v1, p0, Lcom/android/wifidirect/test/SessionThread;->mInStream:Ljava/io/InputStream;

    if-eqz v1, :cond_3

    .line 112
    iget-object v1, p0, Lcom/android/wifidirect/test/SessionThread;->mInStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 113
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/wifidirect/test/SessionThread;->mInStream:Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 130
    :cond_3
    :goto_1
    :try_start_3
    invoke-direct {p0}, Lcom/android/wifidirect/test/SessionThread;->releaseWakeLock()V

    .line 131
    invoke-direct {p0}, Lcom/android/wifidirect/test/SessionThread;->releaseWifiLock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 132
    monitor-exit p0

    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v1, "<==>tsjWFD SessionThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop: Interrupted waiting for thread to join e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 88
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 115
    :catch_1
    move-exception v0

    .line 116
    .local v0, e:Ljava/io/IOException;
    :try_start_5
    const-string v1, "<==>tsjWFD SessionThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop: Error when closing in/out e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public unblock()V
    .locals 2

    .prologue
    .line 202
    const-string v0, "<==>tsjWFD SessionThread"

    const-string v1, "unblock! begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wifidirect/test/SessionThread;->mServerBlocking:Z

    .line 204
    return-void
.end method

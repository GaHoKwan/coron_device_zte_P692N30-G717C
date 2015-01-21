.class Lcom/autonavi/xmgd/citydata/FileDownloader;
.super Ljava/lang/Object;


# static fields
.field private static final DOWNLOAD_FILE_SUFFIX:Ljava/lang/String; = "_gddown"

.field private static final EXCEPTION_MESSAGE_SAVE_FILE_AND_SAVE_DIR_IS_NULL:Ljava/lang/String; = "Save file and save directory can not both be null"

.field private static final EXCEPTION_MESSAGE_START_GREATER_THAN_END:Ljava/lang/String; = "Start byte can not greater than end byte"

.field private static final MAX_RETRY_COUNT:I = 0x5

.field private static final MAX_RETRY_DELAY_MILLIS:I = 0xea60

.field private static final MAX_RETRY_TIMES:I = 0x5

.field private static final MIN_DOWNLOAD_SIZE:I = 0xa

.field private static final RETRY_DELAY_MILLIS:I = 0xbb8

.field private static final TIMEOUT_MILLIS:I = 0x4e20


# instance fields
.field private id:I

.field private mCallback:Lcom/autonavi/xmgd/citydata/FileDownloader$Callback;

.field private mDownloadRunners:[Lcom/autonavi/xmgd/citydata/FileDownloader$DownloadRunner;

.field private mDownloadedSize:I

.field private mFileName:Ljava/lang/String;

.field private mFileRecorder:Lcom/autonavi/xmgd/citydata/FileRecorder;

.field private mIsDownloading:Z

.field private mIsLoadSuccess:Z

.field private mIsPrepareStarted:Z

.field private mIsPrepared:Z

.field private mIsStarted:Z

.field private mPrepareRunner:Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;

.field private final mSaveDir:Ljava/io/File;

.field private mSaveFile:Ljava/io/File;

.field private mSourceUrl:Ljava/net/URL;

.field private mStartRunner:Lcom/autonavi/xmgd/citydata/FileDownloader$StartRunner;

.field private mTempSaveFile:Ljava/io/File;

.field private mThreadNum:I

.field private mTotalSize:I


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/autonavi/xmgd/citydata/FileDownloader$Callback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, p2}, Lcom/autonavi/xmgd/citydata/FileDownloader;-><init>(Ljava/io/File;Ljava/net/URL;Ljava/lang/String;Lcom/autonavi/xmgd/citydata/FileDownloader$Callback;)V

    return-void
.end method

.method private constructor <init>(Ljava/io/File;Ljava/net/URL;Ljava/lang/String;Lcom/autonavi/xmgd/citydata/FileDownloader$Callback;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mIsLoadSuccess:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mThreadNum:I

    iput-boolean v1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mIsPrepareStarted:Z

    iput-boolean v1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mIsPrepared:Z

    iput-boolean v1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mIsStarted:Z

    iput-boolean v1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mIsDownloading:Z

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mSaveFile:Ljava/io/File;

    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mSaveDir:Ljava/io/File;

    if-nez p1, :cond_1

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Save file and save directory can not both be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mSourceUrl:Ljava/net/URL;

    iput-object p4, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mCallback:Lcom/autonavi/xmgd/citydata/FileDownloader$Callback;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mSaveFile:Ljava/io/File;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/FileDownloader;->prepare()V

    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/autonavi/xmgd/citydata/FileDownloader$Callback;)V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v1, p2}, Lcom/autonavi/xmgd/citydata/FileDownloader;-><init>(Ljava/io/File;Ljava/net/URL;Ljava/lang/String;Lcom/autonavi/xmgd/citydata/FileDownloader$Callback;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;Lcom/autonavi/xmgd/citydata/FileDownloader$Callback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/autonavi/xmgd/citydata/FileDownloader;-><init>(Ljava/io/File;Ljava/net/URL;Ljava/lang/String;Lcom/autonavi/xmgd/citydata/FileDownloader$Callback;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/autonavi/xmgd/citydata/FileDownloader;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/autonavi/xmgd/citydata/FileDownloader;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/autonavi/xmgd/citydata/FileDownloader;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mIsLoadSuccess:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/autonavi/xmgd/citydata/FileDownloader;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mIsLoadSuccess:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/autonavi/xmgd/citydata/FileDownloader;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mSaveDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/autonavi/xmgd/citydata/FileDownloader;Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/citydata/FileDownloader;->getFileName(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/autonavi/xmgd/citydata/FileDownloader;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mIsPrepareStarted:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/autonavi/xmgd/citydata/FileDownloader;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mIsPrepareStarted:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/autonavi/xmgd/citydata/FileDownloader;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mIsPrepared:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/autonavi/xmgd/citydata/FileDownloader;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mIsStarted:Z

    return v0
.end method

.method static synthetic access$200(Lcom/autonavi/xmgd/citydata/FileDownloader;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mTotalSize:I

    return v0
.end method

.method static synthetic access$202(Lcom/autonavi/xmgd/citydata/FileDownloader;I)I
    .locals 0

    iput p1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mTotalSize:I

    return p1
.end method

.method static synthetic access$300(Lcom/autonavi/xmgd/citydata/FileDownloader;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mThreadNum:I

    return v0
.end method

.method static synthetic access$302(Lcom/autonavi/xmgd/citydata/FileDownloader;I)I
    .locals 0

    iput p1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mThreadNum:I

    return p1
.end method

.method static synthetic access$402(Lcom/autonavi/xmgd/citydata/FileDownloader;[Lcom/autonavi/xmgd/citydata/FileDownloader$DownloadRunner;)[Lcom/autonavi/xmgd/citydata/FileDownloader$DownloadRunner;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mDownloadRunners:[Lcom/autonavi/xmgd/citydata/FileDownloader$DownloadRunner;

    return-object p1
.end method

.method static synthetic access$500(Lcom/autonavi/xmgd/citydata/FileDownloader;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/citydata/FileDownloader;->launchDownloadThread(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/autonavi/xmgd/citydata/FileDownloader;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mSaveFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$602(Lcom/autonavi/xmgd/citydata/FileDownloader;Ljava/io/File;)Ljava/io/File;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mSaveFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$702(Lcom/autonavi/xmgd/citydata/FileDownloader;Ljava/io/File;)Ljava/io/File;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mTempSaveFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$802(Lcom/autonavi/xmgd/citydata/FileDownloader;Lcom/autonavi/xmgd/citydata/FileRecorder;)Lcom/autonavi/xmgd/citydata/FileRecorder;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mFileRecorder:Lcom/autonavi/xmgd/citydata/FileRecorder;

    return-object p1
.end method

.method static synthetic access$900(Lcom/autonavi/xmgd/citydata/FileDownloader;)Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mSourceUrl:Ljava/net/URL;

    return-object v0
.end method

.method static synthetic access$902(Lcom/autonavi/xmgd/citydata/FileDownloader;Ljava/net/URL;)Ljava/net/URL;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mSourceUrl:Ljava/net/URL;

    return-object p1
.end method

.method static createHttpConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/autonavi/xmgd/citydata/FileDownloader;->createHttpConnection(Ljava/net/URL;II)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method static createHttpConnection(Ljava/net/URL;II)Ljava/net/HttpURLConnection;
    .locals 4

    const/16 v2, 0x4e20

    if-ltz p1, :cond_0

    if-lez p2, :cond_0

    if-le p1, p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Start byte can not greater than end byte"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v1, "Accept"

    const-string v2, "image/pjpeg, image/pjpeg, image/pjpeg, image/gif, application/x-shockwave-flash, application/x-ms-xbap, image/jpeg,application/xaml+xml, application/x-ms-application, application/vnd.ms-excel, application/vnd.ms-powerpoint, application/msword, */*"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Referer"

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p1, :cond_1

    const-string v2, "Range"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytes="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-gtz p2, :cond_2

    const-string v1, ""

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0

    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method private getFileName(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v1

    if-lez v0, :cond_2

    if-nez v1, :cond_2

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    const-string v2, "content-disposition"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, ".*filename=(.*)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private launchDownloadThread(I)Z
    .locals 8

    iget v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mTotalSize:I

    iget v1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mThreadNum:I

    div-int v1, v0, v1

    mul-int v2, v1, p1

    sub-int/2addr v0, v2

    invoke-virtual {p0, p1}, Lcom/autonavi/xmgd/citydata/FileDownloader;->readDownloadSize(I)I

    move-result v6

    if-ge v6, v1, :cond_0

    if-lt v6, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    mul-int v4, v1, p1

    add-int v0, v4, v1

    add-int/lit8 v5, v0, -0x1

    new-instance v0, Lcom/autonavi/xmgd/citydata/FileDownloader$DownloadRunner;

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mSourceUrl:Ljava/net/URL;

    iget-object v3, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mTempSaveFile:Ljava/io/File;

    move-object v1, p0

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/autonavi/xmgd/citydata/FileDownloader$DownloadRunner;-><init>(Lcom/autonavi/xmgd/citydata/FileDownloader;Ljava/net/URL;Ljava/io/File;IIII)V

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mDownloadRunners:[Lcom/autonavi/xmgd/citydata/FileDownloader$DownloadRunner;

    aput-object v0, v1, p1

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private prepare()V
    .locals 2

    iget-boolean v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mIsPrepared:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mIsPrepareStarted:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mIsPrepareStarted:Z

    new-instance v0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;-><init>(Lcom/autonavi/xmgd/citydata/FileDownloader;Lcom/autonavi/xmgd/citydata/FileDownloader$1;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mPrepareRunner:Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mPrepareRunner:Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized getDownloadedSize()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mDownloadedSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->id:I

    return v0
.end method

.method public getSaveFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mSaveFile:Ljava/io/File;

    return-object v0
.end method

.method public getSourceUrl()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mSourceUrl:Ljava/net/URL;

    return-object v0
.end method

.method public getTotalSize()I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mTotalSize:I

    return v0
.end method

.method declared-synchronized increaseDownSize(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mDownloadedSize:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mDownloadedSize:I

    iget v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mDownloadedSize:I

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/citydata/FileDownloader;->onProgressUpdate(I)V

    iget v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mDownloadedSize:I

    iget v1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mTotalSize:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/FileDownloader;->onCompletion()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mIsStarted:Z

    return v0
.end method

.method protected onCompletion()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mTempSaveFile:Ljava/io/File;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mSaveFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mCallback:Lcom/autonavi/xmgd/citydata/FileDownloader$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mCallback:Lcom/autonavi/xmgd/citydata/FileDownloader$Callback;

    invoke-interface {v0, p0}, Lcom/autonavi/xmgd/citydata/FileDownloader$Callback;->onCompletion(Lcom/autonavi/xmgd/citydata/FileDownloader;)V

    :cond_0
    iput-boolean v2, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mIsPrepareStarted:Z

    iput-boolean v2, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mIsStarted:Z

    iput-boolean v2, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mIsDownloading:Z

    return-void
.end method

.method protected onError(I)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mCallback:Lcom/autonavi/xmgd/citydata/FileDownloader$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mCallback:Lcom/autonavi/xmgd/citydata/FileDownloader$Callback;

    invoke-interface {v0, p0, p1}, Lcom/autonavi/xmgd/citydata/FileDownloader$Callback;->onError(Lcom/autonavi/xmgd/citydata/FileDownloader;I)V

    :cond_0
    return-void
.end method

.method protected onPrepared(I)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mCallback:Lcom/autonavi/xmgd/citydata/FileDownloader$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mCallback:Lcom/autonavi/xmgd/citydata/FileDownloader$Callback;

    invoke-interface {v0, p0, p1}, Lcom/autonavi/xmgd/citydata/FileDownloader$Callback;->onPrepared(Lcom/autonavi/xmgd/citydata/FileDownloader;I)V

    :cond_0
    return-void
.end method

.method protected onProgressUpdate(I)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mCallback:Lcom/autonavi/xmgd/citydata/FileDownloader$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mCallback:Lcom/autonavi/xmgd/citydata/FileDownloader$Callback;

    invoke-interface {v0, p0, p1}, Lcom/autonavi/xmgd/citydata/FileDownloader$Callback;->onProgressUpdate(Lcom/autonavi/xmgd/citydata/FileDownloader;I)V

    :cond_0
    return-void
.end method

.method protected onStarted()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mCallback:Lcom/autonavi/xmgd/citydata/FileDownloader$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mCallback:Lcom/autonavi/xmgd/citydata/FileDownloader$Callback;

    invoke-interface {v0, p0}, Lcom/autonavi/xmgd/citydata/FileDownloader$Callback;->onStarted(Lcom/autonavi/xmgd/citydata/FileDownloader;)V

    :cond_0
    return-void
.end method

.method protected onStopped()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mCallback:Lcom/autonavi/xmgd/citydata/FileDownloader$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mCallback:Lcom/autonavi/xmgd/citydata/FileDownloader$Callback;

    invoke-interface {v0, p0}, Lcom/autonavi/xmgd/citydata/FileDownloader$Callback;->onStopped(Lcom/autonavi/xmgd/citydata/FileDownloader;)V

    :cond_0
    return-void
.end method

.method protected readDownloadSize(I)I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mFileRecorder:Lcom/autonavi/xmgd/citydata/FileRecorder;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/citydata/FileRecorder;->readDownloadSize(I)I

    move-result v0

    return v0
.end method

.method recordDownloadSize(II)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mFileRecorder:Lcom/autonavi/xmgd/citydata/FileRecorder;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/xmgd/citydata/FileRecorder;->saveDownloadSize(II)V

    return-void
.end method

.method public removeUselessFiles()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mTempSaveFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mTempSaveFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mTempSaveFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mFileRecorder:Lcom/autonavi/xmgd/citydata/FileRecorder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mFileRecorder:Lcom/autonavi/xmgd/citydata/FileRecorder;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/FileRecorder;->removeRecordFile()V

    :cond_1
    return-void
.end method

.method public setCallback(Lcom/autonavi/xmgd/citydata/FileDownloader$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mCallback:Lcom/autonavi/xmgd/citydata/FileDownloader$Callback;

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->id:I

    return-void
.end method

.method public start()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mIsPrepared:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/FileDownloader;->prepare()V

    :cond_0
    iget-boolean v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mIsStarted:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/FileDownloader;->onStarted()V

    :cond_1
    iput-boolean v1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mIsStarted:Z

    iget-boolean v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mIsLoadSuccess:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mTotalSize:I

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mIsDownloading:Z

    if-eqz v0, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    iput-boolean v1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mIsDownloading:Z

    new-instance v0, Lcom/autonavi/xmgd/citydata/FileDownloader$StartRunner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/autonavi/xmgd/citydata/FileDownloader$StartRunner;-><init>(Lcom/autonavi/xmgd/citydata/FileDownloader;Lcom/autonavi/xmgd/citydata/FileDownloader$1;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mStartRunner:Lcom/autonavi/xmgd/citydata/FileDownloader$StartRunner;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mStartRunner:Lcom/autonavi/xmgd/citydata/FileDownloader$StartRunner;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public stop()V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mPrepareRunner:Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mPrepareRunner:Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->quit()V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mStartRunner:Lcom/autonavi/xmgd/citydata/FileDownloader$StartRunner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mStartRunner:Lcom/autonavi/xmgd/citydata/FileDownloader$StartRunner;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/FileDownloader$StartRunner;->quit()V

    :cond_1
    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mDownloadRunners:[Lcom/autonavi/xmgd/citydata/FileDownloader$DownloadRunner;

    if-eqz v2, :cond_3

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_3

    aget-object v4, v2, v0

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/autonavi/xmgd/citydata/FileDownloader$DownloadRunner;->quit()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iput-boolean v1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mIsPrepareStarted:Z

    iput-boolean v1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mIsStarted:Z

    iput-boolean v1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader;->mIsDownloading:Z

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/FileDownloader;->onStopped()V

    return-void
.end method

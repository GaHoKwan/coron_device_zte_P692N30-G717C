.class Lcom/autonavi/xmgd/citydata/FileDownloader$DownloadRunner;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final MAX_BUFFER_BYTES:I = 0x100000


# instance fields
.field private final mDownUrl:Ljava/net/URL;

.field private mDownloadedSize:I

.field private final mEndPos:I

.field private mIsRunning:Z

.field private mRetryCount:I

.field private final mStartPos:I

.field private final mTargetFile:Ljava/io/File;

.field private final mThreadId:I

.field resultCode:I

.field final synthetic this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;


# direct methods
.method public constructor <init>(Lcom/autonavi/xmgd/citydata/FileDownloader;Ljava/net/URL;Ljava/io/File;IIII)V
    .locals 1

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$DownloadRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$DownloadRunner;->resultCode:I

    iput-object p2, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$DownloadRunner;->mDownUrl:Ljava/net/URL;

    iput-object p3, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$DownloadRunner;->mTargetFile:Ljava/io/File;

    iput p4, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$DownloadRunner;->mStartPos:I

    iput p5, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$DownloadRunner;->mEndPos:I

    iput p6, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$DownloadRunner;->mDownloadedSize:I

    iput p7, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$DownloadRunner;->mThreadId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$DownloadRunner;->mIsRunning:Z

    return-void
.end method

.method private download()Z
    .locals 12

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget v6, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$DownloadRunner;->mThreadId:I

    iget v1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$DownloadRunner;->mDownloadedSize:I

    :try_start_0
    iget v2, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$DownloadRunner;->mStartPos:I

    add-int v5, v2, v1

    iget v7, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$DownloadRunner;->mEndPos:I

    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v8, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$DownloadRunner;->mTargetFile:Ljava/io/File;

    const-string v9, "rw"

    invoke-direct {v2, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    int-to-long v8, v5

    :try_start_1
    invoke-virtual {v2, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v8, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$DownloadRunner;->mDownUrl:Ljava/net/URL;

    invoke-static {v8, v5, v7}, Lcom/autonavi/xmgd/citydata/FileDownloader;->createHttpConnection(Ljava/net/URL;II)Ljava/net/HttpURLConnection;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v5

    const/4 v0, 0x1

    const/high16 v8, 0x10

    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v8, v0, [B

    iget v9, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$DownloadRunner;->mStartPos:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    move v0, v4

    :goto_0
    :try_start_3
    iget-boolean v10, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$DownloadRunner;->mIsRunning:Z

    if-eqz v10, :cond_0

    add-int v10, v9, v1

    if-gt v10, v7, :cond_0

    invoke-virtual {v5, v8}, Ljava/io/InputStream;->read([B)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    iget-boolean v11, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$DownloadRunner;->mIsRunning:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    if-nez v11, :cond_3

    :cond_0
    if-eqz v5, :cond_1

    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move v2, v3

    :goto_1
    iput v1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$DownloadRunner;->mDownloadedSize:I

    if-nez v0, :cond_2

    if-ne v2, v3, :cond_2

    iget v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$DownloadRunner;->mDownloadedSize:I

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$DownloadRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    #getter for: Lcom/autonavi/xmgd/citydata/FileDownloader;->mTotalSize:I
    invoke-static {v1}, Lcom/autonavi/xmgd/citydata/FileDownloader;->access$200(Lcom/autonavi/xmgd/citydata/FileDownloader;)I

    move-result v1

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$DownloadRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    invoke-virtual {v0, v4}, Lcom/autonavi/xmgd/citydata/FileDownloader;->increaseDownSize(I)V

    :cond_2
    return v2

    :cond_3
    const/4 v0, 0x0

    :try_start_5
    invoke-virtual {v2, v8, v0, v10}, Ljava/io/RandomAccessFile;->write([BII)V

    add-int/2addr v1, v10

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$DownloadRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    invoke-virtual {v0, v6, v1}, Lcom/autonavi/xmgd/citydata/FileDownloader;->recordDownloadSize(II)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$DownloadRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    invoke-virtual {v0, v10}, Lcom/autonavi/xmgd/citydata/FileDownloader;->increaseDownSize(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$DownloadRunner;->mRetryCount:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    move v0, v3

    goto :goto_0

    :catch_0
    move-exception v2

    move v2, v3

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v2, v0

    move-object v5, v0

    move v0, v4

    :goto_2
    const/16 v6, 0x11

    :try_start_6
    iput v6, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$DownloadRunner;->resultCode:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v5, :cond_4

    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_5
    move v2, v4

    goto :goto_1

    :catch_2
    move-exception v2

    move v2, v4

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v5, v0

    move-object v0, v1

    :goto_3
    if-eqz v5, :cond_6

    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :cond_7
    :goto_4
    throw v0

    :catch_3
    move-exception v1

    goto :goto_4

    :catchall_1
    move-exception v1

    move-object v5, v0

    move-object v0, v1

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v5

    move-object v5, v0

    move v0, v4

    goto :goto_2

    :catch_5
    move-exception v0

    move v0, v4

    goto :goto_2

    :catch_6
    move-exception v6

    goto :goto_2

    :catch_7
    move-exception v0

    move v0, v3

    goto :goto_2
.end method

.method private retryDelay()V
    .locals 2

    iget v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$DownloadRunner;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$DownloadRunner;->mRetryCount:I

    iget v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$DownloadRunner;->mRetryCount:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$DownloadRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    iget v1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$DownloadRunner;->resultCode:I

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/citydata/FileDownloader;->onError(I)V

    :cond_0
    :try_start_0
    iget v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$DownloadRunner;->mRetryCount:I

    mul-int/lit16 v0, v0, 0xbb8

    const v1, 0xea60

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public quit()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$DownloadRunner;->mIsRunning:Z

    return-void
.end method

.method public run()V
    .locals 1

    :goto_0
    iget-boolean v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$DownloadRunner;->mIsRunning:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/FileDownloader$DownloadRunner;->download()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/FileDownloader$DownloadRunner;->retryDelay()V

    goto :goto_0
.end method

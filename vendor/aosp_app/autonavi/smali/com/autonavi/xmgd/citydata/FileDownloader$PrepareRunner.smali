.class Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mIsRunning:Z

.field private mRetryCount:I

.field resultCode:I

.field final synthetic this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;


# direct methods
.method private constructor <init>(Lcom/autonavi/xmgd/citydata/FileDownloader;)V
    .locals 1

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->mIsRunning:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->resultCode:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/autonavi/xmgd/citydata/FileDownloader;Lcom/autonavi/xmgd/citydata/FileDownloader$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;-><init>(Lcom/autonavi/xmgd/citydata/FileDownloader;)V

    return-void
.end method

.method private retryDelay()V
    .locals 2

    iget v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->mRetryCount:I

    iget v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->mRetryCount:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    iget v1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->resultCode:I

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/citydata/FileDownloader;->onError(I)V

    :cond_0
    :try_start_0
    iget v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->mRetryCount:I

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

    iput-boolean v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->mIsRunning:Z

    return-void
.end method

.method public run()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    #getter for: Lcom/autonavi/xmgd/citydata/FileDownloader;->mSaveFile:Ljava/io/File;
    invoke-static {v1}, Lcom/autonavi/xmgd/citydata/FileDownloader;->access$600(Lcom/autonavi/xmgd/citydata/FileDownloader;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    #getter for: Lcom/autonavi/xmgd/citydata/FileDownloader;->mSaveFile:Ljava/io/File;
    invoke-static {v3}, Lcom/autonavi/xmgd/citydata/FileDownloader;->access$600(Lcom/autonavi/xmgd/citydata/FileDownloader;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "_gddown"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #setter for: Lcom/autonavi/xmgd/citydata/FileDownloader;->mTempSaveFile:Ljava/io/File;
    invoke-static {v1, v2}, Lcom/autonavi/xmgd/citydata/FileDownloader;->access$702(Lcom/autonavi/xmgd/citydata/FileDownloader;Ljava/io/File;)Ljava/io/File;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    new-instance v2, Lcom/autonavi/xmgd/citydata/FileRecorder;

    iget-object v3, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    #getter for: Lcom/autonavi/xmgd/citydata/FileDownloader;->mSaveFile:Ljava/io/File;
    invoke-static {v3}, Lcom/autonavi/xmgd/citydata/FileDownloader;->access$600(Lcom/autonavi/xmgd/citydata/FileDownloader;)Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/autonavi/xmgd/citydata/FileRecorder;-><init>(Ljava/io/File;Z)V

    #setter for: Lcom/autonavi/xmgd/citydata/FileDownloader;->mFileRecorder:Lcom/autonavi/xmgd/citydata/FileRecorder;
    invoke-static {v1, v2}, Lcom/autonavi/xmgd/citydata/FileDownloader;->access$802(Lcom/autonavi/xmgd/citydata/FileDownloader;Lcom/autonavi/xmgd/citydata/FileRecorder;)Lcom/autonavi/xmgd/citydata/FileRecorder;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/FileRecorder;->readTotalSize()I

    move-result v2

    #setter for: Lcom/autonavi/xmgd/citydata/FileDownloader;->mTotalSize:I
    invoke-static {v1, v2}, Lcom/autonavi/xmgd/citydata/FileDownloader;->access$202(Lcom/autonavi/xmgd/citydata/FileDownloader;I)I

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/FileRecorder;->readThreadNum()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    #setter for: Lcom/autonavi/xmgd/citydata/FileDownloader;->mThreadNum:I
    invoke-static {v2, v1}, Lcom/autonavi/xmgd/citydata/FileDownloader;->access$302(Lcom/autonavi/xmgd/citydata/FileDownloader;I)I

    :cond_0
    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/FileRecorder;->readDownloadUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #setter for: Lcom/autonavi/xmgd/citydata/FileDownloader;->mSourceUrl:Ljava/net/URL;
    invoke-static {v2, v3}, Lcom/autonavi/xmgd/citydata/FileDownloader;->access$902(Lcom/autonavi/xmgd/citydata/FileDownloader;Ljava/net/URL;)Ljava/net/URL;

    :cond_1
    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    #getter for: Lcom/autonavi/xmgd/citydata/FileDownloader;->mSaveFile:Ljava/io/File;
    invoke-static {v2}, Lcom/autonavi/xmgd/citydata/FileDownloader;->access$600(Lcom/autonavi/xmgd/citydata/FileDownloader;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/autonavi/xmgd/citydata/FileDownloader;->mFileName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/autonavi/xmgd/citydata/FileDownloader;->access$1002(Lcom/autonavi/xmgd/citydata/FileDownloader;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    #getter for: Lcom/autonavi/xmgd/citydata/FileDownloader;->mTotalSize:I
    invoke-static {v1}, Lcom/autonavi/xmgd/citydata/FileDownloader;->access$200(Lcom/autonavi/xmgd/citydata/FileDownloader;)I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x4

    iput v1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->resultCode:I

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    const/4 v2, 0x1

    #setter for: Lcom/autonavi/xmgd/citydata/FileDownloader;->mIsLoadSuccess:Z
    invoke-static {v1, v2}, Lcom/autonavi/xmgd/citydata/FileDownloader;->access$1102(Lcom/autonavi/xmgd/citydata/FileDownloader;Z)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    #getter for: Lcom/autonavi/xmgd/citydata/FileDownloader;->mIsLoadSuccess:Z
    invoke-static {v1}, Lcom/autonavi/xmgd/citydata/FileDownloader;->access$1100(Lcom/autonavi/xmgd/citydata/FileDownloader;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    #getter for: Lcom/autonavi/xmgd/citydata/FileDownloader;->mSourceUrl:Ljava/net/URL;
    invoke-static {v1}, Lcom/autonavi/xmgd/citydata/FileDownloader;->access$900(Lcom/autonavi/xmgd/citydata/FileDownloader;)Ljava/net/URL;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    #getter for: Lcom/autonavi/xmgd/citydata/FileDownloader;->mSaveDir:Ljava/io/File;
    invoke-static {v1}, Lcom/autonavi/xmgd/citydata/FileDownloader;->access$1200(Lcom/autonavi/xmgd/citydata/FileDownloader;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_6

    :goto_1
    iget-boolean v1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->mIsRunning:Z

    if-eqz v1, :cond_6

    :try_start_1
    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    #getter for: Lcom/autonavi/xmgd/citydata/FileDownloader;->mSourceUrl:Ljava/net/URL;
    invoke-static {v1}, Lcom/autonavi/xmgd/citydata/FileDownloader;->access$900(Lcom/autonavi/xmgd/citydata/FileDownloader;)Ljava/net/URL;

    move-result-object v1

    invoke-static {v1}, Lcom/autonavi/xmgd/citydata/FileDownloader;->createHttpConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    iget-boolean v2, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->mIsRunning:Z
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v2, :cond_4

    :cond_3
    :goto_2
    return-void

    :catch_0
    move-exception v1

    const/4 v1, 0x5

    iput v1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->resultCode:I

    goto :goto_0

    :cond_4
    :try_start_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const-string v3, "lkx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_8

    iget-boolean v2, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->mIsRunning:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    #setter for: Lcom/autonavi/xmgd/citydata/FileDownloader;->mTotalSize:I
    invoke-static {v2, v3}, Lcom/autonavi/xmgd/citydata/FileDownloader;->access$202(Lcom/autonavi/xmgd/citydata/FileDownloader;I)I

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    iget-object v3, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    #calls: Lcom/autonavi/xmgd/citydata/FileDownloader;->getFileName(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    invoke-static {v3, v1}, Lcom/autonavi/xmgd/citydata/FileDownloader;->access$1300(Lcom/autonavi/xmgd/citydata/FileDownloader;Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/autonavi/xmgd/citydata/FileDownloader;->mFileName:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/autonavi/xmgd/citydata/FileDownloader;->access$1002(Lcom/autonavi/xmgd/citydata/FileDownloader;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    #getter for: Lcom/autonavi/xmgd/citydata/FileDownloader;->mSaveDir:Ljava/io/File;
    invoke-static {v2}, Lcom/autonavi/xmgd/citydata/FileDownloader;->access$1200(Lcom/autonavi/xmgd/citydata/FileDownloader;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    #getter for: Lcom/autonavi/xmgd/citydata/FileDownloader;->mSaveDir:Ljava/io/File;
    invoke-static {v2}, Lcom/autonavi/xmgd/citydata/FileDownloader;->access$1200(Lcom/autonavi/xmgd/citydata/FileDownloader;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_5
    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    #getter for: Lcom/autonavi/xmgd/citydata/FileDownloader;->mSaveDir:Ljava/io/File;
    invoke-static {v4}, Lcom/autonavi/xmgd/citydata/FileDownloader;->access$1200(Lcom/autonavi/xmgd/citydata/FileDownloader;)Ljava/io/File;

    move-result-object v4

    iget-object v5, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    #getter for: Lcom/autonavi/xmgd/citydata/FileDownloader;->mFileName:Ljava/lang/String;
    invoke-static {v5}, Lcom/autonavi/xmgd/citydata/FileDownloader;->access$1000(Lcom/autonavi/xmgd/citydata/FileDownloader;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #setter for: Lcom/autonavi/xmgd/citydata/FileDownloader;->mSaveFile:Ljava/io/File;
    invoke-static {v2, v3}, Lcom/autonavi/xmgd/citydata/FileDownloader;->access$602(Lcom/autonavi/xmgd/citydata/FileDownloader;Ljava/io/File;)Ljava/io/File;

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    #getter for: Lcom/autonavi/xmgd/citydata/FileDownloader;->mSaveDir:Ljava/io/File;
    invoke-static {v4}, Lcom/autonavi/xmgd/citydata/FileDownloader;->access$1200(Lcom/autonavi/xmgd/citydata/FileDownloader;)Ljava/io/File;

    move-result-object v4

    iget-object v5, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    #getter for: Lcom/autonavi/xmgd/citydata/FileDownloader;->mFileName:Ljava/lang/String;
    invoke-static {v5}, Lcom/autonavi/xmgd/citydata/FileDownloader;->access$1000(Lcom/autonavi/xmgd/citydata/FileDownloader;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "_gddown"

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #setter for: Lcom/autonavi/xmgd/citydata/FileDownloader;->mTempSaveFile:Ljava/io/File;
    invoke-static {v2, v3}, Lcom/autonavi/xmgd/citydata/FileDownloader;->access$702(Lcom/autonavi/xmgd/citydata/FileDownloader;Ljava/io/File;)Ljava/io/File;

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    new-instance v3, Lcom/autonavi/xmgd/citydata/FileRecorder;

    iget-object v4, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    #getter for: Lcom/autonavi/xmgd/citydata/FileDownloader;->mSaveFile:Ljava/io/File;
    invoke-static {v4}, Lcom/autonavi/xmgd/citydata/FileDownloader;->access$600(Lcom/autonavi/xmgd/citydata/FileDownloader;)Ljava/io/File;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/autonavi/xmgd/citydata/FileRecorder;-><init>(Ljava/io/File;Z)V

    #setter for: Lcom/autonavi/xmgd/citydata/FileDownloader;->mFileRecorder:Lcom/autonavi/xmgd/citydata/FileRecorder;
    invoke-static {v2, v3}, Lcom/autonavi/xmgd/citydata/FileDownloader;->access$802(Lcom/autonavi/xmgd/citydata/FileDownloader;Lcom/autonavi/xmgd/citydata/FileRecorder;)Lcom/autonavi/xmgd/citydata/FileRecorder;

    move-result-object v0

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    #getter for: Lcom/autonavi/xmgd/citydata/FileDownloader;->mThreadNum:I
    invoke-static {v2}, Lcom/autonavi/xmgd/citydata/FileDownloader;->access$300(Lcom/autonavi/xmgd/citydata/FileDownloader;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/citydata/FileRecorder;->saveThreadNum(I)V

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    #getter for: Lcom/autonavi/xmgd/citydata/FileDownloader;->mTotalSize:I
    invoke-static {v2}, Lcom/autonavi/xmgd/citydata/FileDownloader;->access$200(Lcom/autonavi/xmgd/citydata/FileDownloader;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/citydata/FileRecorder;->saveTotalSize(I)V

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    #getter for: Lcom/autonavi/xmgd/citydata/FileDownloader;->mSourceUrl:Ljava/net/URL;
    invoke-static {v2}, Lcom/autonavi/xmgd/citydata/FileDownloader;->access$900(Lcom/autonavi/xmgd/citydata/FileDownloader;)Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/citydata/FileRecorder;->saveDownloadUrl(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->resultCode:I

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    const/4 v2, 0x1

    #setter for: Lcom/autonavi/xmgd/citydata/FileDownloader;->mIsLoadSuccess:Z
    invoke-static {v1, v2}, Lcom/autonavi/xmgd/citydata/FileDownloader;->access$1102(Lcom/autonavi/xmgd/citydata/FileDownloader;Z)Z
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    #getter for: Lcom/autonavi/xmgd/citydata/FileDownloader;->mIsLoadSuccess:Z
    invoke-static {v1}, Lcom/autonavi/xmgd/citydata/FileDownloader;->access$1100(Lcom/autonavi/xmgd/citydata/FileDownloader;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_6
    iget-boolean v1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->mIsRunning:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    #getter for: Lcom/autonavi/xmgd/citydata/FileDownloader;->mIsPrepareStarted:Z
    invoke-static {v1}, Lcom/autonavi/xmgd/citydata/FileDownloader;->access$1400(Lcom/autonavi/xmgd/citydata/FileDownloader;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    iget v2, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->resultCode:I

    invoke-virtual {v1, v2}, Lcom/autonavi/xmgd/citydata/FileDownloader;->onPrepared(I)V

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    #getter for: Lcom/autonavi/xmgd/citydata/FileDownloader;->mIsLoadSuccess:Z
    invoke-static {v1}, Lcom/autonavi/xmgd/citydata/FileDownloader;->access$1100(Lcom/autonavi/xmgd/citydata/FileDownloader;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    #setter for: Lcom/autonavi/xmgd/citydata/FileDownloader;->mIsPrepared:Z
    invoke-static {v1, v7}, Lcom/autonavi/xmgd/citydata/FileDownloader;->access$1502(Lcom/autonavi/xmgd/citydata/FileDownloader;Z)Z

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/FileRecorder;->readTotalDownloadSize()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/citydata/FileDownloader;->increaseDownSize(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    #getter for: Lcom/autonavi/xmgd/citydata/FileDownloader;->mIsStarted:Z
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/FileDownloader;->access$1600(Lcom/autonavi/xmgd/citydata/FileDownloader;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/FileDownloader;->start()V

    :cond_7
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    #setter for: Lcom/autonavi/xmgd/citydata/FileDownloader;->mIsPrepareStarted:Z
    invoke-static {v0, v8}, Lcom/autonavi/xmgd/citydata/FileDownloader;->access$1402(Lcom/autonavi/xmgd/citydata/FileDownloader;Z)Z

    goto/16 :goto_2

    :cond_8
    const/4 v1, 0x3

    :try_start_3
    iput v1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->resultCode:I
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_1
    move-exception v1

    const/4 v1, 0x2

    iput v1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->resultCode:I

    goto :goto_3

    :catch_2
    move-exception v1

    iput v7, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->resultCode:I

    goto :goto_3

    :cond_9
    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/FileDownloader$PrepareRunner;->retryDelay()V

    goto/16 :goto_1
.end method

.class Lcom/autonavi/xmgd/citydata/FileDownloader$StartRunner;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mIsRunning:Z

.field final synthetic this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;


# direct methods
.method private constructor <init>(Lcom/autonavi/xmgd/citydata/FileDownloader;)V
    .locals 1

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$StartRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$StartRunner;->mIsRunning:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/autonavi/xmgd/citydata/FileDownloader;Lcom/autonavi/xmgd/citydata/FileDownloader$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/citydata/FileDownloader$StartRunner;-><init>(Lcom/autonavi/xmgd/citydata/FileDownloader;)V

    return-void
.end method


# virtual methods
.method public quit()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$StartRunner;->mIsRunning:Z

    return-void
.end method

.method public run()V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$StartRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    #getter for: Lcom/autonavi/xmgd/citydata/FileDownloader;->mTotalSize:I
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/FileDownloader;->access$200(Lcom/autonavi/xmgd/citydata/FileDownloader;)I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$StartRunner;->mIsRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$StartRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    #getter for: Lcom/autonavi/xmgd/citydata/FileDownloader;->mThreadNum:I
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/FileDownloader;->access$300(Lcom/autonavi/xmgd/citydata/FileDownloader;)I

    move-result v3

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$StartRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    new-array v2, v3, [Lcom/autonavi/xmgd/citydata/FileDownloader$DownloadRunner;

    #setter for: Lcom/autonavi/xmgd/citydata/FileDownloader;->mDownloadRunners:[Lcom/autonavi/xmgd/citydata/FileDownloader$DownloadRunner;
    invoke-static {v0, v2}, Lcom/autonavi/xmgd/citydata/FileDownloader;->access$402(Lcom/autonavi/xmgd/citydata/FileDownloader;[Lcom/autonavi/xmgd/citydata/FileDownloader$DownloadRunner;)[Lcom/autonavi/xmgd/citydata/FileDownloader$DownloadRunner;

    move v0, v1

    move v2, v1

    :goto_1
    iget-boolean v4, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$StartRunner;->mIsRunning:Z

    if-eqz v4, :cond_3

    if-ge v0, v3, :cond_3

    iget-object v4, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$StartRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    #calls: Lcom/autonavi/xmgd/citydata/FileDownloader;->launchDownloadThread(I)Z
    invoke-static {v4, v0}, Lcom/autonavi/xmgd/citydata/FileDownloader;->access$500(Lcom/autonavi/xmgd/citydata/FileDownloader;I)Z

    move-result v4

    if-nez v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    if-ne v2, v3, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/FileDownloader$StartRunner;->this$0:Lcom/autonavi/xmgd/citydata/FileDownloader;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/citydata/FileDownloader;->increaseDownSize(I)V

    goto :goto_0
.end method

.class Lcom/autonavi/xmgd/citydata/DataUpdateService$UnZipRunner;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final id:I

.field final synthetic this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/citydata/DataUpdateService;I)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$UnZipRunner;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$UnZipRunner;->id:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/16 v6, 0x2717

    const/4 v5, 0x0

    const/4 v4, 0x4

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$UnZipRunner;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    iget v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$UnZipRunner;->id:I

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->getDownloadTaskItem(I)Lcom/autonavi/xmgd/citydata/DownloadItem;
    invoke-static {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$2800(Lcom/autonavi/xmgd/citydata/DataUpdateService;I)Lcom/autonavi/xmgd/citydata/DownloadItem;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v0, v0, Lcom/autonavi/xmgd/citydata/DownloadItem;->saveFilePath:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$UnZipRunner;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    iget v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$UnZipRunner;->id:I

    #setter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mZipId:I
    invoke-static {v0, v2}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$2902(Lcom/autonavi/xmgd/citydata/DataUpdateService;I)I

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$UnZipRunner;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDataBaseDirPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$3000(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/autonavi/xmgd/citydata/ZipUtils;->upZipFile(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$UnZipRunner;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mMainHandler:Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$700(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;

    move-result-object v0

    const/4 v1, 0x3

    iget v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$UnZipRunner;->id:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$UnZipRunner;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #setter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mZipId:I
    invoke-static {v0, v5}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$2902(Lcom/autonavi/xmgd/citydata/DataUpdateService;I)I

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/util/zip/ZipException;->printStackTrace()V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$UnZipRunner;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mMainHandler:Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$700(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;

    move-result-object v0

    iget v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$UnZipRunner;->id:I

    const/16 v2, 0x2723

    invoke-virtual {v0, v4, v1, v2}, Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$UnZipRunner;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->availableDiskSpace()J
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$3100(Lcom/autonavi/xmgd/citydata/DataUpdateService;)J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$UnZipRunner;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mMainHandler:Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$700(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;

    move-result-object v0

    iget v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$UnZipRunner;->id:I

    const/16 v2, 0x2724

    invoke-virtual {v0, v4, v1, v2}, Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$UnZipRunner;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mMainHandler:Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$700(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;

    move-result-object v0

    iget v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$UnZipRunner;->id:I

    invoke-virtual {v0, v4, v1, v6}, Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$UnZipRunner;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mMainHandler:Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$700(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;

    move-result-object v0

    iget v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$UnZipRunner;->id:I

    invoke-virtual {v0, v4, v1, v6}, Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.class public Lcom/zte/update/mgr/downloadhandler/StopAndClearDownloadHandler;
.super Ljava/lang/Object;
.source "StopAndClearDownloadHandler.java"

# interfaces
.implements Lcom/zte/update/mgr/Handleable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Landroid/app/Service;Landroid/content/Intent;)V
    .locals 8
    .parameter "service"
    .parameter "intent"

    .prologue
    .line 17
    const-string v5, "handleDownload stopAndClrTasks"

    invoke-static {p0, v5}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    const-string v5, "key"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, dlInfoKeyToDel:Ljava/lang/String;
    invoke-static {}, Lcom/zte/update/data/DataManager;->getInstance()Lcom/zte/update/data/DataManager;

    move-result-object v4

    .line 21
    .local v4, mgr:Lcom/zte/update/data/DataManager;
    invoke-static {}, Lcom/zte/update/download/DownloadManager;->getInstance()Lcom/zte/update/download/DownloadManager;

    move-result-object v1

    .line 23
    .local v1, dlMgr:Lcom/zte/update/download/DownloadManager;
    invoke-virtual {v4, v0}, Lcom/zte/update/data/DataManager;->loadDownloadInfo(Ljava/lang/Object;)Lcom/zte/update/data/DownloadInfo;

    move-result-object v3

    .line 24
    .local v3, info:Lcom/zte/update/data/DownloadInfo;
    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    invoke-virtual {v3, v5, v6, v7}, Lcom/zte/update/data/DownloadInfo;->change(IJ)V

    .line 27
    :try_start_0
    const-string v5, "handleDownload clearDownloadTask"

    invoke-static {p0, v5}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v1, v3}, Lcom/zte/update/download/DownloadManager;->clearDownloadTask(Lcom/zte/update/data/DownloadInfo;)V

    .line 29
    const-string v5, "handleDownload delTask"

    invoke-static {p0, v5}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v1, v3}, Lcom/zte/update/download/DownloadManager;->delTask(Lcom/zte/update/data/DownloadInfo;)Z

    .line 31
    const-string v5, "handleDownload resetDownloadInfo"

    invoke-static {p0, v5}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v4, v3}, Lcom/zte/update/data/DataManager;->resetDownloadInfo(Lcom/zte/update/data/DownloadInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v2

    .line 34
    .local v2, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/zte/util/Log;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

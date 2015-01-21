.class public Lcom/zte/update/mgr/downloadhandler/PauseDownloadHandler;
.super Ljava/lang/Object;
.source "PauseDownloadHandler.java"

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
    .locals 5
    .parameter "service"
    .parameter "intent"

    .prologue
    .line 17
    const-string v3, "key"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, dlInfoKeyToPaus:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pauseTask key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lcom/zte/update/data/DataManager;->getInstance()Lcom/zte/update/data/DataManager;

    move-result-object v2

    .line 20
    .local v2, mgr:Lcom/zte/update/data/DataManager;
    invoke-virtual {v2, v0}, Lcom/zte/update/data/DataManager;->loadDownloadInfo(Ljava/lang/Object;)Lcom/zte/update/data/DownloadInfo;

    move-result-object v1

    .line 21
    .local v1, info:Lcom/zte/update/data/DownloadInfo;
    invoke-static {}, Lcom/zte/update/download/DownloadManager;->getInstance()Lcom/zte/update/download/DownloadManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/zte/update/download/DownloadManager;->pauseTask(Lcom/zte/update/data/DownloadInfo;)Z

    .line 23
    return-void
.end method

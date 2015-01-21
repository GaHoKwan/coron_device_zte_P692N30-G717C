.class public Lcom/zte/update/mgr/DownloadServiceHandler;
.super Ljava/lang/Object;
.source "DownloadServiceHandler.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DownloadServiceHandler"

.field public static handleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/zte/update/mgr/Handleable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zte/update/mgr/DownloadServiceHandler;->handleMap:Ljava/util/Map;

    .line 32
    sget-object v0, Lcom/zte/update/mgr/DownloadServiceHandler;->handleMap:Ljava/util/Map;

    const-string v1, "com.zte.aliveupdate.download.stopdownload"

    new-instance v2, Lcom/zte/update/mgr/downloadhandler/StopDownloadHandler;

    invoke-direct {v2}, Lcom/zte/update/mgr/downloadhandler/StopDownloadHandler;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/zte/update/mgr/DownloadServiceHandler;->handleMap:Ljava/util/Map;

    const-string v1, "com.zte.aliveupdate.download.stopalldownload"

    new-instance v2, Lcom/zte/update/mgr/downloadhandler/StopAllDownloadHandler;

    invoke-direct {v2}, Lcom/zte/update/mgr/downloadhandler/StopAllDownloadHandler;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/zte/update/mgr/DownloadServiceHandler;->handleMap:Ljava/util/Map;

    const-string v1, "com.zte.aliveupdate.download.startdownload"

    new-instance v2, Lcom/zte/update/mgr/downloadhandler/StartDownloadHandler;

    invoke-direct {v2}, Lcom/zte/update/mgr/downloadhandler/StartDownloadHandler;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/zte/update/mgr/DownloadServiceHandler;->handleMap:Ljava/util/Map;

    const-string v1, "com.zte.aliveupdate.download.stop_clear_download"

    new-instance v2, Lcom/zte/update/mgr/downloadhandler/StopAndClearDownloadHandler;

    invoke-direct {v2}, Lcom/zte/update/mgr/downloadhandler/StopAndClearDownloadHandler;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/zte/update/mgr/DownloadServiceHandler;->handleMap:Ljava/util/Map;

    const-string v1, "com.zte.aliveupdate.download.pausedownload"

    new-instance v2, Lcom/zte/update/mgr/downloadhandler/PauseDownloadHandler;

    invoke-direct {v2}, Lcom/zte/update/mgr/downloadhandler/PauseDownloadHandler;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleDownload(Landroid/app/Service;Landroid/content/Intent;)V
    .locals 5
    .parameter "service"
    .parameter "intent"

    .prologue
    .line 40
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, action:Ljava/lang/String;
    const-string v2, "DownloadServiceHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleDownload "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zte/util/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    sget-object v2, Lcom/zte/update/mgr/DownloadServiceHandler;->handleMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/update/mgr/Handleable;

    .line 44
    .local v1, handle:Lcom/zte/update/mgr/Handleable;
    if-eqz v1, :cond_0

    .line 45
    invoke-interface {v1, p0, p1}, Lcom/zte/update/mgr/Handleable;->handle(Landroid/app/Service;Landroid/content/Intent;)V

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    const-string v2, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " handle is not implement"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zte/util/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

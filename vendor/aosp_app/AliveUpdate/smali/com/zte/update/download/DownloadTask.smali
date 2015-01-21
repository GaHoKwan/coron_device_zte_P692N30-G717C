.class public Lcom/zte/update/download/DownloadTask;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private dl:Lcom/zte/update/download/Downloader;

.field dlParam:Lcom/zte/update/data/DownloadParams;

.field private downloadTime:J

.field private endTime:J

.field protected info:Lcom/zte/update/data/DownloadInfo;

.field isClear:Z

.field isPause:Z

.field isRest:Z

.field private startTime:J

.field public final upgradeAppName:Ljava/lang/String;

.field private userActRec:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zte/update/data/DownloadInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "AliveUpdate"

    iput-object v0, p0, Lcom/zte/update/download/DownloadTask;->upgradeAppName:Ljava/lang/String;

    .line 37
    iput-boolean v1, p0, Lcom/zte/update/download/DownloadTask;->isRest:Z

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/update/download/DownloadTask;->isClear:Z

    .line 39
    new-instance v0, Lcom/zte/update/data/DownloadParams;

    invoke-direct {v0}, Lcom/zte/update/data/DownloadParams;-><init>()V

    iput-object v0, p0, Lcom/zte/update/download/DownloadTask;->dlParam:Lcom/zte/update/data/DownloadParams;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/update/download/DownloadTask;->userActRec:Ljava/lang/String;

    .line 44
    iput-boolean v1, p0, Lcom/zte/update/download/DownloadTask;->isPause:Z

    .line 48
    iput-object p1, p0, Lcom/zte/update/download/DownloadTask;->info:Lcom/zte/update/data/DownloadInfo;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/zte/update/download/DownloadTask;->userActRec:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zte/update/data/DownloadInfo;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/update/download/DownloadTask;->userActRec:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/zte/update/download/DownloadTask;->userActRec:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/update/download/DownloadTask;->userActRec:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Lcom/zte/update/data/DownloadInfo;->getDownloadDir()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 52
    invoke-static {}, Lcom/zte/update/data/storage/AndroidFileStorage;->getUpdtDirPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zte/update/data/DownloadInfo;->setDownloadDir(Ljava/lang/String;)V

    .line 54
    :cond_0
    const/16 v0, 0xb

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/zte/update/data/DownloadInfo;->change(IJ)V

    .line 56
    return-void
.end method

.method private addSeperator(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "Str"

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private doDownload()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 159
    new-instance v0, Lcom/zte/update/download/Downloader;

    iget-object v1, p0, Lcom/zte/update/download/DownloadTask;->info:Lcom/zte/update/data/DownloadInfo;

    invoke-direct {v0, v1}, Lcom/zte/update/download/Downloader;-><init>(Lcom/zte/update/data/DownloadInfo;)V

    iput-object v0, p0, Lcom/zte/update/download/DownloadTask;->dl:Lcom/zte/update/download/Downloader;

    .line 161
    iget-object v0, p0, Lcom/zte/update/download/DownloadTask;->dl:Lcom/zte/update/download/Downloader;

    invoke-virtual {v0}, Lcom/zte/update/download/Downloader;->start()V

    .line 162
    return-void
.end method

.method private doInstall()V
    .locals 2

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadTask: Enter to installer filename="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/update/download/DownloadTask;->info:Lcom/zte/update/data/DownloadInfo;

    invoke-virtual {v1}, Lcom/zte/update/data/DownloadInfo;->getDownloadfileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/zte/update/download/DownloadTask;->info:Lcom/zte/update/data/DownloadInfo;

    invoke-static {v0}, Lcom/zte/update/download/install/InstallerFactory;->getInstaller(Lcom/zte/update/data/DownloadInfo;)Lcom/zte/update/download/install/Installer;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/update/download/install/Installer;->install()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zte/update/download/DownloadTask;->isClear:Z

    .line 155
    return-void
.end method

.method private printParams()V
    .locals 3

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadTask: totalSize ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/update/download/DownloadTask;->info:Lcom/zte/update/data/DownloadInfo;

    invoke-virtual {v1}, Lcom/zte/update/data/DownloadInfo;->getDownloadTotalSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadTask: download offset ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/update/download/DownloadTask;->info:Lcom/zte/update/data/DownloadInfo;

    invoke-virtual {v1}, Lcom/zte/update/data/DownloadInfo;->getDownloadOffset()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadTask: download url ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/update/download/DownloadTask;->info:Lcom/zte/update/data/DownloadInfo;

    invoke-virtual {v1}, Lcom/zte/update/data/DownloadInfo;->getDownloadUrlstr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadTask: download filename ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/update/download/DownloadTask;->info:Lcom/zte/update/data/DownloadInfo;

    invoke-virtual {v1}, Lcom/zte/update/data/DownloadInfo;->getDownloadfileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method private procFailed()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const-wide/16 v4, -0x1

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/zte/update/download/DownloadTask;->startTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/zte/update/download/DownloadTask;->downloadTime:J

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/zte/update/download/DownloadTask;->userActRec:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/zte/update/download/DownloadTask;->downloadTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/update/download/DownloadTask;->userActRec:Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/zte/update/download/DownloadTask;->userActRec:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/zte/update/download/DownloadTask;->addSeperator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/update/download/DownloadTask;->userActRec:Ljava/lang/String;

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/zte/update/download/DownloadTask;->userActRec:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/update/download/DownloadTask;->info:Lcom/zte/update/data/DownloadInfo;

    invoke-virtual {v1}, Lcom/zte/update/data/DownloadInfo;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/update/download/DownloadTask;->userActRec:Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/zte/update/download/DownloadTask;->userActRec:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/zte/update/download/DownloadTask;->addSeperator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/update/download/DownloadTask;->userActRec:Ljava/lang/String;

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "procFailed isRest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/zte/update/download/DownloadTask;->isRest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iget-boolean v0, p0, Lcom/zte/update/download/DownloadTask;->isRest:Z

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/zte/update/download/DownloadTask;->info:Lcom/zte/update/data/DownloadInfo;

    invoke-virtual {v0, v6, v7}, Lcom/zte/update/data/DownloadInfo;->setDownloadOffset(J)V

    .line 124
    invoke-static {}, Lcom/zte/update/data/DataManager;->getInstance()Lcom/zte/update/data/DataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/update/download/DownloadTask;->info:Lcom/zte/update/data/DownloadInfo;

    invoke-virtual {v0, v1}, Lcom/zte/update/data/DataManager;->resetDownloadInfo(Lcom/zte/update/data/DownloadInfo;)V

    .line 125
    iget-object v0, p0, Lcom/zte/update/download/DownloadTask;->info:Lcom/zte/update/data/DownloadInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v6, v7}, Lcom/zte/update/data/DownloadInfo;->change(IJ)V

    .line 134
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-boolean v0, p0, Lcom/zte/update/download/DownloadTask;->isPause:Z

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/zte/update/download/DownloadTask;->info:Lcom/zte/update/data/DownloadInfo;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v4, v5}, Lcom/zte/update/data/DownloadInfo;->change(IJ)V

    .line 129
    invoke-static {}, Lcom/zte/update/data/storage/DownloadInfoDBStorage;->getInstance()Lcom/zte/update/data/storage/DownloadInfoDBStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/update/download/DownloadTask;->info:Lcom/zte/update/data/DownloadInfo;

    invoke-virtual {v0, v1}, Lcom/zte/update/data/storage/DownloadInfoDBStorage;->updateOrInsert(Ljava/lang/Object;)V

    goto :goto_0

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/zte/update/download/DownloadTask;->info:Lcom/zte/update/data/DownloadInfo;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v4, v5}, Lcom/zte/update/data/DownloadInfo;->change(IJ)V

    .line 132
    invoke-static {}, Lcom/zte/update/data/storage/DownloadInfoDBStorage;->getInstance()Lcom/zte/update/data/storage/DownloadInfoDBStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/update/download/DownloadTask;->info:Lcom/zte/update/data/DownloadInfo;

    invoke-virtual {v0, v1}, Lcom/zte/update/data/storage/DownloadInfoDBStorage;->updateOrInsert(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/update/download/DownloadTask;->isRest:Z

    .line 179
    return-void
.end method

.method public getDownloadInfo()Lcom/zte/update/data/DownloadInfo;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/zte/update/download/DownloadTask;->info:Lcom/zte/update/data/DownloadInfo;

    return-object v0
.end method

.method public restart()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/zte/update/download/DownloadTask;->dl:Lcom/zte/update/download/Downloader;

    invoke-virtual {v0}, Lcom/zte/update/download/Downloader;->restart()V

    .line 183
    return-void
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/16 v8, 0x11

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 70
    invoke-static {}, Lcom/zte/update/app/ui/ObserverManager;->getInstance()Lcom/zte/update/app/ui/ObserverManager;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Lcom/zte/update/app/ui/ObserverManager;->update(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 71
    iget-object v1, p0, Lcom/zte/update/download/DownloadTask;->info:Lcom/zte/update/data/DownloadInfo;

    const/16 v2, 0xd

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/zte/update/data/DownloadInfo;->change(IJ)V

    .line 74
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/zte/update/download/DownloadTask;->startTime:J

    .line 75
    invoke-direct {p0}, Lcom/zte/update/download/DownloadTask;->printParams()V

    .line 76
    invoke-direct {p0}, Lcom/zte/update/download/DownloadTask;->doDownload()V

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadTask: after download offset ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/update/download/DownloadTask;->info:Lcom/zte/update/data/DownloadInfo;

    invoke-virtual {v2}, Lcom/zte/update/data/DownloadInfo;->getDownloadOffset()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/zte/update/download/DownloadTask;->dl:Lcom/zte/update/download/Downloader;

    invoke-virtual {v1}, Lcom/zte/update/download/Downloader;->checkDownloadCompelete()Z

    move-result v1

    if-ne v6, v1, :cond_0

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/zte/update/download/DownloadTask;->startTime:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/zte/update/download/DownloadTask;->downloadTime:J

    .line 87
    const-string v1, "download"

    iget-object v2, p0, Lcom/zte/update/download/DownloadTask;->info:Lcom/zte/update/data/DownloadInfo;

    invoke-virtual {v2}, Lcom/zte/update/data/DownloadInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/zte/update/download/DownloadTask;->downloadTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/zte/statistics/sdk/ZTEStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-direct {p0}, Lcom/zte/update/download/DownloadTask;->doInstall()V

    .line 100
    :goto_0
    const-string v1, "the rec write = true"

    invoke-static {p0, v1}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/zte/update/download/DownloadTask;->userActRec:Ljava/lang/String;

    invoke-static {v1}, Lcom/zte/update/tools/Recorder;->writeRec(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    invoke-static {}, Lcom/zte/update/app/ui/ObserverManager;->getInstance()Lcom/zte/update/app/ui/ObserverManager;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Lcom/zte/update/app/ui/ObserverManager;->update(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 112
    :goto_1
    return-void

    .line 97
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/zte/update/download/DownloadTask;->procFailed()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 105
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    invoke-static {}, Lcom/zte/update/app/ui/ObserverManager;->getInstance()Lcom/zte/update/app/ui/ObserverManager;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Lcom/zte/update/app/ui/ObserverManager;->update(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_1

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/zte/update/app/ui/ObserverManager;->getInstance()Lcom/zte/update/app/ui/ObserverManager;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Lcom/zte/update/app/ui/ObserverManager;->update(Ljava/lang/Object;[Ljava/lang/Object;)V

    throw v1
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/zte/update/download/DownloadTask;->dl:Lcom/zte/update/download/Downloader;

    if-nez v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 168
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/update/download/DownloadTask;->isPause:Z

    .line 169
    iget-object v0, p0, Lcom/zte/update/download/DownloadTask;->dl:Lcom/zte/update/download/Downloader;

    invoke-virtual {v0}, Lcom/zte/update/download/Downloader;->stop()V

    goto :goto_0
.end method

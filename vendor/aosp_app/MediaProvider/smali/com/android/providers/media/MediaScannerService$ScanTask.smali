.class Lcom/android/providers/media/MediaScannerService$ScanTask;
.super Ljava/lang/Object;
.source "MediaScannerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaScannerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanTask"
.end annotation


# instance fields
.field private final mPath:Ljava/lang/String;

.field private final mVolume:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/providers/media/MediaScannerService;


# direct methods
.method public constructor <init>(Lcom/android/providers/media/MediaScannerService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "scanPath"
    .parameter "volume"

    .prologue
    .line 641
    iput-object p1, p0, Lcom/android/providers/media/MediaScannerService$ScanTask;->this$0:Lcom/android/providers/media/MediaScannerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 642
    iput-object p2, p0, Lcom/android/providers/media/MediaScannerService$ScanTask;->mPath:Ljava/lang/String;

    .line 643
    iput-object p3, p0, Lcom/android/providers/media/MediaScannerService$ScanTask;->mVolume:Ljava/lang/String;

    .line 644
    return-void
.end method


# virtual methods
.method public getScanPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/providers/media/MediaScannerService$ScanTask;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 12

    .prologue
    .line 652
    const-string v8, "MediaScannerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "scan  start in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/providers/media/MediaScannerService$ScanTask;->mPath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/providers/media/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const/16 v8, 0xb

    invoke-static {v8}, Landroid/os/Process;->setThreadPriority(I)V

    .line 656
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 658
    .local v6, startTime:J
    :try_start_0
    iget-object v8, p0, Lcom/android/providers/media/MediaScannerService$ScanTask;->this$0:Lcom/android/providers/media/MediaScannerService;

    #calls: Lcom/android/providers/media/MediaScannerService;->createMediaScanner()Landroid/media/MediaScanner;
    invoke-static {v8}, Lcom/android/providers/media/MediaScannerService;->access$700(Lcom/android/providers/media/MediaScannerService;)Landroid/media/MediaScanner;

    move-result-object v5

    .line 659
    .local v5, scanner:Landroid/media/MediaScanner;
    const/4 v1, 0x0

    .line 660
    .local v1, isSingelFileOrEmptyFolder:Z
    iget-object v3, p0, Lcom/android/providers/media/MediaScannerService$ScanTask;->mPath:Ljava/lang/String;

    .line 661
    .local v3, realPath:Ljava/lang/String;
    const-string v8, "singlefile_or_emtpyfolder_"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 662
    const-string v8, "singlefile_or_emtpyfolder_"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 663
    const/4 v1, 0x1

    .line 665
    :cond_0
    const-string v8, ", "

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 666
    .local v4, scanPath:[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/providers/media/MediaScannerService$ScanTask;->mVolume:Ljava/lang/String;

    invoke-virtual {v5, v4, v8, v1}, Landroid/media/MediaScanner;->scanFolders([Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 667
    .local v2, playlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/providers/media/MediaScannerService$ScanTask;->this$0:Lcom/android/providers/media/MediaScannerService;

    #getter for: Lcom/android/providers/media/MediaScannerService;->mPlaylistFilePathList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/providers/media/MediaScannerService;->access$800(Lcom/android/providers/media/MediaScannerService;)Ljava/util/ArrayList;

    move-result-object v9

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 668
    :try_start_1
    iget-object v8, p0, Lcom/android/providers/media/MediaScannerService$ScanTask;->this$0:Lcom/android/providers/media/MediaScannerService;

    #getter for: Lcom/android/providers/media/MediaScannerService;->mPlaylistFilePathList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/providers/media/MediaScannerService;->access$800(Lcom/android/providers/media/MediaScannerService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 669
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 673
    .end local v1           #isSingelFileOrEmptyFolder:Z
    .end local v2           #playlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #realPath:Ljava/lang/String;
    .end local v4           #scanPath:[Ljava/lang/String;
    .end local v5           #scanner:Landroid/media/MediaScanner;
    :goto_0
    const-string v8, "MediaScannerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "scan finsih in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/providers/media/MediaScannerService$ScanTask;->mPath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " cost "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/providers/media/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    return-void

    .line 669
    .restart local v1       #isSingelFileOrEmptyFolder:Z
    .restart local v2       #playlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #realPath:Ljava/lang/String;
    .restart local v4       #scanPath:[Ljava/lang/String;
    .restart local v5       #scanner:Landroid/media/MediaScanner;
    :catchall_0
    move-exception v8

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 670
    .end local v1           #isSingelFileOrEmptyFolder:Z
    .end local v2           #playlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #realPath:Ljava/lang/String;
    .end local v4           #scanPath:[Ljava/lang/String;
    .end local v5           #scanner:Landroid/media/MediaScanner;
    :catch_0
    move-exception v0

    .line 671
    .local v0, e:Ljava/lang/Exception;
    const-string v8, "MediaScannerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "exception in MediaScanner scan "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/providers/media/MediaScannerService$ScanTask;->mPath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

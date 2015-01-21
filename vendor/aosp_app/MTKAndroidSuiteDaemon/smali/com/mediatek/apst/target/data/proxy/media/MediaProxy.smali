.class public final Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;
.super Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;
.source "MediaProxy.java"


# static fields
.field private static sInstance:Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;


# instance fields
.field private contentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;->sInstance:Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;-><init>(Landroid/content/Context;)V

    .line 82
    const-string v0, "MediaProxy"

    invoke-virtual {p0, v0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->setProxyName(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;->contentResolver:Landroid/content/ContentResolver;

    .line 86
    return-void
.end method

.method private getDirectory(Ljava/io/File;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "dir"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 461
    .local p2, dirs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 462
    .local v0, files:[Ljava/io/File;
    if-nez v0, :cond_1

    .line 473
    :cond_0
    return-void

    .line 467
    :cond_1
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get directory :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 469
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 470
    aget-object v2, v0, v1

    invoke-direct {p0, v2, p2}, Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;->getDirectory(Ljava/io/File;Ljava/util/ArrayList;)V

    .line 469
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getFilesUnder(Ljava/io/File;Ljava/util/ArrayList;II)V
    .locals 5
    .parameter "dir"
    .parameter
    .parameter "trimLeft"
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/apst/util/entity/media/MediaInfo;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 301
    .local p2, output:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/media/MediaInfo;>;"
    if-nez p2, :cond_1

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 309
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 310
    .local v0, files:[Ljava/io/File;
    if-nez v0, :cond_2

    .line 312
    new-instance v2, Lcom/mediatek/apst/util/entity/media/MediaInfo;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p4, v3}, Lcom/mediatek/apst/util/entity/media/MediaInfo;-><init>(ILjava/lang/String;)V

    .line 313
    .local v2, info:Lcom/mediatek/apst/util/entity/media/MediaInfo;
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/apst/util/entity/media/MediaInfo;->setFileLength(J)V

    .line 314
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/apst/util/entity/media/MediaInfo;->setLastModified(J)V

    .line 315
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 319
    .end local v2           #info:Lcom/mediatek/apst/util/entity/media/MediaInfo;
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 320
    aget-object v3, v0, v1

    invoke-direct {p0, v3, p2, p3, p4}, Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;->getFilesUnder(Ljava/io/File;Ljava/util/ArrayList;II)V

    .line 319
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;
    .locals 2
    .parameter "context"

    .prologue
    .line 94
    const-class v1, Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;->sInstance:Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;

    invoke-direct {v0, p0}, Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;->sInstance:Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;

    .line 99
    :goto_0
    sget-object v0, Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;->sInstance:Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 97
    :cond_0
    :try_start_1
    sget-object v0, Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;->sInstance:Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;

    invoke-virtual {v0, p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->setContext(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public checkStoreState(JI)I
    .locals 7
    .parameter "size"
    .parameter "contentType"

    .prologue
    .line 605
    invoke-virtual {p0, p3}, Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;->getFile(I)Ljava/io/File;

    move-result-object v0

    .line 606
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 607
    .local v3, temp:J
    invoke-static {}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->getSdAvailableSpace()J

    move-result-wide v5

    sub-long/2addr v5, v3

    add-long v1, v5, p1

    .line 608
    .local v1, flag:J
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-gtz v5, :cond_0

    .line 609
    const/4 v5, 0x0

    .line 611
    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public createDirectory(Ljava/lang/String;)Z
    .locals 4
    .parameter "path"

    .prologue
    .line 496
    const/4 v1, 0x0

    .line 497
    .local v1, result:Z
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 498
    .local v0, file:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 499
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Create file :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 500
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 504
    :goto_0
    return v1

    .line 502
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public deleteAllDirectorys(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 565
    .local p1, dirsPath:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 566
    .local v0, dirs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-virtual {p0, p1, v0}, Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;->getDirectiries(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 567
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 568
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 569
    .local v3, temp:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 570
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v2

    .line 571
    .local v2, isDelete:Z
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;->deleteFileInMediaProxy(Ljava/lang/String;)V

    .line 572
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 567
    .end local v2           #isDelete:Z
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 575
    .end local v3           #temp:Ljava/io/File;
    :cond_1
    return-void
.end method

.method public deleteAllFileUnder(Ljava/io/File;)V
    .locals 4
    .parameter "dir"

    .prologue
    .line 513
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 514
    .local v0, files:[Ljava/io/File;
    if-nez v0, :cond_1

    .line 516
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 517
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;->deleteFileInMediaProxy(Ljava/lang/String;)V

    .line 518
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delete file :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 524
    :cond_0
    return-void

    .line 520
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 521
    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;->deleteAllFileUnder(Ljava/io/File;)V

    .line 520
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public deleteAllFileUnder(Ljava/lang/String;)V
    .locals 5
    .parameter "path"

    .prologue
    .line 531
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 532
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 533
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 534
    .local v1, files:[Ljava/io/File;
    if-nez v1, :cond_1

    .line 536
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 537
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;->deleteFileInMediaProxy(Ljava/lang/String;)V

    .line 538
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delete file :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 545
    .end local v1           #files:[Ljava/io/File;
    :cond_0
    return-void

    .line 540
    .restart local v1       #files:[Ljava/io/File;
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 541
    aget-object v3, v1, v2

    invoke-virtual {p0, v3}, Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;->deleteAllFileUnder(Ljava/io/File;)V

    .line 540
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public deleteAllFiles(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 552
    .local p1, paths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 553
    .local v2, path:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 554
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 555
    invoke-virtual {p0, v0}, Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;->deleteAllFileUnder(Ljava/io/File;)V

    goto :goto_0

    .line 558
    .end local v0           #file:Ljava/io/File;
    .end local v2           #path:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public deleteDirectory(Ljava/lang/String;)V
    .locals 7
    .parameter "path"

    .prologue
    .line 582
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 583
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 584
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 585
    .local v1, dirs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-direct {p0, v2, v1}, Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;->getDirectory(Ljava/io/File;Ljava/util/ArrayList;)V

    .line 586
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_1

    .line 587
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 588
    .local v0, deleteFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 589
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v4

    .line 590
    .local v4, isDelete:Z
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;->deleteFileInMediaProxy(Ljava/lang/String;)V

    .line 591
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 586
    .end local v4           #isDelete:Z
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 595
    .end local v0           #deleteFile:Ljava/io/File;
    .end local v1           #dirs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    .end local v3           #i:I
    :cond_1
    return-void
.end method

.method public deleteFileInMediaProxy(Ljava/lang/String;)V
    .locals 7
    .parameter "filePath"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 859
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 873
    :goto_0
    return-void

    .line 863
    :cond_0
    const-string v4, "external"

    invoke-static {v4}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 864
    .local v1, uri:Landroid/net/Uri;
    const-string v2, "_data=?"

    .line 865
    .local v2, where:Ljava/lang/String;
    new-array v3, v6, [Ljava/lang/String;

    aput-object p1, v3, v5

    .line 868
    .local v3, whereArgs:[Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v4, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 869
    :catch_0
    move-exception v0

    .line 870
    .local v0, e:Ljava/lang/UnsupportedOperationException;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    aput-object v1, v4, v6

    const-string v5, "Error, database is closed!!!"

    invoke-static {v4, v5}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public existFile()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public getContentDirectories()[Lcom/mediatek/apst/util/entity/media/MediaInfo;
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 127
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;->isSdMounted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 128
    const-string v2, "SD card is not mounted."

    invoke-static {v2}, Lcom/mediatek/apst/target/util/Debugger;->logE(Ljava/lang/String;)V

    .line 175
    :goto_0
    return-object v0

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;->isSdWriteable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 132
    const-string v2, "SD card is not writeable."

    invoke-static {v2}, Lcom/mediatek/apst/target/util/Debugger;->logE(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_1
    const/16 v2, 0x9

    new-array v0, v2, [Lcom/mediatek/apst/util/entity/media/MediaInfo;

    .line 139
    .local v0, dirs:[Lcom/mediatek/apst/util/entity/media/MediaInfo;
    sget-object v2, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 140
    .local v1, path:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 141
    const/4 v2, 0x0

    new-instance v3, Lcom/mediatek/apst/util/entity/media/MediaInfo;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lcom/mediatek/apst/util/entity/media/MediaInfo;-><init>(ILjava/lang/String;)V

    aput-object v3, v0, v2

    .line 143
    sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 144
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 145
    new-instance v2, Lcom/mediatek/apst/util/entity/media/MediaInfo;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v6, v3}, Lcom/mediatek/apst/util/entity/media/MediaInfo;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v5

    .line 147
    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 148
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 149
    new-instance v2, Lcom/mediatek/apst/util/entity/media/MediaInfo;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v7, v3}, Lcom/mediatek/apst/util/entity/media/MediaInfo;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v6

    .line 151
    sget-object v2, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 152
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 153
    const/4 v2, 0x3

    new-instance v3, Lcom/mediatek/apst/util/entity/media/MediaInfo;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v8, v4}, Lcom/mediatek/apst/util/entity/media/MediaInfo;-><init>(ILjava/lang/String;)V

    aput-object v3, v0, v2

    .line 155
    sget-object v2, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 156
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 157
    new-instance v2, Lcom/mediatek/apst/util/entity/media/MediaInfo;

    const/16 v3, 0x10

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/mediatek/apst/util/entity/media/MediaInfo;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v7

    .line 159
    sget-object v2, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 160
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 161
    const/4 v2, 0x5

    new-instance v3, Lcom/mediatek/apst/util/entity/media/MediaInfo;

    const/16 v4, 0x20

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/mediatek/apst/util/entity/media/MediaInfo;-><init>(ILjava/lang/String;)V

    aput-object v3, v0, v2

    .line 163
    sget-object v2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 164
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 165
    const/4 v2, 0x6

    new-instance v3, Lcom/mediatek/apst/util/entity/media/MediaInfo;

    const/16 v4, 0x40

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/mediatek/apst/util/entity/media/MediaInfo;-><init>(ILjava/lang/String;)V

    aput-object v3, v0, v2

    .line 167
    sget-object v2, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 168
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 169
    const/4 v2, 0x7

    new-instance v3, Lcom/mediatek/apst/util/entity/media/MediaInfo;

    const/16 v4, 0x80

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/mediatek/apst/util/entity/media/MediaInfo;-><init>(ILjava/lang/String;)V

    aput-object v3, v0, v2

    .line 171
    sget-object v2, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 172
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 173
    new-instance v2, Lcom/mediatek/apst/util/entity/media/MediaInfo;

    const/16 v3, 0x100

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/mediatek/apst/util/entity/media/MediaInfo;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v8

    goto/16 :goto_0
.end method

.method public getDirectiries(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 482
    .local p1, paths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, dirs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 483
    .local v2, path:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 484
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 485
    invoke-direct {p0, v0, p2}, Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;->getDirectory(Ljava/io/File;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 488
    .end local v0           #file:Ljava/io/File;
    .end local v2           #path:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public getFile(I)Ljava/io/File;
    .locals 2
    .parameter "contentType"

    .prologue
    const/4 v0, 0x0

    .line 185
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;->isSdMounted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 186
    const-string v1, "SD card is not mounted."

    invoke-static {v1}, Lcom/mediatek/apst/target/util/Debugger;->logE(Ljava/lang/String;)V

    .line 234
    :goto_0
    return-object v0

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;->isSdWriteable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 190
    const-string v1, "SD card is not writeable."

    invoke-static {v1}, Lcom/mediatek/apst/target/util/Debugger;->logE(Ljava/lang/String;)V

    goto :goto_0

    .line 193
    :cond_1
    const/4 v0, 0x0

    .line 194
    .local v0, file:Ljava/io/File;
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 196
    :sswitch_0
    sget-object v1, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 200
    :sswitch_1
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 204
    :sswitch_2
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 208
    :sswitch_3
    sget-object v1, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 212
    :sswitch_4
    sget-object v1, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 216
    :sswitch_5
    sget-object v1, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 220
    :sswitch_6
    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 224
    :sswitch_7
    sget-object v1, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 228
    :sswitch_8
    sget-object v1, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 194
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
    .end sparse-switch
.end method

.method public getFiles(I)[Lcom/mediatek/apst/util/entity/media/MediaInfo;
    .locals 6
    .parameter "requestedContentTypes"

    .prologue
    const/4 v4, 0x1

    .line 243
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;->isSdMounted()Z

    move-result v3

    if-nez v3, :cond_0

    .line 244
    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "SD card is not mounted."

    invoke-static {v3, v4}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    const/4 v2, 0x0

    .line 291
    :goto_0
    return-object v2

    .line 249
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .local v1, files:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/media/MediaInfo;>;"
    and-int/lit8 v3, p1, 0x1

    if-lez v3, :cond_1

    .line 253
    sget-object v3, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 254
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;->getFilesUnder(Ljava/io/File;Ljava/util/ArrayList;II)V

    .line 256
    .end local v0           #dir:Ljava/io/File;
    :cond_1
    and-int/lit8 v3, p1, 0x2

    if-lez v3, :cond_2

    .line 257
    sget-object v3, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 258
    .restart local v0       #dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x2

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;->getFilesUnder(Ljava/io/File;Ljava/util/ArrayList;II)V

    .line 260
    .end local v0           #dir:Ljava/io/File;
    :cond_2
    and-int/lit8 v3, p1, 0x4

    if-lez v3, :cond_3

    .line 261
    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 262
    .restart local v0       #dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x4

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;->getFilesUnder(Ljava/io/File;Ljava/util/ArrayList;II)V

    .line 264
    .end local v0           #dir:Ljava/io/File;
    :cond_3
    and-int/lit8 v3, p1, 0x8

    if-lez v3, :cond_4

    .line 265
    sget-object v3, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 266
    .restart local v0       #dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x8

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;->getFilesUnder(Ljava/io/File;Ljava/util/ArrayList;II)V

    .line 268
    .end local v0           #dir:Ljava/io/File;
    :cond_4
    and-int/lit8 v3, p1, 0x10

    if-lez v3, :cond_5

    .line 269
    sget-object v3, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 270
    .restart local v0       #dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x10

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;->getFilesUnder(Ljava/io/File;Ljava/util/ArrayList;II)V

    .line 272
    .end local v0           #dir:Ljava/io/File;
    :cond_5
    and-int/lit8 v3, p1, 0x20

    if-lez v3, :cond_6

    .line 273
    sget-object v3, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 274
    .restart local v0       #dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x20

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;->getFilesUnder(Ljava/io/File;Ljava/util/ArrayList;II)V

    .line 276
    .end local v0           #dir:Ljava/io/File;
    :cond_6
    and-int/lit8 v3, p1, 0x40

    if-lez v3, :cond_7

    .line 277
    sget-object v3, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 278
    .restart local v0       #dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x40

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;->getFilesUnder(Ljava/io/File;Ljava/util/ArrayList;II)V

    .line 280
    .end local v0           #dir:Ljava/io/File;
    :cond_7
    and-int/lit16 v3, p1, 0x80

    if-lez v3, :cond_8

    .line 281
    sget-object v3, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 282
    .restart local v0       #dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x80

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;->getFilesUnder(Ljava/io/File;Ljava/util/ArrayList;II)V

    .line 284
    .end local v0           #dir:Ljava/io/File;
    :cond_8
    and-int/lit16 v3, p1, 0x100

    if-lez v3, :cond_9

    .line 285
    sget-object v3, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 286
    .restart local v0       #dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x100

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;->getFilesUnder(Ljava/io/File;Ljava/util/ArrayList;II)V

    .line 289
    .end local v0           #dir:Ljava/io/File;
    :cond_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [Lcom/mediatek/apst/util/entity/media/MediaInfo;

    .line 290
    .local v2, results:[Lcom/mediatek/apst/util/entity/media/MediaInfo;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public getFilesEndWith(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .parameter "path"
    .parameter "end"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 425
    .local p3, oldPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, newPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 426
    .local v0, dir:Ljava/io/File;
    if-nez p3, :cond_1

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 434
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 435
    .local v1, files:[Ljava/io/File;
    if-nez v1, :cond_2

    .line 437
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 438
    .local v4, oldFilePath:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    .line 439
    .local v3, newFilePath:Ljava/lang/String;
    invoke-virtual {v4, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 440
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "old path :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/apst/target/util/Debugger;->logE(Ljava/lang/String;)V

    .line 443
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new path :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/apst/target/util/Debugger;->logE(Ljava/lang/String;)V

    goto :goto_0

    .line 448
    .end local v3           #newFilePath:Ljava/lang/String;
    .end local v4           #oldFilePath:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v5, v1

    if-ge v2, v5, :cond_0

    .line 449
    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, p2, p3, p4}, Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;->getFilesEndWith(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 448
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getFilesUnder(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "path"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 330
    .local p2, oldPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 331
    .local v0, dir:Ljava/io/File;
    if-nez p2, :cond_1

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 339
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 340
    .local v1, files:[Ljava/io/File;
    if-nez v1, :cond_2

    .line 342
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 346
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 347
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;->getFilesUnder(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 346
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getFilesUnder(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .parameter "path"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 358
    .local p2, oldPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, newPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 359
    .local v0, dir:Ljava/io/File;
    if-nez p2, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 367
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 368
    .local v2, files:[Ljava/io/File;
    if-nez v2, :cond_8

    .line 370
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    invoke-static {}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->getInternalStoragePathSD()Ljava/lang/String;

    move-result-object v4

    .line 372
    .local v4, internalStorgePath:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, externalStorgePath:Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 374
    :cond_2
    const-string v4, " "

    .line 376
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_5

    .line 377
    :cond_4
    const-string v1, " "

    .line 379
    :cond_5
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 380
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 381
    :cond_6
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 382
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 384
    :cond_7
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 389
    .end local v1           #externalStorgePath:Ljava/lang/String;
    .end local v4           #internalStorgePath:Ljava/lang/String;
    :cond_8
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v5, v2

    if-ge v3, v5, :cond_0

    .line 390
    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, p2, p3}, Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;->getFilesUnder(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 389
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public getFilesUnderDirs(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 402
    .local p1, dirs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, oldPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, newPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 415
    :cond_0
    return-void

    .line 405
    :cond_1
    if-eqz p2, :cond_0

    .line 408
    if-eqz p3, :cond_0

    .line 412
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 413
    .local v0, dir:Ljava/lang/String;
    invoke-virtual {p0, v0, p2, p3}, Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;->getFilesUnder(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public isFileExisted(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 621
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 622
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public isSdMounted()Z
    .locals 1

    .prologue
    .line 106
    invoke-static {}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->isSdMounted()Z

    move-result v0

    return v0
.end method

.method public isSdWriteable()Z
    .locals 1

    .prologue
    .line 113
    invoke-static {}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->isSdWriteable()Z

    move-result v0

    return v0
.end method

.method public renameFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "oldPath"
    .parameter "newPath"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 633
    if-nez p1, :cond_1

    .line 634
    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v3

    aput-object p2, v5, v6

    const-string v6, "Old path should not be null."

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 670
    :cond_0
    :goto_0
    return v3

    .line 637
    :cond_1
    if-nez p2, :cond_2

    .line 638
    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v3

    aput-object p2, v5, v6

    const-string v6, "New path should not be null."

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 641
    :cond_2
    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 642
    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v3

    aput-object p2, v5, v6

    const-string v6, "Old path should not be empty."

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 645
    :cond_3
    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 646
    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v3

    aput-object p2, v5, v6

    const-string v6, "New path should not be empty."

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 650
    :cond_4
    const/4 v3, 0x0

    .line 651
    .local v3, result:Z
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 652
    .local v4, src:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 653
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 654
    .local v0, dest:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 655
    .local v1, destDir:Ljava/io/File;
    if-eqz v1, :cond_5

    .line 657
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 660
    :cond_5
    :try_start_0
    invoke-virtual {v4, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 664
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 666
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 661
    :catch_0
    move-exception v2

    .line 662
    .local v2, e:Ljava/lang/SecurityException;
    const/4 v5, 0x2

    :try_start_1
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x0

    invoke-static {v5, v6, v2}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 664
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 666
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 664
    .end local v2           #e:Ljava/lang/SecurityException;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 666
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_6
    throw v5
.end method

.method public renameFileForBackup(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "oldPath"
    .parameter "newPath"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 681
    if-nez p1, :cond_1

    .line 682
    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v3

    aput-object p2, v5, v6

    const-string v6, "Old path should not be null."

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 718
    :cond_0
    :goto_0
    return v3

    .line 685
    :cond_1
    if-nez p2, :cond_2

    .line 686
    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v3

    aput-object p2, v5, v6

    const-string v6, "New path should not be null."

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 689
    :cond_2
    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 690
    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v3

    aput-object p2, v5, v6

    const-string v6, "Old path should not be empty."

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 693
    :cond_3
    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 694
    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v3

    aput-object p2, v5, v6

    const-string v6, "New path should not be empty."

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 698
    :cond_4
    const/4 v3, 0x0

    .line 699
    .local v3, result:Z
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 700
    .local v4, src:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 701
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 702
    .local v0, dest:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 703
    .local v1, destDir:Ljava/io/File;
    if-eqz v1, :cond_5

    .line 705
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 708
    :cond_5
    :try_start_0
    invoke-virtual {v4, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 712
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 714
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 709
    :catch_0
    move-exception v2

    .line 710
    .local v2, e:Ljava/lang/SecurityException;
    const/4 v5, 0x2

    :try_start_1
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x0

    invoke-static {v5, v6, v2}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 712
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 714
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 712
    .end local v2           #e:Ljava/lang/SecurityException;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 714
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_6
    throw v5
.end method

.method public renameFiles([Ljava/lang/String;[Ljava/lang/String;)[Z
    .locals 7
    .parameter "oldPaths"
    .parameter "newPaths"

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 729
    if-nez p1, :cond_1

    .line 730
    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p2, v2, v5

    const-string v3, "Old paths list should not be null."

    invoke-static {v2, v3}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 749
    :cond_0
    :goto_0
    return-object v1

    .line 733
    :cond_1
    if-nez p2, :cond_2

    .line 734
    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p2, v2, v5

    const-string v3, "New paths list should not be null."

    invoke-static {v2, v3}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 737
    :cond_2
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_3

    .line 738
    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p2, v2, v5

    const-string v3, "Old paths list size does not match new paths list size."

    invoke-static {v2, v3}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 742
    :cond_3
    array-length v2, p1

    new-array v1, v2, [Z

    .line 743
    .local v1, results:[Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 744
    aget-object v2, p1, v0

    aget-object v3, p2, v0

    invoke-virtual {p0, v2, v3}, Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;->renameFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    aput-boolean v2, v1, v0

    .line 745
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rename oldPaths["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 746
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rename newPaths["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 743
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public scan(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    .line 806
    sget-object v7, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-static {v7}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 807
    .local v1, musicFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 808
    .local v2, musicFileList:[Ljava/io/File;
    array-length v7, v2

    new-array v3, v7, [Ljava/lang/String;

    .line 809
    .local v3, musicFilePaths:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v7, v2

    if-ge v0, v7, :cond_0

    .line 810
    aget-object v7, v2, v0

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v0

    .line 809
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 814
    :cond_0
    sget-object v7, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v7}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 815
    .local v4, pictureFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 816
    .local v5, pictureFileList:[Ljava/io/File;
    array-length v7, v5

    new-array v6, v7, [Ljava/lang/String;

    .line 817
    .local v6, pictureFilePaths:[Ljava/lang/String;
    const/4 v0, 0x0

    :goto_1
    array-length v7, v5

    if-ge v0, v7, :cond_1

    .line 818
    aget-object v7, v5, v0

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    .line 817
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 822
    :cond_1
    invoke-static {p1, v3, v8, v8}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 823
    invoke-static {p1, v6, v8, v8}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 824
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "Invoke android.media.MediaScannerConnection.scanFile() to refresh Music/Gallery"

    invoke-static {v7, v8}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 825
    return-void
.end method

.method public scan(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "filePath"

    .prologue
    const/4 v5, 0x0

    .line 836
    if-eqz p2, :cond_2

    .line 837
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 838
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 839
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 840
    .local v3, pathsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, p2, v3}, Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;->getFilesUnder(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 841
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v2, v4, [Ljava/lang/String;

    .line 842
    .local v2, paths:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 843
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v2, v1

    .line 842
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 845
    :cond_0
    invoke-static {p1, v2, v5, v5}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 847
    .end local v1           #i:I
    .end local v2           #paths:[Ljava/lang/String;
    .end local v3           #pathsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const-string v5, "Refresh Media"

    invoke-static {v4, v5}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 849
    .end local v0           #file:Ljava/io/File;
    :cond_2
    return-void
.end method

.class public Lzte/com/cn/cloudnotepad/backup/CloudDbParser;
.super Ljava/lang/Object;
.source "CloudDbParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CloudDbParser"


# instance fields
.field private mCloudDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mCloudDir:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDbName:Ljava/lang/String;

.field private mIsException:Z

.field private mIsLocalDbChanged:Z

.field private mLocalDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mLocalDir:Ljava/lang/String;

.field private mResourceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean v0, p0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mIsLocalDbChanged:Z

    .line 44
    iput-boolean v0, p0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mIsException:Z

    .line 637
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mResourceList:Ljava/util/List;

    .line 54
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mContext:Landroid/content/Context;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "cloudDir"
    .parameter "localDir"
    .parameter "dbName"

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean v0, p0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mIsLocalDbChanged:Z

    .line 44
    iput-boolean v0, p0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mIsException:Z

    .line 637
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mResourceList:Ljava/util/List;

    .line 47
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mCloudDir:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mLocalDir:Ljava/lang/String;

    .line 50
    iput-object p4, p0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mDbName:Ljava/lang/String;

    .line 51
    return-void
.end method

.method private addMapPair(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "localMapFileName"
    .parameter "cloudMapFileName"

    .prologue
    .line 606
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/io/File;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getLocationStoragePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 622
    :cond_0
    :goto_0
    return-void

    .line 609
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 610
    :cond_2
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 615
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mLocalDir:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "location/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 616
    .local v1, localFilePath:Ljava/lang/String;
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 617
    :cond_4
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mResourceList:Ljava/util/List;

    const-string v3, ""

    invoke-static {v1, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 619
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mCloudDir:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "location/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 620
    .local v0, cloudFilePath:Ljava/lang/String;
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mResourceList:Ljava/util/List;

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addResourcePair(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "localResFileName"
    .parameter "cloudResFileName"

    .prologue
    .line 625
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mLocalDir:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Resource/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 626
    .local v1, localFilePath:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 627
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mResourceList:Ljava/util/List;

    const-string v3, ""

    invoke-static {v1, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 632
    :goto_0
    return-void

    .line 629
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mCloudDir:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Resource/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 630
    .local v0, cloudFilePath:Ljava/lang/String;
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mResourceList:Ljava/util/List;

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addTrueResourcePair(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "localResFileName"
    .parameter "cloudResFileName"

    .prologue
    .line 415
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getResourceStoragePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    invoke-direct {p0, p1, p2}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->addResourcePair(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const/4 v1, 0x0

    .line 420
    .local v1, hasThumb:Z
    const/4 v0, 0x0

    .line 421
    .local v0, cloudThumbName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 423
    .local v2, localThumbName:Ljava/lang/String;
    if-eqz p2, :cond_2

    const-string v3, ".mp4"

    invoke-virtual {p2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 424
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->getFileNameBody(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 425
    const/4 v1, 0x1

    .line 427
    :cond_2
    if-eqz p1, :cond_3

    const-string v3, ".mp4"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 428
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->getFileNameBody(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 429
    const/4 v1, 0x1

    .line 431
    :cond_3
    if-eqz v1, :cond_0

    .line 432
    invoke-direct {p0, v2, v0}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->addResourcePair(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addWallPaperPair(Ljava/lang/String;)V
    .locals 5
    .parameter "cloudWallpaper"

    .prologue
    .line 596
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getWallPaperStoragePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 597
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Wallpapers/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 598
    .local v1, fileName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mCloudDir:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 599
    .local v0, cloudFilePath:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mLocalDir:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 600
    .local v2, localFilePath:Ljava/lang/String;
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mResourceList:Ljava/util/List;

    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 602
    .end local v0           #cloudFilePath:Ljava/lang/String;
    .end local v1           #fileName:Ljava/lang/String;
    .end local v2           #localFilePath:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private close()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mCloudDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 64
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mLocalDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 65
    return-void
.end method

.method private deleteDirtyCover(I)V
    .locals 3
    .parameter "noteId"

    .prologue
    .line 437
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getContentStoragePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "cover_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 438
    return-void
.end method

.method private deleteLocalResourcesByNoteId(I)I
    .locals 4
    .parameter "noteId"

    .prologue
    .line 650
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mLocalDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lzte/com/cn/cloudnotepad/data/DataSchema$ResourceTable;->RESOURCE_CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "note_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->delete(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private doPairResourceFiles()V
    .locals 7

    .prologue
    .line 472
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mLocalDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v5}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->getResourceNamesInDb(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v4

    .line 473
    .local v4, resNamesInDb:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/io/File;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getResourceStoragePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 474
    .local v3, localResFileNames:[Ljava/lang/String;
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 475
    .local v0, cloudDbResNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lt v2, v5, :cond_1

    .line 479
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 490
    return-void

    .line 476
    :cond_1
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 475
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 479
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 480
    .local v1, cloudResFileName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 481
    :goto_2
    array-length v6, v3

    if-lt v2, v6, :cond_4

    .line 486
    :cond_3
    array-length v6, v3

    if-ne v2, v6, :cond_0

    .line 487
    invoke-direct {p0, v1, v1}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->addTrueResourcePair(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 482
    :cond_4
    aget-object v6, v3, v2

    invoke-direct {p0, v6}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->getFileNameBody(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 481
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private doParse()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->open()V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mIsLocalDbChanged:Z

    .line 95
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->parseNotebooks()V

    .line 97
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->parseNotesNoOverride()V

    .line 99
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->close()V

    .line 100
    return-void
.end method

.method private findNoteByContentHash(Ljava/util/List;Ljava/lang/String;)Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;
    .locals 5
    .parameter
    .parameter "hash"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;>;"
    const/4 v3, 0x0

    .line 175
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move-object v0, v3

    .line 185
    :cond_1
    :goto_0
    return-object v0

    .line 178
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 179
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v2, :cond_3

    move-object v0, v3

    .line 185
    goto :goto_0

    .line 180
    :cond_3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    .line 181
    .local v0, data:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;
    iget-object v4, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content_hash:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getContentValues(Landroid/database/sqlite/SQLiteDatabase;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;Z)Landroid/content/ContentValues;
    .locals 4
    .parameter "db"
    .parameter "data"
    .parameter "withContent"

    .prologue
    .line 136
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 137
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "title"

    iget-object v2, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    if-eqz p3, :cond_0

    .line 139
    const-string v1, "content"

    iget-object v2, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_0
    const-string v1, "created"

    iget-wide v2, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->created:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 143
    const-string v1, "updated"

    iget-wide v2, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->updated:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 144
    const-string v1, "notebook"

    iget-object v2, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->notebook:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v1, "drawable_src"

    iget-object v2, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->drawableSrc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v1, "longitude"

    iget v2, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->longitude:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 147
    const-string v1, "latitude"

    iget v2, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->latitude:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 148
    const-string v1, "address"

    iget-object v2, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->address:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v1, "map"

    iget-object v2, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->map:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v1, "wallpaper"

    iget-object v2, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->wallpaper:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v1, "size"

    iget-object v2, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->size:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    .line 154
    const-string v1, "content_hash"

    iget-object v2, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content_hash:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v1, "uuid"

    iget-object v2, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_1
    return-object v0
.end method

.method private getContentValues(Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;)Landroid/content/ContentValues;
    .locals 3
    .parameter "data"

    .prologue
    .line 103
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 104
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "number"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    const-string v1, "title"

    iget-object v2, p1, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v1, "cover"

    iget v2, p1, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->cover:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    const-string v1, "sequence"

    iget v2, p1, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->sequence:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    return-object v0
.end method

.method private getContentValues(Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;)Landroid/content/ContentValues;
    .locals 3
    .parameter "data"

    .prologue
    .line 640
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 641
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "hash"

    iget-object v2, p1, Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;->hash:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    const-string v1, "name"

    iget-object v2, p1, Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    const-string v1, "type"

    iget-object v2, p1, Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    const-string v1, "size"

    iget-object v2, p1, Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;->size:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    const-string v1, "note_id"

    iget v2, p1, Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;->note_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 646
    return-object v0
.end method

.method private getFileNameBody(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "fileName"

    .prologue
    .line 547
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 548
    .local v0, end:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 551
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getNoteBookList(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 10
    .parameter "db"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 721
    sget-object v2, Lzte/com/cn/cloudnotepad/data/DataSchema$NotebookTable;->NOTEBOOK_CONTENT_URI:Landroid/net/Uri;

    .line 722
    const/4 v0, 0x5

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 723
    const-string v1, "_id"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    .line 724
    const-string v1, "title"

    aput-object v1, v3, v0

    const/4 v0, 0x2

    .line 725
    const-string v1, "number"

    aput-object v1, v3, v0

    const/4 v0, 0x3

    .line 726
    const-string v1, "cover"

    aput-object v1, v3, v0

    const/4 v0, 0x4

    .line 727
    const-string v1, "sequence"

    aput-object v1, v3, v0

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    move-object v6, v4

    .line 721
    invoke-direct/range {v0 .. v6}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->query(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 731
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 732
    .local v9, list:Ljava/util/List;,"Ljava/util/List<Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;>;"
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 743
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 741
    return-object v9

    .line 733
    :cond_0
    :try_start_1
    new-instance v8, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;

    invoke-direct {v8}, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;-><init>()V

    .line 734
    .local v8, data:Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->id:I

    .line 735
    const-string v0, "title"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->title:Ljava/lang/String;

    .line 736
    const-string v0, "number"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->number:I

    .line 737
    const-string v0, "cover"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->cover:I

    .line 738
    const-string v0, "sequence"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->sequence:I

    .line 739
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 742
    .end local v8           #data:Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;
    .end local v9           #list:Ljava/util/List;,"Ljava/util/List<Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;>;"
    :catchall_0
    move-exception v0

    .line 743
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 744
    throw v0
.end method

.method private getResourceNamesInDb(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 12
    .parameter "db"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 556
    const/4 v7, 0x0

    .line 558
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Lzte/com/cn/cloudnotepad/data/DataSchema$ResourceTable;->RESOURCE_CONTENT_URI:Landroid/net/Uri;

    .line 559
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "name"

    aput-object v1, v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 558
    invoke-direct/range {v0 .. v6}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->query(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 560
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_3

    .line 578
    :cond_0
    if-eqz v7, :cond_1

    .line 579
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v10, v11

    .line 576
    :cond_2
    :goto_0
    return-object v10

    .line 563
    :cond_3
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 568
    .local v10, resNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    const-string v0, "name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 569
    .local v9, name:Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 570
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 567
    if-nez v0, :cond_4

    .line 578
    if-eqz v7, :cond_2

    .line 579
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 574
    .end local v9           #name:Ljava/lang/String;
    .end local v10           #resNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v8

    .line 575
    .local v8, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 578
    if-eqz v7, :cond_6

    .line 579
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v10, v11

    .line 576
    goto :goto_0

    .line 577
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 578
    if-eqz v7, :cond_7

    .line 579
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 581
    :cond_7
    throw v0
.end method

.method private open()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mCloudDir:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mDbName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mCloudDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mLocalDir:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mDbName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mLocalDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 60
    return-void
.end method

.method private parseNotebooks()V
    .locals 11

    .prologue
    .line 113
    iget-object v8, p0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mCloudDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v8}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->getNoteBookList(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v0

    .line 114
    .local v0, cloudList:Ljava/util/List;,"Ljava/util/List<Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;>;"
    iget-object v8, p0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mLocalDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v8}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->getNoteBookList(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v6

    .line 115
    .local v6, localList:Ljava/util/List;,"Ljava/util/List<Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 116
    .local v7, localSize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-lt v2, v8, :cond_0

    .line 133
    return-void

    .line 117
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;

    .line 118
    .local v1, data:Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;
    const/4 v3, 0x0

    .line 119
    .local v3, isExist:Z
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-lt v4, v8, :cond_2

    .line 126
    :goto_2
    if-nez v3, :cond_1

    .line 127
    iput v7, v1, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->sequence:I

    .line 128
    add-int/lit8 v7, v7, 0x1

    .line 129
    iget-object v8, p0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mLocalDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v9, Lzte/com/cn/cloudnotepad/data/DataSchema$NotebookTable;->NOTEBOOK_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->getContentValues(Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;)Landroid/content/ContentValues;

    move-result-object v10

    invoke-virtual {p0, v8, v9, v10}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)J

    .line 130
    const/4 v8, 0x1

    iput-boolean v8, p0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mIsLocalDbChanged:Z

    .line 116
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    :cond_2
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;

    .line 121
    .local v5, localData:Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;
    iget-object v8, v1, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->title:Ljava/lang/String;

    iget-object v9, v5, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->title:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 122
    const/4 v3, 0x1

    .line 123
    goto :goto_2

    .line 119
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private parseNotes()V
    .locals 19

    .prologue
    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mResourceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mLocalDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->getNotesList(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v15

    .line 272
    .local v15, localList:Ljava/util/List;,"Ljava/util/List<Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mCloudDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->getNotesList(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v8

    .line 273
    .local v8, cloudList:Ljava/util/List;,"Ljava/util/List<Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;>;"
    const-string v3, "CloudDbParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "in parseNotes(), localList size = "

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v15, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string v3, "CloudDbParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "in parseNotes(), cloudList size = "

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v8, :cond_2

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 353
    :cond_0
    :goto_2
    return-void

    .line 273
    :cond_1
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    .line 274
    :cond_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    .line 278
    :cond_3
    const/4 v12, 0x0

    .line 279
    .local v12, hasDifference:Z
    const/16 v17, 0x0

    .local v17, t:I
    :goto_3
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v17

    if-lt v0, v2, :cond_4

    .line 350
    if-eqz v12, :cond_0

    .line 351
    invoke-direct/range {p0 .. p0}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->doPairResourceFiles()V

    goto :goto_2

    .line 280
    :cond_4
    move/from16 v0, v17

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    .line 281
    .local v11, data:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;
    const-string v2, "CloudDbParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "in parseNotes(), cloud data : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/4 v14, 0x0

    .line 283
    .local v14, localData:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;
    const/16 v18, 0x1

    .line 284
    .local v18, withContent:Z
    iget-object v2, v11, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->uuid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 285
    iget-object v2, v11, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->uuid:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v2}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->findNoteByUuid(Ljava/util/List;Ljava/lang/String;)Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    move-result-object v14

    .line 286
    if-eqz v14, :cond_5

    .line 287
    iget-object v2, v11, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content_hash:Ljava/lang/String;

    iget-object v3, v14, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content_hash:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 288
    const/16 v18, 0x0

    .line 298
    :cond_5
    :goto_4
    const-string v2, "CloudDbParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "in parseNotes(), local data : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/16 v16, 0x0

    .line 300
    .local v16, noteId:I
    if-eqz v14, :cond_b

    .line 302
    iget-object v2, v11, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content_hash:Ljava/lang/String;

    iget-object v3, v14, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content_hash:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v14, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    iget-object v3, v11, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v14, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->wallpaper:Ljava/lang/String;

    iget-object v3, v11, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->wallpaper:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 303
    iget-object v2, v14, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->map:Ljava/lang/String;

    iget-object v3, v11, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->map:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 304
    const-string v2, "CloudDbParser"

    const-string v3, "in parseNotes(), cloud and local note has the same data : "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_6
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_3

    .line 292
    .end local v16           #noteId:I
    :cond_7
    iget-object v2, v11, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content_hash:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->findNoteByContentHash(Ljava/util/List;Ljava/lang/String;)Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    move-result-object v14

    .line 294
    if-eqz v14, :cond_5

    .line 295
    const/16 v18, 0x0

    goto :goto_4

    .line 308
    .restart local v16       #noteId:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mLocalDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v4, Lzte/com/cn/cloudnotepad/data/DataSchema$NotesTable;->NOTES_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v2, v0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mLocalDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v2, v11, v1}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->getContentValues(Landroid/database/sqlite/SQLiteDatabase;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;Z)Landroid/content/ContentValues;

    move-result-object v5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "_id = "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v14, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->id:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 309
    const-string v2, "CloudDbParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "in parseNotes(), update note : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget v0, v14, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->id:I

    move/from16 v16, v0

    .line 311
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->deleteDirtyCover(I)V

    .line 317
    iget-object v2, v11, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->wallpaper:Ljava/lang/String;

    iget-object v3, v14, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->wallpaper:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 318
    iget-object v2, v11, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->wallpaper:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->addWallPaperPair(Ljava/lang/String;)V

    .line 320
    :cond_9
    iget-object v2, v11, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->map:Ljava/lang/String;

    iget-object v3, v14, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->map:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 321
    iget-object v2, v14, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->map:Ljava/lang/String;

    iget-object v3, v11, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->map:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->addMapPair(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :cond_a
    :goto_5
    const/4 v12, 0x1

    .line 334
    const-string v2, "CloudDbParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "in parseNotes(), withContent = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    if-eqz v18, :cond_6

    .line 336
    iget v2, v11, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->getCloudResourceList(I)Ljava/util/List;

    move-result-object v10

    .line 337
    .local v10, cloudResList:Ljava/util/List;,"Ljava/util/List<Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;>;"
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->deleteLocalResourcesByNoteId(I)I

    .line 338
    if-eqz v10, :cond_6

    .line 339
    const/4 v13, 0x0

    .local v13, i:I
    :goto_6
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-ge v13, v2, :cond_6

    .line 340
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;

    .line 341
    .local v9, cloudResData:Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;
    move/from16 v0, v16

    iput v0, v9, Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;->note_id:I

    .line 342
    move-object/from16 v0, p0

    iget-object v2, v0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mLocalDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Lzte/com/cn/cloudnotepad/data/DataSchema$ResourceTable;->RESOURCE_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->getContentValues(Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;)Landroid/content/ContentValues;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)J

    .line 343
    const-string v2, "CloudDbParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "in parseNotes(), insert resource : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 324
    .end local v9           #cloudResData:Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;
    .end local v10           #cloudResList:Ljava/util/List;,"Ljava/util/List<Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;>;"
    .end local v13           #i:I
    :cond_b
    iget-object v2, v11, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->uuid:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, v11, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->uuid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 325
    :cond_c
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->uuid:Ljava/lang/String;

    .line 327
    :cond_d
    const-string v2, "CloudDbParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "in parseNotes(), insert note : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    move-object/from16 v0, p0

    iget-object v2, v0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mLocalDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Lzte/com/cn/cloudnotepad/data/DataSchema$NotesTable;->NOTES_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mLocalDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11, v5}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->getContentValues(Landroid/database/sqlite/SQLiteDatabase;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;Z)Landroid/content/ContentValues;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 v16, v0

    .line 330
    iget-object v2, v11, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->wallpaper:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->addWallPaperPair(Ljava/lang/String;)V

    .line 331
    iget-object v2, v11, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->map:Ljava/lang/String;

    iget-object v3, v11, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->map:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->addMapPair(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5
.end method

.method private parseNotesNoOverride()V
    .locals 20

    .prologue
    .line 201
    move-object/from16 v0, p0

    iget-object v15, v0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mResourceList:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 202
    move-object/from16 v0, p0

    iget-object v15, v0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mLocalDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->getNotesList(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v10

    .line 203
    .local v10, localList:Ljava/util/List;,"Ljava/util/List<Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mCloudDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->getNotesList(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v3

    .line 204
    .local v3, cloudList:Ljava/util/List;,"Ljava/util/List<Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;>;"
    const-string v16, "CloudDbParser"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v15, "in parseNotesNoOverride(), localList size = "

    move-object/from16 v0, v17

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v10, :cond_1

    const/4 v15, 0x0

    :goto_0
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-string v16, "CloudDbParser"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v15, "in parseNotesNoOverride(), cloudList size = "

    move-object/from16 v0, v17

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v3, :cond_2

    const/4 v15, 0x0

    :goto_1
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v15

    if-nez v15, :cond_3

    .line 266
    :cond_0
    return-void

    .line 204
    :cond_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v15

    goto :goto_0

    .line 205
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v15

    goto :goto_1

    .line 210
    :cond_3
    const/4 v14, 0x0

    .local v14, t:I
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_0

    .line 211
    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    .line 212
    .local v6, data:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;
    const-string v15, "CloudDbParser"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "in parseNotesNoOverride(), cloud data : "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    if-eqz v10, :cond_8

    .line 215
    iget-object v15, v6, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->uuid:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_5

    .line 216
    iget-object v15, v6, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->uuid:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v15}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->findNoteByUuid(Ljava/util/List;Ljava/lang/String;)Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    move-result-object v9

    .line 217
    .local v9, localData:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;
    if-eqz v9, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v6}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->isEqual(Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 218
    const-string v15, "CloudDbParser"

    const-string v16, "find the same notes in local"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .end local v9           #localData:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;
    :cond_4
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 224
    :cond_5
    const/4 v7, 0x0

    .line 225
    .local v7, i:I
    :goto_4
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v15

    if-lt v7, v15, :cond_7

    .line 230
    :cond_6
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v15

    if-ge v7, v15, :cond_8

    .line 231
    const-string v15, "CloudDbParser"

    const-string v16, "in parseNotesNoOverride(), find the same notes in local"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 226
    :cond_7
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->isEqual(Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 225
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 236
    .end local v7           #i:I
    :cond_8
    iget-object v15, v6, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->uuid:Ljava/lang/String;

    if-eqz v15, :cond_9

    iget-object v15, v6, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->uuid:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_a

    .line 237
    :cond_9
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v6, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->uuid:Ljava/lang/String;

    .line 239
    :cond_a
    const-string v15, "CloudDbParser"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "in parseNotesNoOverride(), insert note : "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    move-object/from16 v0, p0

    iget-object v15, v0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mLocalDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v16, Lzte/com/cn/cloudnotepad/data/DataSchema$NotesTable;->NOTES_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mLocalDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v6, v2}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->getContentValues(Landroid/database/sqlite/SQLiteDatabase;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;Z)Landroid/content/ContentValues;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v15, v1, v2}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)J

    move-result-wide v15

    long-to-int v11, v15

    .line 241
    .local v11, noteId:I
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mIsLocalDbChanged:Z

    .line 242
    const-string v15, "CloudDbParser"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "in parseNotesNoOverride(), insert method return noteId = "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v15, v6, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->wallpaper:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->addWallPaperPair(Ljava/lang/String;)V

    .line 245
    const-string v15, "CloudDbParser"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "in parseNotesNoOverride(), add wallpaper pair file : "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v6, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->wallpaper:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", local exist = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 246
    new-instance v17, Ljava/io/File;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getWallPaperStoragePath()Ljava/lang/String;

    move-result-object v18

    iget-object v0, v6, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->wallpaper:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-direct/range {v17 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 245
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v15, v6, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->map:Ljava/lang/String;

    iget-object v0, v6, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->map:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->addMapPair(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v15, "CloudDbParser"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "in parseNotesNoOverride(), add map pair file : "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v6, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->map:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", local file exist = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 249
    new-instance v17, Ljava/io/File;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getLocationStoragePath()Ljava/lang/String;

    move-result-object v18

    iget-object v0, v6, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->map:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-direct/range {v17 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 248
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget v15, v6, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->getCloudResourceList(I)Ljava/util/List;

    move-result-object v5

    .line 253
    .local v5, cloudResList:Ljava/util/List;,"Ljava/util/List<Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;>;"
    if-eqz v5, :cond_4

    .line 254
    const/4 v8, 0x0

    .local v8, j:I
    :goto_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v15

    if-ge v8, v15, :cond_4

    .line 255
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;

    .line 256
    .local v4, cloudResData:Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;
    iput v11, v4, Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;->note_id:I

    .line 257
    move-object/from16 v0, p0

    iget-object v15, v0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mLocalDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v16, Lzte/com/cn/cloudnotepad/data/DataSchema$ResourceTable;->RESOURCE_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->getContentValues(Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;)Landroid/content/ContentValues;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v15, v1, v2}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)J

    move-result-wide v12

    .line 258
    .local v12, resid:J
    const-string v15, "CloudDbParser"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "in parseNotesNoOverride(), insert resource : "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const-string v15, "CloudDbParser"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "in parseNotesNoOverride(), insert resource return resId = "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v15, v4, Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;->name:Ljava/lang/String;

    iget-object v0, v4, Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->addTrueResourcePair(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v15, "CloudDbParser"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "in parseNotesNoOverride(), add resource pair file : "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v4, Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", local file exist = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 262
    new-instance v17, Ljava/io/File;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getResourceStoragePath()Ljava/lang/String;

    move-result-object v18

    iget-object v0, v4, Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-direct/range {v17 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 261
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_5
.end method

.method private query(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "db"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 832
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 833
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v1, Lzte/com/cn/cloudnotepad/data/NotepadProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p2}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 859
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown URI: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 835
    :pswitch_1
    const-string v1, "notes"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    :goto_0
    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v6, v5

    move-object v7, p6

    .line 861
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 863
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 864
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v8, v1, p2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 866
    :cond_0
    return-object v8

    .line 838
    .end local v8           #c:Landroid/database/Cursor;
    :pswitch_2
    const-string v1, "notes"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 839
    const-string v1, "_id="

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 840
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 843
    :pswitch_3
    const-string v1, "notebook"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 846
    :pswitch_4
    const-string v1, "notebook"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 847
    const-string v1, "_id="

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 848
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 851
    :pswitch_5
    const-string v1, "resource"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 854
    :pswitch_6
    const-string v1, "resource"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 855
    const-string v1, "_id="

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 856
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 833
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public delete(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .parameter "db"
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/16 v8, 0x29

    const/4 v5, 0x1

    .line 935
    sget-object v4, Lzte/com/cn/cloudnotepad/data/NotepadProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p2}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 966
    :pswitch_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unknown URI "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 937
    :pswitch_1
    const-string v4, "notes"

    invoke-virtual {p1, v4, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 968
    .local v0, count:I
    :goto_0
    return v0

    .line 941
    .end local v0           #count:I
    :pswitch_2
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 942
    .local v2, notesId:Ljava/lang/String;
    const-string v5, "notes"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "_id="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 943
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, " AND ("

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 942
    invoke-virtual {p1, v5, v4, p4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 944
    .restart local v0       #count:I
    goto :goto_0

    .line 943
    .end local v0           #count:I
    :cond_0
    const-string v4, ""

    goto :goto_1

    .line 946
    .end local v2           #notesId:Ljava/lang/String;
    :pswitch_3
    const-string v4, "notebook"

    invoke-virtual {p1, v4, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 947
    .restart local v0       #count:I
    goto :goto_0

    .line 950
    .end local v0           #count:I
    :pswitch_4
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 951
    .local v1, notebookId:Ljava/lang/String;
    const-string v5, "notebook"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "_id="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 952
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, " AND ("

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 951
    invoke-virtual {p1, v5, v4, p4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 953
    .restart local v0       #count:I
    goto/16 :goto_0

    .line 952
    .end local v0           #count:I
    :cond_1
    const-string v4, ""

    goto :goto_2

    .line 956
    .end local v1           #notebookId:Ljava/lang/String;
    :pswitch_5
    const-string v4, "resource"

    invoke-virtual {p1, v4, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 957
    .restart local v0       #count:I
    goto/16 :goto_0

    .line 960
    .end local v0           #count:I
    :pswitch_6
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 961
    .local v3, resourceId:Ljava/lang/String;
    const-string v5, "resource"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "_id="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 962
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, " AND ("

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 961
    invoke-virtual {p1, v5, v4, p4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 963
    .restart local v0       #count:I
    goto/16 :goto_0

    .line 962
    .end local v0           #count:I
    :cond_2
    const-string v4, ""

    goto :goto_3

    .line 935
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public findNoteByUuid(Ljava/util/List;Ljava/lang/String;)Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;
    .locals 5
    .parameter
    .parameter "uuid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;>;"
    const/4 v3, 0x0

    .line 161
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move-object v0, v3

    .line 171
    :cond_1
    :goto_0
    return-object v0

    .line 164
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 165
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v2, :cond_3

    move-object v0, v3

    .line 171
    goto :goto_0

    .line 166
    :cond_3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    .line 167
    .local v0, data:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;
    iget-object v4, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->uuid:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getCloudFilePathListNeedDownload()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 441
    iget-object v9, p0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mResourceList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    .line 442
    .local v7, size:I
    const/4 v2, 0x0

    .line 443
    .local v2, file:Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 444
    .local v6, sb:Ljava/lang/StringBuilder;
    const-string v9, "in getCloudFilePathListNeedDownload(), cloudFilePathList :  { \n"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .local v1, cloudPathList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-lt v3, v7, :cond_0

    .line 466
    const-string v9, "}"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    const-string v9, "CloudDbParser"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    return-object v1

    .line 449
    :cond_0
    iget-object v9, p0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mResourceList:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    iget-object v4, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 450
    .local v4, localFilePath:Ljava/lang/String;
    iget-object v9, p0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mResourceList:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    iget-object v0, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 451
    .local v0, cloudFilePath:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    .end local v2           #file:Ljava/io/File;
    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 452
    .restart local v2       #file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 453
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 455
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 459
    const-string v9, "CloudDbParser"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "cloudFilePath = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const-string v9, ".ZteNote"

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const-string v10, ".ZteNote"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int v8, v9, v10

    .line 461
    .local v8, start:I
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "/apps/zte/\u6211\u7684\u7b14\u8bb0"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 462
    .local v5, remoteCloudFilePath:Ljava/lang/String;
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .end local v5           #remoteCloudFilePath:Ljava/lang/String;
    .end local v8           #start:I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method

.method public getCloudResourceList(I)Ljava/util/List;
    .locals 3
    .parameter "noteId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;",
            ">;"
        }
    .end annotation

    .prologue
    .line 659
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mCloudDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "note_id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->getResourceList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNotesList(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 14
    .parameter "db"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    .line 749
    const/4 v7, 0x0

    .line 752
    .local v7, cursor:Landroid/database/Cursor;
    const/16 v0, 0xd

    :try_start_0
    new-array v11, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 753
    const-string v1, "_id"

    aput-object v1, v11, v0

    const/4 v0, 0x1

    .line 754
    const-string v1, "title"

    aput-object v1, v11, v0

    const/4 v0, 0x2

    .line 755
    const-string v1, "content"

    aput-object v1, v11, v0

    const/4 v0, 0x3

    .line 757
    const-string v1, "created"

    aput-object v1, v11, v0

    const/4 v0, 0x4

    .line 758
    const-string v1, "updated"

    aput-object v1, v11, v0

    const/4 v0, 0x5

    .line 759
    const-string v1, "notebook"

    aput-object v1, v11, v0

    const/4 v0, 0x6

    .line 760
    const-string v1, "drawable_src"

    aput-object v1, v11, v0

    const/4 v0, 0x7

    .line 761
    const-string v1, "longitude"

    aput-object v1, v11, v0

    const/16 v0, 0x8

    .line 762
    const-string v1, "latitude"

    aput-object v1, v11, v0

    const/16 v0, 0x9

    .line 763
    const-string v1, "address"

    aput-object v1, v11, v0

    const/16 v0, 0xa

    .line 764
    const-string v1, "map"

    aput-object v1, v11, v0

    const/16 v0, 0xb

    .line 765
    const-string v1, "wallpaper"

    aput-object v1, v11, v0

    const/16 v0, 0xc

    .line 766
    const-string v1, "size"

    aput-object v1, v11, v0

    .line 768
    .local v11, prj:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    if-le v0, v13, :cond_3

    .line 769
    const/16 v0, 0xf

    new-array v3, v0, [Ljava/lang/String;

    .line 770
    .local v3, projection:[Ljava/lang/String;
    const/4 v0, 0x0

    const/4 v1, 0x0

    array-length v2, v11

    invoke-static {v11, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 771
    const/16 v0, 0xd

    const-string v1, "content_hash"

    aput-object v1, v3, v0

    .line 772
    const/16 v0, 0xe

    const-string v1, "uuid"

    aput-object v1, v3, v0

    .line 777
    :goto_0
    sget-object v2, Lzte/com/cn/cloudnotepad/data/DataSchema$NotesTable;->NOTES_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->query(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 778
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_4

    .line 823
    :cond_0
    if-eqz v7, :cond_1

    .line 824
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v10, v12

    .line 821
    .end local v3           #projection:[Ljava/lang/String;
    .end local v11           #prj:[Ljava/lang/String;
    :cond_2
    :goto_1
    return-object v10

    .line 775
    .restart local v11       #prj:[Ljava/lang/String;
    :cond_3
    move-object v3, v11

    .restart local v3       #projection:[Ljava/lang/String;
    goto :goto_0

    .line 781
    :cond_4
    :try_start_1
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 782
    .local v10, list:Ljava/util/List;,"Ljava/util/List<Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;>;"
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 784
    :cond_5
    new-instance v8, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    invoke-direct {v8}, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;-><init>()V

    .line 785
    .local v8, data:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->id:I

    .line 786
    const-string v0, "title"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    .line 787
    iget-object v0, v8, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 788
    const-string v0, ""

    iput-object v0, v8, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    .line 790
    :cond_6
    const-string v0, "content"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content:Ljava/lang/String;

    .line 791
    const-string v0, "created"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v8, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->created:J

    .line 792
    const-string v0, "updated"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v8, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->updated:J

    .line 793
    const-string v0, "notebook"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->notebook:Ljava/lang/String;

    .line 794
    const-string v0, "drawable_src"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->drawableSrc:Ljava/lang/String;

    .line 795
    const-string v0, "longitude"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->longitude:I

    .line 796
    const-string v0, "latitude"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->latitude:I

    .line 797
    const-string v0, "address"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->address:Ljava/lang/String;

    .line 798
    const-string v0, "map"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->map:Ljava/lang/String;

    .line 799
    iget-object v0, v8, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->map:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 800
    const-string v0, ""

    iput-object v0, v8, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->map:Ljava/lang/String;

    .line 802
    :cond_7
    const-string v0, "wallpaper"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->wallpaper:Ljava/lang/String;

    .line 803
    iget-object v0, v8, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->wallpaper:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 804
    const-string v0, ""

    iput-object v0, v8, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->wallpaper:Ljava/lang/String;

    .line 806
    :cond_8
    const-string v0, "size"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->size:Ljava/lang/String;

    .line 807
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    if-le v0, v13, :cond_9

    .line 808
    const-string v0, "content_hash"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content_hash:Ljava/lang/String;

    .line 809
    const-string v0, "uuid"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->uuid:Ljava/lang/String;

    .line 814
    :goto_2
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 815
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 783
    if-nez v0, :cond_5

    .line 823
    if-eqz v7, :cond_2

    .line 824
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 811
    :cond_9
    :try_start_2
    iget-object v0, v8, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->messageDigest([B)[B

    move-result-object v0

    invoke-static {v0}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->mdByteToString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content_hash:Ljava/lang/String;

    .line 812
    const-string v0, ""

    iput-object v0, v8, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->uuid:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 818
    .end local v3           #projection:[Ljava/lang/String;
    .end local v8           #data:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;
    .end local v10           #list:Ljava/util/List;,"Ljava/util/List<Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;>;"
    .end local v11           #prj:[Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 820
    .local v9, e:Ljava/lang/Exception;
    :try_start_3
    const-string v0, "wangna"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "e"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 823
    if-eqz v7, :cond_a

    .line 824
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_a
    move-object v10, v12

    .line 821
    goto/16 :goto_1

    .line 822
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 823
    if-eqz v7, :cond_b

    .line 824
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 826
    :cond_b
    throw v0
.end method

.method public getResourceList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .parameter "db"
    .parameter "where"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 683
    sget-object v2, Lzte/com/cn/cloudnotepad/data/DataSchema$ResourceTable;->RESOURCE_CONTENT_URI:Landroid/net/Uri;

    .line 684
    const/4 v0, 0x6

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 685
    const-string v1, "_id"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    .line 686
    const-string v1, "hash"

    aput-object v1, v3, v0

    const/4 v0, 0x2

    .line 687
    const-string v1, "name"

    aput-object v1, v3, v0

    const/4 v0, 0x3

    .line 688
    const-string v1, "type"

    aput-object v1, v3, v0

    const/4 v0, 0x4

    .line 689
    const-string v1, "size"

    aput-object v1, v3, v0

    const/4 v0, 0x5

    .line 690
    const-string v1, "note_id"

    aput-object v1, v3, v0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v6, v5

    .line 683
    invoke-direct/range {v0 .. v6}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->query(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 693
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 712
    :cond_0
    :goto_0
    return-object v5

    .line 696
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 703
    .local v9, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;>;"
    :cond_2
    new-instance v8, Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;

    invoke-direct {v8}, Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;-><init>()V

    .line 704
    .local v8, data:Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;->id:I

    .line 705
    const-string v0, "hash"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;->hash:Ljava/lang/String;

    .line 706
    const-string v0, "name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;->name:Ljava/lang/String;

    .line 707
    const-string v0, "type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;->type:Ljava/lang/String;

    .line 708
    const-string v0, "size"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;->size:Ljava/lang/String;

    .line 709
    const-string v0, "note_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;->note_id:I

    .line 710
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 702
    if-nez v0, :cond_2

    .line 715
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v5, v9

    .line 712
    goto :goto_0

    .line 714
    .end local v8           #data:Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;
    .end local v9           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;>;"
    :catchall_0
    move-exception v0

    .line 715
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 716
    throw v0
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)J
    .locals 5
    .parameter "db"
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    .line 872
    if-eqz p3, :cond_0

    .line 873
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, p3}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 877
    .local v2, values:Landroid/content/ContentValues;
    :goto_0
    const-wide/16 v0, -0x1

    .line 878
    .local v0, rowId:J
    sget-object v3, Lzte/com/cn/cloudnotepad/data/NotepadProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p2}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 889
    :goto_1
    return-wide v0

    .line 875
    .end local v0           #rowId:J
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .restart local v2       #values:Landroid/content/ContentValues;
    goto :goto_0

    .line 880
    .restart local v0       #rowId:J
    :sswitch_0
    const-string v3, "notes"

    const-string v4, "title"

    invoke-virtual {p1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 881
    goto :goto_1

    .line 883
    :sswitch_1
    const-string v3, "notebook"

    const-string v4, "title"

    invoke-virtual {p1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 884
    goto :goto_1

    .line 886
    :sswitch_2
    const-string v3, "resource"

    const-string v4, "hash"

    invoke-virtual {p1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_1

    .line 878
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x7 -> :sswitch_2
    .end sparse-switch
.end method

.method public isEqual(Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)Z
    .locals 2
    .parameter "oldData"
    .parameter "newData"

    .prologue
    .line 189
    iget-object v0, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    iget-object v1, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content_hash:Ljava/lang/String;

    iget-object v1, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content_hash:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->notebook:Ljava/lang/String;

    iget-object v1, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->notebook:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->drawableSrc:Ljava/lang/String;

    iget-object v1, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->drawableSrc:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->address:Ljava/lang/String;

    iget-object v1, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->address:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->map:Ljava/lang/String;

    iget-object v1, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->map:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->wallpaper:Ljava/lang/String;

    iget-object v1, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->wallpaper:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 189
    goto :goto_0
.end method

.method public isLocalDbChanged()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mIsLocalDbChanged:Z

    return v0
.end method

.method public isParseException()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mIsException:Z

    return v0
.end method

.method public parse()V
    .locals 2

    .prologue
    .line 77
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mIsException:Z

    .line 77
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    :try_start_2
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->doParse()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 88
    :goto_0
    return-void

    .line 77
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    monitor-enter p0

    .line 84
    const/4 v1, 0x1

    :try_start_5
    iput-boolean v1, p0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mIsException:Z

    .line 83
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 86
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->mResourceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 83
    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .parameter "db"
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/16 v8, 0x29

    const/4 v5, 0x1

    .line 897
    sget-object v4, Lzte/com/cn/cloudnotepad/data/NotepadProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p2}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 926
    :pswitch_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unknown URI "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 899
    :pswitch_1
    const-string v4, "notes"

    invoke-virtual {p1, v4, p3, p4, p5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 929
    .local v0, count:I
    :goto_0
    return v0

    .line 903
    .end local v0           #count:I
    :pswitch_2
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 904
    .local v2, notesId:Ljava/lang/String;
    const-string v5, "notes"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "_id="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 905
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, " AND ("

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 904
    invoke-virtual {p1, v5, p3, v4, p5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 906
    .restart local v0       #count:I
    goto :goto_0

    .line 905
    .end local v0           #count:I
    :cond_0
    const-string v4, ""

    goto :goto_1

    .line 908
    .end local v2           #notesId:Ljava/lang/String;
    :pswitch_3
    const-string v4, "notebook"

    invoke-virtual {p1, v4, p3, p4, p5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 909
    .restart local v0       #count:I
    goto :goto_0

    .line 912
    .end local v0           #count:I
    :pswitch_4
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 913
    .local v1, notebookId:Ljava/lang/String;
    const-string v5, "notebook"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "_id="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 914
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, " AND ("

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 913
    invoke-virtual {p1, v5, p3, v4, p5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 915
    .restart local v0       #count:I
    goto/16 :goto_0

    .line 914
    .end local v0           #count:I
    :cond_1
    const-string v4, ""

    goto :goto_2

    .line 917
    .end local v1           #notebookId:Ljava/lang/String;
    :pswitch_5
    const-string v4, "resource"

    invoke-virtual {p1, v4, p3, p4, p5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 918
    .restart local v0       #count:I
    goto/16 :goto_0

    .line 921
    .end local v0           #count:I
    :pswitch_6
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 922
    .local v3, resourceId:Ljava/lang/String;
    const-string v5, "resource"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "_id="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 923
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, " AND ("

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 922
    invoke-virtual {p1, v5, p3, v4, p5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 924
    .restart local v0       #count:I
    goto/16 :goto_0

    .line 923
    .end local v0           #count:I
    :cond_2
    const-string v4, ""

    goto :goto_3

    .line 897
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

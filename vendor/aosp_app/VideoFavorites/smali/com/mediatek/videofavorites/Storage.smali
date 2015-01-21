.class public final Lcom/mediatek/videofavorites/Storage;
.super Ljava/lang/Object;
.source "Storage.java"


# static fields
.field public static final AVAILABLE:J = 0x0L

.field public static final FULL_SDCARD:J = -0x4L

.field public static final LOW_STORAGE_THRESHOLD:J = 0x80000L

.field public static final PREPARING:J = -0x2L

.field private static final TAG:Ljava/lang/String; = "Storage"

.field public static final TRANSCODE_PATH:Ljava/lang/String; = null

.field public static final TRANSCODE_PATH_BASE:Ljava/lang/String; = null

.field public static final UNAVAILABLE:J = -0x1L

.field public static final UNKNOWN_SIZE:J = -0x3L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/videofavorites/Storage;->TRANSCODE_PATH_BASE:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mediatek/videofavorites/Storage;->TRANSCODE_PATH_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/VideoFavorite/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/videofavorites/Storage;->TRANSCODE_PATH:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkStorageState(Ljava/lang/String;Landroid/content/Context;)J
    .locals 7
    .parameter "mountPoint"
    .parameter "context"

    .prologue
    const-wide/16 v2, -0x1

    .line 65
    invoke-static {p1}, Lcom/mediatek/videofavorites/Storage;->getStorageManager(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    .line 66
    .local v0, sm:Landroid/os/storage/StorageManager;
    if-nez v0, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-wide v2

    .line 70
    :cond_1
    invoke-virtual {v0, p0}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, state:Ljava/lang/String;
    const-string v4, "Storage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "External storage state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mount point = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/mediatek/videofavorites/Storage;->TRANSCODE_PATH_BASE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string v4, "checking"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 73
    const-wide/16 v2, -0x2

    goto :goto_0

    .line 75
    :cond_2
    const-string v4, "mounted"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 78
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public static getAvailableSpace(Landroid/content/Context;)J
    .locals 2
    .parameter "context"

    .prologue
    .line 108
    sget-object v0, Lcom/mediatek/videofavorites/Storage;->TRANSCODE_PATH_BASE:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/mediatek/videofavorites/Storage;->getAvailableSpace(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getAvailableSpace(Ljava/lang/String;Landroid/content/Context;)J
    .locals 9
    .parameter "mountPoint"
    .parameter "context"

    .prologue
    .line 87
    invoke-static {p0, p1}, Lcom/mediatek/videofavorites/Storage;->checkStorageState(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v3

    .line 88
    .local v3, storageState:J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_0

    .line 104
    .end local v3           #storageState:J
    :goto_0
    return-wide v3

    .line 92
    .restart local v3       #storageState:J
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v5, Lcom/mediatek/videofavorites/Storage;->TRANSCODE_PATH:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-nez v5, :cond_2

    .line 94
    :cond_1
    const-string v5, "Storage"

    const-string v6, "directory create failed"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-wide/16 v3, -0x4

    goto :goto_0

    .line 99
    :cond_2
    :try_start_0
    new-instance v2, Landroid/os/StatFs;

    sget-object v5, Lcom/mediatek/videofavorites/Storage;->TRANSCODE_PATH:Ljava/lang/String;

    invoke-direct {v2, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 100
    .local v2, stat:Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    int-to-long v7, v7

    mul-long v3, v5, v7

    goto :goto_0

    .line 101
    .end local v2           #stat:Landroid/os/StatFs;
    :catch_0
    move-exception v1

    .line 102
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v5, "Storage"

    const-string v6, "Fail to access external storage"

    invoke-static {v5, v6, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    const-wide/16 v3, -0x3

    goto :goto_0
.end method

.method private static getStorageManager(Landroid/content/Context;)Landroid/os/storage/StorageManager;
    .locals 1
    .parameter "c"

    .prologue
    .line 61
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method public static isAvailable(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 82
    sget-object v0, Lcom/mediatek/videofavorites/Storage;->TRANSCODE_PATH_BASE:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/mediatek/videofavorites/Storage;->checkStorageState(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class public Lzte/com/cn/cloudnotepad/NoteApp;
.super Landroid/app/Application;
.source "NoteApp.java"


# static fields
.field public static final MIN_AVAILABLE_EXT_STOREAGE_SIZE:J = 0x1e00000L

.field public static final STORAGE_WARNING_LONG:J = 0x300000L

.field public static isLowSpace:Z

.field private static mNoteAppInstance:Lzte/com/cn/cloudnotepad/NoteApp;

.field public static mTextViewWidth:I


# instance fields
.field private mCache:Lzte/com/cn/cloudnotepad/ui/MemoryCache;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private skitchManager:Lzte/com/cn/cloudnotepad/skitch/meta/SkitchMetaManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    const/4 v0, 0x0

    sput-object v0, Lzte/com/cn/cloudnotepad/NoteApp;->mNoteAppInstance:Lzte/com/cn/cloudnotepad/NoteApp;

    .line 33
    sput-boolean v1, Lzte/com/cn/cloudnotepad/NoteApp;->isLowSpace:Z

    .line 42
    sput v1, Lzte/com/cn/cloudnotepad/NoteApp;->mTextViewWidth:I

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 47
    new-instance v0, Lzte/com/cn/cloudnotepad/skitch/meta/SkitchMetaManager;

    invoke-direct {v0}, Lzte/com/cn/cloudnotepad/skitch/meta/SkitchMetaManager;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/NoteApp;->skitchManager:Lzte/com/cn/cloudnotepad/skitch/meta/SkitchMetaManager;

    .line 48
    return-void
.end method

.method private getAvailableExternalStoreageSize()J
    .locals 2

    .prologue
    .line 286
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/NoteApp;->getSavePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lzte/com/cn/cloudnotepad/NoteApp;->getStorageSize(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInstance()Lzte/com/cn/cloudnotepad/NoteApp;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lzte/com/cn/cloudnotepad/NoteApp;->mNoteAppInstance:Lzte/com/cn/cloudnotepad/NoteApp;

    return-object v0
.end method

.method public static getMaxExistDbVersionCantHandle(Landroid/content/Context;)I
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x3

    const/4 v6, 0x0

    .line 366
    new-instance v2, Ljava/io/File;

    const-string v7, "/data/data/zte.com.cn.cloudnotepad/databases"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 367
    .local v2, dirFile:Ljava/io/File;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    move v5, v6

    .line 394
    :goto_0
    return v5

    .line 370
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 371
    .local v1, dbFiles:[Ljava/io/File;
    if-eqz v1, :cond_2

    array-length v7, v1

    if-nez v7, :cond_3

    :cond_2
    move v5, v6

    .line 372
    goto :goto_0

    .line 375
    :cond_3
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v7, v1

    if-lt v4, v7, :cond_4

    move v5, v6

    .line 394
    goto :goto_0

    .line 376
    :cond_4
    aget-object v7, v1, v4

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_5

    aget-object v7, v1, v4

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".db"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 375
    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 379
    :cond_6
    const/4 v0, 0x0

    .line 381
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    aget-object v7, v1, v4

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 382
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v5

    .line 383
    .local v5, version:I
    if-le v5, v10, :cond_7

    .line 384
    const-string v7, "NoteApp"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "the database version is "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 385
    const-string v9, ", and this ZteNote version can only handle version less than or equal "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 384
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 388
    .end local v5           #version:I
    :catch_0
    move-exception v3

    .line 389
    .local v3, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 391
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2

    .line 390
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 391
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 392
    throw v6

    .line 391
    .restart local v5       #version:I
    :cond_7
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2
.end method

.method private getStorageSize(Ljava/lang/String;)J
    .locals 7
    .parameter "dir"

    .prologue
    .line 279
    new-instance v4, Landroid/os/StatFs;

    invoke-direct {v4, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 280
    .local v4, stat:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v2, v5

    .line 281
    .local v2, blockSize:J
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v0, v5

    .line 282
    .local v0, availableBlocks:J
    mul-long v5, v0, v2

    return-wide v5
.end method

.method private saveExampleRes()V
    .locals 4

    .prologue
    .line 111
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/NoteApp;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "HasExample"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 112
    .local v0, currentCount:Z
    if-eqz v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/NoteApp;->saveExampleTask()V

    goto :goto_0
.end method

.method private saveExampleTask()V
    .locals 3

    .prologue
    .line 120
    new-instance v0, Lzte/com/cn/cloudnotepad/NoteApp$1;

    invoke-direct {v0, p0}, Lzte/com/cn/cloudnotepad/NoteApp$1;-><init>(Lzte/com/cn/cloudnotepad/NoteApp;)V

    .line 141
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/cloudnotepad/NoteApp$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 142
    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 304
    const-string v0, ""

    .line 305
    .local v0, directoryName:Ljava/lang/String;
    const/high16 v1, 0x7f09

    invoke-virtual {p0, v1}, Lzte/com/cn/cloudnotepad/NoteApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 306
    return-object v0
.end method

.method public getAvailableInternalMemorySize()J
    .locals 8

    .prologue
    .line 310
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    .line 311
    .local v4, path:Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 312
    .local v5, stat:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 313
    .local v2, blockSize:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 314
    .local v0, availableBlocks:J
    mul-long v6, v0, v2

    return-wide v6
.end method

.method public getAvailableInternalStoreageSize()J
    .locals 2

    .prologue
    .line 290
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/NoteApp;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lzte/com/cn/cloudnotepad/NoteApp;->getStorageSize(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentAccountUserId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 202
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "account_user_id"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, accountUserId:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 206
    .end local v0           #accountUserId:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #accountUserId:Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getDoodleEraserWidth()F
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/NoteApp;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "doodle_eraser_width"

    const/high16 v2, 0x4170

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getDoodlePaintWidth()F
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/NoteApp;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "doodle_paint_width"

    sget v2, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts;->DEFAULT_PAINT_WIDTH:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getExportPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/NoteApp;->getSavePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "ZTEnote/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHandWritePaintWidth()F
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/NoteApp;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "handwrite_paint_width"

    sget v2, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts;->DEFAULT_HANDWRITE_PAINT_WIDTH:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getHandwriteWordHeight()I
    .locals 4

    .prologue
    .line 77
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/NoteApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 78
    .local v0, h:I
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/NoteApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 79
    .local v1, max_h:I
    const/16 v2, 0x46

    if-ge v1, v2, :cond_0

    .line 80
    const/16 v1, 0x46

    .line 82
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method public getMemoryCache()Lzte/com/cn/cloudnotepad/ui/MemoryCache;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/NoteApp;->mCache:Lzte/com/cn/cloudnotepad/ui/MemoryCache;

    return-object v0
.end method

.method public getPhoneStoragePath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 191
    const-string v1, ""

    .line 192
    .local v1, phoneStoragePath:Ljava/lang/String;
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/NoteApp;->getStorageVolume()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 193
    .local v2, storageVolumes:[Landroid/os/storage/StorageVolume;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    .line 198
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ZteNote"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 194
    :cond_0
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 195
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 193
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getSaveDescription()Ljava/lang/String;
    .locals 3

    .prologue
    .line 244
    const-string v1, ""

    .line 245
    .local v1, saveDescription:Ljava/lang/String;
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/NoteApp;->getSaveVolume()Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 247
    .local v2, saveVolume:Landroid/os/storage/StorageVolume;
    :try_start_0
    invoke-virtual {v2, p0}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 251
    :goto_0
    return-object v1

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getDescription()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSavePath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 217
    const-string v0, ""

    .line 218
    .local v0, savePath:Ljava/lang/String;
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/NoteApp;->getSaveVolume()Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 219
    .local v1, saveVolume:Landroid/os/storage/StorageVolume;
    if-eqz v1, :cond_0

    .line 220
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 222
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getSaveVolume()Landroid/os/storage/StorageVolume;
    .locals 7

    .prologue
    .line 226
    const/4 v3, 0x0

    .line 227
    .local v3, saveVolume:Landroid/os/storage/StorageVolume;
    const/4 v4, 0x0

    .line 228
    .local v4, sdcardVolume:Landroid/os/storage/StorageVolume;
    const/4 v1, 0x0

    .line 229
    .local v1, phoneVolume:Landroid/os/storage/StorageVolume;
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/NoteApp;->getStorageVolume()[Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 230
    .local v5, storageVolumes:[Landroid/os/storage/StorageVolume;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v6, v5

    if-lt v0, v6, :cond_0

    .line 239
    if-nez v4, :cond_3

    move-object v3, v1

    .line 240
    :goto_1
    return-object v3

    .line 231
    :cond_0
    aget-object v6, v5, v0

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 232
    .local v2, savePath:Ljava/lang/String;
    aget-object v6, v5, v0

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0, v2}, Lzte/com/cn/cloudnotepad/NoteApp;->isSDCardExists(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 233
    aget-object v4, v5, v0

    .line 235
    :cond_1
    aget-object v6, v5, v0

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v6

    if-nez v6, :cond_2

    .line 236
    aget-object v1, v5, v0

    .line 230
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2           #savePath:Ljava/lang/String;
    :cond_3
    move-object v3, v4

    .line 239
    goto :goto_1
.end method

.method public getScreenHeight()I
    .locals 3

    .prologue
    .line 318
    const-string v2, "window"

    invoke-virtual {p0, v2}, Lzte/com/cn/cloudnotepad/NoteApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 319
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 320
    .local v0, height:I
    return v0
.end method

.method public getScreenWidth()I
    .locals 3

    .prologue
    .line 324
    const-string v2, "window"

    invoke-virtual {p0, v2}, Lzte/com/cn/cloudnotepad/NoteApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 325
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 326
    .local v0, width:I
    return v0
.end method

.method public getShareFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/NoteApp;->getSavePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "ZTEnote"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/temp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSkitchManager()Lzte/com/cn/cloudnotepad/skitch/meta/SkitchMetaManager;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/NoteApp;->skitchManager:Lzte/com/cn/cloudnotepad/skitch/meta/SkitchMetaManager;

    return-object v0
.end method

.method public getStatusBarHeight()I
    .locals 6

    .prologue
    .line 330
    const/4 v4, 0x0

    .line 333
    .local v4, x:I
    :try_start_0
    const-string v5, "com.android.internal.R$dimen"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 334
    .local v0, c:Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 335
    .local v3, obj:Ljava/lang/Object;
    const-string v5, "status_bar_height"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 336
    .local v2, field:Ljava/lang/reflect/Field;
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5

    move-result v4

    .line 362
    .end local v0           #c:Ljava/lang/Class;
    .end local v2           #field:Ljava/lang/reflect/Field;
    .end local v3           #obj:Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/NoteApp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    return v5

    .line 337
    :catch_0
    move-exception v1

    .line 340
    .local v1, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 341
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 344
    .local v1, e:Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 345
    .end local v1           #e:Ljava/lang/InstantiationException;
    :catch_2
    move-exception v1

    .line 348
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 349
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .line 352
    .local v1, e:Ljava/lang/NoSuchFieldException;
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 353
    .end local v1           #e:Ljava/lang/NoSuchFieldException;
    :catch_4
    move-exception v1

    .line 356
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 357
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_5
    move-exception v1

    .line 360
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public getStorageVolume()[Landroid/os/storage/StorageVolume;
    .locals 8

    .prologue
    .line 172
    const/4 v4, 0x0

    check-cast v4, [Landroid/os/storage/StorageVolume;

    .line 173
    .local v4, storageVolume:[Landroid/os/storage/StorageVolume;
    const/4 v2, 0x0

    .line 174
    .local v2, method:Ljava/lang/reflect/Method;
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v5

    const-string v6, "storage"

    invoke-virtual {v5, v6}, Lzte/com/cn/cloudnotepad/NoteApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    .line 176
    .local v3, storageManager:Landroid/os/storage/StorageManager;
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getVolumeList"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 182
    :goto_0
    const/4 v5, 0x0

    :try_start_1
    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, [Landroid/os/storage/StorageVolume;

    move-object v4, v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 187
    :goto_1
    return-object v4

    .line 177
    :catch_0
    move-exception v1

    .line 179
    .local v1, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 183
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 185
    .local v1, e:Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public hasEnoughExtStorage()Z
    .locals 4

    .prologue
    .line 295
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/NoteApp;->getAvailableExternalStoreageSize()J

    move-result-wide v0

    const-wide/32 v2, 0x1e00000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEnoughInternalStorage()Z
    .locals 4

    .prologue
    .line 300
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/NoteApp;->getAvailableInternalStoreageSize()J

    move-result-wide v0

    const-wide/32 v2, 0x1e00000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSDCardExists(Ljava/lang/String;)Z
    .locals 11
    .parameter "path"

    .prologue
    .line 255
    const/4 v2, 0x0

    .line 256
    .local v2, isSDCardExists:Z
    const/4 v4, 0x0

    .line 257
    .local v4, state:Ljava/lang/String;
    const-string v6, "storage"

    invoke-virtual {p0, v6}, Lzte/com/cn/cloudnotepad/NoteApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageManager;

    .line 258
    .local v5, storageManager:Landroid/os/storage/StorageManager;
    const/4 v3, 0x0

    .line 260
    .local v3, method:Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getVolumeState"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 266
    :goto_0
    const/4 v6, 0x1

    :try_start_1
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 271
    :goto_1
    const-string v6, "mounted"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 272
    const-string v6, "mounted_ro"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 273
    :cond_0
    const/4 v2, 0x1

    .line 275
    :cond_1
    return v2

    .line 261
    :catch_0
    move-exception v1

    .line 263
    .local v1, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 267
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 269
    .local v1, e:Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 100
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/NoteApp;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 101
    sput-object p0, Lzte/com/cn/cloudnotepad/NoteApp;->mNoteAppInstance:Lzte/com/cn/cloudnotepad/NoteApp;

    .line 103
    new-instance v0, Lzte/com/cn/cloudnotepad/ui/MemoryCache;

    invoke-direct {v0}, Lzte/com/cn/cloudnotepad/ui/MemoryCache;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/NoteApp;->mCache:Lzte/com/cn/cloudnotepad/ui/MemoryCache;

    .line 104
    const/4 v0, 0x1

    invoke-static {v0}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->setDebug(Z)V

    .line 105
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/NoteApp;->setTextViewWidth()V

    .line 106
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/NoteApp;->saveExampleRes()V

    .line 107
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lzte/com/cn/cloudnotepad/NoteApp;->mNoteAppInstance:Lzte/com/cn/cloudnotepad/NoteApp;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/NoteApp;->onTerminate()V

    .line 147
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/NoteApp;->mCache:Lzte/com/cn/cloudnotepad/ui/MemoryCache;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/MemoryCache;->recycle()V

    .line 148
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/NoteApp;->mCache:Lzte/com/cn/cloudnotepad/ui/MemoryCache;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/MemoryCache;->clear()V

    .line 149
    return-void
.end method

.method public setDoodleEraserWidth(F)V
    .locals 2
    .parameter "width"

    .prologue
    .line 158
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/NoteApp;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "doodle_eraser_width"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 159
    return-void
.end method

.method public setDoodlePaintWidth(F)V
    .locals 2
    .parameter "width"

    .prologue
    .line 153
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/NoteApp;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "doodle_paint_width"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 154
    return-void
.end method

.method public setHandWritePaintWidth(F)V
    .locals 2
    .parameter "paramFloat"

    .prologue
    .line 163
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/NoteApp;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "handwrite_paint_width"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 164
    return-void
.end method

.method public setSkitchManager(Lzte/com/cn/cloudnotepad/skitch/meta/SkitchMetaManager;)V
    .locals 0
    .parameter "manager"

    .prologue
    .line 168
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/NoteApp;->skitchManager:Lzte/com/cn/cloudnotepad/skitch/meta/SkitchMetaManager;

    .line 169
    return-void
.end method

.method public setTextViewWidth()V
    .locals 4

    .prologue
    .line 398
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 399
    .local v0, edittext:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v1

    .line 400
    .local v1, padding:I
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/NoteApp;->getScreenWidth()I

    move-result v2

    mul-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    sput v2, Lzte/com/cn/cloudnotepad/NoteApp;->mTextViewWidth:I

    .line 401
    const/4 v0, 0x0

    .line 402
    return-void
.end method

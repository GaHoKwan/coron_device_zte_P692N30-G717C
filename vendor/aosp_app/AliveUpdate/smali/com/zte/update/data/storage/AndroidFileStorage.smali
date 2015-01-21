.class public Lcom/zte/update/data/storage/AndroidFileStorage;
.super Lcom/zte/update/data/storage/FileStorage;
.source "AndroidFileStorage.java"


# static fields
.field private static final UPDATEDIRINSDCARD:Ljava/lang/String; = "aliveupdate"

.field private static updtDirPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/update/data/storage/AndroidFileStorage;->updtDirPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/zte/update/data/storage/FileStorage;-><init>()V

    return-void
.end method

.method public static getStorageAccessFile(Ljava/lang/String;)Ljava/io/RandomAccessFile;
    .locals 6
    .parameter "pathname"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/aliveupdate/AliveUpdateException;
        }
    .end annotation

    .prologue
    .line 33
    if-nez p0, :cond_0

    .line 34
    const/4 v2, 0x0

    .line 43
    :goto_0
    return-object v2

    .line 37
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/zte/update/tools/FileTools;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 38
    .local v1, file:Ljava/io/File;
    const-string v3, "com.zte.update.data.storage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file path ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zte/util/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rwd"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 41
    .local v2, randomAccessFile:Ljava/io/RandomAccessFile;
    const-string v3, "com.zte.update.data.storage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file.getPath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zte/util/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    .end local v1           #file:Ljava/io/File;
    .end local v2           #randomAccessFile:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v0

    .line 46
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Lcom/zte/aliveupdate/AliveUpdateException;

    invoke-direct {v3, v0}, Lcom/zte/aliveupdate/AliveUpdateException;-><init>(Ljava/io/IOException;)V

    throw v3
.end method

.method public static getUpdtDirPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/zte/update/data/storage/AndroidFileStorage;->updtDirPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 70
    invoke-static {}, Lcom/zte/update/data/storage/AndroidFileStorage;->setUpdtDirPath()V

    .line 72
    :cond_0
    sget-object v0, Lcom/zte/update/data/storage/AndroidFileStorage;->updtDirPath:Ljava/lang/String;

    return-object v0
.end method

.method private static setUpdtDirPath()V
    .locals 4

    .prologue
    .line 52
    invoke-static {}, Lcom/zte/update/tools/MemoryTools;->getSdCardPath()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, sdCardPath:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 56
    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "aliveupdate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/zte/update/data/storage/AndroidFileStorage;->updtDirPath:Ljava/lang/String;

    .line 60
    :goto_0
    const-string v1, "com.zte.update.data.storage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFileFromName: sdcard dir="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/zte/update/data/storage/AndroidFileStorage;->updtDirPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zte/util/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void

    .line 58
    :cond_0
    invoke-static {}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getDefault()Lcom/zte/aliveupdate/main/AliveUpdateApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zte/update/data/storage/AndroidFileStorage;->updtDirPath:Ljava/lang/String;

    goto :goto_0
.end method

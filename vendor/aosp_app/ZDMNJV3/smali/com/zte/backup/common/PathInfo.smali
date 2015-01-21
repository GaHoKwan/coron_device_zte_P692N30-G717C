.class public Lcom/zte/backup/common/PathInfo;
.super Ljava/lang/Object;
.source "PathInfo.java"


# static fields
.field public static final APKPATHLIST:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final APKPATH_G1:Ljava/lang/String; = "/ZTE/BackUp/App/"

.field private static final APKPATH_G2:Ljava/lang/String; = "/.backup/App/"

.field private static final APPDATA:Ljava/lang/String; = "/data/data/"

.field private static final APPPATH:Ljava/lang/String; = "/backup/App/"

.field private static final APP_TD_PATH:Ljava/lang/String; = "/.backup/"

.field public static final BACKUP_ZCLOUD_DISK_TEMP_DIR:Ljava/lang/String; = null

.field private static final DATAPATH:Ljava/lang/String; = "/backup/Data/"

.field private static final DATAPATH_G1:Ljava/lang/String; = "/OneKeyBackup/BackUp/Data/"

.field private static final DATAPATH_G2:Ljava/lang/String; = "/ZTE/BackUp/Data/"

.field private static final DATAPATH_G3:Ljava/lang/String; = "/OKB/BackUp/Data/"

.field private static final DATAPATH_G4:Ljava/lang/String; = "/.backup/Data/"

.field public static final DATAPATH_U960S3:Ljava/lang/String; = "/.backup"

.field private static FILESPATH:Ljava/lang/String; = null

.field private static final FOLDERPATH:Ljava/lang/String; = "/backup/"

.field public static final LOCAL_DATA_RESTORE_PATH_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TEMP_ROOT_DIR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    const-string v0, "/data/data/com.zte.backup.cdsj/"

    sput-object v0, Lcom/zte/backup/common/PathInfo;->FILESPATH:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/zte/backup/common/PathInfo;->getRootSDPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "temporary"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/backup/common/PathInfo;->TEMP_ROOT_DIR:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/zte/backup/common/PathInfo;->TEMP_ROOT_DIR:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "backup2ZCloudDisk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/backup/common/PathInfo;->BACKUP_ZCLOUD_DISK_TEMP_DIR:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/zte/backup/common/PathInfo;->LOCAL_DATA_RESTORE_PATH_LIST:Ljava/util/ArrayList;

    .line 31
    sget-object v0, Lcom/zte/backup/common/PathInfo;->LOCAL_DATA_RESTORE_PATH_LIST:Ljava/util/ArrayList;

    const-string v1, "/backup/Data/"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lcom/zte/backup/common/PathInfo;->LOCAL_DATA_RESTORE_PATH_LIST:Ljava/util/ArrayList;

    const-string v1, "/.backup/Data/"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lcom/zte/backup/common/PathInfo;->LOCAL_DATA_RESTORE_PATH_LIST:Ljava/util/ArrayList;

    const-string v1, "/OKB/BackUp/Data/"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lcom/zte/backup/common/PathInfo;->LOCAL_DATA_RESTORE_PATH_LIST:Ljava/util/ArrayList;

    const-string v1, "/ZTE/BackUp/Data/"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lcom/zte/backup/common/PathInfo;->LOCAL_DATA_RESTORE_PATH_LIST:Ljava/util/ArrayList;

    const-string v1, "/OneKeyBackup/BackUp/Data/"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lcom/zte/backup/common/PathInfo;->LOCAL_DATA_RESTORE_PATH_LIST:Ljava/util/ArrayList;

    const-string v1, "/.backup/"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/zte/backup/common/PathInfo;->APKPATHLIST:Ljava/util/ArrayList;

    .line 43
    sget-object v0, Lcom/zte/backup/common/PathInfo;->APKPATHLIST:Ljava/util/ArrayList;

    const-string v1, "/backup/App/"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/zte/backup/common/PathInfo;->APKPATHLIST:Ljava/util/ArrayList;

    const-string v1, "/ZTE/BackUp/App/"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/zte/backup/common/PathInfo;->APKPATHLIST:Ljava/util/ArrayList;

    const-string v1, "/.backup/App/"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAPPDATA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    const-string v0, "/data/data/"

    return-object v0
.end method

.method public static getAppFullPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, path:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/zte/backup/common/PathInfo;->getRootSDPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/backup/App/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    return-object v0
.end method

.method public static getAppFullPathG1()Ljava/lang/String;
    .locals 3

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, path:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/zte/backup/common/PathInfo;->getRootSDPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/ZTE/BackUp/App/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    return-object v0
.end method

.method public static getAppPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    const-string v0, "/backup/App/"

    return-object v0
.end method

.method public static getDataFullPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, path:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/zte/backup/common/PathInfo;->getRootSDPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/backup/Data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    return-object v0
.end method

.method public static getDataPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const-string v0, "/backup/Data/"

    return-object v0
.end method

.method public static getExternalStorageRootPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 137
    const/4 v0, 0x0

    .line 139
    .local v0, path:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, sTcardExtName:Ljava/lang/String;
    move-object v0, v1

    .line 145
    return-object v0
.end method

.method public static getFILESPATH()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/zte/backup/common/PathInfo;->FILESPATH:Ljava/lang/String;

    return-object v0
.end method

.method public static getFolderPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, path:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/zte/backup/common/PathInfo;->getRootSDPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/backup/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    return-object v0
.end method

.method public static getRestoreApkPathList()Ljava/util/List;
    .locals 5
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
    .line 72
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v2, pathList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 74
    .local v1, path:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Lcom/zte/backup/common/PathInfo;->APKPATHLIST:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 78
    return-object v2

    .line 75
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/zte/backup/common/PathInfo;->getRootSDPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/zte/backup/common/PathInfo;->APKPATHLIST:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getRestorePathList()Ljava/util/List;
    .locals 5
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
    .line 121
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v2, pathList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 125
    .local v1, path:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Lcom/zte/backup/common/PathInfo;->LOCAL_DATA_RESTORE_PATH_LIST:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 129
    return-object v2

    .line 126
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/zte/backup/common/PathInfo;->getExternalStorageRootPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/zte/backup/common/PathInfo;->LOCAL_DATA_RESTORE_PATH_LIST:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getRootSDPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, sTcardExtName:Ljava/lang/String;
    return-object v0
.end method

.method public static getTDApkPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, path:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/zte/backup/common/PathInfo;->getRootSDPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/.backup/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    return-object v0
.end method

.method public static setFILESPATH(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 113
    sput-object p0, Lcom/zte/backup/common/PathInfo;->FILESPATH:Ljava/lang/String;

    .line 114
    return-void
.end method

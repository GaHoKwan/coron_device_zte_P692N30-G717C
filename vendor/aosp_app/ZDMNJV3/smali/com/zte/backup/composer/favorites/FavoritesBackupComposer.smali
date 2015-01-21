.class public Lcom/zte/backup/composer/favorites/FavoritesBackupComposer;
.super Lcom/zte/backup/composer/Composer;
.source "FavoritesBackupComposer.java"


# instance fields
.field private wallpaper:Lcom/zte/backup/format/wallpaper/WallpaperBackup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "backupPath"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/zte/backup/composer/Composer;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-virtual {p0, p2}, Lcom/zte/backup/composer/favorites/FavoritesBackupComposer;->setOutPath(Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/zte/backup/composer/DataType;->FAVORITES:Lcom/zte/backup/composer/DataType;

    iput-object v0, p0, Lcom/zte/backup/composer/favorites/FavoritesBackupComposer;->type:Lcom/zte/backup/composer/DataType;

    .line 35
    new-instance v0, Lcom/zte/backup/format/wallpaper/WallpaperBackup;

    invoke-direct {v0, p0}, Lcom/zte/backup/format/wallpaper/WallpaperBackup;-><init>(Lcom/zte/backup/composer/Composer;)V

    iput-object v0, p0, Lcom/zte/backup/composer/favorites/FavoritesBackupComposer;->wallpaper:Lcom/zte/backup/format/wallpaper/WallpaperBackup;

    .line 36
    return-void
.end method

.method private deleteBackupFilesFailed()V
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/zte/backup/composer/favorites/FavoritesBackupComposer;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/zte/backup/composer/favorites/FavoritesBackupComposer;->path:Ljava/lang/String;

    invoke-static {v1}, Lcom/zte/backup/common/CommonFunctions;->deleteDirRecursion(Ljava/lang/String;)Z

    .line 84
    :cond_0
    return-void
.end method


# virtual methods
.method public compose()I
    .locals 3

    .prologue
    .line 56
    iget-object v2, p0, Lcom/zte/backup/composer/favorites/FavoritesBackupComposer;->wallpaper:Lcom/zte/backup/format/wallpaper/WallpaperBackup;

    invoke-virtual {v2}, Lcom/zte/backup/format/wallpaper/WallpaperBackup;->getBackupCount()I

    move-result v1

    .line 57
    .local v1, totalItem:I
    if-nez v1, :cond_0

    .line 58
    const/16 v0, 0x2005

    .line 67
    :goto_0
    return v0

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/zte/backup/composer/favorites/FavoritesBackupComposer;->onStart()V

    .line 61
    iget-object v2, p0, Lcom/zte/backup/composer/favorites/FavoritesBackupComposer;->wallpaper:Lcom/zte/backup/format/wallpaper/WallpaperBackup;

    invoke-virtual {v2}, Lcom/zte/backup/format/wallpaper/WallpaperBackup;->processWallpapersBackup()I

    move-result v0

    .line 62
    .local v0, iRet:I
    const/16 v2, 0x2001

    if-ne v2, v0, :cond_1

    .line 63
    invoke-virtual {p0}, Lcom/zte/backup/composer/favorites/FavoritesBackupComposer;->increaseComposed()V

    goto :goto_0

    .line 65
    :cond_1
    invoke-direct {p0}, Lcom/zte/backup/composer/favorites/FavoritesBackupComposer;->deleteBackupFilesFailed()V

    goto :goto_0
.end method

.method public getFolderDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-string v0, "Desktop"

    return-object v0
.end method

.method public getSize()J
    .locals 3

    .prologue
    .line 87
    const-wide/16 v0, 0x0

    .line 88
    .local v0, staticImageSize:J
    iget-object v2, p0, Lcom/zte/backup/composer/favorites/FavoritesBackupComposer;->wallpaper:Lcom/zte/backup/format/wallpaper/WallpaperBackup;

    invoke-virtual {v2}, Lcom/zte/backup/format/wallpaper/WallpaperBackup;->isStaticWallpaperInfo()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    iget-object v2, p0, Lcom/zte/backup/composer/favorites/FavoritesBackupComposer;->wallpaper:Lcom/zte/backup/format/wallpaper/WallpaperBackup;

    invoke-virtual {v2}, Lcom/zte/backup/format/wallpaper/WallpaperBackup;->getStaticImageSize()J

    move-result-wide v0

    .line 91
    :cond_0
    return-wide v0
.end method

.method public getTotalNum()I
    .locals 2

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, count:I
    iget-object v1, p0, Lcom/zte/backup/composer/favorites/FavoritesBackupComposer;->wallpaper:Lcom/zte/backup/format/wallpaper/WallpaperBackup;

    invoke-virtual {v1}, Lcom/zte/backup/format/wallpaper/WallpaperBackup;->isStaticWallpaperInfo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    const/4 v0, 0x1

    .line 99
    :cond_0
    return v0
.end method

.method public init()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

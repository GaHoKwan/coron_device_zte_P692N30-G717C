.class public Lcom/zte/backup/composer/favorites/FavoritesRestoreComposer;
.super Lcom/zte/backup/composer/Composer;
.source "FavoritesRestoreComposer.java"


# instance fields
.field isU960S3:Z

.field private wallpaper:Lcom/zte/backup/format/wallpaper/WallpaperBackup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "backupPath"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/zte/backup/composer/Composer;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/backup/composer/favorites/FavoritesRestoreComposer;->isU960S3:Z

    .line 43
    invoke-virtual {p0, p2}, Lcom/zte/backup/composer/favorites/FavoritesRestoreComposer;->setInPath(Ljava/lang/String;)V

    .line 44
    sget-object v0, Lcom/zte/backup/composer/DataType;->FAVORITES:Lcom/zte/backup/composer/DataType;

    iput-object v0, p0, Lcom/zte/backup/composer/favorites/FavoritesRestoreComposer;->type:Lcom/zte/backup/composer/DataType;

    .line 45
    iget-object v0, p0, Lcom/zte/backup/composer/favorites/FavoritesRestoreComposer;->type:Lcom/zte/backup/composer/DataType;

    invoke-static {v0}, Lcom/zte/backup/common/CommonFunctions;->getItemCountFromBackupXml(Lcom/zte/backup/composer/DataType;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lcom/zte/backup/composer/favorites/FavoritesRestoreComposer;->totalNum:I

    .line 48
    :cond_0
    new-instance v0, Lcom/zte/backup/format/wallpaper/WallpaperBackup;

    invoke-direct {v0, p0}, Lcom/zte/backup/format/wallpaper/WallpaperBackup;-><init>(Lcom/zte/backup/composer/Composer;)V

    iput-object v0, p0, Lcom/zte/backup/composer/favorites/FavoritesRestoreComposer;->wallpaper:Lcom/zte/backup/format/wallpaper/WallpaperBackup;

    .line 49
    return-void
.end method

.method public static isU960S3Favorites(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 35
    const-string v0, "desktop/wallpaper.png"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public compose()I
    .locals 7

    .prologue
    .line 59
    iget-boolean v5, p0, Lcom/zte/backup/composer/favorites/FavoritesRestoreComposer;->isU960S3:Z

    if-eqz v5, :cond_1

    .line 60
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcom/zte/backup/composer/favorites/FavoritesRestoreComposer;->path:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .local v2, file:Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, newPath:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "wallpaper.png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, dbFile:Ljava/lang/String;
    iget-object v5, p0, Lcom/zte/backup/composer/favorites/FavoritesRestoreComposer;->path:Ljava/lang/String;

    const-string v6, "desktop/wallpaper.png"

    invoke-static {v5, v6, v1}, Lcom/zte/backup/common/CommonFunctions;->unZipFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 64
    const/16 v4, 0x2002

    .line 74
    .end local v1           #dbFile:Ljava/lang/String;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #newPath:Ljava/lang/String;
    :goto_0
    return v4

    .line 67
    .restart local v1       #dbFile:Ljava/lang/String;
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #newPath:Ljava/lang/String;
    :cond_0
    iput-object v3, p0, Lcom/zte/backup/composer/favorites/FavoritesRestoreComposer;->path:Ljava/lang/String;

    .line 68
    iget-object v5, p0, Lcom/zte/backup/composer/favorites/FavoritesRestoreComposer;->wallpaper:Lcom/zte/backup/format/wallpaper/WallpaperBackup;

    invoke-virtual {v5}, Lcom/zte/backup/format/wallpaper/WallpaperBackup;->processWallpapersRestore()I

    move-result v4

    .line 69
    .local v4, result:I
    new-instance v2, Ljava/io/File;

    .end local v2           #file:Ljava/io/File;
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    .restart local v2       #file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    .line 71
    .local v0, bDel:Z
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "bDel:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zte/backup/common/Logging;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    .end local v0           #bDel:Z
    .end local v1           #dbFile:Ljava/lang/String;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #newPath:Ljava/lang/String;
    .end local v4           #result:I
    :cond_1
    iget-object v5, p0, Lcom/zte/backup/composer/favorites/FavoritesRestoreComposer;->wallpaper:Lcom/zte/backup/format/wallpaper/WallpaperBackup;

    invoke-virtual {v5}, Lcom/zte/backup/format/wallpaper/WallpaperBackup;->processWallpapersRestore()I

    move-result v4

    goto :goto_0
.end method

.method public getFolderDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, "Desktop"

    return-object v0
.end method

.method public init()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public setInPath(Ljava/lang/String;)V
    .locals 3
    .parameter "backupPath"

    .prologue
    .line 84
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ".zip"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    iput-object p1, p0, Lcom/zte/backup/composer/favorites/FavoritesRestoreComposer;->path:Ljava/lang/String;

    .line 87
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/zte/backup/composer/favorites/FavoritesRestoreComposer;->isU960S3:Z

    .line 92
    :goto_0
    return-void

    .line 91
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/backup/composer/favorites/FavoritesRestoreComposer;->getFolderDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/backup/composer/favorites/FavoritesRestoreComposer;->path:Ljava/lang/String;

    goto :goto_0
.end method

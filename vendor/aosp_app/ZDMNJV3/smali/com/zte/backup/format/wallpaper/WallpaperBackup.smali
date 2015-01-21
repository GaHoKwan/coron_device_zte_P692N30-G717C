.class public Lcom/zte/backup/format/wallpaper/WallpaperBackup;
.super Ljava/lang/Object;
.source "WallpaperBackup.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "WallpaperBackup"

.field private static final OldVersionWallpaperSuffix:Ljava/lang/String; = ".jpg"

.field private static final WallpaperSuffix:Ljava/lang/String; = ".png"

.field private static final wallPaperFile:Ljava/lang/String; = "wallpaper"

.field public static final wallPaperInfo:Ljava/lang/String; = "wallpaper_info.xml"


# instance fields
.field private composer:Lcom/zte/backup/composer/Composer;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/zte/backup/composer/Composer;)V
    .locals 1
    .parameter "composer"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/backup/format/wallpaper/WallpaperBackup;->composer:Lcom/zte/backup/composer/Composer;

    .line 33
    iput-object p1, p0, Lcom/zte/backup/format/wallpaper/WallpaperBackup;->composer:Lcom/zte/backup/composer/Composer;

    .line 34
    invoke-virtual {p1}, Lcom/zte/backup/composer/Composer;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/backup/format/wallpaper/WallpaperBackup;->context:Landroid/content/Context;

    .line 35
    return-void
.end method

.method private getWallpaperImageSuffixPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "wallpaperPath"

    .prologue
    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, srcImage:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, oldVersionsrcImage:Ljava/lang/String;
    const/4 v2, 0x0

    .line 179
    .local v2, wallpaperfullPath:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 180
    move-object v2, v1

    .line 184
    :cond_0
    :goto_0
    return-object v2

    .line 181
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 182
    move-object v2, v0

    goto :goto_0
.end method


# virtual methods
.method public distoryBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitMap"

    .prologue
    .line 163
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 166
    :cond_0
    return-void
.end method

.method public getBackupCount()I
    .locals 2

    .prologue
    .line 188
    const/4 v0, 0x0

    .line 189
    .local v0, count:I
    invoke-virtual {p0}, Lcom/zte/backup/format/wallpaper/WallpaperBackup;->isStaticWallpaperInfo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    const/4 v0, 0x1

    .line 192
    :cond_0
    return v0
.end method

.method public getBitmapFromFile(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "dst"

    .prologue
    .line 103
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 110
    :goto_0
    return-object v1

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 110
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getStaticImageSize()J
    .locals 6

    .prologue
    .line 93
    iget-object v4, p0, Lcom/zte/backup/format/wallpaper/WallpaperBackup;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    .line 94
    .local v3, wallpaperManager:Landroid/app/WallpaperManager;
    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 95
    .local v2, wallpaperDrawable:Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .line 96
    .local v0, bitmap:Landroid/graphics/Bitmap;
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2           #wallpaperDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    mul-int v1, v4, v5

    .line 98
    .local v1, size:I
    int-to-long v4, v1

    return-wide v4
.end method

.method public isStaticWallpaperInfo()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 80
    iget-object v3, p0, Lcom/zte/backup/format/wallpaper/WallpaperBackup;->context:Landroid/content/Context;

    if-nez v3, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v2

    .line 83
    :cond_1
    iget-object v3, p0, Lcom/zte/backup/format/wallpaper/WallpaperBackup;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    .line 84
    .local v1, wallpaperManager:Landroid/app/WallpaperManager;
    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    .line 85
    .local v0, info:Landroid/app/WallpaperInfo;
    if-nez v0, :cond_0

    .line 86
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public processWallpapersBackup()I
    .locals 13

    .prologue
    const/16 v10, 0x2003

    .line 38
    const/4 v1, 0x0

    .line 39
    .local v1, bitmap:Landroid/graphics/Bitmap;
    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/zte/backup/format/wallpaper/WallpaperBackup;->composer:Lcom/zte/backup/composer/Composer;

    invoke-virtual {v12}, Lcom/zte/backup/composer/Composer;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "wallpaper"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".png"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 40
    .local v4, desStaticImage:Ljava/lang/String;
    iget-object v11, p0, Lcom/zte/backup/format/wallpaper/WallpaperBackup;->composer:Lcom/zte/backup/composer/Composer;

    invoke-virtual {v11}, Lcom/zte/backup/composer/Composer;->isCancel()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v10

    .line 45
    :cond_1
    const/4 v2, 0x0

    .line 47
    .local v2, bos:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/backup/format/wallpaper/WallpaperBackup;->isStaticWallpaperInfo()Z

    move-result v0

    .line 48
    .local v0, bStaticImage:Z
    if-eqz v0, :cond_4

    .line 49
    iget-object v11, p0, Lcom/zte/backup/format/wallpaper/WallpaperBackup;->context:Landroid/content/Context;

    invoke-static {v11}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v9

    .line 50
    .local v9, wallpaperManager:Landroid/app/WallpaperManager;
    invoke-virtual {v9}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 51
    .local v8, wallpaperDrawable:Landroid/graphics/drawable/Drawable;
    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    .end local v8           #wallpaperDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 52
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    .local v7, f:Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 54
    .end local v2           #bos:Ljava/io/FileOutputStream;
    .local v3, bos:Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v11, p0, Lcom/zte/backup/format/wallpaper/WallpaperBackup;->composer:Lcom/zte/backup/composer/Composer;

    invoke-virtual {v11}, Lcom/zte/backup/composer/Composer;->isCancel()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result v11

    if-eqz v11, :cond_3

    .line 67
    :cond_2
    if-eqz v3, :cond_0

    .line 69
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v5

    .line 71
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 57
    .end local v5           #e:Ljava/io/IOException;
    :cond_3
    :try_start_3
    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v12, 0x64

    invoke-virtual {v1, v11, v12, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 58
    iget-object v11, p0, Lcom/zte/backup/format/wallpaper/WallpaperBackup;->composer:Lcom/zte/backup/composer/Composer;

    invoke-virtual {v11}, Lcom/zte/backup/composer/Composer;->isCancel()Z

    move-result v11

    if-nez v11, :cond_2

    .line 61
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    move-object v2, v3

    .line 67
    .end local v3           #bos:Ljava/io/FileOutputStream;
    .end local v7           #f:Ljava/io/File;
    .end local v9           #wallpaperManager:Landroid/app/WallpaperManager;
    .restart local v2       #bos:Ljava/io/FileOutputStream;
    :cond_4
    if-eqz v2, :cond_5

    .line 69
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 76
    :cond_5
    :goto_1
    const/16 v10, 0x2001

    goto :goto_0

    .line 63
    .end local v0           #bStaticImage:Z
    :catch_1
    move-exception v6

    .line 64
    .local v6, ex:Ljava/lang/Exception;
    :goto_2
    :try_start_5
    const-string v10, "WallpaperBackup"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "backupWallpapers copy Image failed "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 67
    if-eqz v2, :cond_6

    .line 69
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 65
    :cond_6
    :goto_3
    const/16 v10, 0x2002

    goto :goto_0

    .line 70
    :catch_2
    move-exception v5

    .line 71
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 66
    .end local v5           #e:Ljava/io/IOException;
    .end local v6           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 67
    :goto_4
    if-eqz v2, :cond_7

    .line 69
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 74
    :cond_7
    :goto_5
    throw v10

    .line 70
    :catch_3
    move-exception v5

    .line 71
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 70
    .end local v5           #e:Ljava/io/IOException;
    .restart local v0       #bStaticImage:Z
    :catch_4
    move-exception v5

    .line 71
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 66
    .end local v2           #bos:Ljava/io/FileOutputStream;
    .end local v5           #e:Ljava/io/IOException;
    .restart local v3       #bos:Ljava/io/FileOutputStream;
    .restart local v7       #f:Ljava/io/File;
    .restart local v9       #wallpaperManager:Landroid/app/WallpaperManager;
    :catchall_1
    move-exception v10

    move-object v2, v3

    .end local v3           #bos:Ljava/io/FileOutputStream;
    .restart local v2       #bos:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 63
    .end local v2           #bos:Ljava/io/FileOutputStream;
    .restart local v3       #bos:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v6

    move-object v2, v3

    .end local v3           #bos:Ljava/io/FileOutputStream;
    .restart local v2       #bos:Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public processWallpapersRestore()I
    .locals 12

    .prologue
    const/16 v8, 0x2003

    const/16 v9, 0x2002

    .line 114
    const/4 v5, 0x0

    .line 115
    .local v5, srcStaticImage:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/zte/backup/format/wallpaper/WallpaperBackup;->composer:Lcom/zte/backup/composer/Composer;

    invoke-virtual {v11}, Lcom/zte/backup/composer/Composer;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "wallpaper"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 116
    .local v6, srcWallpaperPartPath:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    iget-object v10, p0, Lcom/zte/backup/format/wallpaper/WallpaperBackup;->composer:Lcom/zte/backup/composer/Composer;

    invoke-virtual {v10}, Lcom/zte/backup/composer/Composer;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    .local v4, pathFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 118
    .local v3, files:[Ljava/io/File;
    if-nez v3, :cond_1

    .line 119
    const/16 v8, 0x2005

    .line 147
    :cond_0
    :goto_0
    return v8

    .line 122
    :cond_1
    const/4 v0, 0x0

    .line 124
    .local v0, bitMap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-direct {p0, v6}, Lcom/zte/backup/format/wallpaper/WallpaperBackup;->getWallpaperImageSuffixPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 125
    iget-object v10, p0, Lcom/zte/backup/format/wallpaper/WallpaperBackup;->composer:Lcom/zte/backup/composer/Composer;

    invoke-virtual {v10}, Lcom/zte/backup/composer/Composer;->isCancel()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_2

    .line 149
    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0, v0}, Lcom/zte/backup/format/wallpaper/WallpaperBackup;->distoryBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 128
    :cond_2
    if-eqz v5, :cond_7

    .line 129
    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .local v2, file:Ljava/io/File;
    iget-object v10, p0, Lcom/zte/backup/format/wallpaper/WallpaperBackup;->context:Landroid/content/Context;

    invoke-static {v10}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v7

    .line 131
    .local v7, wallpaperManager:Landroid/app/WallpaperManager;
    invoke-virtual {p0, v2}, Lcom/zte/backup/format/wallpaper/WallpaperBackup;->getBitmapFromFile(Ljava/io/File;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 132
    if-nez v0, :cond_4

    .line 149
    if-eqz v0, :cond_3

    .line 150
    invoke-virtual {p0, v0}, Lcom/zte/backup/format/wallpaper/WallpaperBackup;->distoryBitmap(Landroid/graphics/Bitmap;)V

    :cond_3
    move v8, v9

    .line 133
    goto :goto_0

    .line 135
    :cond_4
    :try_start_2
    iget-object v10, p0, Lcom/zte/backup/format/wallpaper/WallpaperBackup;->composer:Lcom/zte/backup/composer/Composer;

    invoke-virtual {v10}, Lcom/zte/backup/composer/Composer;->isCancel()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v10

    if-eqz v10, :cond_5

    .line 149
    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0, v0}, Lcom/zte/backup/format/wallpaper/WallpaperBackup;->distoryBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 138
    :cond_5
    :try_start_3
    iget-object v8, p0, Lcom/zte/backup/format/wallpaper/WallpaperBackup;->composer:Lcom/zte/backup/composer/Composer;

    invoke-virtual {v8}, Lcom/zte/backup/composer/Composer;->increaseComposed()V

    .line 139
    invoke-virtual {v7, v0}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 149
    if-eqz v0, :cond_6

    .line 150
    invoke-virtual {p0, v0}, Lcom/zte/backup/format/wallpaper/WallpaperBackup;->distoryBitmap(Landroid/graphics/Bitmap;)V

    .line 140
    :cond_6
    const/16 v8, 0x2001

    goto :goto_0

    .line 149
    .end local v2           #file:Ljava/io/File;
    .end local v7           #wallpaperManager:Landroid/app/WallpaperManager;
    :cond_7
    if-eqz v0, :cond_8

    .line 150
    invoke-virtual {p0, v0}, Lcom/zte/backup/format/wallpaper/WallpaperBackup;->distoryBitmap(Landroid/graphics/Bitmap;)V

    :cond_8
    move v8, v9

    .line 143
    goto :goto_0

    .line 145
    :catch_0
    move-exception v1

    .line 146
    .local v1, e:Ljava/lang/Exception;
    :try_start_4
    const-string v8, "WallpaperBackup"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "backupWallpapers failed "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 149
    if-eqz v0, :cond_9

    .line 150
    invoke-virtual {p0, v0}, Lcom/zte/backup/format/wallpaper/WallpaperBackup;->distoryBitmap(Landroid/graphics/Bitmap;)V

    :cond_9
    move v8, v9

    .line 147
    goto :goto_0

    .line 148
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 149
    if-eqz v0, :cond_a

    .line 150
    invoke-virtual {p0, v0}, Lcom/zte/backup/format/wallpaper/WallpaperBackup;->distoryBitmap(Landroid/graphics/Bitmap;)V

    .line 159
    :cond_a
    throw v8
.end method

.class public Lcom/hf/share/LocaleSave;
.super Ljava/lang/Object;
.source "LocaleSave.java"


# static fields
.field private static final IMAGE_DEFAULT_NAME:Ljava/lang/String; = "%s.jpg"

.field private static final IMAGE_DIR_PATH:Ljava/lang/String; = null

.field private static final IMAGE_TEMP_NAME:Ljava/lang/String; = "temp.jpg"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/hfweather/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hf/share/LocaleSave;->IMAGE_DIR_PATH:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private saveToData(Landroid/content/Context;Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "bitmap"

    .prologue
    .line 96
    :try_start_0
    const-string v2, "temp.jpg"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 97
    .local v1, out:Ljava/io/FileOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p2, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 99
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 106
    .end local v1           #out:Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 107
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 109
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "temp.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 103
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 104
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private saveViewToSdcard(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "context"
    .parameter "view"
    .parameter "fileName"

    .prologue
    .line 48
    const/4 v5, 0x0

    .line 49
    .local v5, path:Ljava/lang/String;
    invoke-static {p2}, Lcom/hf/share/ShareUtils;->viewToBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 50
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    move-object v6, v5

    .line 87
    .end local v5           #path:Ljava/lang/String;
    .local v6, path:Ljava/lang/String;
    :goto_0
    return-object v6

    .line 53
    .end local v6           #path:Ljava/lang/String;
    .restart local v5       #path:Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/io/File;

    sget-object v8, Lcom/hf/share/LocaleSave;->IMAGE_DIR_PATH:Ljava/lang/String;

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .local v1, dir:Ljava/io/File;
    const/4 v7, 0x1

    .line 55
    .local v7, value:Z
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 56
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v7

    .line 57
    sget-boolean v8, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v8, :cond_1

    .line 58
    const-string v8, "screenShot"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "make dir result = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_1
    new-instance v3, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/hf/share/LocaleSave;->IMAGE_DIR_PATH:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 65
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_2
    :goto_1
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 72
    .local v4, out:Ljava/io/FileOutputStream;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {v0, v8, v9, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 73
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 74
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 76
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v5

    .line 83
    .end local v4           #out:Ljava/io/FileOutputStream;
    :goto_2
    if-eqz v0, :cond_4

    .line 84
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    move-object v6, v5

    .line 87
    .end local v5           #path:Ljava/lang/String;
    .restart local v6       #path:Ljava/lang/String;
    goto :goto_0

    .line 66
    .end local v6           #path:Ljava/lang/String;
    .restart local v5       #path:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 67
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 77
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 78
    .local v2, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 79
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    .line 80
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public saveViewToSdcard(Landroid/content/Context;Landroid/view/View;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "view"

    .prologue
    .line 33
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd_HH-mm-ss"

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 34
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, time:Ljava/lang/String;
    const-string v2, "%s.jpg"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, imageName:Ljava/lang/String;
    invoke-direct {p0, p1, p2, v0}, Lcom/hf/share/LocaleSave;->saveViewToSdcard(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public saveViewToTemp(Landroid/content/Context;Landroid/view/View;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "view"

    .prologue
    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, path:Ljava/lang/String;
    invoke-static {}, Lcom/hf/utils/Util;->ExistSDCard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    const-string v1, "temp.jpg"

    invoke-direct {p0, p1, p2, v1}, Lcom/hf/share/LocaleSave;->saveViewToSdcard(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    invoke-static {p2}, Lcom/hf/share/ShareUtils;->viewToBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/hf/share/LocaleSave;->saveToData(Landroid/content/Context;Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    .line 126
    :cond_1
    return-object v0
.end method

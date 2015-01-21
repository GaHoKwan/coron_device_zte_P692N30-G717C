.class public Lzte/com/cn/cloudnotepad/skitch/utils/DoodleUtils;
.super Ljava/lang/Object;
.source "DoodleUtils.java"


# static fields
.field public static final DATA_DIR:Ljava/lang/String; = "/mnt/sdcard/notepad/temp/"

.field private static final DBG:Z = true

.field public static final IMG_SUFFIX:Ljava/lang/String; = ".jpg"

.field private static final TAG:Ljava/lang/String; = "DoodleUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyfile(Ljava/io/File;Ljava/io/File;Z)V
    .locals 8
    .parameter "fromFile"
    .parameter "toFile"
    .parameter "rewrite"

    .prologue
    .line 73
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 74
    :cond_0
    const-string v5, "DoodleUtils"

    const-string v6, "the file object can\'t be null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_1
    :goto_0
    return-void

    .line 77
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 80
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 81
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 83
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz p2, :cond_4

    .line 84
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 88
    :cond_4
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 89
    .local v2, fis:Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 90
    .local v3, fos:Ljava/io/FileOutputStream;
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 92
    .local v0, bt:[B
    :goto_1
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .local v4, len:I
    if-gtz v4, :cond_5

    .line 95
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 96
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    .end local v0           #bt:[B
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .end local v4           #len:I
    :catch_0
    move-exception v1

    .line 98
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    const-string v5, "DoodleUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "copy file error : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 93
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #bt:[B
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #len:I
    :cond_5
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v3, v0, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static createFile(Ljava/io/File;)Z
    .locals 6
    .parameter "file"

    .prologue
    .line 105
    const/4 v2, 0x1

    .line 106
    .local v2, result:Z
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 107
    .local v1, parentFile:Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    .line 108
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 109
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 111
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 112
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 114
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 115
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 118
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return v2

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, e:Ljava/io/IOException;
    const-string v3, "DoodleUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "create file "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static createFile(Ljava/lang/String;)Z
    .locals 1
    .parameter "fileName"

    .prologue
    .line 129
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lzte/com/cn/cloudnotepad/skitch/utils/DoodleUtils;->createFile(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static getFileContent(Ljava/lang/String;)[B
    .locals 6
    .parameter "fileName"

    .prologue
    const/4 v3, 0x0

    .line 30
    invoke-static {p0}, Lzte/com/cn/cloudnotepad/skitch/utils/DoodleUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v1, v3

    .line 39
    :cond_0
    :goto_0
    return-object v1

    .line 33
    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v2, v4

    .line 34
    .local v2, len:I
    new-array v1, v2, [B

    .line 35
    .local v1, b:[B
    invoke-static {p0, v1}, Lzte/com/cn/cloudnotepad/skitch/utils/DoodleUtils;->readFromFile(Ljava/lang/String;[B)I

    move-result v0

    .line 36
    .local v0, actual_len:I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    move-object v1, v3

    .line 39
    goto :goto_0
.end method

.method private static getUniqueFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "suffixName"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 164
    .local v0, currTime:J
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, dateStr:Ljava/lang/String;
    const-string v4, "/mnt/sdcard/notepad/temp/"

    .line 167
    .local v4, tempDir:Ljava/lang/String;
    const-string v5, "%s_%s.jpg"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object p0, v6, v7

    aput-object v2, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 168
    .local v3, fileName:Ljava/lang/String;
    const-string v5, "%s/%s"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v4, v6, v7

    aput-object v3, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static isFileExist(Ljava/lang/String;)Z
    .locals 6
    .parameter "fileName"

    .prologue
    .line 45
    const/4 v2, 0x0

    .line 47
    .local v2, result:Z
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 52
    .end local v1           #file:Ljava/io/File;
    :goto_0
    return v2

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, e:Ljava/lang/SecurityException;
    const-string v3, "DoodleUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "file exist error : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static makeDoodleFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    const-string v0, "doodle"

    invoke-static {v0}, Lzte/com/cn/cloudnotepad/skitch/utils/DoodleUtils;->getUniqueFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makeHandWriteFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    const-string v0, "handwrite"

    invoke-static {v0}, Lzte/com/cn/cloudnotepad/skitch/utils/DoodleUtils;->getUniqueFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static messageDigest([B)[B
    .locals 9
    .parameter "buff"

    .prologue
    const/4 v5, 0x0

    .line 136
    :try_start_0
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 141
    .local v3, digester:Ljava/security/MessageDigest;
    const/16 v6, 0x2000

    new-array v2, v6, [B

    .line 143
    .local v2, bytes:[B
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 145
    .local v0, bais:Ljava/io/ByteArrayInputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v1

    .local v1, byteCount:I
    if-gtz v1, :cond_0

    .line 148
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 153
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v1           #byteCount:I
    .end local v2           #bytes:[B
    .end local v3           #digester:Ljava/security/MessageDigest;
    :goto_1
    return-object v5

    .line 137
    :catch_0
    move-exception v4

    .line 138
    .local v4, e:Ljava/security/NoSuchAlgorithmException;
    const-string v6, "DoodleUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "no MD5 algorithm , exception : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 146
    .end local v4           #e:Ljava/security/NoSuchAlgorithmException;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v1       #byteCount:I
    .restart local v2       #bytes:[B
    .restart local v3       #digester:Ljava/security/MessageDigest;
    :cond_0
    const/4 v6, 0x0

    :try_start_2
    invoke-virtual {v3, v2, v6, v1}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 149
    .end local v1           #byteCount:I
    :catch_1
    move-exception v4

    .line 150
    .local v4, e:Ljava/io/IOException;
    const-string v6, "DoodleUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "msgDigest read buffer error : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static readFromFile(Ljava/lang/String;[B)I
    .locals 6
    .parameter "fileName"
    .parameter "b"

    .prologue
    .line 58
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 59
    .local v1, fis:Ljava/io/FileInputStream;
    invoke-virtual {v1, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    .line 60
    .local v2, len:I
    const-string v3, "DoodleUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "read file len : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 68
    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v2           #len:I
    :goto_0
    return v2

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v3, "DoodleUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "the file "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not exist : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :goto_1
    const/4 v2, -0x1

    goto :goto_0

    .line 65
    :catch_1
    move-exception v0

    .line 66
    .local v0, e:Ljava/io/IOException;
    const-string v3, "DoodleUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IO error : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3
    .parameter "bitmap"
    .parameter "pictureName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 157
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, fos:Ljava/io/FileOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 159
    return-void
.end method

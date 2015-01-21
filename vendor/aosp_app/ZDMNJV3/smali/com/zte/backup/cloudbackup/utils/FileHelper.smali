.class public Lcom/zte/backup/cloudbackup/utils/FileHelper;
.super Ljava/lang/Object;
.source "FileHelper.java"


# static fields
.field private static final DEFAULT_FILEPATH:Ljava/lang/String; = "/data/data/com.zte.backup.cdsj/"


# instance fields
.field private FILESPATH:Ljava/lang/String;

.field private SDPATH:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/backup/cloudbackup/utils/FileHelper;->SDPATH:Ljava/lang/String;

    .line 42
    invoke-static {}, Lcom/zte/backup/common/PathInfo;->getFILESPATH()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/backup/cloudbackup/utils/FileHelper;->FILESPATH:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/backup/cloudbackup/utils/FileHelper;->SDPATH:Ljava/lang/String;

    .line 48
    invoke-static {}, Lcom/zte/backup/common/PathInfo;->getDataFullPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/backup/cloudbackup/utils/FileHelper;->FILESPATH:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public static copyDirToDir(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "srcPath"
    .parameter "dstPath"

    .prologue
    const/4 v4, 0x0

    .line 156
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    .local v3, in:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_1

    .line 179
    :cond_0
    :goto_0
    return v4

    .line 161
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 162
    .local v2, files:[Ljava/io/File;
    array-length v6, v2

    move v5, v4

    :goto_1
    if-lt v5, v6, :cond_2

    .line 179
    const/4 v4, 0x1

    goto :goto_0

    .line 162
    :cond_2
    aget-object v1, v2, v5

    .line 163
    .local v1, file:Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, curDstPath:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 165
    invoke-static {v0}, Lcom/zte/backup/common/CommonFunctions;->mkSdDir(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 169
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/zte/backup/cloudbackup/utils/FileHelper;->copyDirToDir(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 162
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 172
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 173
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/zte/backup/cloudbackup/utils/FileHelper;->copyFileToFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_0
.end method

.method public static copyFileToFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "srcPath"
    .parameter "dstPath"

    .prologue
    const/4 v9, 0x0

    .line 183
    const/4 v3, 0x0

    .line 184
    .local v3, fis:Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 187
    .local v5, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    .local v8, src:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    .local v1, dst:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v8}, Ljava/io/File;->isFile()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9

    move-result v10

    if-nez v10, :cond_3

    .line 214
    :cond_0
    if-eqz v5, :cond_1

    .line 216
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 222
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 224
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 232
    .end local v1           #dst:Ljava/io/File;
    .end local v8           #src:Ljava/io/File;
    :cond_2
    :goto_1
    return v9

    .line 218
    .restart local v1       #dst:Ljava/io/File;
    .restart local v8       #src:Ljava/io/File;
    :catch_0
    move-exception v2

    .line 219
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 226
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 227
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 200
    .end local v2           #e:Ljava/io/IOException;
    :cond_3
    :try_start_3
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9

    .line 201
    .end local v3           #fis:Ljava/io/FileInputStream;
    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_4
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a

    .line 202
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .local v6, fos:Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    .line 203
    .local v7, readLen:I
    const/16 v10, 0x400

    :try_start_5
    new-array v0, v10, [B

    .line 204
    .local v0, buf:[B
    :goto_2
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    const/4 v10, -0x1

    if-ne v7, v10, :cond_6

    .line 207
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 214
    if-eqz v6, :cond_4

    .line 216
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 222
    :cond_4
    :goto_3
    if-eqz v4, :cond_5

    .line 224
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    .line 232
    :cond_5
    :goto_4
    const/4 v9, 0x1

    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_1

    .line 205
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :cond_6
    const/4 v10, 0x0

    :try_start_8
    invoke-virtual {v6, v0, v10, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_2

    .line 209
    .end local v0           #buf:[B
    :catch_2
    move-exception v2

    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 210
    .end local v1           #dst:Ljava/io/File;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v7           #readLen:I
    .end local v8           #src:Ljava/io/File;
    .local v2, e:Ljava/lang/Exception;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :goto_5
    :try_start_9
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 214
    if-eqz v5, :cond_7

    .line 216
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 222
    .end local v2           #e:Ljava/lang/Exception;
    :cond_7
    :goto_6
    if-eqz v3, :cond_2

    .line 224
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_1

    .line 226
    :catch_3
    move-exception v2

    .line 227
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 218
    .local v2, e:Ljava/lang/Exception;
    :catch_4
    move-exception v2

    .line 219
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 213
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 214
    :goto_7
    if-eqz v5, :cond_8

    .line 216
    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    .line 222
    :cond_8
    :goto_8
    if-eqz v3, :cond_9

    .line 224
    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    .line 230
    :cond_9
    :goto_9
    throw v9

    .line 218
    :catch_5
    move-exception v2

    .line 219
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 226
    .end local v2           #e:Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 227
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 218
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #buf:[B
    .restart local v1       #dst:Ljava/io/File;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    .restart local v7       #readLen:I
    .restart local v8       #src:Ljava/io/File;
    :catch_7
    move-exception v2

    .line 219
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 226
    .end local v2           #e:Ljava/io/IOException;
    :catch_8
    move-exception v2

    .line 227
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 213
    .end local v0           #buf:[B
    .end local v2           #e:Ljava/io/IOException;
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .end local v7           #readLen:I
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_7

    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    .restart local v7       #readLen:I
    :catchall_2
    move-exception v9

    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_7

    .line 209
    .end local v1           #dst:Ljava/io/File;
    .end local v7           #readLen:I
    .end local v8           #src:Ljava/io/File;
    :catch_9
    move-exception v2

    goto :goto_5

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v1       #dst:Ljava/io/File;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    .restart local v8       #src:Ljava/io/File;
    :catch_a
    move-exception v2

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_5
.end method

.method private delDir(Ljava/io/File;)Z
    .locals 8
    .parameter "dir"

    .prologue
    const/4 v3, 0x0

    .line 119
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v3

    .line 122
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    :goto_1
    if-lt v3, v5, :cond_2

    .line 130
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v1

    .line 131
    .local v1, dirDelRet:Z
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "dir.delete result ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/backup/common/Logging;->i(Ljava/lang/String;)V

    .line 132
    const/4 v3, 0x1

    goto :goto_0

    .line 122
    .end local v1           #dirDelRet:Z
    :cond_2
    aget-object v2, v4, v3

    .line 123
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 124
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    .line 125
    .local v0, bRet:Z
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "delete result ="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zte/backup/common/Logging;->i(Ljava/lang/String;)V

    .line 122
    .end local v0           #bRet:Z
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 126
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 127
    invoke-direct {p0, v2}, Lcom/zte/backup/cloudbackup/utils/FileHelper;->delDir(Ljava/io/File;)Z

    goto :goto_2
.end method

.method public static getDefaultFilepath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string v0, "/data/data/com.zte.backup.cdsj/"

    return-object v0
.end method

.method public static getFileReader(Ljava/lang/String;)Ljava/io/BufferedReader;
    .locals 6
    .parameter "fileNmae"

    .prologue
    const/4 v4, 0x0

    .line 137
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    move-object v3, v4

    .line 152
    :goto_0
    return-object v3

    .line 142
    :cond_0
    const/4 v3, 0x0

    .line 144
    .local v3, reader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 145
    .local v2, fis:Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/BufferedReader;

    .end local v3           #reader:Ljava/io/BufferedReader;
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_0

    .line 147
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v3           #reader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zte/backup/common/Logging;->e(Ljava/lang/String;)V

    move-object v3, v4

    .line 149
    goto :goto_0
.end method

.method public static writeInputStreamToFile(Ljava/io/InputStream;Ljava/lang/String;)Z
    .locals 8
    .parameter "in"
    .parameter "dstPath"

    .prologue
    const/4 v6, 0x0

    .line 236
    const/4 v3, 0x0

    .line 239
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 247
    .local v1, dst:Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 248
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .local v4, fos:Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 249
    .local v5, readLen:I
    const/16 v7, 0x400

    :try_start_1
    new-array v0, v7, [B

    .line 250
    .local v0, buf:[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v7, -0x1

    if-ne v5, v7, :cond_2

    .line 253
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 260
    if-eqz v4, :cond_0

    .line 262
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 270
    :cond_0
    :goto_1
    const/4 v6, 0x1

    move-object v3, v4

    .end local v0           #buf:[B
    .end local v1           #dst:Ljava/io/File;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .end local v5           #readLen:I
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :cond_1
    :goto_2
    return v6

    .line 251
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #buf:[B
    .restart local v1       #dst:Ljava/io/File;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    .restart local v5       #readLen:I
    :cond_2
    const/4 v7, 0x0

    :try_start_3
    invoke-virtual {v4, v0, v7, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 255
    .end local v0           #buf:[B
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 256
    .end local v1           #dst:Ljava/io/File;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .end local v5           #readLen:I
    .local v2, e:Ljava/lang/Exception;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :goto_3
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 260
    if-eqz v3, :cond_1

    .line 262
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 264
    :catch_1
    move-exception v2

    .line 265
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 259
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 260
    :goto_4
    if-eqz v3, :cond_3

    .line 262
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 268
    :cond_3
    :goto_5
    throw v6

    .line 264
    :catch_2
    move-exception v2

    .line 265
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 264
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #buf:[B
    .restart local v1       #dst:Ljava/io/File;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    .restart local v5       #readLen:I
    :catch_3
    move-exception v2

    .line 265
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 259
    .end local v0           #buf:[B
    .end local v2           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 255
    .end local v1           #dst:Ljava/io/File;
    .end local v5           #readLen:I
    :catch_4
    move-exception v2

    goto :goto_3
.end method


# virtual methods
.method public creatDir(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .parameter "dirName"

    .prologue
    .line 105
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .local v1, dir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 107
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 108
    .local v0, bMkdirs:Z
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bMkdirs:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/backup/common/Logging;->i(Ljava/lang/String;)V

    .line 110
    .end local v0           #bMkdirs:Z
    :cond_0
    return-object v1
.end method

.method public creatFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v0

    .line 88
    .local v0, bRet:Z
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "createNewFile result ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/backup/common/Logging;->i(Ljava/lang/String;)V

    .line 89
    return-object v1
.end method

.method public delDir(Ljava/lang/String;)Z
    .locals 2
    .parameter "dirName"

    .prologue
    .line 114
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, dir:Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/zte/backup/cloudbackup/utils/FileHelper;->delDir(Ljava/io/File;)Z

    move-result v1

    return v1
.end method

.method public delFile(Ljava/lang/String;)Z
    .locals 4
    .parameter "fileName"

    .prologue
    const/4 v2, 0x0

    .line 93
    if-nez p1, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v2

    .line 96
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .local v1, file:Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    .line 99
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 100
    .local v0, bDel:Z
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bDel:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/backup/common/Logging;->i(Ljava/lang/String;)V

    .line 101
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getAppPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/zte/backup/cloudbackup/utils/FileHelper;->FILESPATH:Ljava/lang/String;

    return-object v0
.end method

.method public getSDPATH()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zte/backup/cloudbackup/utils/FileHelper;->SDPATH:Ljava/lang/String;

    return-object v0
.end method

.method public writeStrToFile(Ljava/io/File;Ljava/lang/String;Z)Z
    .locals 8
    .parameter "file"
    .parameter "content"
    .parameter "append"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    const/4 v2, 0x0

    .line 53
    .local v2, fOut:Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 54
    .local v5, ow:Ljava/io/OutputStreamWriter;
    const/4 v4, 0x0

    .line 56
    .local v4, flag:Z
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 57
    :cond_0
    const/4 v7, 0x0

    .line 82
    :goto_0
    return v7

    .line 61
    :cond_1
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 62
    .end local v2           #fOut:Ljava/io/FileOutputStream;
    .local v3, fOut:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 63
    .end local v5           #ow:Ljava/io/OutputStreamWriter;
    .local v6, ow:Ljava/io/OutputStreamWriter;
    :try_start_2
    invoke-virtual {v6, p2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 65
    const/4 v4, 0x1

    .line 74
    if-eqz v6, :cond_2

    .line 75
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V

    .line 77
    :cond_2
    if-eqz v3, :cond_3

    .line 78
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_3
    move-object v5, v6

    .end local v6           #ow:Ljava/io/OutputStreamWriter;
    .restart local v5       #ow:Ljava/io/OutputStreamWriter;
    move-object v2, v3

    .end local v3           #fOut:Ljava/io/FileOutputStream;
    .restart local v2       #fOut:Ljava/io/FileOutputStream;
    move v7, v4

    .line 82
    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, e1:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 73
    .end local v0           #e1:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v7

    .line 74
    :goto_2
    if-eqz v5, :cond_4

    .line 75
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V

    .line 77
    :cond_4
    if-eqz v2, :cond_5

    .line 78
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 80
    :cond_5
    throw v7

    .line 70
    :catch_1
    move-exception v1

    .line 71
    .local v1, e2:Ljava/io/IOException;
    :goto_3
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 73
    .end local v1           #e2:Ljava/io/IOException;
    .end local v2           #fOut:Ljava/io/FileOutputStream;
    .restart local v3       #fOut:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3           #fOut:Ljava/io/FileOutputStream;
    .restart local v2       #fOut:Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v2           #fOut:Ljava/io/FileOutputStream;
    .end local v5           #ow:Ljava/io/OutputStreamWriter;
    .restart local v3       #fOut:Ljava/io/FileOutputStream;
    .restart local v6       #ow:Ljava/io/OutputStreamWriter;
    :catchall_2
    move-exception v7

    move-object v5, v6

    .end local v6           #ow:Ljava/io/OutputStreamWriter;
    .restart local v5       #ow:Ljava/io/OutputStreamWriter;
    move-object v2, v3

    .end local v3           #fOut:Ljava/io/FileOutputStream;
    .restart local v2       #fOut:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 70
    .end local v2           #fOut:Ljava/io/FileOutputStream;
    .restart local v3       #fOut:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v1

    move-object v2, v3

    .end local v3           #fOut:Ljava/io/FileOutputStream;
    .restart local v2       #fOut:Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v2           #fOut:Ljava/io/FileOutputStream;
    .end local v5           #ow:Ljava/io/OutputStreamWriter;
    .restart local v3       #fOut:Ljava/io/FileOutputStream;
    .restart local v6       #ow:Ljava/io/OutputStreamWriter;
    :catch_3
    move-exception v1

    move-object v5, v6

    .end local v6           #ow:Ljava/io/OutputStreamWriter;
    .restart local v5       #ow:Ljava/io/OutputStreamWriter;
    move-object v2, v3

    .end local v3           #fOut:Ljava/io/FileOutputStream;
    .restart local v2       #fOut:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 67
    .end local v2           #fOut:Ljava/io/FileOutputStream;
    .restart local v3       #fOut:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3           #fOut:Ljava/io/FileOutputStream;
    .restart local v2       #fOut:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v2           #fOut:Ljava/io/FileOutputStream;
    .end local v5           #ow:Ljava/io/OutputStreamWriter;
    .restart local v3       #fOut:Ljava/io/FileOutputStream;
    .restart local v6       #ow:Ljava/io/OutputStreamWriter;
    :catch_5
    move-exception v0

    move-object v5, v6

    .end local v6           #ow:Ljava/io/OutputStreamWriter;
    .restart local v5       #ow:Ljava/io/OutputStreamWriter;
    move-object v2, v3

    .end local v3           #fOut:Ljava/io/FileOutputStream;
    .restart local v2       #fOut:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

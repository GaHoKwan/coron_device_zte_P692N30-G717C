.class public Lcom/zte/zdmdaemon/util/FileManager;
.super Ljava/lang/Object;
.source "FileManager.java"


# static fields
.field private static FOTADir:Ljava/io/File;

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Ljava/io/File;

    const-string v1, "/cache/fota"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zte/zdmdaemon/util/FileManager;->FOTADir:Ljava/io/File;

    .line 18
    const-string v0, "FileManager."

    sput-object v0, Lcom/zte/zdmdaemon/util/FileManager;->TAG:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .parameter "srcFileName"
    .parameter "destFileName"

    .prologue
    const/4 v9, 0x0

    .line 27
    const/4 v3, 0x0

    .line 28
    .local v3, fis:Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 30
    .local v5, fos:Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    .line 31
    .local v7, i:I
    const/16 v10, 0x400

    :try_start_0
    new-array v0, v10, [B

    .line 32
    .local v0, buf:[B
    sget-object v10, Lcom/zte/zdmdaemon/util/FileManager;->FOTADir:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    sget-object v10, Lcom/zte/zdmdaemon/util/FileManager;->FOTADir:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 33
    sget-object v10, Lcom/zte/zdmdaemon/util/FileManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "FOTADir "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Lcom/zte/zdmdaemon/util/FileManager;->FOTADir:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "not exists"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .end local v0           #buf:[B
    :cond_0
    :goto_0
    return v9

    .line 36
    .restart local v0       #buf:[B
    :cond_1
    invoke-static {p1}, Lcom/zte/zdmdaemon/util/FileManager;->deleteFile(Ljava/lang/String;)V

    .line 37
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    .local v8, saveFile:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    .line 39
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 40
    .end local v3           #fis:Ljava/io/FileInputStream;
    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 42
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .local v6, fos:Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    const/4 v10, -0x1

    if-ne v7, v10, :cond_2

    .line 46
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 47
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 48
    const-string v10, "sync"

    invoke-static {v10}, Lcom/zte/zdmdaemon/util/AndroidCMD;->runCMD(Ljava/lang/String;)V

    .line 49
    const/4 v9, 0x1

    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_0

    .line 43
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :cond_2
    const/4 v10, 0x0

    invoke-virtual {v6, v0, v10, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 51
    :catch_0
    move-exception v1

    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 52
    .end local v0           #buf:[B
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v8           #saveFile:Ljava/io/File;
    .local v1, e:Ljava/lang/Exception;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :goto_2
    sget-object v10, Lcom/zte/zdmdaemon/util/FileManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "GOTA.copyUpdateFile() Exception : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 54
    if-eqz v3, :cond_3

    .line 56
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 63
    :cond_3
    :goto_3
    if-eqz v5, :cond_0

    .line 65
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 67
    :catch_1
    move-exception v2

    .line 69
    .local v2, e1:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 58
    .end local v2           #e1:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 60
    .restart local v2       #e1:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 51
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #e1:Ljava/io/IOException;
    :catch_3
    move-exception v1

    goto :goto_2

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v0       #buf:[B
    .restart local v4       #fis:Ljava/io/FileInputStream;
    .restart local v8       #saveFile:Ljava/io/File;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static deleteFile(Ljava/lang/String;)V
    .locals 5
    .parameter "fileName"

    .prologue
    .line 77
    sget-object v2, Lcom/zte/zdmdaemon/util/FileManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MyFile deleteFile fileName : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    .local v1, fl:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    sget-object v2, Lcom/zte/zdmdaemon/util/FileManager;->TAG:Ljava/lang/String;

    const-string v3, "MyFile deleteFile file exist. Delete it"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 92
    .end local v1           #fl:Ljava/io/File;
    :goto_0
    return-void

    .line 86
    .restart local v1       #fl:Ljava/io/File;
    :cond_0
    sget-object v2, Lcom/zte/zdmdaemon/util/FileManager;->TAG:Ljava/lang/String;

    const-string v3, "MyFile deleteFile file none-exist"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    .end local v1           #fl:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 90
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/zte/zdmdaemon/util/FileManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MyFile deleteFile IOException : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

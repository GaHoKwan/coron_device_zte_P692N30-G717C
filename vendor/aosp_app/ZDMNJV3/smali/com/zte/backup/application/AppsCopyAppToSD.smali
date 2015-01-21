.class public Lcom/zte/backup/application/AppsCopyAppToSD;
.super Ljava/lang/Object;
.source "AppsCopyAppToSD.java"


# instance fields
.field private readFile:Ljava/io/File;

.field private writeFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/zte/backup/application/AppsCopyAppToSD;->readFile:Ljava/io/File;

    .line 13
    iput-object v0, p0, Lcom/zte/backup/application/AppsCopyAppToSD;->writeFile:Ljava/io/File;

    .line 10
    return-void
.end method

.method private createBackedUpDirAndFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "apkSourceDir"
    .parameter "desPath"
    .parameter "desFileName"

    .prologue
    .line 16
    const/4 v6, 0x1

    .line 17
    .local v6, result:Z
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/zte/backup/application/AppsCopyAppToSD;->readFile:Ljava/io/File;

    .line 18
    iget-object v7, p0, Lcom/zte/backup/application/AppsCopyAppToSD;->readFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 19
    const/4 v7, 0x0

    .line 41
    :goto_0
    return v7

    .line 21
    :cond_0
    move-object v5, p2

    .line 22
    .local v5, pathName:Ljava/lang/String;
    move-object v3, p3

    .line 23
    .local v3, fileName:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    .local v4, path:Ljava/io/File;
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/zte/backup/application/AppsCopyAppToSD;->writeFile:Ljava/io/File;

    .line 27
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 28
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    move-result v1

    .line 29
    .local v1, bRet:Z
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Create the path:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "result is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/zte/backup/common/Logging;->d(Ljava/lang/String;)V

    .line 31
    .end local v1           #bRet:Z
    :cond_1
    iget-object v7, p0, Lcom/zte/backup/application/AppsCopyAppToSD;->writeFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 32
    iget-object v7, p0, Lcom/zte/backup/application/AppsCopyAppToSD;->writeFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    move-result v0

    .line 33
    .local v0, bCreateFile:Z
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Create the path:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "result is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/zte/backup/common/Logging;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #bCreateFile:Z
    :cond_2
    :goto_1
    move v7, v6

    .line 41
    goto :goto_0

    .line 36
    :catch_0
    move-exception v2

    .line 37
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 38
    const/4 v6, 0x0

    goto :goto_1
.end method


# virtual methods
.method public copy1App2SD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "apkSourceDir"
    .parameter "desPath"
    .parameter "desFileName"

    .prologue
    const/4 v9, 0x0

    .line 45
    const/4 v6, 0x0

    .line 46
    .local v6, result:Z
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v9

    .line 49
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/zte/backup/application/AppsCopyAppToSD;->createBackedUpDirAndFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 50
    if-eqz v6, :cond_0

    .line 54
    const/4 v4, 0x0

    .line 55
    .local v4, readStream:Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 57
    .local v7, writeStream:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    iget-object v9, p0, Lcom/zte/backup/application/AppsCopyAppToSD;->readFile:Ljava/io/File;

    invoke-direct {v5, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 58
    .end local v4           #readStream:Ljava/io/FileInputStream;
    .local v5, readStream:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;

    iget-object v9, p0, Lcom/zte/backup/application/AppsCopyAppToSD;->writeFile:Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 60
    .end local v7           #writeStream:Ljava/io/FileOutputStream;
    .local v8, writeStream:Ljava/io/FileOutputStream;
    const/16 v9, 0x1400

    :try_start_2
    new-array v0, v9, [B

    .line 61
    .local v0, buff:[B
    const/4 v3, 0x0

    .line 62
    .local v3, len:I
    :goto_1
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v9, -0x1

    if-gt v3, v9, :cond_4

    .line 66
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 67
    const/4 v6, 0x1

    .line 75
    if-eqz v5, :cond_2

    .line 76
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 78
    :cond_2
    if-eqz v8, :cond_8

    .line 79
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v7, v8

    .end local v8           #writeStream:Ljava/io/FileOutputStream;
    .restart local v7       #writeStream:Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v0           #buff:[B
    .end local v3           #len:I
    .end local v5           #readStream:Ljava/io/FileInputStream;
    .restart local v4       #readStream:Ljava/io/FileInputStream;
    :cond_3
    :goto_2
    move v9, v6

    .line 87
    goto :goto_0

    .line 63
    .end local v4           #readStream:Ljava/io/FileInputStream;
    .end local v7           #writeStream:Ljava/io/FileOutputStream;
    .restart local v0       #buff:[B
    .restart local v3       #len:I
    .restart local v5       #readStream:Ljava/io/FileInputStream;
    .restart local v8       #writeStream:Ljava/io/FileOutputStream;
    :cond_4
    const/4 v9, 0x0

    :try_start_4
    invoke-virtual {v8, v0, v9, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 69
    .end local v0           #buff:[B
    .end local v3           #len:I
    :catch_0
    move-exception v1

    move-object v7, v8

    .end local v8           #writeStream:Ljava/io/FileOutputStream;
    .restart local v7       #writeStream:Ljava/io/FileOutputStream;
    move-object v4, v5

    .line 70
    .end local v5           #readStream:Ljava/io/FileInputStream;
    .local v1, e:Ljava/lang/Exception;
    .restart local v4       #readStream:Ljava/io/FileInputStream;
    :goto_3
    const/4 v6, 0x0

    .line 71
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 75
    if-eqz v4, :cond_5

    .line 76
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 78
    :cond_5
    if-eqz v7, :cond_3

    .line 79
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 82
    :catch_1
    move-exception v2

    .line 83
    .local v2, ioErr:Ljava/io/IOException;
    const/4 v6, 0x0

    goto :goto_2

    .line 73
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #ioErr:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 75
    :goto_4
    if-eqz v4, :cond_6

    .line 76
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 78
    :cond_6
    if-eqz v7, :cond_7

    .line 79
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 85
    :cond_7
    :goto_5
    throw v9

    .line 82
    :catch_2
    move-exception v2

    .line 83
    .restart local v2       #ioErr:Ljava/io/IOException;
    const/4 v6, 0x0

    goto :goto_5

    .line 82
    .end local v2           #ioErr:Ljava/io/IOException;
    .end local v4           #readStream:Ljava/io/FileInputStream;
    .end local v7           #writeStream:Ljava/io/FileOutputStream;
    .restart local v0       #buff:[B
    .restart local v3       #len:I
    .restart local v5       #readStream:Ljava/io/FileInputStream;
    .restart local v8       #writeStream:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v2

    .line 83
    .restart local v2       #ioErr:Ljava/io/IOException;
    const/4 v6, 0x0

    move-object v7, v8

    .end local v8           #writeStream:Ljava/io/FileOutputStream;
    .restart local v7       #writeStream:Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5           #readStream:Ljava/io/FileInputStream;
    .restart local v4       #readStream:Ljava/io/FileInputStream;
    goto :goto_2

    .line 73
    .end local v0           #buff:[B
    .end local v2           #ioErr:Ljava/io/IOException;
    .end local v3           #len:I
    .end local v4           #readStream:Ljava/io/FileInputStream;
    .restart local v5       #readStream:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5           #readStream:Ljava/io/FileInputStream;
    .restart local v4       #readStream:Ljava/io/FileInputStream;
    goto :goto_4

    .end local v4           #readStream:Ljava/io/FileInputStream;
    .end local v7           #writeStream:Ljava/io/FileOutputStream;
    .restart local v5       #readStream:Ljava/io/FileInputStream;
    .restart local v8       #writeStream:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v9

    move-object v7, v8

    .end local v8           #writeStream:Ljava/io/FileOutputStream;
    .restart local v7       #writeStream:Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5           #readStream:Ljava/io/FileInputStream;
    .restart local v4       #readStream:Ljava/io/FileInputStream;
    goto :goto_4

    .line 69
    :catch_4
    move-exception v1

    goto :goto_3

    .end local v4           #readStream:Ljava/io/FileInputStream;
    .restart local v5       #readStream:Ljava/io/FileInputStream;
    :catch_5
    move-exception v1

    move-object v4, v5

    .end local v5           #readStream:Ljava/io/FileInputStream;
    .restart local v4       #readStream:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v4           #readStream:Ljava/io/FileInputStream;
    .end local v7           #writeStream:Ljava/io/FileOutputStream;
    .restart local v0       #buff:[B
    .restart local v3       #len:I
    .restart local v5       #readStream:Ljava/io/FileInputStream;
    .restart local v8       #writeStream:Ljava/io/FileOutputStream;
    :cond_8
    move-object v7, v8

    .end local v8           #writeStream:Ljava/io/FileOutputStream;
    .restart local v7       #writeStream:Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5           #readStream:Ljava/io/FileInputStream;
    .restart local v4       #readStream:Ljava/io/FileInputStream;
    goto :goto_2
.end method

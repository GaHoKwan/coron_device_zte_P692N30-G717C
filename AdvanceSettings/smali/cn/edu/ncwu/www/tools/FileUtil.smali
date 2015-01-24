.class public Lcn/edu/ncwu/www/tools/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fileExists(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 15
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static fileWritable(Ljava/lang/String;)Z
    .locals 1
    .parameter "file"

    .prologue
    .line 20
    invoke-static {p0}, Lcn/edu/ncwu/www/tools/FileUtil;->fileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getFileValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "file"
    .parameter "defaultString"

    .prologue
    .line 51
    invoke-static {p0}, Lcn/edu/ncwu/www/tools/FileUtil;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 54
    .end local v0           #str:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #str:Ljava/lang/String;
    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public static getFileValueAsBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .parameter "file"
    .parameter "bool"

    .prologue
    .line 59
    invoke-static {p0}, Lcn/edu/ncwu/www/tools/FileUtil;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 61
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 62
    :goto_0
    return v1

    .line 61
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, p1

    .line 62
    goto :goto_0
.end method

.method public static isFileExists(Ljava/lang/String;)Z
    .locals 1
    .parameter "file"

    .prologue
    .line 25
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static readLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "name"

    .prologue
    .line 66
    const/4 v3, 0x0

    .line 67
    .local v3, tmp:Ljava/lang/String;
    const/4 v0, 0x0

    .line 70
    .local v0, bf:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 71
    .end local v0           #bf:Ljava/io/BufferedReader;
    .local v1, bf:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v3

    .line 79
    if-eqz v1, :cond_2

    .line 81
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    move-object v0, v1

    .line 87
    .end local v1           #bf:Ljava/io/BufferedReader;
    .restart local v0       #bf:Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    return-object v3

    .line 72
    :catch_0
    move-exception v2

    .line 74
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 79
    if-eqz v0, :cond_0

    .line 81
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 82
    :catch_1
    move-exception v2

    .line 84
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 75
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 77
    .restart local v2       #e:Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 79
    if-eqz v0, :cond_0

    .line 81
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 82
    :catch_3
    move-exception v2

    .line 84
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 78
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 79
    :goto_3
    if-eqz v0, :cond_1

    .line 81
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 86
    :cond_1
    :goto_4
    throw v4

    .line 82
    :catch_4
    move-exception v2

    .line 84
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 82
    .end local v0           #bf:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #bf:Ljava/io/BufferedReader;
    :catch_5
    move-exception v2

    .line 84
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2           #e:Ljava/io/IOException;
    :cond_2
    move-object v0, v1

    .end local v1           #bf:Ljava/io/BufferedReader;
    .restart local v0       #bf:Ljava/io/BufferedReader;
    goto :goto_0

    .line 78
    .end local v0           #bf:Ljava/io/BufferedReader;
    .restart local v1       #bf:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1           #bf:Ljava/io/BufferedReader;
    .restart local v0       #bf:Ljava/io/BufferedReader;
    goto :goto_3

    .line 75
    .end local v0           #bf:Ljava/io/BufferedReader;
    .restart local v1       #bf:Ljava/io/BufferedReader;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1           #bf:Ljava/io/BufferedReader;
    .restart local v0       #bf:Ljava/io/BufferedReader;
    goto :goto_2

    .line 72
    .end local v0           #bf:Ljava/io/BufferedReader;
    .restart local v1       #bf:Ljava/io/BufferedReader;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1           #bf:Ljava/io/BufferedReader;
    .restart local v0       #bf:Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method public static writeValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "file"
    .parameter "value"

    .prologue
    .line 34
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 35
    .local v1, localFileOutputStream:Ljava/io/FileOutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 36
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 37
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    .end local v1           #localFileOutputStream:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 41
    .local v0, localFileNotFoundException:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 43
    .end local v0           #localFileNotFoundException:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 45
    .local v2, localIOException:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

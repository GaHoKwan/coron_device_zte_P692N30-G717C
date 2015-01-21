.class public Lcn/com/zte/nlt/utils/Zip;
.super Ljava/lang/Object;
.source "Zip.java"


# static fields
.field private static final BUFFEREDSIZE:I = 0x400

.field private static final TAG:Ljava/lang/String; = "ZIP"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private unzipDir(Ljava/io/File;Ljava/util/zip/ZipEntry;)V
    .locals 5
    .parameter "outFile"
    .parameter "zipEntry"

    .prologue
    .line 216
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, dirName:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 219
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 220
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 221
    .local v0, bRet:Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mkdirs result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/com/zte/yp/utils/Logging;->d(Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method private unzipFile(Ljava/io/File;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)V
    .locals 9
    .parameter "outFile"
    .parameter "zipFile"
    .parameter "zipEntry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 225
    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    .local v4, f:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v0

    .line 227
    .local v0, bRet:Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createNewFile result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcn/com/zte/yp/utils/Logging;->d(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p2, p3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    .line 229
    .local v5, in:Ljava/io/InputStream;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 232
    .local v6, out:Ljava/io/FileOutputStream;
    const/16 v7, 0x400

    :try_start_0
    new-array v1, v7, [B

    .line 233
    .local v1, by:[B
    :goto_0
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, c:I
    const/4 v7, -0x1

    if-eq v2, v7, :cond_0

    .line 234
    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 237
    .end local v1           #by:[B
    .end local v2           #c:I
    :catch_0
    move-exception v3

    .line 238
    .local v3, e:Ljava/io/IOException;
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 242
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    throw v7

    .line 241
    .restart local v1       #by:[B
    .restart local v2       #c:I
    :cond_0
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 242
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 244
    return-void
.end method

.method private declared-synchronized zip(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V
    .locals 9
    .parameter "inputFile"
    .parameter "out"
    .parameter "base"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 157
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 158
    .local v5, inputFiles:[Ljava/io/File;
    new-instance v6, Ljava/util/zip/ZipEntry;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 159
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    const-string p3, ""

    .line 160
    :goto_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v6, v5

    if-ge v3, v6, :cond_4

    .line 161
    aget-object v6, v5, v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v5, v3

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, p2, v7}, Lcn/com/zte/nlt/utils/Zip;->zip(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V

    .line 160
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 159
    .end local v3           #i:I
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 165
    .end local v5           #inputFiles:[Ljava/io/File;
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 166
    new-instance v6, Ljava/util/zip/ZipEntry;

    invoke-direct {v6, p3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 171
    :goto_2
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 174
    .local v4, in:Ljava/io/FileInputStream;
    const/16 v6, 0x400

    :try_start_1
    new-array v0, v6, [B

    .line 175
    .local v0, by:[B
    :goto_3
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .local v1, c:I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_3

    .line 176
    const/4 v6, 0x0

    invoke-virtual {p2, v0, v6, v1}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 178
    .end local v0           #by:[B
    .end local v1           #c:I
    :catch_0
    move-exception v2

    .line 179
    .local v2, e:Ljava/io/IOException;
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 182
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 156
    .end local v4           #in:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    monitor-exit p0

    throw v6

    .line 168
    :cond_2
    :try_start_4
    new-instance v6, Ljava/util/zip/ZipEntry;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    goto :goto_2

    .line 182
    .restart local v0       #by:[B
    .restart local v1       #c:I
    .restart local v4       #in:Ljava/io/FileInputStream;
    :cond_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 185
    .end local v0           #by:[B
    .end local v1           #c:I
    .end local v4           #in:Ljava/io/FileInputStream;
    :cond_4
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public final compress(Ljava/lang/String;)[B
    .locals 9
    .parameter "str"

    .prologue
    .line 25
    if-nez p1, :cond_1

    .line 26
    const/4 v0, 0x0

    .line 59
    :cond_0
    :goto_0
    return-object v0

    .line 29
    :cond_1
    const/4 v2, 0x0

    .line 30
    .local v2, out:Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 33
    .local v4, zout:Ljava/util/zip/ZipOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 34
    .end local v2           #out:Ljava/io/ByteArrayOutputStream;
    .local v3, out:Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v5, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v5, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 35
    .end local v4           #zout:Ljava/util/zip/ZipOutputStream;
    .local v5, zout:Ljava/util/zip/ZipOutputStream;
    :try_start_2
    new-instance v6, Ljava/util/zip/ZipEntry;

    const-string v7, "0"

    invoke-direct {v6, v7}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 36
    const-string v6, "utf-8"

    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 37
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 38
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    move-result-object v0

    .line 43
    .local v0, compressed:[B
    if-eqz v5, :cond_2

    .line 45
    :try_start_3
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 50
    :cond_2
    :goto_1
    if-eqz v3, :cond_6

    .line 52
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v4, v5

    .end local v5           #zout:Ljava/util/zip/ZipOutputStream;
    .restart local v4       #zout:Ljava/util/zip/ZipOutputStream;
    move-object v2, v3

    .line 55
    .end local v3           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #out:Ljava/io/ByteArrayOutputStream;
    goto :goto_0

    .line 46
    .end local v2           #out:Ljava/io/ByteArrayOutputStream;
    .end local v4           #zout:Ljava/util/zip/ZipOutputStream;
    .restart local v3       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #zout:Ljava/util/zip/ZipOutputStream;
    :catch_0
    move-exception v1

    .line 47
    .local v1, e:Ljava/io/IOException;
    const-string v6, "ZIP"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 53
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 54
    .restart local v1       #e:Ljava/io/IOException;
    const-string v6, "ZIP"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .end local v5           #zout:Ljava/util/zip/ZipOutputStream;
    .restart local v4       #zout:Ljava/util/zip/ZipOutputStream;
    move-object v2, v3

    .line 55
    .end local v3           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #out:Ljava/io/ByteArrayOutputStream;
    goto :goto_0

    .line 39
    .end local v0           #compressed:[B
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 40
    .restart local v1       #e:Ljava/io/IOException;
    :goto_2
    const/4 v0, 0x0

    .line 43
    .restart local v0       #compressed:[B
    if-eqz v4, :cond_3

    .line 45
    :try_start_5
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 50
    :cond_3
    :goto_3
    if-eqz v2, :cond_0

    .line 52
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 53
    :catch_3
    move-exception v1

    .line 54
    const-string v6, "ZIP"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 46
    :catch_4
    move-exception v1

    .line 47
    const-string v6, "ZIP"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 43
    .end local v0           #compressed:[B
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v4, :cond_4

    .line 45
    :try_start_7
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 50
    :cond_4
    :goto_5
    if-eqz v2, :cond_5

    .line 52
    :try_start_8
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 55
    :cond_5
    :goto_6
    throw v6

    .line 46
    :catch_5
    move-exception v1

    .line 47
    .restart local v1       #e:Ljava/io/IOException;
    const-string v7, "ZIP"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 53
    .end local v1           #e:Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 54
    .restart local v1       #e:Ljava/io/IOException;
    const-string v7, "ZIP"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 43
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #out:Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #out:Ljava/io/ByteArrayOutputStream;
    goto :goto_4

    .end local v2           #out:Ljava/io/ByteArrayOutputStream;
    .end local v4           #zout:Ljava/util/zip/ZipOutputStream;
    .restart local v3       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #zout:Ljava/util/zip/ZipOutputStream;
    :catchall_2
    move-exception v6

    move-object v4, v5

    .end local v5           #zout:Ljava/util/zip/ZipOutputStream;
    .restart local v4       #zout:Ljava/util/zip/ZipOutputStream;
    move-object v2, v3

    .end local v3           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #out:Ljava/io/ByteArrayOutputStream;
    goto :goto_4

    .line 39
    .end local v2           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #out:Ljava/io/ByteArrayOutputStream;
    :catch_7
    move-exception v1

    move-object v2, v3

    .end local v3           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #out:Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .end local v2           #out:Ljava/io/ByteArrayOutputStream;
    .end local v4           #zout:Ljava/util/zip/ZipOutputStream;
    .restart local v3       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #zout:Ljava/util/zip/ZipOutputStream;
    :catch_8
    move-exception v1

    move-object v4, v5

    .end local v5           #zout:Ljava/util/zip/ZipOutputStream;
    .restart local v4       #zout:Ljava/util/zip/ZipOutputStream;
    move-object v2, v3

    .end local v3           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #out:Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .end local v2           #out:Ljava/io/ByteArrayOutputStream;
    .end local v4           #zout:Ljava/util/zip/ZipOutputStream;
    .restart local v0       #compressed:[B
    .restart local v3       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #zout:Ljava/util/zip/ZipOutputStream;
    :cond_6
    move-object v4, v5

    .end local v5           #zout:Ljava/util/zip/ZipOutputStream;
    .restart local v4       #zout:Ljava/util/zip/ZipOutputStream;
    move-object v2, v3

    .end local v3           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #out:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_0
.end method

.method public final compress([B)[B
    .locals 8
    .parameter "str"

    .prologue
    .line 63
    if-nez p1, :cond_1

    .line 64
    const/4 v0, 0x0

    .line 93
    :cond_0
    :goto_0
    return-object v0

    .line 67
    :cond_1
    const/4 v2, 0x0

    .line 68
    .local v2, out:Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 71
    .local v4, zout:Ljava/util/zip/ZipOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 72
    .end local v2           #out:Ljava/io/ByteArrayOutputStream;
    .local v3, out:Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v5, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v5, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 73
    .end local v4           #zout:Ljava/util/zip/ZipOutputStream;
    .local v5, zout:Ljava/util/zip/ZipOutputStream;
    :try_start_2
    new-instance v6, Ljava/util/zip/ZipEntry;

    const-string v7, "0"

    invoke-direct {v6, v7}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 74
    invoke-virtual {v5, p1}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 75
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 76
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    move-result-object v0

    .line 81
    .local v0, compressed:[B
    if-eqz v5, :cond_2

    .line 83
    :try_start_3
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 86
    :cond_2
    :goto_1
    if-eqz v3, :cond_6

    .line 88
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v4, v5

    .end local v5           #zout:Ljava/util/zip/ZipOutputStream;
    .restart local v4       #zout:Ljava/util/zip/ZipOutputStream;
    move-object v2, v3

    .line 89
    .end local v3           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #out:Ljava/io/ByteArrayOutputStream;
    goto :goto_0

    .end local v2           #out:Ljava/io/ByteArrayOutputStream;
    .end local v4           #zout:Ljava/util/zip/ZipOutputStream;
    .restart local v3       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #zout:Ljava/util/zip/ZipOutputStream;
    :catch_0
    move-exception v6

    move-object v4, v5

    .end local v5           #zout:Ljava/util/zip/ZipOutputStream;
    .restart local v4       #zout:Ljava/util/zip/ZipOutputStream;
    move-object v2, v3

    .end local v3           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #out:Ljava/io/ByteArrayOutputStream;
    goto :goto_0

    .line 77
    .end local v0           #compressed:[B
    :catch_1
    move-exception v1

    .line 78
    .local v1, e:Ljava/io/IOException;
    :goto_2
    const/4 v0, 0x0

    .line 81
    .restart local v0       #compressed:[B
    if-eqz v4, :cond_3

    .line 83
    :try_start_5
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 86
    :cond_3
    :goto_3
    if-eqz v2, :cond_0

    .line 88
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 89
    :catch_2
    move-exception v6

    goto :goto_0

    .line 81
    .end local v0           #compressed:[B
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v4, :cond_4

    .line 83
    :try_start_7
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 86
    :cond_4
    :goto_5
    if-eqz v2, :cond_5

    .line 88
    :try_start_8
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 89
    :cond_5
    :goto_6
    throw v6

    .line 84
    .end local v2           #out:Ljava/io/ByteArrayOutputStream;
    .end local v4           #zout:Ljava/util/zip/ZipOutputStream;
    .restart local v0       #compressed:[B
    .restart local v3       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #zout:Ljava/util/zip/ZipOutputStream;
    :catch_3
    move-exception v6

    goto :goto_1

    .end local v3           #out:Ljava/io/ByteArrayOutputStream;
    .end local v5           #zout:Ljava/util/zip/ZipOutputStream;
    .restart local v1       #e:Ljava/io/IOException;
    .restart local v2       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #zout:Ljava/util/zip/ZipOutputStream;
    :catch_4
    move-exception v6

    goto :goto_3

    .end local v0           #compressed:[B
    .end local v1           #e:Ljava/io/IOException;
    :catch_5
    move-exception v7

    goto :goto_5

    .line 89
    :catch_6
    move-exception v7

    goto :goto_6

    .line 81
    .end local v2           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #out:Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #out:Ljava/io/ByteArrayOutputStream;
    goto :goto_4

    .end local v2           #out:Ljava/io/ByteArrayOutputStream;
    .end local v4           #zout:Ljava/util/zip/ZipOutputStream;
    .restart local v3       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #zout:Ljava/util/zip/ZipOutputStream;
    :catchall_2
    move-exception v6

    move-object v4, v5

    .end local v5           #zout:Ljava/util/zip/ZipOutputStream;
    .restart local v4       #zout:Ljava/util/zip/ZipOutputStream;
    move-object v2, v3

    .end local v3           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #out:Ljava/io/ByteArrayOutputStream;
    goto :goto_4

    .line 77
    .end local v2           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #out:Ljava/io/ByteArrayOutputStream;
    :catch_7
    move-exception v1

    move-object v2, v3

    .end local v3           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #out:Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .end local v2           #out:Ljava/io/ByteArrayOutputStream;
    .end local v4           #zout:Ljava/util/zip/ZipOutputStream;
    .restart local v3       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #zout:Ljava/util/zip/ZipOutputStream;
    :catch_8
    move-exception v1

    move-object v4, v5

    .end local v5           #zout:Ljava/util/zip/ZipOutputStream;
    .restart local v4       #zout:Ljava/util/zip/ZipOutputStream;
    move-object v2, v3

    .end local v3           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #out:Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .end local v2           #out:Ljava/io/ByteArrayOutputStream;
    .end local v4           #zout:Ljava/util/zip/ZipOutputStream;
    .restart local v0       #compressed:[B
    .restart local v3       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #zout:Ljava/util/zip/ZipOutputStream;
    :cond_6
    move-object v4, v5

    .end local v5           #zout:Ljava/util/zip/ZipOutputStream;
    .restart local v4       #zout:Ljava/util/zip/ZipOutputStream;
    move-object v2, v3

    .end local v3           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #out:Ljava/io/ByteArrayOutputStream;
    goto :goto_0
.end method

.method public final decompress([B)Ljava/lang/String;
    .locals 12
    .parameter "compressed"

    .prologue
    .line 97
    if-nez p1, :cond_1

    .line 98
    const/4 v1, 0x0

    .line 136
    :cond_0
    :goto_0
    return-object v1

    .line 100
    :cond_1
    const/4 v6, 0x0

    .line 101
    .local v6, out:Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 102
    .local v3, in:Ljava/io/ByteArrayInputStream;
    const/4 v8, 0x0

    .line 105
    .local v8, zin:Ljava/util/zip/ZipInputStream;
    :try_start_0
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a

    .line 106
    .end local v6           #out:Ljava/io/ByteArrayOutputStream;
    .local v7, out:Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b

    .line 107
    .end local v3           #in:Ljava/io/ByteArrayInputStream;
    .local v4, in:Ljava/io/ByteArrayInputStream;
    :try_start_2
    new-instance v9, Ljava/util/zip/ZipInputStream;

    invoke-direct {v9, v4}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c

    .line 109
    .end local v8           #zin:Ljava/util/zip/ZipInputStream;
    .local v9, zin:Ljava/util/zip/ZipInputStream;
    const/16 v10, 0x400

    :try_start_3
    new-array v0, v10, [B

    .line 110
    .local v0, buffer:[B
    const/4 v5, -0x1

    .line 111
    .local v5, offset:I
    :goto_1
    invoke-virtual {v9, v0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v5

    const/4 v10, -0x1

    if-eq v5, v10, :cond_4

    .line 112
    const/4 v10, 0x0

    invoke-virtual {v7, v0, v10, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 115
    .end local v0           #buffer:[B
    .end local v5           #offset:I
    :catch_0
    move-exception v2

    move-object v8, v9

    .end local v9           #zin:Ljava/util/zip/ZipInputStream;
    .restart local v8       #zin:Ljava/util/zip/ZipInputStream;
    move-object v3, v4

    .end local v4           #in:Ljava/io/ByteArrayInputStream;
    .restart local v3       #in:Ljava/io/ByteArrayInputStream;
    move-object v6, v7

    .line 116
    .end local v7           #out:Ljava/io/ByteArrayOutputStream;
    .local v2, e:Ljava/io/IOException;
    .restart local v6       #out:Ljava/io/ByteArrayOutputStream;
    :goto_2
    const/4 v1, 0x0

    .line 119
    .local v1, decompressed:Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 121
    :try_start_4
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 124
    :cond_2
    :goto_3
    if-eqz v3, :cond_3

    .line 126
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 129
    :cond_3
    :goto_4
    if-eqz v6, :cond_0

    .line 131
    :try_start_6
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 132
    :catch_1
    move-exception v10

    goto :goto_0

    .line 114
    .end local v1           #decompressed:Ljava/lang/String;
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #in:Ljava/io/ByteArrayInputStream;
    .end local v6           #out:Ljava/io/ByteArrayOutputStream;
    .end local v8           #zin:Ljava/util/zip/ZipInputStream;
    .restart local v0       #buffer:[B
    .restart local v4       #in:Ljava/io/ByteArrayInputStream;
    .restart local v5       #offset:I
    .restart local v7       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v9       #zin:Ljava/util/zip/ZipInputStream;
    :cond_4
    :try_start_7
    const-string v10, "utf-8"

    invoke-virtual {v7, v10}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v1

    .line 119
    .restart local v1       #decompressed:Ljava/lang/String;
    if-eqz v9, :cond_5

    .line 121
    :try_start_8
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 124
    :cond_5
    :goto_5
    if-eqz v4, :cond_6

    .line 126
    :try_start_9
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 129
    :cond_6
    :goto_6
    if-eqz v7, :cond_a

    .line 131
    :try_start_a
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    move-object v8, v9

    .end local v9           #zin:Ljava/util/zip/ZipInputStream;
    .restart local v8       #zin:Ljava/util/zip/ZipInputStream;
    move-object v3, v4

    .end local v4           #in:Ljava/io/ByteArrayInputStream;
    .restart local v3       #in:Ljava/io/ByteArrayInputStream;
    move-object v6, v7

    .line 132
    .end local v7           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #out:Ljava/io/ByteArrayOutputStream;
    goto :goto_0

    .end local v3           #in:Ljava/io/ByteArrayInputStream;
    .end local v6           #out:Ljava/io/ByteArrayOutputStream;
    .end local v8           #zin:Ljava/util/zip/ZipInputStream;
    .restart local v4       #in:Ljava/io/ByteArrayInputStream;
    .restart local v7       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v9       #zin:Ljava/util/zip/ZipInputStream;
    :catch_2
    move-exception v10

    move-object v8, v9

    .end local v9           #zin:Ljava/util/zip/ZipInputStream;
    .restart local v8       #zin:Ljava/util/zip/ZipInputStream;
    move-object v3, v4

    .end local v4           #in:Ljava/io/ByteArrayInputStream;
    .restart local v3       #in:Ljava/io/ByteArrayInputStream;
    move-object v6, v7

    .end local v7           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #out:Ljava/io/ByteArrayOutputStream;
    goto :goto_0

    .line 119
    .end local v0           #buffer:[B
    .end local v1           #decompressed:Ljava/lang/String;
    .end local v5           #offset:I
    :catchall_0
    move-exception v10

    :goto_7
    if-eqz v8, :cond_7

    .line 121
    :try_start_b
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 124
    :cond_7
    :goto_8
    if-eqz v3, :cond_8

    .line 126
    :try_start_c
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 129
    :cond_8
    :goto_9
    if-eqz v6, :cond_9

    .line 131
    :try_start_d
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 132
    :cond_9
    :goto_a
    throw v10

    .line 122
    .end local v3           #in:Ljava/io/ByteArrayInputStream;
    .end local v6           #out:Ljava/io/ByteArrayOutputStream;
    .end local v8           #zin:Ljava/util/zip/ZipInputStream;
    .restart local v0       #buffer:[B
    .restart local v1       #decompressed:Ljava/lang/String;
    .restart local v4       #in:Ljava/io/ByteArrayInputStream;
    .restart local v5       #offset:I
    .restart local v7       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v9       #zin:Ljava/util/zip/ZipInputStream;
    :catch_3
    move-exception v10

    goto :goto_5

    .line 127
    :catch_4
    move-exception v10

    goto :goto_6

    .line 122
    .end local v0           #buffer:[B
    .end local v4           #in:Ljava/io/ByteArrayInputStream;
    .end local v5           #offset:I
    .end local v7           #out:Ljava/io/ByteArrayOutputStream;
    .end local v9           #zin:Ljava/util/zip/ZipInputStream;
    .restart local v2       #e:Ljava/io/IOException;
    .restart local v3       #in:Ljava/io/ByteArrayInputStream;
    .restart local v6       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v8       #zin:Ljava/util/zip/ZipInputStream;
    :catch_5
    move-exception v10

    goto :goto_3

    .line 127
    :catch_6
    move-exception v10

    goto :goto_4

    .line 122
    .end local v1           #decompressed:Ljava/lang/String;
    .end local v2           #e:Ljava/io/IOException;
    :catch_7
    move-exception v11

    goto :goto_8

    .line 127
    :catch_8
    move-exception v11

    goto :goto_9

    .line 132
    :catch_9
    move-exception v11

    goto :goto_a

    .line 119
    .end local v6           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #out:Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v10

    move-object v6, v7

    .end local v7           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #out:Ljava/io/ByteArrayOutputStream;
    goto :goto_7

    .end local v3           #in:Ljava/io/ByteArrayInputStream;
    .end local v6           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #in:Ljava/io/ByteArrayInputStream;
    .restart local v7       #out:Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v10

    move-object v3, v4

    .end local v4           #in:Ljava/io/ByteArrayInputStream;
    .restart local v3       #in:Ljava/io/ByteArrayInputStream;
    move-object v6, v7

    .end local v7           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #out:Ljava/io/ByteArrayOutputStream;
    goto :goto_7

    .end local v3           #in:Ljava/io/ByteArrayInputStream;
    .end local v6           #out:Ljava/io/ByteArrayOutputStream;
    .end local v8           #zin:Ljava/util/zip/ZipInputStream;
    .restart local v4       #in:Ljava/io/ByteArrayInputStream;
    .restart local v7       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v9       #zin:Ljava/util/zip/ZipInputStream;
    :catchall_3
    move-exception v10

    move-object v8, v9

    .end local v9           #zin:Ljava/util/zip/ZipInputStream;
    .restart local v8       #zin:Ljava/util/zip/ZipInputStream;
    move-object v3, v4

    .end local v4           #in:Ljava/io/ByteArrayInputStream;
    .restart local v3       #in:Ljava/io/ByteArrayInputStream;
    move-object v6, v7

    .end local v7           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #out:Ljava/io/ByteArrayOutputStream;
    goto :goto_7

    .line 115
    :catch_a
    move-exception v2

    goto :goto_2

    .end local v6           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #out:Ljava/io/ByteArrayOutputStream;
    :catch_b
    move-exception v2

    move-object v6, v7

    .end local v7           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #out:Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .end local v3           #in:Ljava/io/ByteArrayInputStream;
    .end local v6           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #in:Ljava/io/ByteArrayInputStream;
    .restart local v7       #out:Ljava/io/ByteArrayOutputStream;
    :catch_c
    move-exception v2

    move-object v3, v4

    .end local v4           #in:Ljava/io/ByteArrayInputStream;
    .restart local v3       #in:Ljava/io/ByteArrayInputStream;
    move-object v6, v7

    .end local v7           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #out:Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .end local v3           #in:Ljava/io/ByteArrayInputStream;
    .end local v6           #out:Ljava/io/ByteArrayOutputStream;
    .end local v8           #zin:Ljava/util/zip/ZipInputStream;
    .restart local v0       #buffer:[B
    .restart local v1       #decompressed:Ljava/lang/String;
    .restart local v4       #in:Ljava/io/ByteArrayInputStream;
    .restart local v5       #offset:I
    .restart local v7       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v9       #zin:Ljava/util/zip/ZipInputStream;
    :cond_a
    move-object v8, v9

    .end local v9           #zin:Ljava/util/zip/ZipInputStream;
    .restart local v8       #zin:Ljava/util/zip/ZipInputStream;
    move-object v3, v4

    .end local v4           #in:Ljava/io/ByteArrayInputStream;
    .restart local v3       #in:Ljava/io/ByteArrayInputStream;
    move-object v6, v7

    .end local v7           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #out:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_0
.end method

.method public declared-synchronized unzip(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "zipFilename"
    .parameter "outputDirectory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    .local v2, outFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 190
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 191
    .local v0, bRet:Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mkdirs result = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/com/zte/yp/utils/Logging;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 194
    .end local v0           #bRet:Z
    :cond_0
    const/4 v4, 0x0

    .line 196
    .local v4, zipFile:Ljava/util/zip/ZipFile;
    :try_start_1
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 197
    .end local v4           #zipFile:Ljava/util/zip/ZipFile;
    .local v5, zipFile:Ljava/util/zip/ZipFile;
    :try_start_2
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 198
    .local v1, en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    const/4 v3, 0x0

    .line 199
    .local v3, zipEntry:Ljava/util/zip/ZipEntry;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 200
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #zipEntry:Ljava/util/zip/ZipEntry;
    check-cast v3, Ljava/util/zip/ZipEntry;

    .line 201
    .restart local v3       #zipEntry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 202
    invoke-direct {p0, v2, v3}, Lcn/com/zte/nlt/utils/Zip;->unzipDir(Ljava/io/File;Ljava/util/zip/ZipEntry;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 209
    .end local v1           #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .end local v3           #zipEntry:Ljava/util/zip/ZipEntry;
    :catchall_0
    move-exception v6

    move-object v4, v5

    .end local v5           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v4       #zipFile:Ljava/util/zip/ZipFile;
    :goto_1
    if-eqz v4, :cond_1

    .line 210
    :try_start_3
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V

    :cond_1
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 188
    .end local v2           #outFile:Ljava/io/File;
    .end local v4           #zipFile:Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v6

    monitor-exit p0

    throw v6

    .line 204
    .restart local v1       #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .restart local v2       #outFile:Ljava/io/File;
    .restart local v3       #zipEntry:Ljava/util/zip/ZipEntry;
    .restart local v5       #zipFile:Ljava/util/zip/ZipFile;
    :cond_2
    :try_start_4
    invoke-direct {p0, v2, v5, v3}, Lcn/com/zte/nlt/utils/Zip;->unzipFile(Ljava/io/File;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 209
    :cond_3
    if-eqz v5, :cond_4

    .line 210
    :try_start_5
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 213
    :cond_4
    monitor-exit p0

    return-void

    .line 209
    .end local v1           #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .end local v3           #zipEntry:Ljava/util/zip/ZipEntry;
    .end local v5           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v4       #zipFile:Ljava/util/zip/ZipFile;
    :catchall_2
    move-exception v6

    goto :goto_1
.end method

.method public declared-synchronized zip(Ljava/io/File;Ljava/lang/String;)V
    .locals 3
    .parameter "inputFile"
    .parameter "zipFilename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/zip/ZipOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 146
    .local v1, out:Ljava/util/zip/ZipOutputStream;
    :try_start_1
    const-string v2, ""

    invoke-direct {p0, p1, v1, v2}, Lcn/com/zte/nlt/utils/Zip;->zip(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 151
    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 153
    monitor-exit p0

    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 151
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    :try_start_4
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 144
    .end local v1           #out:Ljava/util/zip/ZipOutputStream;
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized zip(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "inputFilename"
    .parameter "zipFilename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcn/com/zte/nlt/utils/Zip;->zip(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    monitor-exit p0

    return-void

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.class public Layw;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 112
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Layw;->a(Ljava/lang/String;ZZ)V

    .line 113
    return-void
.end method

.method public static final a(Ljava/lang/String;ZZ)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    if-nez p0, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    const/4 v0, 0x0

    .line 120
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_3

    .line 122
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 123
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 128
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 129
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chmod 777 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 125
    :cond_3
    if-eqz p2, :cond_2

    .line 126
    const/4 v2, 0x0

    :try_start_1
    invoke-static {v1, v2}, Layw;->a(Ljava/io/File;Ljava/io/FileFilter;)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 134
    :catch_1
    move-exception v0

    .line 135
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static final a(Ljava/io/File;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 16
    .line 17
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 18
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 19
    if-eqz v1, :cond_2

    .line 20
    array-length v2, v1

    .line 21
    :goto_0
    if-ge v0, v2, :cond_1

    .line 22
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 23
    aget-object v3, v1, v0

    invoke-static {v3}, Layw;->a(Ljava/io/File;)Z

    .line 21
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 25
    :cond_0
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 29
    const/4 v0, 0x1

    .line 32
    :cond_2
    return v0
.end method

.method public static final a(Ljava/io/File;Ljava/io/File;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 265
    .line 266
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 313
    :cond_0
    :goto_0
    return v0

    .line 270
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 272
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 277
    if-eqz v1, :cond_0

    .line 288
    :cond_2
    :try_start_1
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 289
    :try_start_2
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 291
    :try_start_3
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 292
    :try_start_4
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 293
    const/16 v1, 0x400

    :try_start_5
    new-array v1, v1, [B

    .line 296
    :goto_1
    invoke-virtual {v5, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    const/4 v7, -0x1

    if-eq v3, v7, :cond_3

    .line 297
    const/4 v7, 0x0

    invoke-virtual {v2, v1, v7, v3}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_1

    .line 303
    :catch_0
    move-exception v1

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    .line 304
    :goto_2
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 308
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 309
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 310
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 311
    invoke-static {v5}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 273
    :catch_1
    move-exception v1

    .line 274
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 300
    :cond_3
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 302
    const/4 v0, 0x1

    .line 308
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 309
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 310
    invoke-static {v5}, Lazd;->a(Ljava/io/Closeable;)V

    .line 311
    :goto_3
    invoke-static {v6}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 305
    :catch_2
    move-exception v1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    .line 306
    :goto_4
    :try_start_8
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 308
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 309
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 310
    invoke-static {v5}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_3

    .line 308
    :catchall_0
    move-exception v0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    :goto_5
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 309
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 310
    invoke-static {v5}, Lazd;->a(Ljava/io/Closeable;)V

    .line 311
    invoke-static {v6}, Lazd;->a(Ljava/io/Closeable;)V

    .line 308
    throw v0

    :catchall_1
    move-exception v0

    move-object v4, v3

    move-object v5, v3

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v4, v3

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object v3, v2

    goto :goto_5

    :catchall_5
    move-exception v0

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    goto :goto_5

    .line 305
    :catch_3
    move-exception v1

    move-object v4, v3

    move-object v5, v3

    goto :goto_4

    :catch_4
    move-exception v1

    move-object v4, v3

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v1

    move-object v3, v2

    goto :goto_4

    .line 303
    :catch_7
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    move-object v5, v3

    goto :goto_2

    :catch_8
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    move-object v5, v6

    goto :goto_2

    :catch_9
    move-exception v1

    move-object v2, v3

    move-object v4, v5

    move-object v5, v6

    goto :goto_2

    :catch_a
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    goto :goto_2
.end method

.method public static final a(Ljava/io/File;Ljava/io/FileFilter;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 36
    .line 37
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    invoke-virtual {p0, p1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 39
    if-nez v1, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v0

    .line 41
    :cond_1
    array-length v2, v1

    .line 42
    :goto_1
    if-ge v0, v2, :cond_3

    .line 43
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 44
    aget-object v3, v1, v0

    invoke-static {v3}, Layw;->a(Ljava/io/File;)Z

    .line 42
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 46
    :cond_2
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 49
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final a(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 64
    if-nez p0, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v0

    .line 67
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 69
    const/4 v0, 0x0

    goto :goto_0

    .line 70
    :cond_2
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_0
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 161
    const/4 v0, 0x0

    .line 163
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 168
    :goto_0
    return v0

    .line 166
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 178
    .line 179
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 240
    :cond_0
    :goto_0
    return v0

    .line 183
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 189
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 191
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    .line 192
    if-eqz v2, :cond_0

    .line 197
    :cond_2
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 200
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v4

    .line 204
    if-eqz v4, :cond_0

    .line 215
    :cond_3
    :try_start_1
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 216
    :try_start_2
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 218
    :try_start_3
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 219
    :try_start_4
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 220
    const/16 v1, 0x400

    :try_start_5
    new-array v1, v1, [B

    .line 223
    :goto_1
    invoke-virtual {v5, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    const/4 v7, -0x1

    if-eq v3, v7, :cond_4

    .line 224
    const/4 v7, 0x0

    invoke-virtual {v2, v1, v7, v3}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_1

    .line 230
    :catch_0
    move-exception v1

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    .line 231
    :goto_2
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 235
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 236
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 237
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 238
    invoke-static {v5}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 227
    :cond_4
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 229
    const/4 v0, 0x1

    .line 235
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 236
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 237
    invoke-static {v5}, Lazd;->a(Ljava/io/Closeable;)V

    .line 238
    :goto_3
    invoke-static {v6}, Lazd;->a(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 232
    :catch_1
    move-exception v1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    .line 233
    :goto_4
    :try_start_8
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 235
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 236
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 237
    invoke-static {v5}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_3

    .line 235
    :catchall_0
    move-exception v0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    :goto_5
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 236
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 237
    invoke-static {v5}, Lazd;->a(Ljava/io/Closeable;)V

    .line 238
    invoke-static {v6}, Lazd;->a(Ljava/io/Closeable;)V

    .line 235
    throw v0

    .line 201
    :catch_2
    move-exception v1

    goto/16 :goto_0

    .line 235
    :catchall_1
    move-exception v0

    move-object v4, v3

    move-object v5, v3

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v4, v3

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object v3, v2

    goto :goto_5

    :catchall_5
    move-exception v0

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    goto :goto_5

    .line 232
    :catch_3
    move-exception v1

    move-object v4, v3

    move-object v5, v3

    goto :goto_4

    :catch_4
    move-exception v1

    move-object v4, v3

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v1

    move-object v3, v2

    goto :goto_4

    .line 230
    :catch_7
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    move-object v5, v3

    goto :goto_2

    :catch_8
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    move-object v5, v6

    goto :goto_2

    :catch_9
    move-exception v1

    move-object v2, v3

    move-object v4, v5

    move-object v5, v6

    goto :goto_2

    :catch_a
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    goto :goto_2
.end method

.method public static final b(Ljava/lang/String;ZZ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    invoke-static {p0, p1, p2}, Layw;->a(Ljava/lang/String;ZZ)V

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.nomedia"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final b(Ljava/io/File;)Z
    .locals 1
    .parameter

    .prologue
    .line 55
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const/4 v0, 0x0

    .line 60
    :goto_0
    return v0

    .line 57
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_0

    .line 60
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 249
    .line 250
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 261
    :cond_0
    :goto_0
    return v0

    .line 254
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 259
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-static {v1, v0}, Layw;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    goto :goto_0
.end method

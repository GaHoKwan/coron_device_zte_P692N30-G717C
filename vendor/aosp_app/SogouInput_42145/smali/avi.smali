.class public Lavi;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "======> Extract from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lavi;->a(Ljava/lang/String;)V

    .line 53
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-ne v2, v1, :cond_5

    .line 55
    const-string v2, "======> Extract source file exists"

    invoke-static {v2}, Lavi;->a(Ljava/lang/String;)V

    .line 58
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    const-string v2, "======>  target directory exist"

    invoke-static {v2}, Lavi;->a(Ljava/lang/String;)V

    .line 64
    :cond_0
    invoke-static {}, Lcom/sohu/inputmethod/engine/ThemeExtract;->nativeRelease()V

    .line 65
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-static {p0, v4, v5, v6, v7}, Lcom/sohu/inputmethod/engine/ThemeExtract;->nativeOpenThemePackage(Ljava/lang/String;JJ)Z

    move-result v2

    if-nez v2, :cond_1

    .line 66
    const-string v2, "======>  open theme package failed "

    invoke-static {v2}, Lavi;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    const/4 v0, 0x2

    .line 100
    :goto_0
    return v0

    .line 69
    :catch_0
    move-exception v2

    .line 70
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 72
    :cond_1
    invoke-static {p1, p2}, Lcom/sohu/inputmethod/engine/ThemeExtract;->nativeSetTargetPath(Ljava/lang/String;Ljava/lang/String;)Z

    .line 73
    const-string v2, "======>  after natice set target path "

    invoke-static {v2}, Lavi;->a(Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/sohu/inputmethod/engine/ThemeExtract;->nativeBeginExtract()Z

    move-result v2

    if-nez v2, :cond_3

    .line 75
    const-string v2, "======>  begin start "

    invoke-static {v2}, Lavi;->a(Ljava/lang/String;)V

    .line 76
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-ne v3, v1, :cond_2

    .line 78
    invoke-static {v2}, Lazj;->a(Ljava/io/File;)Z

    .line 79
    const-string v1, "======>  begin extract failed "

    invoke-static {v1}, Lavi;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_2
    const-string v1, "======>  begin extract failed "

    invoke-static {v1}, Lavi;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_3
    const-string v0, "android_pc_theme"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 89
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 100
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    move v0, v1

    .line 92
    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 138
    if-nez p0, :cond_0

    .line 165
    :goto_0
    return-object v0

    .line 144
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    if-nez v3, :cond_1

    .line 161
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 162
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 147
    :cond_1
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 148
    const/4 v1, 0x1

    :try_start_2
    new-array v1, v1, [C

    .line 149
    invoke-virtual {v2, v1}, Ljava/io/BufferedReader;->read([C)I

    .line 152
    const/4 v4, 0x0

    aget-char v1, v1, v4

    add-int/lit8 v1, v1, 0x0

    const v4, 0xfffd

    if-ne v1, v4, :cond_2

    .line 153
    const-string v0, "UTF-16"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 161
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 162
    :goto_1
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 155
    :cond_2
    :try_start_3
    const-string v0, "GB2312"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 161
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_1

    .line 157
    :catch_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    .line 158
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 161
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_3
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 162
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 161
    throw v0

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    .line 157
    :catch_1
    move-exception v1

    move-object v2, v0

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 104
    if-nez p0, :cond_0

    .line 134
    :goto_0
    return-object v0

    .line 111
    :cond_0
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :try_start_1
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 113
    if-nez v3, :cond_1

    .line 129
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 130
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 131
    :goto_1
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 115
    :cond_1
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 116
    const/4 v1, 0x1

    :try_start_3
    new-array v1, v1, [C

    .line 117
    invoke-virtual {v2, v1}, Ljava/io/BufferedReader;->read([C)I

    .line 120
    const/4 v5, 0x0

    aget-char v1, v1, v5

    add-int/lit8 v1, v1, 0x0

    const v5, 0xfffd

    if-ne v1, v5, :cond_2

    .line 121
    const-string v0, "UTF-16"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 129
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 130
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_1

    .line 123
    :cond_2
    :try_start_4
    const-string v0, "GB2312"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 129
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 130
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_1

    .line 125
    :catch_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    .line 126
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 129
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 130
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_1

    .line 129
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v0, v1

    :goto_3
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 130
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 131
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 129
    throw v0

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_3

    .line 125
    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v2, v0

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_2
.end method

.method private static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 235
    .line 236
    const-string v1, "/sdcard/sogou/sga/"

    .line 244
    if-nez p1, :cond_1

    .line 245
    :try_start_0
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :goto_0
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 250
    if-nez p3, :cond_2

    .line 251
    :try_start_2
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 256
    :goto_1
    if-eqz v5, :cond_0

    if-nez v3, :cond_3

    .line 277
    :cond_0
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 278
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 279
    invoke-static {v5}, Lazd;->a(Ljava/io/Closeable;)V

    .line 280
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 281
    :goto_2
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    .line 275
    :goto_3
    return v8

    .line 247
    :cond_1
    :try_start_3
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 274
    :catch_0
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    .line 277
    :goto_4
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    .line 278
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 279
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 280
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 281
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_3

    .line 253
    :cond_2
    :try_start_4
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v1, p3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 274
    :catch_1
    move-exception v2

    move-object v2, v0

    move-object v3, v0

    move-object v4, v5

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    goto :goto_4

    .line 258
    :cond_3
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->getEncoding()Ljava/lang/String;

    .line 259
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 260
    :try_start_6
    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 261
    if-eqz v4, :cond_4

    if-nez v2, :cond_5

    .line 277
    :cond_4
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 278
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 279
    invoke-static {v5}, Lazd;->a(Ljava/io/Closeable;)V

    .line 280
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_2

    .line 264
    :cond_5
    :goto_5
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 266
    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v0, v6, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    .line 268
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_5

    .line 274
    :catch_2
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    goto :goto_4

    .line 277
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    :goto_6
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 278
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 279
    invoke-static {v5}, Lazd;->a(Ljava/io/Closeable;)V

    .line 280
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 281
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    .line 277
    throw v0

    :cond_6
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 278
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 279
    invoke-static {v5}, Lazd;->a(Ljava/io/Closeable;)V

    .line 280
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    goto/16 :goto_2

    .line 277
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    goto :goto_6

    :catchall_2
    move-exception v2

    move-object v3, v0

    move-object v4, v0

    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    goto :goto_6

    :catchall_3
    move-exception v2

    move-object v4, v0

    move-object v9, v0

    move-object v0, v2

    move-object v2, v9

    goto :goto_6

    :catchall_4
    move-exception v2

    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    goto :goto_6

    :catchall_5
    move-exception v0

    goto :goto_6

    .line 274
    :catch_3
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    move-object v4, v5

    goto/16 :goto_4

    :catch_4
    move-exception v2

    move-object v2, v3

    move-object v4, v5

    move-object v3, v0

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto/16 :goto_4

    :catch_5
    move-exception v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    goto/16 :goto_4
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 179
    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 187
    if-nez p1, :cond_1

    .line 188
    :try_start_0
    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    if-nez p2, :cond_2

    .line 193
    :try_start_1
    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 198
    :goto_1
    if-eqz v5, :cond_0

    if-nez v3, :cond_3

    .line 227
    :cond_0
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    .line 228
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    .line 229
    invoke-static {v5}, Lazd;->a(Ljava/io/Closeable;)V

    .line 230
    :goto_2
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 225
    :goto_3
    return v0

    .line 190
    :cond_1
    :try_start_2
    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v2

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    .line 227
    :goto_4
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    .line 228
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 229
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 230
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_3

    .line 195
    :cond_2
    :try_start_3
    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v2, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 224
    :catch_1
    move-exception v2

    move-object v2, v1

    move-object v3, v1

    move-object v4, v5

    goto :goto_4

    .line 200
    :cond_3
    :try_start_4
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 201
    :try_start_5
    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 202
    if-eqz v4, :cond_4

    if-nez v2, :cond_5

    .line 227
    :cond_4
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 228
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 229
    invoke-static {v5}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_2

    .line 205
    :cond_5
    :goto_5
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 207
    const/4 v7, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2, v1, v7, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    .line 209
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_5

    .line 224
    :catch_2
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    goto :goto_4

    .line 211
    :cond_6
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 212
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 213
    invoke-static {v5}, Lazd;->a(Ljava/io/Closeable;)V

    .line 214
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 215
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 216
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-result v1

    if-eqz v1, :cond_7

    .line 221
    const/4 v0, 0x1

    .line 227
    :cond_7
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 228
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 229
    invoke-static {v5}, Lazd;->a(Ljava/io/Closeable;)V

    goto/16 :goto_2

    .line 227
    :catchall_0
    move-exception v0

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    :goto_6
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    .line 228
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 229
    invoke-static {v5}, Lazd;->a(Ljava/io/Closeable;)V

    .line 230
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 227
    throw v0

    :catchall_1
    move-exception v0

    move-object v3, v1

    move-object v4, v1

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v4, v1

    goto :goto_6

    :catchall_3
    move-exception v0

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object v1, v2

    goto :goto_6

    .line 224
    :catch_3
    move-exception v2

    move-object v2, v3

    move-object v4, v5

    move-object v3, v1

    goto/16 :goto_4

    :catch_4
    move-exception v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_4
.end method

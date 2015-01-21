.class public Lasb;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 15221
    .line 15224
    sget-object v0, Laox;->z:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15226
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15227
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15228
    invoke-static {v0}, Lazj;->a(Ljava/io/File;)Z

    .line 15232
    :cond_0
    const/4 v1, 0x0

    .line 15234
    :try_start_0
    sget-object v0, Laox;->g:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15236
    new-instance v0, Ljava/io/File;

    sget-object v2, Laox;->i:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lazj;->a(Ljava/io/File;)Z

    .line 15238
    new-instance v0, Ljava/io/File;

    sget-object v2, Laox;->g:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lazj;->a(Ljava/io/File;)Z

    .line 15244
    :cond_1
    const-string v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 15247
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "theme.sga"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 15248
    :try_start_1
    invoke-virtual {v10}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 15249
    new-array v0, v1, [B

    .line 15250
    const/4 v2, 0x0

    invoke-virtual {v10, v0, v2, v1}, Ljava/io/InputStream;->read([BII)I

    .line 15251
    int-to-long v1, v1

    const/4 v3, 0x0

    aget-object v3, v5, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    sget-boolean v7, Laox;->a:Z

    invoke-static/range {v0 .. v7}, Lcom/sohu/inputmethod/engine/ThemeExtract;->nativeOpenThemeData([BJJJZ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 15253
    invoke-static {}, Lcom/sohu/inputmethod/engine/ThemeExtract;->nativeRelease()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 15282
    invoke-static {}, Lcom/sohu/inputmethod/engine/ThemeExtract;->nativeRelease()V

    .line 15283
    :goto_0
    invoke-static {v10}, Lazd;->a(Ljava/io/Closeable;)V

    .line 15292
    :goto_1
    return v9

    .line 15262
    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laox;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laox;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sohu/inputmethod/engine/ThemeExtract;->nativeSetTargetPath(Ljava/lang/String;Ljava/lang/String;)Z

    .line 15266
    invoke-static {}, Lcom/sohu/inputmethod/engine/ThemeExtract;->nativeBeginExtract()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    if-ne v0, v8, :cond_3

    .line 15282
    invoke-static {}, Lcom/sohu/inputmethod/engine/ThemeExtract;->nativeRelease()V

    .line 15283
    invoke-static {v10}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v8

    :goto_2
    move v9, v0

    .line 15292
    goto :goto_1

    .line 15271
    :cond_3
    :try_start_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15272
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-ne v1, v8, :cond_4

    .line 15273
    invoke-static {v0}, Lazj;->a(Ljava/io/File;)Z

    .line 15275
    :cond_4
    invoke-static {}, Lcom/sohu/inputmethod/engine/ThemeExtract;->nativeRelease()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 15282
    invoke-static {}, Lcom/sohu/inputmethod/engine/ThemeExtract;->nativeRelease()V

    goto :goto_0

    .line 15278
    :catch_0
    move-exception v0

    .line 15279
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 15282
    invoke-static {}, Lcom/sohu/inputmethod/engine/ThemeExtract;->nativeRelease()V

    .line 15283
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v9

    .line 15288
    goto :goto_2

    .line 15282
    :catchall_0
    move-exception v0

    move-object v10, v1

    :goto_4
    invoke-static {}, Lcom/sohu/inputmethod/engine/ThemeExtract;->nativeRelease()V

    .line 15283
    invoke-static {v10}, Lazd;->a(Ljava/io/Closeable;)V

    .line 15282
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v10, v1

    goto :goto_4

    .line 15278
    :catch_1
    move-exception v0

    move-object v1, v10

    goto :goto_3
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x2d0

    const/16 v6, 0x280

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15296
    .line 15297
    const-string v0, "theme/"

    .line 15298
    sget-object v0, Laox;->z:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15300
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15301
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15302
    invoke-static {v0}, Lazj;->a(Ljava/io/File;)Z

    .line 15305
    :cond_0
    const/4 v0, 0x0

    .line 15307
    :try_start_0
    sget-object v1, Laox;->g:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 15309
    new-instance v1, Ljava/io/File;

    sget-object v4, Laox;->i:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lazj;->a(Ljava/io/File;)Z

    .line 15311
    new-instance v1, Ljava/io/File;

    sget-object v4, Laox;->g:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lazj;->a(Ljava/io/File;)Z

    .line 15313
    :cond_1
    const-string v1, "x"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 15314
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v7, "theme.sga"

    invoke-virtual {v4, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 15319
    const/4 v0, 0x0

    :try_start_1
    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 15320
    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 15326
    if-lez v7, :cond_2

    if-gtz v0, :cond_3

    .line 15327
    :cond_2
    :try_start_2
    const-string v0, "    SogouIME"

    const-string v1, "screen width or height is below zero"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 15663
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 15666
    :goto_0
    return v0

    .line 15321
    :catch_0
    move-exception v0

    .line 15322
    :try_start_3
    const-string v0, "    SogouIME"

    const-string v1, "resolution can not parse to int"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 15663
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 15323
    goto :goto_0

    .line 15331
    :cond_3
    :try_start_4
    const-string v0, "theme/"

    invoke-static {v4, v0}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 15332
    if-nez v0, :cond_4

    .line 15333
    const-string v0, "    SogouIME"

    const-string v1, "can not get resolution list"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 15663
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 15334
    goto :goto_0

    .line 15337
    :cond_4
    :try_start_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v1, v2

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 15338
    sub-int v9, v7, v0

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 15339
    sub-int v10, v7, v1

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 15340
    if-ge v9, v10, :cond_28

    :goto_2
    move v1, v0

    .line 15342
    goto :goto_1

    .line 15343
    :cond_5
    if-lez v1, :cond_9

    .line 15344
    sget-boolean v0, Laox;->a:Z

    if-eqz v0, :cond_8

    .line 15345
    if-ge v1, v6, :cond_9

    move v5, v6

    .line 15353
    :cond_6
    :goto_3
    const/4 v0, 0x3

    new-array v7, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "cands.ini"

    aput-object v1, v7, v0

    const/4 v0, 0x1

    const-string v1, "template.ini"

    aput-object v1, v7, v0

    const/4 v0, 0x2

    const-string v1, "images.ini"

    aput-object v1, v7, v0

    .line 15354
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 15355
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "theme.sga"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v0

    .line 15357
    :try_start_6
    array-length v8, v7

    move v4, v2

    move v1, v3

    :goto_4
    if-ge v4, v8, :cond_7

    aget-object v9, v7, v4

    .line 15358
    if-eqz v1, :cond_a

    const-string v1, "theme/default/layout/"

    invoke-static {v0, v1, v9}, Lazj;->c(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v3

    .line 15360
    :goto_5
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 15361
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    const-string v11, "theme.sga"

    invoke-virtual {v10, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 15362
    if-nez v1, :cond_b

    .line 15363
    const-string v4, "    SogouIME"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "not exist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 15367
    :cond_7
    if-nez v1, :cond_c

    .line 15663
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 15368
    goto/16 :goto_0

    .line 15348
    :cond_8
    if-gt v1, v5, :cond_6

    :cond_9
    move v5, v1

    goto :goto_3

    :cond_a
    move v1, v2

    .line 15358
    goto :goto_5

    .line 15357
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 15371
    :cond_c
    :try_start_7
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 15372
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v4, "theme.sga"

    invoke-virtual {v1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 15373
    const-string v1, "theme/theme.ini"

    const/4 v4, 0x1

    const-string v7, "theme.ini"

    invoke-static {v0, p2, v1, v4, v7}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v1

    .line 15374
    if-nez v1, :cond_d

    .line 15375
    const-string v1, "    SogouIME"

    const-string v3, "error at unzip theme.ini"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 15663
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 15376
    goto/16 :goto_0

    .line 15380
    :cond_d
    :try_start_8
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 15381
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v4, "theme.sga"

    invoke-virtual {v1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 15382
    const-string v1, "theme/default/layout/"

    const/4 v4, 0x0

    const-string v7, "layout/"

    invoke-static {v0, p2, v1, v4, v7}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v1

    .line 15384
    if-nez v1, :cond_e

    .line 15385
    const-string v1, "    SogouIME"

    const-string v3, "error at unzip theme/default/layout/"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 15663
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 15387
    goto/16 :goto_0

    .line 15390
    :cond_e
    if-lez v5, :cond_f

    .line 15391
    :try_start_9
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 15392
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v4, "theme.sga"

    invoke-virtual {v1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 15393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "theme/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Laox;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "layout/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const-string v7, "layout/"

    invoke-static {v0, p2, v1, v4, v7}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v1

    .line 15395
    if-nez v1, :cond_f

    .line 15396
    const-string v1, "    SogouIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error at unzip theme/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laox;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "layout/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 15663
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 15398
    goto/16 :goto_0

    .line 15402
    :cond_f
    :try_start_a
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 15403
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v4, "theme.sga"

    invoke-virtual {v1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 15404
    sget-boolean v1, Laox;->a:Z

    if-eqz v1, :cond_10

    .line 15405
    const-string v1, "theme/default/pad/layout/"

    const/4 v4, 0x0

    const-string v7, "layout/"

    invoke-static {v0, p2, v1, v4, v7}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v1

    .line 15407
    if-nez v1, :cond_11

    .line 15408
    const-string v1, "    SogouIME"

    const-string v3, "error at unzip theme/default/pad/layout/"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 15663
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 15410
    goto/16 :goto_0

    .line 15413
    :cond_10
    :try_start_b
    const-string v1, "theme/default/phone/layout/"

    const/4 v4, 0x0

    const-string v7, "layout/"

    invoke-static {v0, p2, v1, v4, v7}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v1

    .line 15415
    if-nez v1, :cond_11

    .line 15416
    const-string v1, "    SogouIME"

    const-string v3, "error at unzip theme/default/phone/layout/"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 15663
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 15418
    goto/16 :goto_0

    .line 15422
    :cond_11
    if-lez v5, :cond_13

    .line 15423
    :try_start_c
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 15424
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v4, "theme.sga"

    invoke-virtual {v1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 15425
    sget-boolean v1, Laox;->a:Z

    if-eqz v1, :cond_12

    .line 15426
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "theme/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Laox;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "pad/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "layout/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const-string v7, "layout/"

    invoke-static {v0, p2, v1, v4, v7}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v1

    .line 15428
    if-nez v1, :cond_13

    .line 15429
    const-string v1, "    SogouIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error at unzip theme/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laox;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "pad/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "layout/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    .line 15663
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 15431
    goto/16 :goto_0

    .line 15434
    :cond_12
    :try_start_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "theme/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Laox;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "phone/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "layout/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const-string v7, "layout/"

    invoke-static {v0, p2, v1, v4, v7}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v1

    .line 15436
    if-nez v1, :cond_13

    .line 15437
    const-string v1, "    SogouIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error at unzip theme/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laox;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "phone/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "layout/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    .line 15663
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 15439
    goto/16 :goto_0

    .line 15445
    :cond_13
    :try_start_e
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 15446
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v4, "theme.sga"

    invoke-virtual {v1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 15447
    const-string v1, "theme/default/res/"

    const/4 v4, 0x0

    const-string v7, "res/"

    invoke-static {v0, p2, v1, v4, v7}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v1

    .line 15449
    if-nez v1, :cond_14

    .line 15450
    const-string v1, "    SogouIME"

    const-string v3, "error at unzip theme/default/res/"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    .line 15663
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 15452
    goto/16 :goto_0

    .line 15455
    :cond_14
    if-lez v5, :cond_15

    .line 15456
    :try_start_f
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 15457
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v4, "theme.sga"

    invoke-virtual {v1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 15458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "theme/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Laox;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "res/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const-string v7, "res/"

    invoke-static {v0, p2, v1, v4, v7}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v1

    .line 15460
    if-nez v1, :cond_15

    .line 15461
    const-string v1, "    SogouIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error at unzip theme/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laox;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "res/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    .line 15663
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 15463
    goto/16 :goto_0

    .line 15467
    :cond_15
    :try_start_10
    sget-boolean v1, Laox;->a:Z

    if-eqz v1, :cond_17

    if-lez v5, :cond_17

    .line 15468
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 15469
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v4, "theme.sga"

    invoke-virtual {v1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 15470
    if-ne v5, v6, :cond_16

    .line 15471
    const-string v1, "theme/320/phone/res/"

    const/4 v4, 0x0

    const-string v6, "res/"

    invoke-static {v0, p2, v1, v4, v6}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v1

    .line 15473
    if-nez v1, :cond_17

    .line 15474
    const-string v1, "    SogouIME"

    const-string v3, "error at unzip theme/320/phone/res/"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1

    .line 15663
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 15476
    goto/16 :goto_0

    .line 15479
    :cond_16
    :try_start_11
    const-string v1, "theme/480/phone/res/"

    const/4 v4, 0x0

    const-string v6, "res/"

    invoke-static {v0, p2, v1, v4, v6}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v1

    .line 15481
    if-nez v1, :cond_17

    .line 15482
    const-string v1, "    SogouIME"

    const-string v3, "error at unzip theme/480/phone/res/"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1

    .line 15663
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 15484
    goto/16 :goto_0

    .line 15489
    :cond_17
    :try_start_12
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 15490
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v4, "theme.sga"

    invoke-virtual {v1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 15491
    sget-boolean v1, Laox;->a:Z

    if-eqz v1, :cond_18

    .line 15492
    const-string v1, "theme/default/pad/res/"

    const/4 v4, 0x0

    const-string v6, "res/"

    invoke-static {v0, p2, v1, v4, v6}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v1

    .line 15494
    if-nez v1, :cond_19

    .line 15495
    const-string v1, "    SogouIME"

    const-string v3, "error at unzip theme/default/pad/res/"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1

    .line 15663
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 15497
    goto/16 :goto_0

    .line 15500
    :cond_18
    :try_start_13
    const-string v1, "theme/default/phone/res/"

    const/4 v4, 0x0

    const-string v6, "res/"

    invoke-static {v0, p2, v1, v4, v6}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v1

    .line 15502
    if-nez v1, :cond_19

    .line 15503
    const-string v1, "    SogouIME"

    const-string v3, "error at unzip theme/default/phone/res/"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1

    .line 15663
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 15505
    goto/16 :goto_0

    .line 15509
    :cond_19
    if-lez v5, :cond_1b

    .line 15510
    :try_start_14
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 15511
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v4, "theme.sga"

    invoke-virtual {v1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 15512
    sget-boolean v1, Laox;->a:Z

    if-eqz v1, :cond_1a

    .line 15513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "theme/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Laox;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "pad/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "res/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const-string v6, "res/"

    invoke-static {v0, p2, v1, v4, v6}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v1

    .line 15515
    if-nez v1, :cond_1b

    .line 15516
    const-string v1, "    SogouIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error at unzip theme/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laox;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "pad/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "res/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1

    .line 15663
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 15518
    goto/16 :goto_0

    .line 15521
    :cond_1a
    :try_start_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "theme/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Laox;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "phone/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "res/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const-string v6, "res/"

    invoke-static {v0, p2, v1, v4, v6}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v1

    .line 15523
    if-nez v1, :cond_1b

    .line 15524
    const-string v1, "    SogouIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error at unzip theme/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laox;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "phone/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "res/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_1

    .line 15663
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 15526
    goto/16 :goto_0

    .line 15532
    :cond_1b
    :try_start_16
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 15533
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v4, "theme.sga"

    invoke-virtual {v1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 15534
    const-string v1, "theme/default/layout_port/"

    const/4 v4, 0x0

    const-string v6, "port/"

    invoke-static {v0, p2, v1, v4, v6}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v1

    .line 15536
    if-nez v1, :cond_1c

    .line 15537
    const-string v1, "    SogouIME"

    const-string v3, "error at unzip theme/default/layout_port/"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_1

    .line 15663
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 15539
    goto/16 :goto_0

    .line 15542
    :cond_1c
    if-lez v5, :cond_1d

    .line 15543
    :try_start_17
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 15544
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v4, "theme.sga"

    invoke-virtual {v1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 15545
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "theme/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Laox;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "layout_port/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const-string v6, "port/"

    invoke-static {v0, p2, v1, v4, v6}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v1

    .line 15547
    if-nez v1, :cond_1d

    .line 15548
    const-string v1, "    SogouIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error at unzip theme/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laox;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "layout_port/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_1

    .line 15663
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 15550
    goto/16 :goto_0

    .line 15554
    :cond_1d
    :try_start_18
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 15555
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v4, "theme.sga"

    invoke-virtual {v1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 15556
    sget-boolean v1, Laox;->a:Z

    if-eqz v1, :cond_1e

    .line 15557
    const-string v1, "theme/default/pad/layout_port/"

    const/4 v4, 0x0

    const-string v6, "port/"

    invoke-static {v0, p2, v1, v4, v6}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v1

    .line 15559
    if-nez v1, :cond_1f

    .line 15560
    const-string v1, "    SogouIME"

    const-string v3, "error at unzip theme/default/pad/layout_port/"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_1

    .line 15663
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 15562
    goto/16 :goto_0

    .line 15565
    :cond_1e
    :try_start_19
    const-string v1, "theme/default/phone/layout_port/"

    const/4 v4, 0x0

    const-string v6, "port/"

    invoke-static {v0, p2, v1, v4, v6}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v1

    .line 15567
    if-nez v1, :cond_1f

    .line 15568
    const-string v1, "    SogouIME"

    const-string v3, "error at unzip theme/default/phone/layout_port/"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_1

    .line 15663
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 15570
    goto/16 :goto_0

    .line 15574
    :cond_1f
    if-lez v5, :cond_21

    .line 15575
    :try_start_1a
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 15576
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v4, "theme.sga"

    invoke-virtual {v1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 15577
    sget-boolean v1, Laox;->a:Z

    if-eqz v1, :cond_20

    .line 15578
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "theme/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Laox;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "pad/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "layout_port/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const-string v6, "port/"

    invoke-static {v0, p2, v1, v4, v6}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v1

    .line 15580
    if-nez v1, :cond_21

    .line 15581
    const-string v1, "    SogouIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error at unzip theme/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laox;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "pad/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "layout_port/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_1

    .line 15663
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 15583
    goto/16 :goto_0

    .line 15586
    :cond_20
    :try_start_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "theme/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Laox;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "phone/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "layout_port/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const-string v6, "port/"

    invoke-static {v0, p2, v1, v4, v6}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v1

    .line 15588
    if-nez v1, :cond_21

    .line 15589
    const-string v1, "    SogouIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error at unzip theme/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laox;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "phone/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "layout_port/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_1

    .line 15663
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 15591
    goto/16 :goto_0

    .line 15597
    :cond_21
    :try_start_1c
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 15598
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v4, "theme.sga"

    invoke-virtual {v1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 15599
    const-string v1, "theme/default/layout_land/"

    const/4 v4, 0x0

    const-string v6, "land/"

    invoke-static {v0, p2, v1, v4, v6}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v1

    .line 15601
    if-nez v1, :cond_22

    .line 15602
    const-string v1, "    SogouIME"

    const-string v3, "error at unzip theme/default/layout_land/"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_1

    .line 15663
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 15604
    goto/16 :goto_0

    .line 15607
    :cond_22
    if-lez v5, :cond_23

    .line 15608
    :try_start_1d
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 15609
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v4, "theme.sga"

    invoke-virtual {v1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 15610
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "theme/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Laox;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "layout_land/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const-string v6, "land/"

    invoke-static {v0, p2, v1, v4, v6}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v1

    .line 15612
    if-nez v1, :cond_23

    .line 15613
    const-string v1, "    SogouIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error at unzip theme/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laox;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "layout_land/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_1

    .line 15663
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 15615
    goto/16 :goto_0

    .line 15619
    :cond_23
    :try_start_1e
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 15620
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v4, "theme.sga"

    invoke-virtual {v1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 15621
    sget-boolean v1, Laox;->a:Z

    if-eqz v1, :cond_24

    .line 15622
    const-string v1, "theme/default/pad/layout_land/"

    const/4 v4, 0x0

    const-string v6, "land/"

    invoke-static {v0, p2, v1, v4, v6}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v1

    .line 15624
    if-nez v1, :cond_25

    .line 15625
    const-string v1, "    SogouIME"

    const-string v3, "error at unzip theme/default/pad/layout_land/"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_1

    .line 15663
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 15627
    goto/16 :goto_0

    .line 15630
    :cond_24
    :try_start_1f
    const-string v1, "theme/default/phone/layout_land/"

    const/4 v4, 0x0

    const-string v6, "land/"

    invoke-static {v0, p2, v1, v4, v6}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v1

    .line 15632
    if-nez v1, :cond_25

    .line 15633
    const-string v1, "    SogouIME"

    const-string v3, "error at unzip theme/default/phone/layout_land/"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_1

    .line 15663
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 15635
    goto/16 :goto_0

    .line 15639
    :cond_25
    if-lez v5, :cond_27

    .line 15640
    :try_start_20
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 15641
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v4, "theme.sga"

    invoke-virtual {v1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 15642
    sget-boolean v1, Laox;->a:Z

    if-eqz v1, :cond_26

    .line 15643
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "theme/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Laox;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "pad/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "layout_land/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const-string v6, "land/"

    invoke-static {v0, p2, v1, v4, v6}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v1

    .line 15645
    if-nez v1, :cond_27

    .line 15646
    const-string v1, "    SogouIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error at unzip theme/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laox;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "pad/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "layout_land/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_1

    .line 15663
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 15648
    goto/16 :goto_0

    .line 15651
    :cond_26
    :try_start_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "theme/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Laox;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "phone/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "layout_land/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const-string v6, "land/"

    invoke-static {v0, p2, v1, v4, v6}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v1

    .line 15653
    if-nez v1, :cond_27

    .line 15654
    const-string v1, "    SogouIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error at unzip theme/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laox;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "phone/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "layout_land/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_1

    .line 15663
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 15656
    goto/16 :goto_0

    .line 15660
    :catch_1
    move-exception v1

    .line 15663
    :goto_6
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 15661
    goto/16 :goto_0

    .line 15663
    :catchall_0
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    :goto_7
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_27
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v3

    .line 15666
    goto/16 :goto_0

    .line 15663
    :catchall_1
    move-exception v0

    goto :goto_7

    :catchall_2
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    goto :goto_7

    .line 15660
    :catch_2
    move-exception v0

    move-object v0, v4

    goto :goto_6

    :cond_28
    move v0, v1

    goto/16 :goto_2
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 15672
    .line 15682
    const/4 v1, 0x0

    .line 15694
    :try_start_0
    const-string v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 15697
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "theme_pc.sga"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 15698
    :try_start_1
    invoke-virtual {v10}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 15699
    new-array v0, v1, [B

    .line 15700
    const/4 v2, 0x0

    invoke-virtual {v10, v0, v2, v1}, Ljava/io/InputStream;->read([BII)I

    .line 15701
    int-to-long v1, v1

    const/4 v3, 0x0

    aget-object v3, v5, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    sget-boolean v7, Laox;->a:Z

    invoke-static/range {v0 .. v7}, Lcom/sohu/inputmethod/engine/ThemeExtract;->nativeOpenThemeData([BJJJZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 15703
    invoke-static {}, Lcom/sohu/inputmethod/engine/ThemeExtract;->nativeRelease()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 15732
    invoke-static {}, Lcom/sohu/inputmethod/engine/ThemeExtract;->nativeRelease()V

    .line 15733
    :goto_0
    invoke-static {v10}, Lazd;->a(Ljava/io/Closeable;)V

    .line 15742
    :goto_1
    return v9

    .line 15712
    :cond_0
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laox;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laox;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sohu/inputmethod/engine/ThemeExtract;->nativeSetTargetPath(Ljava/lang/String;Ljava/lang/String;)Z

    .line 15716
    invoke-static {}, Lcom/sohu/inputmethod/engine/ThemeExtract;->nativeBeginExtract()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    if-ne v0, v8, :cond_1

    .line 15732
    invoke-static {}, Lcom/sohu/inputmethod/engine/ThemeExtract;->nativeRelease()V

    .line 15733
    invoke-static {v10}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v8

    :goto_2
    move v9, v0

    .line 15742
    goto :goto_1

    .line 15721
    :cond_1
    :try_start_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15722
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-ne v1, v8, :cond_2

    .line 15723
    invoke-static {v0}, Lazj;->a(Ljava/io/File;)Z

    .line 15725
    :cond_2
    invoke-static {}, Lcom/sohu/inputmethod/engine/ThemeExtract;->nativeRelease()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 15732
    invoke-static {}, Lcom/sohu/inputmethod/engine/ThemeExtract;->nativeRelease()V

    goto :goto_0

    .line 15728
    :catch_0
    move-exception v0

    .line 15729
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 15732
    invoke-static {}, Lcom/sohu/inputmethod/engine/ThemeExtract;->nativeRelease()V

    .line 15733
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v9

    .line 15738
    goto :goto_2

    .line 15732
    :catchall_0
    move-exception v0

    move-object v10, v1

    :goto_4
    invoke-static {}, Lcom/sohu/inputmethod/engine/ThemeExtract;->nativeRelease()V

    .line 15733
    invoke-static {v10}, Lazd;->a(Ljava/io/Closeable;)V

    .line 15732
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v10, v1

    goto :goto_4

    .line 15728
    :catch_1
    move-exception v0

    move-object v1, v10

    goto :goto_3
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x2d0

    const/16 v5, 0x280

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15746
    .line 15747
    const-string v0, "theme_pc/"

    .line 15755
    const/4 v0, 0x0

    .line 15763
    :try_start_0
    const-string v1, "x"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 15764
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v7, "theme.sga"

    invoke-virtual {v4, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 15769
    const/4 v0, 0x0

    :try_start_1
    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 15770
    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 15776
    if-lez v7, :cond_0

    if-gtz v0, :cond_1

    .line 15777
    :cond_0
    :try_start_2
    const-string v0, "    SogouIME"

    const-string v1, "screen width or height is below zero"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 16113
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 16116
    :goto_0
    return v0

    .line 15771
    :catch_0
    move-exception v0

    .line 15772
    :try_start_3
    const-string v0, "    SogouIME"

    const-string v1, "resolution can not parse to int"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 16113
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 15773
    goto :goto_0

    .line 15781
    :cond_1
    :try_start_4
    const-string v0, "theme_pc/"

    invoke-static {v4, v0}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 15782
    if-nez v0, :cond_2

    .line 15783
    const-string v0, "    SogouIME"

    const-string v1, "can not get resolution list"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 16113
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 15784
    goto :goto_0

    .line 15787
    :cond_2
    :try_start_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v1, v2

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 15788
    sub-int v9, v7, v0

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 15789
    sub-int v10, v7, v1

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 15790
    if-ge v9, v10, :cond_21

    :goto_2
    move v1, v0

    .line 15792
    goto :goto_1

    .line 15793
    :cond_3
    if-lez v1, :cond_4

    .line 15794
    sget-boolean v0, Laox;->a:Z

    if-eqz v0, :cond_5

    .line 15795
    if-ge v1, v5, :cond_4

    move v1, v5

    .line 15821
    :cond_4
    :goto_3
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 15822
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v6, "theme.sga"

    invoke-virtual {v0, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v0

    .line 15823
    :try_start_6
    const-string v4, "theme_pc/theme.ini"

    const/4 v6, 0x1

    const-string v7, "theme.ini"

    invoke-static {v0, p2, v4, v6, v7}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v4

    .line 15824
    if-nez v4, :cond_6

    .line 15825
    const-string v1, "    SogouIME"

    const-string v3, "error at unzip theme.ini"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 16113
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 15826
    goto :goto_0

    .line 15798
    :cond_5
    if-le v1, v6, :cond_4

    move v1, v6

    .line 15799
    goto :goto_3

    .line 15830
    :cond_6
    :try_start_7
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 15831
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v6, "theme.sga"

    invoke-virtual {v4, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 15832
    const-string v4, "theme_pc/default/layout/"

    const/4 v6, 0x0

    const-string v7, "layout/"

    invoke-static {v0, p2, v4, v6, v7}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v4

    .line 15834
    if-nez v4, :cond_7

    .line 15835
    const-string v1, "    SogouIME"

    const-string v3, "error at unzip theme_pc/default/layout/"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 16113
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 15837
    goto/16 :goto_0

    .line 15840
    :cond_7
    if-lez v1, :cond_8

    .line 15841
    :try_start_8
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 15842
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v6, "theme.sga"

    invoke-virtual {v4, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 15843
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "theme_pc/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Laox;->b:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "layout/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const-string v7, "layout/"

    invoke-static {v0, p2, v4, v6, v7}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v4

    .line 15845
    if-nez v4, :cond_8

    .line 15846
    const-string v3, "    SogouIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error at unzip theme_pc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Laox;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "layout/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 16113
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 15848
    goto/16 :goto_0

    .line 15852
    :cond_8
    :try_start_9
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 15853
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v6, "theme.sga"

    invoke-virtual {v4, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 15854
    sget-boolean v4, Laox;->a:Z

    if-eqz v4, :cond_9

    .line 15855
    const-string v4, "theme_pc/default/pad/layout/"

    const/4 v6, 0x0

    const-string v7, "layout/"

    invoke-static {v0, p2, v4, v6, v7}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v4

    .line 15857
    if-nez v4, :cond_a

    .line 15858
    const-string v1, "    SogouIME"

    const-string v3, "error at unzip theme_pc/default/pad/layout/"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 16113
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 15860
    goto/16 :goto_0

    .line 15863
    :cond_9
    :try_start_a
    const-string v4, "theme_pc/default/phone/layout/"

    const/4 v6, 0x0

    const-string v7, "layout/"

    invoke-static {v0, p2, v4, v6, v7}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v4

    .line 15865
    if-nez v4, :cond_a

    .line 15866
    const-string v1, "    SogouIME"

    const-string v3, "error at unzip theme_pc/default/phone/layout/"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 16113
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 15868
    goto/16 :goto_0

    .line 15872
    :cond_a
    if-lez v1, :cond_c

    .line 15873
    :try_start_b
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 15874
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v6, "theme.sga"

    invoke-virtual {v4, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 15875
    sget-boolean v4, Laox;->a:Z

    if-eqz v4, :cond_b

    .line 15876
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "theme_pc/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Laox;->b:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "pad/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "layout/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const-string v7, "layout/"

    invoke-static {v0, p2, v4, v6, v7}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v4

    .line 15878
    if-nez v4, :cond_c

    .line 15879
    const-string v3, "    SogouIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error at unzip theme_pc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Laox;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "pad/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "layout/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 16113
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 15881
    goto/16 :goto_0

    .line 15884
    :cond_b
    :try_start_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "theme_pc/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Laox;->b:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "phone/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "layout/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const-string v7, "layout/"

    invoke-static {v0, p2, v4, v6, v7}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v4

    .line 15886
    if-nez v4, :cond_c

    .line 15887
    const-string v3, "    SogouIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error at unzip theme_pc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Laox;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "phone/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "layout/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    .line 16113
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 15889
    goto/16 :goto_0

    .line 15895
    :cond_c
    :try_start_d
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 15896
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v6, "theme.sga"

    invoke-virtual {v4, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 15897
    const-string v4, "theme_pc/default/res/"

    const/4 v6, 0x0

    const-string v7, "res/"

    invoke-static {v0, p2, v4, v6, v7}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v4

    .line 15899
    if-nez v4, :cond_d

    .line 15900
    const-string v1, "    SogouIME"

    const-string v3, "error at unzip theme_pc/default/res/"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    .line 16113
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 15902
    goto/16 :goto_0

    .line 15905
    :cond_d
    if-lez v1, :cond_e

    .line 15906
    :try_start_e
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 15907
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v6, "theme.sga"

    invoke-virtual {v4, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 15908
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "theme_pc/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Laox;->b:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "res/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const-string v7, "res/"

    invoke-static {v0, p2, v4, v6, v7}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v4

    .line 15910
    if-nez v4, :cond_e

    .line 15911
    const-string v3, "    SogouIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error at unzip theme_pc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Laox;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "res/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    .line 16113
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 15913
    goto/16 :goto_0

    .line 15917
    :cond_e
    :try_start_f
    sget-boolean v4, Laox;->a:Z

    if-eqz v4, :cond_10

    if-lez v1, :cond_10

    .line 15918
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 15919
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v6, "theme.sga"

    invoke-virtual {v4, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 15920
    if-ne v1, v5, :cond_f

    .line 15921
    const-string v4, "theme_pc/320/phone/res/"

    const/4 v5, 0x0

    const-string v6, "res/"

    invoke-static {v0, p2, v4, v5, v6}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v4

    .line 15923
    if-nez v4, :cond_10

    .line 15924
    const-string v1, "    SogouIME"

    const-string v3, "error at unzip theme_pc/320/phone/res/"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    .line 16113
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 15926
    goto/16 :goto_0

    .line 15929
    :cond_f
    :try_start_10
    const-string v4, "theme_pc/480/phone/res/"

    const/4 v5, 0x0

    const-string v6, "res/"

    invoke-static {v0, p2, v4, v5, v6}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v4

    .line 15931
    if-nez v4, :cond_10

    .line 15932
    const-string v1, "    SogouIME"

    const-string v3, "error at unzip theme_pc/480/phone/res/"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1

    .line 16113
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 15934
    goto/16 :goto_0

    .line 15939
    :cond_10
    :try_start_11
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 15940
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "theme.sga"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 15941
    sget-boolean v4, Laox;->a:Z

    if-eqz v4, :cond_11

    .line 15942
    const-string v4, "theme_pc/default/pad/res/"

    const/4 v5, 0x0

    const-string v6, "res/"

    invoke-static {v0, p2, v4, v5, v6}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v4

    .line 15944
    if-nez v4, :cond_12

    .line 15945
    const-string v1, "    SogouIME"

    const-string v3, "error at unzip theme_pc/default/pad/res/"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1

    .line 16113
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 15947
    goto/16 :goto_0

    .line 15950
    :cond_11
    :try_start_12
    const-string v4, "theme_pc/default/phone/res/"

    const/4 v5, 0x0

    const-string v6, "res/"

    invoke-static {v0, p2, v4, v5, v6}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v4

    .line 15952
    if-nez v4, :cond_12

    .line 15953
    const-string v1, "    SogouIME"

    const-string v3, "error at unzip theme_pc/default/phone/res/"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1

    .line 16113
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 15955
    goto/16 :goto_0

    .line 15959
    :cond_12
    if-lez v1, :cond_14

    .line 15960
    :try_start_13
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 15961
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "theme.sga"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 15962
    sget-boolean v4, Laox;->a:Z

    if-eqz v4, :cond_13

    .line 15963
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "theme_pc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laox;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "pad/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "res/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "res/"

    invoke-static {v0, p2, v4, v5, v6}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v4

    .line 15965
    if-nez v4, :cond_14

    .line 15966
    const-string v3, "    SogouIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error at unzip theme_pc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Laox;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "pad/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "res/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1

    .line 16113
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 15968
    goto/16 :goto_0

    .line 15971
    :cond_13
    :try_start_14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "theme_pc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laox;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "phone/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "res/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "res/"

    invoke-static {v0, p2, v4, v5, v6}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v4

    .line 15973
    if-nez v4, :cond_14

    .line 15974
    const-string v3, "    SogouIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error at unzip theme_pc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Laox;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "phone/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "res/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1

    .line 16113
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 15976
    goto/16 :goto_0

    .line 15982
    :cond_14
    :try_start_15
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 15983
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "theme.sga"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 15984
    const-string v4, "theme_pc/default/layout_port/"

    const/4 v5, 0x0

    const-string v6, "port/"

    invoke-static {v0, p2, v4, v5, v6}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v4

    .line 15986
    if-nez v4, :cond_15

    .line 15987
    const-string v1, "    SogouIME"

    const-string v3, "error at unzip theme_pc/default/layout_port/"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_1

    .line 16113
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 15989
    goto/16 :goto_0

    .line 15992
    :cond_15
    if-lez v1, :cond_16

    .line 15993
    :try_start_16
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 15994
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "theme.sga"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 15995
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "theme_pc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laox;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "layout_port/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "port/"

    invoke-static {v0, p2, v4, v5, v6}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v4

    .line 15997
    if-nez v4, :cond_16

    .line 15998
    const-string v3, "    SogouIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error at unzip theme_pc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Laox;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "layout_port/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_1

    .line 16113
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 16000
    goto/16 :goto_0

    .line 16004
    :cond_16
    :try_start_17
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 16005
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "theme.sga"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 16006
    sget-boolean v4, Laox;->a:Z

    if-eqz v4, :cond_17

    .line 16007
    const-string v4, "theme_pc/default/pad/layout_port/"

    const/4 v5, 0x0

    const-string v6, "port/"

    invoke-static {v0, p2, v4, v5, v6}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v4

    .line 16009
    if-nez v4, :cond_18

    .line 16010
    const-string v1, "    SogouIME"

    const-string v3, "error at unzip theme_pc/default/pad/layout_port/"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_1

    .line 16113
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 16012
    goto/16 :goto_0

    .line 16015
    :cond_17
    :try_start_18
    const-string v4, "theme_pc/default/phone/layout_port/"

    const/4 v5, 0x0

    const-string v6, "port/"

    invoke-static {v0, p2, v4, v5, v6}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v4

    .line 16017
    if-nez v4, :cond_18

    .line 16018
    const-string v1, "    SogouIME"

    const-string v3, "error at unzip theme_pc/default/phone/layout_port/"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_1

    .line 16113
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 16020
    goto/16 :goto_0

    .line 16024
    :cond_18
    if-lez v1, :cond_1a

    .line 16025
    :try_start_19
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 16026
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "theme.sga"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 16027
    sget-boolean v4, Laox;->a:Z

    if-eqz v4, :cond_19

    .line 16028
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "theme_pc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laox;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "pad/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "layout_port/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "port/"

    invoke-static {v0, p2, v4, v5, v6}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v4

    .line 16030
    if-nez v4, :cond_1a

    .line 16031
    const-string v3, "    SogouIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error at unzip theme_pc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Laox;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "pad/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "layout_port/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_1

    .line 16113
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 16033
    goto/16 :goto_0

    .line 16036
    :cond_19
    :try_start_1a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "theme_pc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laox;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "phone/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "layout_port/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "port/"

    invoke-static {v0, p2, v4, v5, v6}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v4

    .line 16038
    if-nez v4, :cond_1a

    .line 16039
    const-string v3, "    SogouIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error at unzip theme_pc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Laox;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "phone/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "layout_port/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_1

    .line 16113
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 16041
    goto/16 :goto_0

    .line 16047
    :cond_1a
    :try_start_1b
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 16048
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "theme.sga"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 16049
    const-string v4, "theme_pc/default/layout_land/"

    const/4 v5, 0x0

    const-string v6, "land/"

    invoke-static {v0, p2, v4, v5, v6}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v4

    .line 16051
    if-nez v4, :cond_1b

    .line 16052
    const-string v1, "    SogouIME"

    const-string v3, "error at unzip theme_pc/default/layout_land/"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_1

    .line 16113
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 16054
    goto/16 :goto_0

    .line 16057
    :cond_1b
    if-lez v1, :cond_1c

    .line 16058
    :try_start_1c
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 16059
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "theme.sga"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 16060
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "theme_pc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laox;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "layout_land/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "land/"

    invoke-static {v0, p2, v4, v5, v6}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v4

    .line 16062
    if-nez v4, :cond_1c

    .line 16063
    const-string v3, "    SogouIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error at unzip theme_pc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Laox;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "layout_land/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_1

    .line 16113
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 16065
    goto/16 :goto_0

    .line 16069
    :cond_1c
    :try_start_1d
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 16070
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "theme.sga"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 16071
    sget-boolean v4, Laox;->a:Z

    if-eqz v4, :cond_1d

    .line 16072
    const-string v4, "theme_pc/default/pad/layout_land/"

    const/4 v5, 0x0

    const-string v6, "land/"

    invoke-static {v0, p2, v4, v5, v6}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v4

    .line 16074
    if-nez v4, :cond_1e

    .line 16075
    const-string v1, "    SogouIME"

    const-string v3, "error at unzip theme_pc/default/pad/layout_land/"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_1

    .line 16113
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 16077
    goto/16 :goto_0

    .line 16080
    :cond_1d
    :try_start_1e
    const-string v4, "theme_pc/default/phone/layout_land/"

    const/4 v5, 0x0

    const-string v6, "land/"

    invoke-static {v0, p2, v4, v5, v6}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v4

    .line 16082
    if-nez v4, :cond_1e

    .line 16083
    const-string v1, "    SogouIME"

    const-string v3, "error at unzip theme_pc/default/phone/layout_land/"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_1

    .line 16113
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 16085
    goto/16 :goto_0

    .line 16089
    :cond_1e
    if-lez v1, :cond_20

    .line 16090
    :try_start_1f
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 16091
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "theme.sga"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 16092
    sget-boolean v4, Laox;->a:Z

    if-eqz v4, :cond_1f

    .line 16093
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "theme_pc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laox;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "pad/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "layout_land/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "land/"

    invoke-static {v0, p2, v4, v5, v6}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v4

    .line 16095
    if-nez v4, :cond_20

    .line 16096
    const-string v3, "    SogouIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error at unzip theme_pc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Laox;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "pad/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "layout_land/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_1

    .line 16113
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 16098
    goto/16 :goto_0

    .line 16101
    :cond_1f
    :try_start_20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "theme_pc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laox;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "phone/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "layout_land/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "land/"

    invoke-static {v0, p2, v4, v5, v6}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v4

    .line 16103
    if-nez v4, :cond_20

    .line 16104
    const-string v3, "    SogouIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error at unzip theme_pc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Laox;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "phone/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "layout_land/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_1

    .line 16113
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 16106
    goto/16 :goto_0

    .line 16110
    :catch_1
    move-exception v1

    .line 16113
    :goto_4
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 16111
    goto/16 :goto_0

    .line 16113
    :catchall_0
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    :goto_5
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_20
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v3

    .line 16116
    goto/16 :goto_0

    .line 16113
    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    goto :goto_5

    .line 16110
    :catch_2
    move-exception v0

    move-object v0, v4

    goto :goto_4

    :cond_21
    move v0, v1

    goto/16 :goto_2
.end method

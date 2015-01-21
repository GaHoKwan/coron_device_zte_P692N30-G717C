.class public Lcom/isw/android/corp/util/InitFuncs;
.super Ljava/lang/Object;
.source "InitFuncs.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiniInitFuncs"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert2Data([SLjava/lang/String;)V
    .locals 7
    .parameter "loca"
    .parameter "fileName"

    .prologue
    .line 326
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    const-string v4, "MiniInitFuncs"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "fileName: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const/4 v2, 0x0

    .line 332
    .local v2, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    .end local v2           #out:Ljava/io/FileOutputStream;
    .local v3, out:Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    :try_start_1
    array-length v4, p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    if-lt v1, v4, :cond_2

    .line 341
    if-eqz v3, :cond_4

    .line 342
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 343
    const/4 v2, 0x0

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 334
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :cond_2
    :try_start_3
    aget-short v4, p0, v1

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 333
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 336
    .end local v1           #i:I
    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 337
    .local v0, ex:Ljava/lang/Exception;
    :goto_2
    :try_start_4
    const-string v4, "MiniInitFuncs"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[convert2Data] ex: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 341
    if-eqz v2, :cond_0

    .line 342
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 343
    const/4 v2, 0x0

    goto :goto_0

    .line 345
    :catch_1
    move-exception v0

    .line 346
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 339
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 341
    :goto_3
    if-eqz v2, :cond_3

    .line 342
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 343
    const/4 v2, 0x0

    .line 348
    :cond_3
    :goto_4
    throw v4

    .line 345
    :catch_2
    move-exception v0

    .line 346
    .restart local v0       #ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 345
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v1       #i:I
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    .line 346
    .restart local v0       #ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0           #ex:Ljava/lang/Exception;
    :cond_4
    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 339
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 336
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public static copyPreAreaCodeData()V
    .locals 3

    .prologue
    .line 275
    const-string v0, "MiniInitFuncs"

    const-string v1, "Begin copy PreAreaCodeData..."

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    sget-object v0, Lcom/isw/third/app/predata/WST_areacode;->iconData:[S

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->locDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 277
    const-string v2, "areacode.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 276
    invoke-static {v0, v1}, Lcom/isw/android/corp/util/InitFuncs;->convert2Data([SLjava/lang/String;)V

    .line 278
    const-string v0, "MiniInitFuncs"

    const-string v1, "End copy PreAreaCodeData."

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method public static copyPreAssetsData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter "ctx"
    .parameter "preDir"

    .prologue
    .line 253
    :try_start_0
    const-string v5, "MiniInitFuncs"

    const-string v6, "Begin copy preAssetsData..."

    invoke-static {v5, v6}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 255
    .local v0, assetManager:Landroid/content/res/AssetManager;
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 256
    .local v3, list:[Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 257
    const-string v4, ""

    .line 258
    .local v4, target:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v3

    if-lt v2, v5, :cond_0

    .line 268
    .end local v2           #i:I
    .end local v4           #target:Ljava/lang/String;
    :goto_1
    const-string v5, "MiniInitFuncs"

    const-string v6, "End copy preAssetsData."

    invoke-static {v5, v6}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .end local v0           #assetManager:Landroid/content/res/AssetManager;
    .end local v3           #list:[Ljava/lang/String;
    :goto_2
    return-void

    .line 259
    .restart local v0       #assetManager:Landroid/content/res/AssetManager;
    .restart local v2       #i:I
    .restart local v3       #list:[Ljava/lang/String;
    .restart local v4       #target:Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/isw/android/corp/util/LocalConfig;->preDataDir:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 260
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 261
    const-string v5, "MiniInitFuncs"

    aget-object v6, v3, v2

    invoke-static {v5, v6}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p0, v4}, Lcom/isw/android/corp/util/WinksTools;->copyAssetsFile(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 258
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 266
    .end local v2           #i:I
    .end local v4           #target:Ljava/lang/String;
    :cond_2
    const-string v5, "MiniInitFuncs"

    const-string v6, "pre assets list is null!"

    invoke-static {v5, v6}, Lcom/isw/android/corp/util/LOG;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 269
    .end local v0           #assetManager:Landroid/content/res/AssetManager;
    .end local v3           #list:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 270
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static copyPreJavaData()V
    .locals 3

    .prologue
    .line 282
    const-string v0, "MiniInitFuncs"

    const-string v1, "Begin copy preJavaData..."

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    sget-object v0, Lcom/isw/third/app/predata/WST_1;->iconData:[S

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->preDataDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "1.jpgx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/InitFuncs;->convert2Data([SLjava/lang/String;)V

    .line 285
    sget-object v0, Lcom/isw/third/app/predata/WST_2;->iconData:[S

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->preDataDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "2.jpgx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/InitFuncs;->convert2Data([SLjava/lang/String;)V

    .line 286
    sget-object v0, Lcom/isw/third/app/predata/WST_3;->iconData:[S

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->preDataDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "3.jpgx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/InitFuncs;->convert2Data([SLjava/lang/String;)V

    .line 287
    sget-object v0, Lcom/isw/third/app/predata/WST_4;->iconData:[S

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->preDataDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "4.jpgx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/InitFuncs;->convert2Data([SLjava/lang/String;)V

    .line 288
    sget-object v0, Lcom/isw/third/app/predata/WST_5;->iconData:[S

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->preDataDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "5.jpgx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/InitFuncs;->convert2Data([SLjava/lang/String;)V

    .line 289
    sget-object v0, Lcom/isw/third/app/predata/WST_6;->iconData:[S

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->preDataDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "6.jpgx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/InitFuncs;->convert2Data([SLjava/lang/String;)V

    .line 290
    sget-object v0, Lcom/isw/third/app/predata/WST_7;->iconData:[S

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->preDataDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "7.jpgx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/InitFuncs;->convert2Data([SLjava/lang/String;)V

    .line 291
    sget-object v0, Lcom/isw/third/app/predata/WST_8;->iconData:[S

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->preDataDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "8.jpgx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/InitFuncs;->convert2Data([SLjava/lang/String;)V

    .line 292
    sget-object v0, Lcom/isw/third/app/predata/WST_9;->iconData:[S

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->preDataDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "9.jpgx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/InitFuncs;->convert2Data([SLjava/lang/String;)V

    .line 293
    sget-object v0, Lcom/isw/third/app/predata/WST_10;->iconData:[S

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->preDataDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "10.jpgx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/InitFuncs;->convert2Data([SLjava/lang/String;)V

    .line 294
    sget-object v0, Lcom/isw/third/app/predata/WST_11;->iconData:[S

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->preDataDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "11.jpgx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/InitFuncs;->convert2Data([SLjava/lang/String;)V

    .line 295
    sget-object v0, Lcom/isw/third/app/predata/WST_12;->iconData:[S

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->preDataDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "12.jpgx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/InitFuncs;->convert2Data([SLjava/lang/String;)V

    .line 296
    sget-object v0, Lcom/isw/third/app/predata/WST_13;->iconData:[S

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->preDataDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "13.jpgx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/InitFuncs;->convert2Data([SLjava/lang/String;)V

    .line 297
    sget-object v0, Lcom/isw/third/app/predata/WST_14;->iconData:[S

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->preDataDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "14.jpgx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/InitFuncs;->convert2Data([SLjava/lang/String;)V

    .line 298
    sget-object v0, Lcom/isw/third/app/predata/WST_15;->iconData:[S

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->preDataDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "15.jpgx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/InitFuncs;->convert2Data([SLjava/lang/String;)V

    .line 299
    sget-object v0, Lcom/isw/third/app/predata/WST_16;->iconData:[S

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->preDataDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "16.jpgx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/InitFuncs;->convert2Data([SLjava/lang/String;)V

    .line 300
    sget-object v0, Lcom/isw/third/app/predata/WST_17;->iconData:[S

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->preDataDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "17.jpgx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/InitFuncs;->convert2Data([SLjava/lang/String;)V

    .line 301
    sget-object v0, Lcom/isw/third/app/predata/WST_18;->iconData:[S

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->preDataDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "18.jpgx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/InitFuncs;->convert2Data([SLjava/lang/String;)V

    .line 302
    sget-object v0, Lcom/isw/third/app/predata/WST_19;->iconData:[S

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->preDataDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "19.jpgx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/InitFuncs;->convert2Data([SLjava/lang/String;)V

    .line 303
    sget-object v0, Lcom/isw/third/app/predata/WST_20;->iconData:[S

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->preDataDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "20.jpgx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/InitFuncs;->convert2Data([SLjava/lang/String;)V

    .line 304
    sget-object v0, Lcom/isw/third/app/predata/WST_21;->iconData:[S

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->preDataDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "21.jpgx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/InitFuncs;->convert2Data([SLjava/lang/String;)V

    .line 305
    sget-object v0, Lcom/isw/third/app/predata/WST_22;->iconData:[S

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->preDataDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "22.jpgx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/InitFuncs;->convert2Data([SLjava/lang/String;)V

    .line 306
    sget-object v0, Lcom/isw/third/app/predata/WST_23;->iconData:[S

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->preDataDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "23.jpgx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/InitFuncs;->convert2Data([SLjava/lang/String;)V

    .line 307
    sget-object v0, Lcom/isw/third/app/predata/WST_24;->iconData:[S

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->preDataDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "24.jpgx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/InitFuncs;->convert2Data([SLjava/lang/String;)V

    .line 308
    sget-object v0, Lcom/isw/third/app/predata/WST_25;->iconData:[S

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->preDataDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "25.jpgx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/InitFuncs;->convert2Data([SLjava/lang/String;)V

    .line 309
    sget-object v0, Lcom/isw/third/app/predata/WST_26;->iconData:[S

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->preDataDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "26.jpgx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/InitFuncs;->convert2Data([SLjava/lang/String;)V

    .line 310
    sget-object v0, Lcom/isw/third/app/predata/WST_27;->iconData:[S

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->preDataDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "27.jpgx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/InitFuncs;->convert2Data([SLjava/lang/String;)V

    .line 311
    sget-object v0, Lcom/isw/third/app/predata/WST_28;->iconData:[S

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->preDataDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "28.jpgx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/InitFuncs;->convert2Data([SLjava/lang/String;)V

    .line 312
    sget-object v0, Lcom/isw/third/app/predata/WST_29;->iconData:[S

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->preDataDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "29.jpgx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/InitFuncs;->convert2Data([SLjava/lang/String;)V

    .line 313
    sget-object v0, Lcom/isw/third/app/predata/WST_30;->iconData:[S

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->preDataDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "30.jpgx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/InitFuncs;->convert2Data([SLjava/lang/String;)V

    .line 314
    sget-object v0, Lcom/isw/third/app/predata/WST_31;->iconData:[S

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->preDataDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "31.jpgx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/InitFuncs;->convert2Data([SLjava/lang/String;)V

    .line 315
    sget-object v0, Lcom/isw/third/app/predata/WST_32;->iconData:[S

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->preDataDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "32.jpgx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/InitFuncs;->convert2Data([SLjava/lang/String;)V

    .line 316
    sget-object v0, Lcom/isw/third/app/predata/WST_33;->iconData:[S

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->preDataDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "33.jpgx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/InitFuncs;->convert2Data([SLjava/lang/String;)V

    .line 317
    sget-object v0, Lcom/isw/third/app/predata/WST_dotdefault;->iconData:[S

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->preDataDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "dotdefault.pngx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 317
    invoke-static {v0, v1}, Lcom/isw/android/corp/util/InitFuncs;->convert2Data([SLjava/lang/String;)V

    .line 319
    sget-object v0, Lcom/isw/third/app/predata/WST_precompany;->iconData:[S

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->preDataDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "precompany.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 319
    invoke-static {v0, v1}, Lcom/isw/android/corp/util/InitFuncs;->convert2Data([SLjava/lang/String;)V

    .line 322
    const-string v0, "MiniInitFuncs"

    const-string v1, "End copy preJavaData."

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    return-void
.end method

.method public static initADCValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    const-string v0, "100322"

    .line 90
    .local v0, adc:Ljava/lang/String;
    const-string v1, "adccompany"

    invoke-static {v1, v0}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-object v0
.end method

.method public static initADCValue(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "fileName"
    .parameter "ctx"

    .prologue
    .line 98
    const-string v0, "100322"

    .line 99
    .local v0, adc:Ljava/lang/String;
    const-string v1, "adccompany"

    invoke-static {v1, v0}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-object v0
.end method

.method public static initANValue(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "ctx"

    .prologue
    .line 107
    const-string v0, ""

    .line 108
    .local v0, an:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 109
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 110
    .local v1, dm:Landroid/util/DisplayMetrics;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "w-Android-gen-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    const-string v2, "an"

    invoke-static {v2, v0}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-object v0
.end method

.method public static initAVValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    const-string v0, "4.3.3.0.20131209"

    .line 120
    .local v0, av:Ljava/lang/String;
    const-string v1, "av"

    invoke-static {v1, v0}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-object v0
.end method

.method public static declared-synchronized initFS(Landroid/content/Context;)V
    .locals 11
    .parameter "ctx"

    .prologue
    .line 139
    const-class v6, Lcom/isw/android/corp/util/InitFuncs;

    monitor-enter v6

    :try_start_0
    const-string v5, "MiniInitFuncs"

    const-string v7, "init FS"

    invoke-static {v5, v7}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :try_start_1
    const-string v1, ""

    .line 142
    .local v1, dir:Ljava/lang/String;
    const/4 v4, 0x0

    .line 145
    .local v4, file:Ljava/io/File;
    sget-object v1, Lcom/isw/android/corp/util/LocalConfig;->companyIconDir:Ljava/lang/String;

    .line 146
    new-instance v4, Ljava/io/File;

    .end local v4           #file:Ljava/io/File;
    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    .restart local v4       #file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 148
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 152
    :cond_0
    sget-object v1, Lcom/isw/android/corp/util/LocalConfig;->dotIconDir:Ljava/lang/String;

    .line 153
    new-instance v4, Ljava/io/File;

    .end local v4           #file:Ljava/io/File;
    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    .restart local v4       #file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 155
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 159
    :cond_1
    sget-object v1, Lcom/isw/android/corp/util/LocalConfig;->callIconDir:Ljava/lang/String;

    .line 160
    new-instance v4, Ljava/io/File;

    .end local v4           #file:Ljava/io/File;
    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    .restart local v4       #file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 162
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 165
    :cond_2
    sget-object v1, Lcom/isw/android/corp/util/LocalConfig;->pushDir:Ljava/lang/String;

    .line 166
    new-instance v4, Ljava/io/File;

    .end local v4           #file:Ljava/io/File;
    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    .restart local v4       #file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 168
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 171
    :cond_3
    sget-object v1, Lcom/isw/android/corp/util/LocalConfig;->strgDir:Ljava/lang/String;

    .line 172
    new-instance v4, Ljava/io/File;

    .end local v4           #file:Ljava/io/File;
    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    .restart local v4       #file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    .line 174
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 177
    :cond_4
    sget-object v1, Lcom/isw/android/corp/util/LocalConfig;->locDir:Ljava/lang/String;

    .line 178
    new-instance v4, Ljava/io/File;

    .end local v4           #file:Ljava/io/File;
    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    .restart local v4       #file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_5

    .line 180
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 183
    :cond_5
    sget-object v1, Lcom/isw/android/corp/util/LocalConfig;->locItemDir:Ljava/lang/String;

    .line 184
    new-instance v4, Ljava/io/File;

    .end local v4           #file:Ljava/io/File;
    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    .restart local v4       #file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_6

    .line 186
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 189
    :cond_6
    sget-object v1, Lcom/isw/android/corp/util/LocalConfig;->companyDir:Ljava/lang/String;

    .line 190
    new-instance v4, Ljava/io/File;

    .end local v4           #file:Ljava/io/File;
    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    .restart local v4       #file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_7

    .line 192
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 195
    :cond_7
    sget-object v1, Lcom/isw/android/corp/util/LocalConfig;->companyItem:Ljava/lang/String;

    .line 196
    new-instance v4, Ljava/io/File;

    .end local v4           #file:Ljava/io/File;
    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 197
    .restart local v4       #file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_8

    .line 198
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 200
    :cond_8
    const-string v5, "MiniInitFuncs"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "companyItem: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/isw/android/corp/util/LocalConfig;->companyItem:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    sget-object v1, Lcom/isw/android/corp/util/LocalConfig;->imageBgDir:Ljava/lang/String;

    .line 204
    new-instance v4, Ljava/io/File;

    .end local v4           #file:Ljava/io/File;
    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 205
    .restart local v4       #file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_9

    .line 206
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 210
    :cond_9
    sget-object v1, Lcom/isw/android/corp/util/LocalConfig;->preDataDir:Ljava/lang/String;

    .line 211
    new-instance v4, Ljava/io/File;

    .end local v4           #file:Ljava/io/File;
    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    .restart local v4       #file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_a

    .line 213
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 217
    :cond_a
    const-string v5, "bCurrentUseSD"

    .line 218
    const/4 v7, 0x0

    .line 217
    invoke-static {v5, v7}, Lcom/isw/android/corp/util/LocalConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 219
    .local v0, bCurrentUseSD:Z
    if-eqz v0, :cond_b

    .line 220
    invoke-static {}, Lcom/isw/android/corp/util/LocalConfig;->readSDStorage()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-lez v5, :cond_b

    .line 221
    invoke-static {}, Lcom/isw/android/corp/util/LocalConfig;->setSdcardStorage()V

    .line 225
    :cond_b
    new-instance v5, Lcom/isw/android/corp/util/InitFuncs$1;

    invoke-direct {v5, p0}, Lcom/isw/android/corp/util/InitFuncs$1;-><init>(Landroid/content/Context;)V

    .line 239
    invoke-virtual {v5}, Lcom/isw/android/corp/util/InitFuncs$1;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    .line 249
    .end local v0           #bCurrentUseSD:Z
    .end local v1           #dir:Ljava/lang/String;
    .end local v4           #file:Ljava/io/File;
    :goto_0
    monitor-exit v6

    return-void

    .line 241
    :catch_0
    move-exception v3

    .line 242
    .local v3, ex:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 243
    const-string v5, "MiniInitFuncs"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ex: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 139
    .end local v3           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 244
    :catch_1
    move-exception v2

    .line 245
    .local v2, err:Ljava/lang/Error;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Error;->printStackTrace()V

    .line 246
    const-string v5, "MiniInitFuncs"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "err: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public static initIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "ctx"

    .prologue
    .line 74
    .line 75
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 74
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 76
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, imei:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 78
    const-string v0, ""

    .line 80
    :cond_0
    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    const-string v2, "imei"

    invoke-static {v2, v0}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-object v0
.end method

.method public static initIMSI(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "ctx"

    .prologue
    .line 50
    .line 51
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 50
    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 52
    .local v4, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, imsi:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xf

    if-ge v5, v6, :cond_2

    .line 55
    :cond_0
    const-string v5, "imsi"

    const-string v6, ""

    invoke-static {v5, v6}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, randomImsi:Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 57
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 58
    .local v0, dt:Ljava/util/Date;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, random:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "99903"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x3

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 61
    const-string v5, "imsi"

    invoke-static {v5, v3}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .end local v0           #dt:Ljava/util/Date;
    .end local v2           #random:Ljava/lang/String;
    :cond_1
    move-object v1, v3

    .line 67
    .end local v3           #randomImsi:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 65
    :cond_2
    const-string v5, "imsi"

    invoke-static {v5, v1}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static initModel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 128
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 129
    .local v0, model:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 130
    const-string v0, ""

    .line 132
    :cond_0
    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 133
    const-string v1, "model"

    invoke-static {v1, v0}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-object v0
.end method

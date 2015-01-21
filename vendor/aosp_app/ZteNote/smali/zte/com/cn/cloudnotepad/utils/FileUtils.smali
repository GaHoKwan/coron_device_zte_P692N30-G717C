.class public Lzte/com/cn/cloudnotepad/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field public static final LOCATION_NAME:Ljava/lang/String; = "location_"

.field public static final NOTE_CONTENT_NAME:Ljava/lang/String; = ".enml"

.field public static final NOTE_PICTURE_NAME:Ljava/lang/String; = ".jpg"

.field public static final NOTE_RECORD_NAME:Ljava/lang/String; = ".m4a"

.field public static final NOTE_VIDEO_NAME:Ljava/lang/String; = ".mp4"

.field public static final SOUND_RECORD_NAME:Ljava/lang/String; = "SoundRecord_"

.field private static final TAG:Ljava/lang/String; = "FileUtils"

.field public static final TEMP_RECORD_NAME:Ljava/lang/String; = "temp_record.m4a"

.field public static final WALLPAPER_NAME:Ljava/lang/String; = "wallpaper_"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearDustFile(Ljava/lang/String;Ljava/util/List;)V
    .locals 11
    .parameter "dir"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1035
    .local p1, realFileList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1036
    .local v4, fileSrc:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1070
    :cond_0
    :goto_0
    return-void

    .line 1039
    :cond_1
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 1041
    .local v5, files:[Ljava/io/File;
    if-eqz v5, :cond_2

    array-length v7, v5

    if-nez v7, :cond_3

    .line 1042
    :cond_2
    const-string v7, "FileUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "in clearDustFile(), files null, when dir = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1045
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1047
    .local v0, delList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    array-length v8, v5

    const/4 v7, 0x0

    :goto_1
    if-lt v7, v8, :cond_4

    .line 1066
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 1067
    .local v1, f:Ljava/io/File;
    const-string v8, "FileUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "in clearDustFile(), delete file : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 1047
    .end local v1           #f:Ljava/io/File;
    :cond_4
    aget-object v2, v5, v7

    .line 1048
    .local v2, file:Ljava/io/File;
    const/4 v6, 0x0

    .line 1049
    .local v6, isFind:Z
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_8

    .line 1050
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1047
    :cond_5
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1054
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_9

    .line 1061
    :cond_8
    :goto_4
    if-nez v6, :cond_5

    .line 1062
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1054
    :cond_9
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1055
    .local v3, fileName:Ljava/lang/String;
    if-eqz v3, :cond_7

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1056
    const/4 v6, 0x1

    .line 1057
    goto :goto_4
.end method

.method public static convertFileSize(J)Ljava/lang/String;
    .locals 7
    .parameter "fileSize"

    .prologue
    .line 487
    const-string v1, "0"

    .line 488
    .local v1, fileSizeString:Ljava/lang/String;
    const-string v2, "zhangxue"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "convertFileSize fileSize="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormat;

    .line 490
    .local v0, df:Ljava/text/DecimalFormat;
    const-string v2, "0.00"

    invoke-virtual {v0, v2}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 492
    const-wide/16 v2, 0x400

    cmp-long v2, p0, v2

    if-gez v2, :cond_0

    .line 493
    new-instance v2, Ljava/lang/StringBuilder;

    long-to-double v3, p0

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "B"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 501
    :goto_0
    const-string v2, "FileUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fileSizeString="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    return-object v1

    .line 494
    :cond_0
    const-wide/32 v2, 0x100000

    cmp-long v2, p0, v2

    if-gez v2, :cond_1

    .line 495
    new-instance v2, Ljava/lang/StringBuilder;

    long-to-double v3, p0

    const-wide/high16 v5, 0x4090

    div-double/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "K"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 496
    :cond_1
    const-wide/32 v2, 0x40000000

    cmp-long v2, p0, v2

    if-gez v2, :cond_2

    .line 497
    new-instance v2, Ljava/lang/StringBuilder;

    long-to-double v3, p0

    const-wide/high16 v5, 0x4130

    div-double/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "M"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 499
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    long-to-double v3, p0

    const-wide/high16 v5, 0x41d0

    div-double/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "G"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static convertStringtoSize(Ljava/lang/String;)I
    .locals 6
    .parameter "sizeString"

    .prologue
    const/4 v2, 0x0

    .line 506
    const/4 v1, 0x0

    .line 507
    .local v1, size:I
    const-string v3, "zhangxue"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "convertStringtoSize sizeString="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    if-eqz p0, :cond_0

    const-string v3, ""

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 540
    :cond_0
    :goto_0
    return v2

    .line 526
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 527
    .local v0, fSize:F
    const-string v2, "zhangxue"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "convertStringtoSize fSize="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const-string v2, "B"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 530
    float-to-int v1, v0

    .line 539
    :cond_2
    :goto_1
    const-string v2, "zhangxue"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "size="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 540
    goto :goto_0

    .line 531
    :cond_3
    const-string v2, "K"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 532
    const/high16 v2, 0x4480

    mul-float/2addr v2, v0

    float-to-int v1, v2

    goto :goto_1

    .line 533
    :cond_4
    const-string v2, "M"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 534
    const/high16 v2, 0x4980

    mul-float/2addr v2, v0

    float-to-int v1, v2

    goto :goto_1

    .line 535
    :cond_5
    const-string v2, "G"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 536
    const/high16 v2, 0x4e80

    mul-float/2addr v2, v0

    float-to-int v1, v2

    goto :goto_1
.end method

.method public static copyFileData(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 10
    .parameter "inputSteam"
    .parameter "mFileDirectory"
    .parameter "mFileName"

    .prologue
    const/4 v6, 0x0

    .line 246
    const/4 v4, 0x0

    .line 247
    .local v4, outputSteam:Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 248
    .local v1, dstFile:Ljava/io/File;
    if-nez p0, :cond_1

    .line 249
    const-string v7, "zhangxue"

    const-string v8, "inputSteam == null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_0
    :goto_0
    return-object v6

    .line 254
    :cond_1
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 255
    if-eqz v1, :cond_0

    .line 258
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 259
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 261
    :cond_2
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    .end local v4           #outputSteam:Ljava/io/FileOutputStream;
    .local v5, outputSteam:Ljava/io/FileOutputStream;
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 277
    .local v0, buf:[B
    :goto_1
    :try_start_1
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v3

    .local v3, len:I
    if-gtz v3, :cond_3

    .line 288
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 289
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    move-object v4, v5

    .end local v5           #outputSteam:Ljava/io/FileOutputStream;
    .restart local v4       #outputSteam:Ljava/io/FileOutputStream;
    move-object v6, v1

    .line 294
    goto :goto_0

    .line 262
    .end local v0           #buf:[B
    .end local v3           #len:I
    :catch_0
    move-exception v2

    .line 264
    .local v2, e:Ljava/io/FileNotFoundException;
    const-string v7, "zhangxue"

    const-string v8, "copyFileData FileNotFoundException"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 267
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 268
    :catch_1
    move-exception v7

    goto :goto_0

    .line 278
    .end local v2           #e:Ljava/io/FileNotFoundException;
    .end local v4           #outputSteam:Ljava/io/FileOutputStream;
    .restart local v0       #buf:[B
    .restart local v3       #len:I
    .restart local v5       #outputSteam:Ljava/io/FileOutputStream;
    :cond_3
    const/4 v7, 0x0

    :try_start_4
    invoke-virtual {v5, v0, v7, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 281
    .end local v3           #len:I
    :catch_2
    move-exception v2

    .line 284
    .local v2, e:Ljava/io/IOException;
    :try_start_5
    const-string v7, "zhangxue"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "copyFileData IOException : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 288
    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 289
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :goto_3
    move-object v4, v5

    .line 285
    .end local v5           #outputSteam:Ljava/io/FileOutputStream;
    .restart local v4       #outputSteam:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 286
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #outputSteam:Ljava/io/FileOutputStream;
    .restart local v5       #outputSteam:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v6

    .line 288
    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 289
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 293
    :goto_4
    throw v6

    .line 290
    .restart local v3       #len:I
    :catch_3
    move-exception v6

    goto :goto_2

    .end local v3           #len:I
    :catch_4
    move-exception v7

    goto :goto_4

    .restart local v2       #e:Ljava/io/IOException;
    :catch_5
    move-exception v7

    goto :goto_3
.end method

.method public static createFile(Ljava/lang/String;)Ljava/io/File;
    .locals 8
    .parameter "fileName"

    .prologue
    .line 432
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 433
    .local v1, file:Ljava/io/File;
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 434
    .local v3, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/io/File;>;"
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 435
    .local v4, parentFile:Ljava/io/File;
    :goto_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 439
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-lt v2, v5, :cond_2

    .line 443
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 444
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 447
    :cond_0
    :try_start_0
    const-string v5, "FileUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "in createFile(),  parent exist = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", fileName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    .end local v1           #file:Ljava/io/File;
    :goto_2
    return-object v1

    .line 436
    .end local v2           #i:I
    .restart local v1       #file:Ljava/io/File;
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 437
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    goto :goto_0

    .line 440
    .restart local v2       #i:I
    :cond_2
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    .line 439
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 450
    :catch_0
    move-exception v0

    .line 451
    .local v0, e:Ljava/io/IOException;
    const-string v5, "zhangxue"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "create file "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " error : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public static createThumbnailFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "file"
    .parameter "filePathString"

    .prologue
    .line 729
    invoke-static {p0}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->decodeFileToThumbnailBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 730
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 731
    .local v1, thumbnailFile:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 732
    invoke-static {v0, p1}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->storeBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 734
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 735
    const/4 v0, 0x0

    .line 737
    :cond_0
    return-object v1
.end method

.method private static decodeFileToThumbnailBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 24
    .parameter "file"

    .prologue
    .line 741
    if-nez p0, :cond_0

    .line 742
    const/4 v8, 0x0

    .line 832
    :goto_0
    return-object v8

    .line 744
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 745
    const/4 v8, 0x0

    goto :goto_0

    .line 747
    :cond_1
    new-instance v15, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v15}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 748
    .local v15, oriOps:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v15, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 749
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 751
    iget v13, v15, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 752
    .local v13, nativeWidth:I
    iget v12, v15, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 756
    .local v12, nativeHeight:I
    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 757
    .local v14, options:Landroid/graphics/BitmapFactory$Options;
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v2

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/NoteApp;->getScreenWidth()I

    move-result v21

    .line 758
    .local v21, screenWidth:I
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v2

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/NoteApp;->getScreenHeight()I

    move-result v20

    .line 759
    .local v20, screenHeight:I
    mul-int/lit8 v11, v20, 0x2

    .line 760
    .local v11, maxHeight:I
    const/high16 v17, 0x3f80

    .line 761
    .local v17, scale:F
    move/from16 v0, v21

    if-gt v13, v0, :cond_2

    if-gt v12, v11, :cond_2

    .line 762
    int-to-float v0, v13

    move/from16 v19, v0

    .line 763
    .local v19, scaledWidth:F
    int-to-float v0, v12

    move/from16 v18, v0

    .line 764
    .local v18, scaledHeight:F
    const/4 v2, 0x1

    iput v2, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 791
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v22

    .line 792
    .local v22, srcBitmap:Landroid/graphics/Bitmap;
    if-nez v22, :cond_5

    .line 793
    const/4 v8, 0x0

    goto :goto_0

    .line 766
    .end local v18           #scaledHeight:F
    .end local v19           #scaledWidth:F
    .end local v22           #srcBitmap:Landroid/graphics/Bitmap;
    :cond_2
    move/from16 v0, v21

    if-le v13, v0, :cond_3

    .line 767
    int-to-float v2, v13

    move/from16 v0, v21

    int-to-float v3, v0

    div-float v17, v2, v3

    .line 768
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v19, v0

    .line 769
    .restart local v19       #scaledWidth:F
    int-to-float v2, v12

    div-float v18, v2, v17

    .line 776
    .restart local v18       #scaledHeight:F
    :goto_2
    const/high16 v2, 0x3f80

    cmpl-float v2, v17, v2

    if-lez v2, :cond_4

    move/from16 v0, v17

    float-to-int v2, v0

    :goto_3
    iput v2, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_1

    .line 771
    .end local v18           #scaledHeight:F
    .end local v19           #scaledWidth:F
    :cond_3
    int-to-float v2, v12

    int-to-float v3, v11

    div-float v17, v2, v3

    .line 772
    int-to-float v2, v13

    div-float v19, v2, v17

    .line 773
    .restart local v19       #scaledWidth:F
    int-to-float v0, v11

    move/from16 v18, v0

    .restart local v18       #scaledHeight:F
    goto :goto_2

    .line 776
    :cond_4
    const/4 v2, 0x1

    goto :goto_3

    .line 798
    .restart local v22       #srcBitmap:Landroid/graphics/Bitmap;
    :cond_5
    move-object/from16 v1, v22

    .line 799
    .local v1, bitmap:Landroid/graphics/Bitmap;
    iget v2, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v3, 0x1

    if-gt v2, v3, :cond_6

    const/high16 v2, 0x3f80

    cmpl-float v2, v17, v2

    if-lez v2, :cond_7

    .line 801
    :cond_6
    :try_start_0
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 802
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 803
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 801
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 811
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 813
    .local v9, canvas:Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v2, v3, v4, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 814
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v23

    move/from16 v0, v23

    invoke-direct {v3, v4, v5, v7, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 815
    const/4 v4, 0x0

    .line 812
    move-object/from16 v0, v22

    invoke-virtual {v9, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 817
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->recycle()V

    .line 818
    const/16 v22, 0x0

    .line 820
    .end local v9           #canvas:Landroid/graphics/Canvas;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getOrientationFromPath(Ljava/lang/String;)I

    move-result v16

    .line 821
    .local v16, orientation:I
    const-string v2, "FileUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "image orientation = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    if-eqz v16, :cond_9

    .line 823
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 824
    .local v6, matrix:Landroid/graphics/Matrix;
    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    invoke-virtual {v6, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 825
    move/from16 v0, v16

    int-to-float v2, v0

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 826
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 827
    .local v8, b:Landroid/graphics/Bitmap;
    const/16 v16, 0x0

    .line 828
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 829
    const/4 v1, 0x0

    .line 830
    goto/16 :goto_0

    .line 804
    .end local v6           #matrix:Landroid/graphics/Matrix;
    .end local v8           #b:Landroid/graphics/Bitmap;
    .end local v16           #orientation:I
    :catch_0
    move-exception v10

    .line 805
    .local v10, e:Ljava/lang/OutOfMemoryError;
    if-eqz v1, :cond_8

    .line 806
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 807
    const/4 v1, 0x0

    .line 809
    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_0

    .end local v10           #e:Ljava/lang/OutOfMemoryError;
    .restart local v16       #orientation:I
    :cond_9
    move-object v8, v1

    .line 832
    goto/16 :goto_0
.end method

.method public static deleteDirectory(Ljava/io/File;)V
    .locals 3
    .parameter "file"

    .prologue
    .line 1021
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1022
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1023
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 1030
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 1032
    :cond_1
    return-void

    .line 1024
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1025
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1026
    .local v0, files:[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1027
    aget-object v2, v0, v1

    invoke-static {v2}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->deleteDirectory(Ljava/io/File;)V

    .line 1026
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static deleteDirectoryFiles(Ljava/lang/String;)V
    .locals 4
    .parameter "filePath"

    .prologue
    .line 887
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 888
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 899
    :cond_0
    return-void

    .line 891
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 892
    .local v1, files:[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 895
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 896
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 895
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static deleteFile(Ljava/lang/String;)V
    .locals 2
    .parameter "fileName"

    .prologue
    .line 626
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getResourceStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    .local v0, resourceFile:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 628
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 630
    :cond_0
    return-void
.end method

.method public static final getContentStoragePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/Content/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileData(Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 5
    .parameter "mFileName"

    .prologue
    .line 233
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    .local v1, file:Ljava/io/File;
    const-string v2, "zhangxue"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file.getName()="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_0
    return-object v2

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v2, "zhangxue"

    const-string v3, "FileNotFoundException"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 241
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getFileHashname(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "filePathString"
    .parameter "fileType"

    .prologue
    const/4 v3, 0x0

    .line 410
    invoke-static {p0}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getFileData(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 411
    .local v2, fis:Ljava/io/FileInputStream;
    if-nez v2, :cond_1

    .line 426
    :cond_0
    :goto_0
    return-object v3

    .line 414
    :cond_1
    invoke-static {v2}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->messageDigest(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 417
    .local v1, fileName:[B
    :try_start_0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    :goto_1
    if-eqz v1, :cond_0

    .line 426
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->mdByteToString([B)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 418
    :catch_0
    move-exception v0

    .line 420
    .local v0, e:Ljava/io/IOException;
    const-string v4, "zhangxue"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "close file "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .parameter "mContext"
    .parameter "uri"

    .prologue
    const/4 v7, 0x0

    .line 319
    const/4 v6, 0x0

    .line 321
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 322
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    .line 323
    .local v2, projection:[Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 324
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 325
    const-string v1, "_data"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 330
    if-eqz v6, :cond_0

    .line 331
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 334
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v2           #projection:[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 327
    :catch_0
    move-exception v1

    .line 330
    if-eqz v6, :cond_1

    .line 331
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    move-object v1, v7

    .line 334
    goto :goto_0

    .line 329
    :catchall_0
    move-exception v1

    .line 330
    if-eqz v6, :cond_2

    .line 331
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 333
    :cond_2
    throw v1

    .line 330
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v2       #projection:[Ljava/lang/String;
    :cond_3
    if-eqz v6, :cond_1

    .line 331
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public static getFileSize(Ljava/io/File;)J
    .locals 8
    .parameter "file"

    .prologue
    .line 467
    const-wide/16 v1, 0x0

    .line 468
    .local v1, fileSize:J
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 469
    const/4 v3, 0x0

    .line 471
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 472
    .end local v3           #fis:Ljava/io/FileInputStream;
    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v5

    int-to-long v1, v5

    .line 473
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v4

    .line 480
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :goto_0
    const-string v5, "FileUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getFileSize()="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    .end local v3           #fis:Ljava/io/FileInputStream;
    :cond_0
    return-wide v1

    .line 474
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 475
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_1
    const-string v5, "FileUtils"

    const-string v6, "FileNotFoundException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 476
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 477
    .local v0, e:Ljava/io/IOException;
    :goto_2
    const-string v5, "FileUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "IOException = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 476
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_2
    move-exception v0

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .line 474
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_3
    move-exception v0

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static getFileSizeString(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .parameter "file"

    .prologue
    .line 459
    const-string v0, "0"

    .line 461
    .local v0, fileSizeString:Ljava/lang/String;
    invoke-static {p0}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getFileSize(Ljava/io/File;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->convertFileSize(J)Ljava/lang/String;

    move-result-object v0

    .line 462
    const-string v1, "AttachmentListActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fileSizeString="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    return-object v0
.end method

.method public static final getLocationStoragePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/location/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMIMEType(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .parameter "file"

    .prologue
    .line 545
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    .line 546
    .local v1, mimeTypeMap:Landroid/webkit/MimeTypeMap;
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 547
    .local v0, extension:Ljava/lang/String;
    const-string v2, "flv"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 548
    const-string v2, "video/x-flv"

    .line 552
    :goto_0
    return-object v2

    .line 549
    :cond_0
    const-string v2, "mkv"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 550
    const-string v2, "video/x-matroska"

    goto :goto_0

    .line 552
    :cond_1
    invoke-virtual {v1, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static getOrientationFromPath(Ljava/lang/String;)I
    .locals 10
    .parameter "path"

    .prologue
    const/4 v5, 0x0

    .line 677
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    .line 678
    .local v4, mimeTypeMap:Landroid/webkit/MimeTypeMap;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 679
    .local v3, extension:Ljava/lang/String;
    invoke-virtual {v4, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 680
    .local v0, contentType:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 681
    const-string v7, "image/jpeg"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 682
    const-string v7, "image/jpg"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 683
    const-string v7, "image/png"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 684
    :cond_0
    const/4 v2, 0x0

    .line 686
    .local v2, exif:Landroid/media/ExifInterface;
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    .end local v2           #exif:Landroid/media/ExifInterface;
    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    .restart local v2       #exif:Landroid/media/ExifInterface;
    if-nez v2, :cond_1

    .line 696
    :cond_1
    const-string v7, "Orientation"

    const/4 v8, -0x1

    invoke-virtual {v2, v7, v8}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v6

    .line 698
    .local v6, orientation:I
    const/4 v5, 0x0

    .line 699
    .local v5, orient:I
    const/4 v7, 0x6

    if-eq v6, v7, :cond_2

    .line 700
    const/4 v7, 0x3

    if-eq v6, v7, :cond_2

    .line 701
    const/16 v7, 0x8

    if-ne v6, v7, :cond_3

    .line 703
    :cond_2
    const-string v7, "FileUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "getOrientationFromPath... content type ="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 704
    const-string v9, "  path ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  orientation ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 703
    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    packed-switch v6, :pswitch_data_0

    .line 717
    :pswitch_0
    const/4 v5, 0x0

    .line 724
    .end local v2           #exif:Landroid/media/ExifInterface;
    .end local v5           #orient:I
    .end local v6           #orientation:I
    :cond_3
    :goto_0
    return v5

    .line 687
    :catch_0
    move-exception v1

    .line 688
    .local v1, ex:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 708
    .end local v1           #ex:Ljava/io/IOException;
    .restart local v2       #exif:Landroid/media/ExifInterface;
    .restart local v5       #orient:I
    .restart local v6       #orientation:I
    :pswitch_1
    const/16 v5, 0x5a

    .line 709
    goto :goto_0

    .line 711
    :pswitch_2
    const/16 v5, 0xb4

    .line 712
    goto :goto_0

    .line 714
    :pswitch_3
    const/16 v5, 0x10e

    .line 715
    goto :goto_0

    .line 706
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getPhoneStoragePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 88
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v1

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/NoteApp;->getCurrentAccountUserId()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, userId:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v1

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/NoteApp;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v1

    .line 92
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v2

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/NoteApp;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static final getResourceStoragePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/Resource/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getTempStoragePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/temp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoThumbnail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "context"
    .parameter "videoFilePath"
    .parameter "videoThumbnailFilePath"

    .prologue
    .line 836
    const/4 v0, 0x0

    .line 837
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 838
    .local v3, iconBitmap:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v5}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 840
    .local v5, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v5, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 841
    const-wide/16 v6, 0x0

    const/4 v8, 0x2

    invoke-virtual {v5, v6, v7, v8}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 842
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 843
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0200db

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 844
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 845
    .local v4, iconPaint:Landroid/graphics/Paint;
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setDither(Z)V

    .line 846
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 847
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    .line 848
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    .line 847
    invoke-virtual {v1, v3, v6, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 850
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getResourceStoragePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->storeBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    .line 852
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 853
    const/4 v0, 0x0

    .line 855
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 856
    const/4 v3, 0x0

    .line 879
    :try_start_1
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_5

    .line 884
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v4           #iconPaint:Landroid/graphics/Paint;
    :goto_0
    return-void

    .line 857
    :catch_0
    move-exception v2

    .line 858
    .local v2, ex:Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string v6, "zhangxue"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "IllegalArgumentException :"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    if-eqz v0, :cond_0

    .line 860
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 861
    const/4 v0, 0x0

    .line 863
    :cond_0
    if-eqz v3, :cond_1

    .line 864
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 865
    const/4 v3, 0x0

    .line 879
    :cond_1
    :try_start_3
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 880
    :catch_1
    move-exception v2

    .line 881
    .local v2, ex:Ljava/lang/RuntimeException;
    const-string v6, "zhangxue"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "release RuntimeException :"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 867
    .end local v2           #ex:Ljava/lang/RuntimeException;
    :catch_2
    move-exception v2

    .line 868
    .restart local v2       #ex:Ljava/lang/RuntimeException;
    :try_start_4
    const-string v6, "zhangxue"

    const-string v7, "RuntimeException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    if-eqz v0, :cond_2

    .line 870
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 871
    const/4 v0, 0x0

    .line 873
    :cond_2
    if-eqz v3, :cond_3

    .line 874
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 875
    const/4 v3, 0x0

    .line 879
    :cond_3
    :try_start_5
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 880
    :catch_3
    move-exception v2

    .line 881
    const-string v6, "zhangxue"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "release RuntimeException :"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 877
    .end local v2           #ex:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v6

    .line 879
    :try_start_6
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4

    .line 883
    :goto_1
    throw v6

    .line 880
    :catch_4
    move-exception v2

    .line 881
    .restart local v2       #ex:Ljava/lang/RuntimeException;
    const-string v7, "zhangxue"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "release RuntimeException :"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 880
    .end local v2           #ex:Ljava/lang/RuntimeException;
    .restart local v1       #canvas:Landroid/graphics/Canvas;
    .restart local v4       #iconPaint:Landroid/graphics/Paint;
    :catch_5
    move-exception v2

    .line 881
    .restart local v2       #ex:Ljava/lang/RuntimeException;
    const-string v6, "zhangxue"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "release RuntimeException :"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static final getWallPaperStoragePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/Wallpapers/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static mdByteToString([B)Ljava/lang/String;
    .locals 8
    .parameter "mdByte"

    .prologue
    .line 394
    if-nez p0, :cond_0

    .line 395
    const-string v1, ""

    .line 406
    :goto_0
    return-object v1

    .line 397
    :cond_0
    const-string v1, ""

    .line 399
    .local v1, mdString:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, p0

    if-lt v0, v3, :cond_1

    .line 404
    const-string v3, "zhangxue"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mdString="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 401
    :cond_1
    aget-byte v3, p0, v0

    and-int/lit16 v2, v3, 0xff

    .line 402
    .local v2, temp:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "%02x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 399
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static messageDigest(Ljava/io/InputStream;)[B
    .locals 8
    .parameter "is"

    .prologue
    const/4 v4, 0x0

    .line 353
    if-nez p0, :cond_0

    .line 374
    :goto_0
    return-object v4

    .line 358
    :cond_0
    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 363
    .local v2, digester:Ljava/security/MessageDigest;
    const/16 v5, 0x2000

    new-array v1, v5, [B

    .line 367
    .local v1, bytes:[B
    :goto_1
    :try_start_1
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .local v0, byteCount:I
    if-gtz v0, :cond_1

    .line 374
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    goto :goto_0

    .line 359
    .end local v0           #byteCount:I
    .end local v1           #bytes:[B
    .end local v2           #digester:Ljava/security/MessageDigest;
    :catch_0
    move-exception v3

    .line 360
    .local v3, e:Ljava/security/NoSuchAlgorithmException;
    const-string v5, "zhangxue"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "no MD5 algorithm , exception : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 368
    .end local v3           #e:Ljava/security/NoSuchAlgorithmException;
    .restart local v0       #byteCount:I
    .restart local v1       #bytes:[B
    .restart local v2       #digester:Ljava/security/MessageDigest;
    :cond_1
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v2, v1, v5, v0}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 370
    .end local v0           #byteCount:I
    :catch_1
    move-exception v3

    .line 371
    .local v3, e:Ljava/io/IOException;
    const-string v5, "zhangxue"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "msgDigest read buffer error : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static messageDigest([B)[B
    .locals 6
    .parameter "buff"

    .prologue
    .line 379
    if-nez p0, :cond_0

    .line 380
    const/4 v2, 0x0

    .line 390
    :goto_0
    return-object v2

    .line 382
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 383
    .local v0, bais:Ljava/io/ByteArrayInputStream;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->messageDigest(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 385
    .local v2, result:[B
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 386
    :catch_0
    move-exception v1

    .line 388
    .local v1, e:Ljava/io/IOException;
    const-string v3, "zhangxue"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "close byteArrayInputStream error : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static renameTo(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v1, 0x0

    .line 902
    if-eqz p0, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 910
    :cond_0
    :goto_0
    return v1

    .line 905
    :cond_1
    invoke-static {p1}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 906
    .local v0, dst:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 907
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 908
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    goto :goto_0
.end method

.method public static storeBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .parameter "bitmap"
    .parameter "strFileName"

    .prologue
    const/4 v4, 0x0

    .line 169
    if-nez p0, :cond_1

    move-object v1, v4

    .line 196
    :cond_0
    :goto_0
    return-object v1

    .line 172
    :cond_1
    const/4 v2, 0x0

    .line 173
    .local v2, outputStream:Ljava/io/FileOutputStream;
    invoke-static {p1}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 175
    .local v1, file:Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 177
    .end local v2           #outputStream:Ljava/io/FileOutputStream;
    .local v3, outputStream:Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {p0, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 178
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 189
    if-eqz v3, :cond_0

    .line 190
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 181
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #outputStream:Ljava/io/FileOutputStream;
    .restart local v2       #outputStream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 182
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 189
    if-eqz v2, :cond_2

    .line 190
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_2
    :goto_2
    move-object v1, v4

    .line 183
    goto :goto_0

    .line 192
    .restart local v0       #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 193
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 184
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 185
    .restart local v0       #e:Ljava/io/IOException;
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 189
    if-eqz v2, :cond_3

    .line 190
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_3
    :goto_4
    move-object v1, v4

    .line 186
    goto :goto_0

    .line 192
    :catch_4
    move-exception v0

    .line 193
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 187
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 189
    :goto_5
    if-eqz v2, :cond_4

    .line 190
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 195
    :cond_4
    :goto_6
    throw v4

    .line 192
    :catch_5
    move-exception v0

    .line 193
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 187
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #outputStream:Ljava/io/FileOutputStream;
    .restart local v3       #outputStream:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #outputStream:Ljava/io/FileOutputStream;
    .restart local v2       #outputStream:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 184
    .end local v2           #outputStream:Ljava/io/FileOutputStream;
    .restart local v3       #outputStream:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3           #outputStream:Ljava/io/FileOutputStream;
    .restart local v2       #outputStream:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 181
    .end local v2           #outputStream:Ljava/io/FileOutputStream;
    .restart local v3       #outputStream:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3           #outputStream:Ljava/io/FileOutputStream;
    .restart local v2       #outputStream:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static storeBuffer([BLjava/lang/String;)Z
    .locals 7
    .parameter "mArrayOfByte"
    .parameter "mFilePath"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 200
    const-string v5, "CreateNewNoteActivity"

    const-string v6, "storeBuffer"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-static {p1}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->createFile(Ljava/lang/String;)Ljava/io/File;

    .line 202
    const/4 v1, 0x0

    .line 204
    .local v1, outputStream:Ljava/io/FileOutputStream;
    :try_start_0
    const-string v5, "CreateNewNoteActivity"

    const-string v6, "try write file"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v2, p1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 208
    .end local v1           #outputStream:Ljava/io/FileOutputStream;
    .local v2, outputStream:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 209
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6

    .line 222
    if-eqz v2, :cond_0

    .line 223
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_0
    :goto_0
    move-object v1, v2

    .line 229
    .end local v2           #outputStream:Ljava/io/FileOutputStream;
    .restart local v1       #outputStream:Ljava/io/FileOutputStream;
    :goto_1
    return v3

    .line 211
    .end local v1           #outputStream:Ljava/io/FileOutputStream;
    .restart local v2       #outputStream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 212
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    const-string v3, "CreateNewNoteActivity"

    const-string v5, "storeBuffer IOException"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_6

    .line 222
    if-eqz v2, :cond_1

    .line 223
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_1
    :goto_2
    move-object v1, v2

    .end local v2           #outputStream:Ljava/io/FileOutputStream;
    .restart local v1       #outputStream:Ljava/io/FileOutputStream;
    move v3, v4

    .line 214
    goto :goto_1

    .line 225
    .end local v1           #outputStream:Ljava/io/FileOutputStream;
    .restart local v2       #outputStream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 226
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 216
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #outputStream:Ljava/io/FileOutputStream;
    .restart local v1       #outputStream:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    .line 217
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    const-string v3, "CreateNewNoteActivity"

    const-string v5, "storeBuffer FileNotFoundException"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 222
    if-eqz v1, :cond_2

    .line 223
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_2
    :goto_4
    move v3, v4

    .line 219
    goto :goto_1

    .line 225
    .restart local v0       #e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v0

    .line 226
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 220
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 222
    :goto_5
    if-eqz v1, :cond_3

    .line 223
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 228
    :cond_3
    :goto_6
    throw v3

    .line 225
    :catch_4
    move-exception v0

    .line 226
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 225
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #outputStream:Ljava/io/FileOutputStream;
    .restart local v2       #outputStream:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v0

    .line 226
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 220
    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #outputStream:Ljava/io/FileOutputStream;
    .restart local v1       #outputStream:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 216
    .end local v1           #outputStream:Ljava/io/FileOutputStream;
    .restart local v2       #outputStream:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2           #outputStream:Ljava/io/FileOutputStream;
    .restart local v1       #outputStream:Ljava/io/FileOutputStream;
    goto :goto_3
.end method

.method public static storeResourceToSdcard(Landroid/content/Context;ILjava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "resId"
    .parameter "fileHashName"

    .prologue
    .line 1073
    const-string v1, "wangna"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "storeResourceToSdcard start"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 1075
    .local v0, in:Ljava/io/InputStream;
    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getResourceStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->copyFileData(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 1076
    const-string v1, "wangna"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "storeResourceToSdcard end"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    return-void
.end method

.method public static toByteArray(Landroid/graphics/Bitmap;)[B
    .locals 9
    .parameter "mBitmap"

    .prologue
    const/4 v6, 0x0

    .line 117
    move-object v0, v6

    check-cast v0, [B

    .line 118
    .local v0, arrayOfByte:[B
    if-nez p0, :cond_0

    .line 120
    const-string v7, "zhangxue"

    const-string v8, "Invalid input parameters"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :goto_0
    return-object v6

    .line 124
    :cond_0
    const/4 v2, 0x0

    .line 127
    .local v2, localByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v2           #localByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;
    .local v3, localByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;
    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 129
    .local v4, localCompressFormat:Landroid/graphics/Bitmap$CompressFormat;
    const/16 v6, 0x64

    invoke-virtual {p0, v4, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 130
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v0

    .line 137
    if-eqz v3, :cond_3

    .line 138
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v2, v3

    .end local v3           #localByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;
    .end local v4           #localCompressFormat:Landroid/graphics/Bitmap$CompressFormat;
    .restart local v2       #localByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;
    :cond_1
    :goto_1
    move-object v6, v0

    .line 145
    goto :goto_0

    .line 132
    :catch_0
    move-exception v5

    .line 133
    .local v5, localException:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 137
    if-eqz v2, :cond_1

    .line 138
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 140
    :catch_1
    move-exception v1

    .line 141
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 135
    .end local v1           #e:Ljava/io/IOException;
    .end local v5           #localException:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 137
    :goto_3
    if-eqz v2, :cond_2

    .line 138
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 143
    :cond_2
    :goto_4
    throw v6

    .line 140
    :catch_2
    move-exception v1

    .line 141
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 140
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #localByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #localByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #localCompressFormat:Landroid/graphics/Bitmap$CompressFormat;
    :catch_3
    move-exception v1

    .line 141
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1           #e:Ljava/io/IOException;
    :cond_3
    move-object v2, v3

    .end local v3           #localByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #localByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;
    goto :goto_1

    .line 135
    .end local v2           #localByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;
    .end local v4           #localCompressFormat:Landroid/graphics/Bitmap$CompressFormat;
    .restart local v3       #localByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3           #localByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #localByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .line 132
    .end local v2           #localByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #localByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;
    :catch_4
    move-exception v5

    move-object v2, v3

    .end local v3           #localByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #localByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;
    goto :goto_2
.end method

.method public static viewFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .parameter "mContext"
    .parameter "fileName"

    .prologue
    const v8, 0x7f0900f5

    const/4 v7, 0x0

    .line 652
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 653
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 656
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getResourceStoragePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    .local v1, file:Ljava/io/File;
    invoke-static {v1}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getMIMEType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 659
    .local v3, type:Ljava/lang/String;
    const-string v4, "zhangxue"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onClick fileName= "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", type= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    if-eqz v3, :cond_0

    const-string v4, "*/*"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 662
    :cond_0
    invoke-static {p0, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 674
    :goto_0
    return-void

    .line 664
    :cond_1
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 667
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 668
    :catch_0
    move-exception v0

    .line 671
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p0, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

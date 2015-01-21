.class public Lcom/mediatek/mtklogger/taglog/ZipManager;
.super Ljava/lang/Object;
.source "ZipManager.java"


# static fields
.field private static final PRE_SIZE:I = 0x200

.field private static final TAG:Ljava/lang/String; = "MTKLogger/ZipManager"

.field private static mZippedFilesCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/mtklogger/taglog/ZipManager;->mZippedFilesCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getZipContentList(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .parameter "zipFilePath"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    const-string v9, "MTKLogger/ZipManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getZipContentList(), zipFilePath="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/mtklogger/utils/Utils;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 155
    .local v7, zin:Ljava/util/zip/ZipInputStream;
    const/4 v1, 0x0

    .line 158
    .local v1, entry:Ljava/util/zip/ZipEntry;
    :try_start_0
    new-instance v8, Ljava/util/zip/ZipInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 159
    .end local v7           #zin:Ljava/util/zip/ZipInputStream;
    .local v8, zin:Ljava/util/zip/ZipInputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 160
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 161
    .local v4, name:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v5

    .line 162
    .local v5, size:J
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v2

    .line 163
    .local v2, isDir:Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", size:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v2, :cond_1

    const-string v9, "folder"

    :goto_1
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_0

    .line 165
    .end local v2           #isDir:Z
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #size:J
    :catch_0
    move-exception v0

    move-object v7, v8

    .line 166
    .end local v8           #zin:Ljava/util/zip/ZipInputStream;
    .local v0, e:Ljava/io/FileNotFoundException;
    .restart local v7       #zin:Ljava/util/zip/ZipInputStream;
    :goto_2
    const/4 v3, 0x0

    .line 167
    :try_start_2
    const-string v9, "MTKLogger/ZipManager"

    const-string v10, "FileNotFoundException"

    invoke-static {v9, v10, v0}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    if-eqz v7, :cond_0

    .line 174
    :try_start_3
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 180
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_0
    :goto_3
    return-object v3

    .line 163
    .end local v7           #zin:Ljava/util/zip/ZipInputStream;
    .restart local v2       #isDir:Z
    .restart local v4       #name:Ljava/lang/String;
    .restart local v5       #size:J
    .restart local v8       #zin:Ljava/util/zip/ZipInputStream;
    :cond_1
    :try_start_4
    const-string v9, "file"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_1

    .line 172
    .end local v2           #isDir:Z
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #size:J
    :cond_2
    if-eqz v8, :cond_4

    .line 174
    :try_start_5
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v7, v8

    .line 177
    .end local v8           #zin:Ljava/util/zip/ZipInputStream;
    .restart local v7       #zin:Ljava/util/zip/ZipInputStream;
    goto :goto_3

    .line 175
    .end local v7           #zin:Ljava/util/zip/ZipInputStream;
    .restart local v8       #zin:Ljava/util/zip/ZipInputStream;
    :catch_1
    move-exception v0

    .line 176
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v7, v8

    .line 177
    .end local v8           #zin:Ljava/util/zip/ZipInputStream;
    .restart local v7       #zin:Ljava/util/zip/ZipInputStream;
    goto :goto_3

    .line 175
    .local v0, e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 176
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 168
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 169
    .restart local v0       #e:Ljava/io/IOException;
    :goto_4
    const/4 v3, 0x0

    .line 170
    :try_start_6
    const-string v9, "MTKLogger/ZipManager"

    const-string v10, "IOException"

    invoke-static {v9, v10, v0}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 172
    if-eqz v7, :cond_0

    .line 174
    :try_start_7
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    .line 175
    :catch_4
    move-exception v0

    .line 176
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 172
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_5
    if-eqz v7, :cond_3

    .line 174
    :try_start_8
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 177
    :cond_3
    :goto_6
    throw v9

    .line 175
    :catch_5
    move-exception v0

    .line 176
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 172
    .end local v0           #e:Ljava/io/IOException;
    .end local v7           #zin:Ljava/util/zip/ZipInputStream;
    .restart local v8       #zin:Ljava/util/zip/ZipInputStream;
    :catchall_1
    move-exception v9

    move-object v7, v8

    .end local v8           #zin:Ljava/util/zip/ZipInputStream;
    .restart local v7       #zin:Ljava/util/zip/ZipInputStream;
    goto :goto_5

    .line 168
    .end local v7           #zin:Ljava/util/zip/ZipInputStream;
    .restart local v8       #zin:Ljava/util/zip/ZipInputStream;
    :catch_6
    move-exception v0

    move-object v7, v8

    .end local v8           #zin:Ljava/util/zip/ZipInputStream;
    .restart local v7       #zin:Ljava/util/zip/ZipInputStream;
    goto :goto_4

    .line 165
    :catch_7
    move-exception v0

    goto :goto_2

    .end local v7           #zin:Ljava/util/zip/ZipInputStream;
    .restart local v8       #zin:Ljava/util/zip/ZipInputStream;
    :cond_4
    move-object v7, v8

    .end local v8           #zin:Ljava/util/zip/ZipInputStream;
    .restart local v7       #zin:Ljava/util/zip/ZipInputStream;
    goto :goto_3
.end method

.method public static getZippedFilesCount()I
    .locals 1

    .prologue
    .line 306
    sget v0, Lcom/mediatek/mtklogger/taglog/ZipManager;->mZippedFilesCount:I

    return v0
.end method

.method public static initZippedFilesCount()V
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/mtklogger/taglog/ZipManager;->mZippedFilesCount:I

    .line 311
    return-void
.end method

.method public static translateTime(J)Ljava/lang/String;
    .locals 12
    .parameter "time"

    .prologue
    .line 266
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 267
    .local v0, calendar:Ljava/util/GregorianCalendar;
    new-instance v2, Ljava/text/DecimalFormat;

    invoke-direct {v2}, Ljava/text/DecimalFormat;-><init>()V

    .line 268
    .local v2, df:Ljava/text/DecimalFormat;
    const-string v6, "00"

    .line 269
    .local v6, pattern:Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 270
    new-instance v9, Ljava/sql/Date;

    invoke-direct {v9, p0, p1}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v0, v9}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 272
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    .line 273
    .local v8, year:I
    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v9

    add-int/lit8 v5, v9, 0x1

    .line 274
    .local v5, month:I
    const/4 v9, 0x5

    invoke-virtual {v0, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 275
    .local v1, day:I
    const/16 v9, 0xb

    invoke-virtual {v0, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 276
    .local v3, hour:I
    const/16 v9, 0xc

    invoke-virtual {v0, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    .line 277
    .local v4, minu:I
    const/16 v9, 0xd

    invoke-virtual {v0, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    .line 278
    .local v7, second:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    int-to-long v10, v5

    invoke-virtual {v2, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    int-to-long v10, v1

    invoke-virtual {v2, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    int-to-long v10, v3

    invoke-virtual {v2, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    int-to-long v10, v4

    invoke-virtual {v2, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    int-to-long v10, v7

    invoke-virtual {v2, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method public static translateTime2(J)Ljava/lang/String;
    .locals 12
    .parameter "time"

    .prologue
    .line 290
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 291
    .local v0, calendar:Ljava/util/GregorianCalendar;
    new-instance v2, Ljava/text/DecimalFormat;

    invoke-direct {v2}, Ljava/text/DecimalFormat;-><init>()V

    .line 292
    .local v2, df:Ljava/text/DecimalFormat;
    const-string v6, "00"

    .line 293
    .local v6, pattern:Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 294
    new-instance v9, Ljava/sql/Date;

    invoke-direct {v9, p0, p1}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v0, v9}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 296
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    .line 297
    .local v8, year:I
    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v9

    add-int/lit8 v5, v9, 0x1

    .line 298
    .local v5, month:I
    const/4 v9, 0x5

    invoke-virtual {v0, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 299
    .local v1, day:I
    const/16 v9, 0xb

    invoke-virtual {v0, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 300
    .local v3, hour:I
    const/16 v9, 0xc

    invoke-virtual {v0, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    .line 301
    .local v4, minu:I
    const/16 v9, 0xd

    invoke-virtual {v0, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    .line 302
    .local v7, second:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    int-to-long v10, v5

    invoke-virtual {v2, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    int-to-long v10, v1

    invoke-virtual {v2, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    int-to-long v10, v3

    invoke-virtual {v2, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    int-to-long v10, v4

    invoke-virtual {v2, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    int-to-long v10, v7

    invoke-virtual {v2, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method public static unzipFile(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 17
    .parameter "zipFilePath"
    .parameter "targetPath"
    .parameter "allowOverwrite"

    .prologue
    .line 193
    const-string v14, "MTKLogger/ZipManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "-->unzipFile(), zipFilePath="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", targetPath="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", allowOverwrite?"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/mediatek/mtklogger/utils/Utils;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const/4 v12, 0x0

    .line 196
    .local v12, zin:Ljava/util/zip/ZipInputStream;
    const/4 v8, 0x0

    .line 197
    .local v8, out:Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 198
    .local v3, entry:Ljava/util/zip/ZipEntry;
    const/4 v4, 0x0

    .line 201
    .local v4, entryName:Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    .local v11, targetFolder:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 203
    const-string v14, "MTKLogger/ZipManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Target folder ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "] already exist. It will be overwrite!"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    if-nez p2, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 211
    :try_start_0
    new-instance v13, Ljava/util/zip/ZipInputStream;

    new-instance v14, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v13, v14}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    .end local v12           #zin:Ljava/util/zip/ZipInputStream;
    .local v13, zin:Ljava/util/zip/ZipInputStream;
    move-object v9, v8

    .line 213
    .end local v8           #out:Ljava/io/FileOutputStream;
    .local v9, out:Ljava/io/FileOutputStream;
    :goto_1
    :try_start_1
    invoke-virtual {v13}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 214
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 215
    const-string v14, "MTKLogger/ZipManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Encounter entry name = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/mediatek/mtklogger/utils/Utils;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 217
    new-instance v6, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v6, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    .local v6, folder:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b

    goto :goto_1

    .line 236
    .end local v6           #folder:Ljava/io/File;
    :catch_0
    move-exception v2

    move-object v8, v9

    .end local v9           #out:Ljava/io/FileOutputStream;
    .restart local v8       #out:Ljava/io/FileOutputStream;
    move-object v12, v13

    .line 237
    .end local v13           #zin:Ljava/util/zip/ZipInputStream;
    .local v2, e:Ljava/io/FileNotFoundException;
    .restart local v12       #zin:Ljava/util/zip/ZipInputStream;
    :goto_2
    :try_start_2
    const-string v14, "MTKLogger/ZipManager"

    const-string v15, "FileNotFoundException"

    invoke-static {v14, v15, v2}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 241
    if-eqz v12, :cond_2

    .line 243
    :try_start_3
    invoke-virtual {v12}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 248
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :cond_2
    :goto_3
    if-eqz v8, :cond_0

    .line 250
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 251
    :catch_1
    move-exception v2

    .line 252
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 220
    .end local v2           #e:Ljava/io/IOException;
    .end local v8           #out:Ljava/io/FileOutputStream;
    .end local v12           #zin:Ljava/util/zip/ZipInputStream;
    .restart local v9       #out:Ljava/io/FileOutputStream;
    .restart local v13       #zin:Ljava/util/zip/ZipInputStream;
    :cond_3
    :try_start_5
    new-instance v5, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v5, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 221
    .local v5, file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    .line 222
    .local v10, parent:Ljava/io/File;
    if-eqz v10, :cond_4

    .line 223
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 225
    :cond_4
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 226
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b

    .line 228
    .end local v9           #out:Ljava/io/FileOutputStream;
    .restart local v8       #out:Ljava/io/FileOutputStream;
    const/16 v14, 0x200

    :try_start_6
    new-array v1, v14, [B

    .line 229
    .local v1, buffer:[B
    const/4 v7, 0x0

    .line 230
    .local v7, len:I
    :goto_4
    invoke-virtual {v13, v1}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v7

    const/4 v14, -0x1

    if-le v7, v14, :cond_5

    .line 231
    const/4 v14, 0x0

    invoke-virtual {v8, v1, v14, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 232
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_c

    goto :goto_4

    .line 236
    .end local v1           #buffer:[B
    .end local v7           #len:I
    :catch_2
    move-exception v2

    move-object v12, v13

    .end local v13           #zin:Ljava/util/zip/ZipInputStream;
    .restart local v12       #zin:Ljava/util/zip/ZipInputStream;
    goto :goto_2

    .end local v12           #zin:Ljava/util/zip/ZipInputStream;
    .restart local v1       #buffer:[B
    .restart local v7       #len:I
    .restart local v13       #zin:Ljava/util/zip/ZipInputStream;
    :cond_5
    move-object v9, v8

    .line 234
    .end local v8           #out:Ljava/io/FileOutputStream;
    .restart local v9       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .line 241
    .end local v1           #buffer:[B
    .end local v5           #file:Ljava/io/File;
    .end local v7           #len:I
    .end local v10           #parent:Ljava/io/File;
    :cond_6
    if-eqz v13, :cond_7

    .line 243
    :try_start_7
    invoke-virtual {v13}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 248
    :cond_7
    :goto_5
    if-eqz v9, :cond_b

    .line 250
    :try_start_8
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    move-object v8, v9

    .end local v9           #out:Ljava/io/FileOutputStream;
    .restart local v8       #out:Ljava/io/FileOutputStream;
    move-object v12, v13

    .line 253
    .end local v13           #zin:Ljava/util/zip/ZipInputStream;
    .restart local v12       #zin:Ljava/util/zip/ZipInputStream;
    goto/16 :goto_0

    .line 244
    .end local v8           #out:Ljava/io/FileOutputStream;
    .end local v12           #zin:Ljava/util/zip/ZipInputStream;
    .restart local v9       #out:Ljava/io/FileOutputStream;
    .restart local v13       #zin:Ljava/util/zip/ZipInputStream;
    :catch_3
    move-exception v2

    .line 245
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 251
    .end local v2           #e:Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 252
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v8, v9

    .end local v9           #out:Ljava/io/FileOutputStream;
    .restart local v8       #out:Ljava/io/FileOutputStream;
    move-object v12, v13

    .line 253
    .end local v13           #zin:Ljava/util/zip/ZipInputStream;
    .restart local v12       #zin:Ljava/util/zip/ZipInputStream;
    goto/16 :goto_0

    .line 244
    .local v2, e:Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v2

    .line 245
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 238
    .end local v2           #e:Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 239
    .restart local v2       #e:Ljava/io/IOException;
    :goto_6
    :try_start_9
    const-string v14, "MTKLogger/ZipManager"

    const-string v15, "IOException"

    invoke-static {v14, v15, v2}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 241
    if-eqz v12, :cond_8

    .line 243
    :try_start_a
    invoke-virtual {v12}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 248
    :cond_8
    :goto_7
    if-eqz v8, :cond_0

    .line 250
    :try_start_b
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    goto/16 :goto_0

    .line 251
    :catch_7
    move-exception v2

    .line 252
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 244
    :catch_8
    move-exception v2

    .line 245
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 241
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v14

    :goto_8
    if-eqz v12, :cond_9

    .line 243
    :try_start_c
    invoke-virtual {v12}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 248
    :cond_9
    :goto_9
    if-eqz v8, :cond_a

    .line 250
    :try_start_d
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    .line 253
    :cond_a
    :goto_a
    throw v14

    .line 244
    :catch_9
    move-exception v2

    .line 245
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 251
    .end local v2           #e:Ljava/io/IOException;
    :catch_a
    move-exception v2

    .line 252
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 241
    .end local v2           #e:Ljava/io/IOException;
    .end local v8           #out:Ljava/io/FileOutputStream;
    .end local v12           #zin:Ljava/util/zip/ZipInputStream;
    .restart local v9       #out:Ljava/io/FileOutputStream;
    .restart local v13       #zin:Ljava/util/zip/ZipInputStream;
    :catchall_1
    move-exception v14

    move-object v8, v9

    .end local v9           #out:Ljava/io/FileOutputStream;
    .restart local v8       #out:Ljava/io/FileOutputStream;
    move-object v12, v13

    .end local v13           #zin:Ljava/util/zip/ZipInputStream;
    .restart local v12       #zin:Ljava/util/zip/ZipInputStream;
    goto :goto_8

    .end local v12           #zin:Ljava/util/zip/ZipInputStream;
    .restart local v5       #file:Ljava/io/File;
    .restart local v10       #parent:Ljava/io/File;
    .restart local v13       #zin:Ljava/util/zip/ZipInputStream;
    :catchall_2
    move-exception v14

    move-object v12, v13

    .end local v13           #zin:Ljava/util/zip/ZipInputStream;
    .restart local v12       #zin:Ljava/util/zip/ZipInputStream;
    goto :goto_8

    .line 238
    .end local v5           #file:Ljava/io/File;
    .end local v8           #out:Ljava/io/FileOutputStream;
    .end local v10           #parent:Ljava/io/File;
    .end local v12           #zin:Ljava/util/zip/ZipInputStream;
    .restart local v9       #out:Ljava/io/FileOutputStream;
    .restart local v13       #zin:Ljava/util/zip/ZipInputStream;
    :catch_b
    move-exception v2

    move-object v8, v9

    .end local v9           #out:Ljava/io/FileOutputStream;
    .restart local v8       #out:Ljava/io/FileOutputStream;
    move-object v12, v13

    .end local v13           #zin:Ljava/util/zip/ZipInputStream;
    .restart local v12       #zin:Ljava/util/zip/ZipInputStream;
    goto :goto_6

    .end local v12           #zin:Ljava/util/zip/ZipInputStream;
    .restart local v5       #file:Ljava/io/File;
    .restart local v10       #parent:Ljava/io/File;
    .restart local v13       #zin:Ljava/util/zip/ZipInputStream;
    :catch_c
    move-exception v2

    move-object v12, v13

    .end local v13           #zin:Ljava/util/zip/ZipInputStream;
    .restart local v12       #zin:Ljava/util/zip/ZipInputStream;
    goto :goto_6

    .line 236
    .end local v5           #file:Ljava/io/File;
    .end local v10           #parent:Ljava/io/File;
    :catch_d
    move-exception v2

    goto/16 :goto_2

    .end local v8           #out:Ljava/io/FileOutputStream;
    .end local v12           #zin:Ljava/util/zip/ZipInputStream;
    .restart local v9       #out:Ljava/io/FileOutputStream;
    .restart local v13       #zin:Ljava/util/zip/ZipInputStream;
    :cond_b
    move-object v8, v9

    .end local v9           #out:Ljava/io/FileOutputStream;
    .restart local v8       #out:Ljava/io/FileOutputStream;
    move-object v12, v13

    .end local v13           #zin:Ljava/util/zip/ZipInputStream;
    .restart local v12       #zin:Ljava/util/zip/ZipInputStream;
    goto/16 :goto_0
.end method

.method public static zipFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)Z
    .locals 18
    .parameter "srcRootPath"
    .parameter "fileRelativePath"
    .parameter "zout"

    .prologue
    .line 80
    const-string v15, "MTKLogger/ZipManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "zipFile(), srcRootPath="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", fileRelativePath="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/mediatek/mtklogger/utils/Utils;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    if-nez p2, :cond_1

    .line 82
    const-string v15, "MTKLogger/ZipManager"

    const-string v16, "Can not zip file into a null stream"

    invoke-static/range {v15 .. v16}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const/4 v13, 0x0

    .line 141
    :cond_0
    :goto_0
    return v13

    .line 85
    :cond_1
    const/4 v13, 0x0

    .line 86
    .local v13, result:Z
    new-instance v6, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v6, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    .local v6, file:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 88
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 89
    const/4 v9, 0x0

    .line 91
    .local v9, in:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 92
    .end local v9           #in:Ljava/io/FileInputStream;
    .local v10, in:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v5, Ljava/util/zip/ZipEntry;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 93
    .local v5, entry:Ljava/util/zip/ZipEntry;
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 95
    const/4 v11, 0x0

    .line 96
    .local v11, len:I
    const/16 v15, 0x200

    new-array v3, v15, [B

    .line 97
    .local v3, buffer:[B
    :goto_1
    invoke-virtual {v10, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v11

    const/4 v15, -0x1

    if-le v11, v15, :cond_2

    .line 98
    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v15, v11}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    goto :goto_1

    .line 103
    .end local v3           #buffer:[B
    .end local v5           #entry:Ljava/util/zip/ZipEntry;
    .end local v11           #len:I
    :catch_0
    move-exception v4

    move-object v9, v10

    .line 104
    .end local v10           #in:Ljava/io/FileInputStream;
    .local v4, e:Ljava/io/FileNotFoundException;
    .restart local v9       #in:Ljava/io/FileInputStream;
    :goto_2
    :try_start_2
    const-string v15, "MTKLogger/ZipManager"

    const-string v16, "FileNotFoundException"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v4}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    if-eqz v9, :cond_0

    .line 110
    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 111
    :catch_1
    move-exception v4

    .line 112
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 100
    .end local v4           #e:Ljava/io/IOException;
    .end local v9           #in:Ljava/io/FileInputStream;
    .restart local v3       #buffer:[B
    .restart local v5       #entry:Ljava/util/zip/ZipEntry;
    .restart local v10       #in:Ljava/io/FileInputStream;
    .restart local v11       #len:I
    :cond_2
    :try_start_4
    invoke-virtual/range {p2 .. p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 101
    sget v15, Lcom/mediatek/mtklogger/taglog/ZipManager;->mZippedFilesCount:I

    add-int/lit8 v15, v15, 0x1

    sput v15, Lcom/mediatek/mtklogger/taglog/ZipManager;->mZippedFilesCount:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    .line 102
    const/4 v13, 0x1

    .line 108
    if-eqz v10, :cond_8

    .line 110
    :try_start_5
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-object v9, v10

    .line 113
    .end local v10           #in:Ljava/io/FileInputStream;
    .restart local v9       #in:Ljava/io/FileInputStream;
    goto :goto_0

    .line 111
    .end local v9           #in:Ljava/io/FileInputStream;
    .restart local v10       #in:Ljava/io/FileInputStream;
    :catch_2
    move-exception v4

    .line 112
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v9, v10

    .line 113
    .end local v10           #in:Ljava/io/FileInputStream;
    .restart local v9       #in:Ljava/io/FileInputStream;
    goto :goto_0

    .line 105
    .end local v3           #buffer:[B
    .end local v4           #e:Ljava/io/IOException;
    .end local v5           #entry:Ljava/util/zip/ZipEntry;
    .end local v11           #len:I
    :catch_3
    move-exception v4

    .line 106
    .restart local v4       #e:Ljava/io/IOException;
    :goto_3
    :try_start_6
    const-string v15, "MTKLogger/ZipManager"

    const-string v16, "IOException"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v4}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 108
    if-eqz v9, :cond_0

    .line 110
    :try_start_7
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    .line 111
    :catch_4
    move-exception v4

    .line 112
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 108
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v15

    :goto_4
    if-eqz v9, :cond_3

    .line 110
    :try_start_8
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 113
    :cond_3
    :goto_5
    throw v15

    .line 111
    :catch_5
    move-exception v4

    .line 112
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 118
    .end local v4           #e:Ljava/io/IOException;
    .end local v9           #in:Ljava/io/FileInputStream;
    :cond_4
    const/4 v13, 0x1

    .line 119
    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    .line 120
    .local v7, fileList:[Ljava/lang/String;
    array-length v15, v7

    if-gtz v15, :cond_5

    .line 121
    new-instance v5, Ljava/util/zip/ZipEntry;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v5, v15}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 123
    .restart local v5       #entry:Ljava/util/zip/ZipEntry;
    :try_start_9
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 124
    invoke-virtual/range {p2 .. p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 131
    .end local v5           #entry:Ljava/util/zip/ZipEntry;
    :cond_5
    :goto_6
    move-object v2, v7

    .local v2, arr$:[Ljava/lang/String;
    array-length v12, v2

    .local v12, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_7
    if-ge v8, v12, :cond_0

    aget-object v14, v2, v8

    .line 132
    .local v14, subFileName:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v15, v1}, Lcom/mediatek/mtklogger/taglog/ZipManager;->zipFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 133
    const/4 v13, 0x0

    .line 134
    goto/16 :goto_0

    .line 125
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v12           #len$:I
    .end local v14           #subFileName:Ljava/lang/String;
    .restart local v5       #entry:Ljava/util/zip/ZipEntry;
    :catch_6
    move-exception v4

    .line 126
    .restart local v4       #e:Ljava/io/IOException;
    const/4 v13, 0x0

    .line 127
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 131
    .end local v4           #e:Ljava/io/IOException;
    .end local v5           #entry:Ljava/util/zip/ZipEntry;
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v8       #i$:I
    .restart local v12       #len$:I
    .restart local v14       #subFileName:Ljava/lang/String;
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 140
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v7           #fileList:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v12           #len$:I
    .end local v14           #subFileName:Ljava/lang/String;
    :cond_7
    const-string v15, "MTKLogger/ZipManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "File ["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "] does not exitst"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 108
    .restart local v10       #in:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v15

    move-object v9, v10

    .end local v10           #in:Ljava/io/FileInputStream;
    .restart local v9       #in:Ljava/io/FileInputStream;
    goto/16 :goto_4

    .line 105
    .end local v9           #in:Ljava/io/FileInputStream;
    .restart local v10       #in:Ljava/io/FileInputStream;
    :catch_7
    move-exception v4

    move-object v9, v10

    .end local v10           #in:Ljava/io/FileInputStream;
    .restart local v9       #in:Ljava/io/FileInputStream;
    goto/16 :goto_3

    .line 103
    :catch_8
    move-exception v4

    goto/16 :goto_2

    .end local v9           #in:Ljava/io/FileInputStream;
    .restart local v3       #buffer:[B
    .restart local v5       #entry:Ljava/util/zip/ZipEntry;
    .restart local v10       #in:Ljava/io/FileInputStream;
    .restart local v11       #len:I
    :cond_8
    move-object v9, v10

    .end local v10           #in:Ljava/io/FileInputStream;
    .restart local v9       #in:Ljava/io/FileInputStream;
    goto/16 :goto_0
.end method

.method public static zipFileOrFolder(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "srcFilePath"
    .parameter "zipFilePath"

    .prologue
    .line 37
    const-string v5, "MTKLogger/ZipManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "zipFolder(), srcFolderPath="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", zipFilePath"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/mtklogger/utils/Utils;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const/4 v4, 0x0

    .line 39
    .local v4, result:Z
    const/4 v2, 0x0

    .line 41
    .local v2, outZip:Ljava/util/zip/ZipOutputStream;
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 43
    .end local v2           #outZip:Ljava/util/zip/ZipOutputStream;
    .local v3, outZip:Ljava/util/zip/ZipOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Lcom/mediatek/mtklogger/taglog/ZipManager;->zipFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)Z

    move-result v4

    .line 47
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 48
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 49
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 57
    if-eqz v3, :cond_2

    .line 59
    :try_start_2
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 65
    .end local v1           #file:Ljava/io/File;
    .end local v3           #outZip:Ljava/util/zip/ZipOutputStream;
    .restart local v2       #outZip:Ljava/util/zip/ZipOutputStream;
    :cond_0
    :goto_0
    return v4

    .line 60
    .end local v2           #outZip:Ljava/util/zip/ZipOutputStream;
    .restart local v1       #file:Ljava/io/File;
    .restart local v3       #outZip:Ljava/util/zip/ZipOutputStream;
    :catch_0
    move-exception v0

    .line 61
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 62
    .end local v3           #outZip:Ljava/util/zip/ZipOutputStream;
    .restart local v2       #outZip:Ljava/util/zip/ZipOutputStream;
    goto :goto_0

    .line 50
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #file:Ljava/io/File;
    :catch_1
    move-exception v0

    .line 51
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_1
    const/4 v4, 0x0

    .line 52
    :try_start_3
    const-string v5, "MTKLogger/ZipManager"

    const-string v6, "FileNotFoundException"

    invoke-static {v5, v6, v0}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 57
    if-eqz v2, :cond_0

    .line 59
    :try_start_4
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 60
    :catch_2
    move-exception v0

    .line 61
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 53
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 54
    .restart local v0       #e:Ljava/io/IOException;
    :goto_2
    const/4 v4, 0x0

    .line 55
    :try_start_5
    const-string v5, "MTKLogger/ZipManager"

    const-string v6, "FileNotFoundException"

    invoke-static {v5, v6, v0}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 57
    if-eqz v2, :cond_0

    .line 59
    :try_start_6
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 60
    :catch_4
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 57
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v2, :cond_1

    .line 59
    :try_start_7
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 62
    :cond_1
    :goto_4
    throw v5

    .line 60
    :catch_5
    move-exception v0

    .line 61
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 57
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #outZip:Ljava/util/zip/ZipOutputStream;
    .restart local v3       #outZip:Ljava/util/zip/ZipOutputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #outZip:Ljava/util/zip/ZipOutputStream;
    .restart local v2       #outZip:Ljava/util/zip/ZipOutputStream;
    goto :goto_3

    .line 53
    .end local v2           #outZip:Ljava/util/zip/ZipOutputStream;
    .restart local v3       #outZip:Ljava/util/zip/ZipOutputStream;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3           #outZip:Ljava/util/zip/ZipOutputStream;
    .restart local v2       #outZip:Ljava/util/zip/ZipOutputStream;
    goto :goto_2

    .line 50
    .end local v2           #outZip:Ljava/util/zip/ZipOutputStream;
    .restart local v3       #outZip:Ljava/util/zip/ZipOutputStream;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3           #outZip:Ljava/util/zip/ZipOutputStream;
    .restart local v2       #outZip:Ljava/util/zip/ZipOutputStream;
    goto :goto_1

    .end local v2           #outZip:Ljava/util/zip/ZipOutputStream;
    .restart local v1       #file:Ljava/io/File;
    .restart local v3       #outZip:Ljava/util/zip/ZipOutputStream;
    :cond_2
    move-object v2, v3

    .end local v3           #outZip:Ljava/util/zip/ZipOutputStream;
    .restart local v2       #outZip:Ljava/util/zip/ZipOutputStream;
    goto :goto_0
.end method

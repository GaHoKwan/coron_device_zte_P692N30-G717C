.class public Lorg/apache/tools/zip/ZipFile;
.super Ljava/lang/Object;
.source "ZipFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/zip/ZipFile$1;,
        Lorg/apache/tools/zip/ZipFile$NameAndComment;,
        Lorg/apache/tools/zip/ZipFile$BoundedInputStream;,
        Lorg/apache/tools/zip/ZipFile$OffsetEntry;
    }
.end annotation


# static fields
.field private static final BYTE_SHIFT:I = 0x8

.field private static final CFD_LOCATOR_OFFSET:I = 0x10

.field private static final CFH_LEN:I = 0x2a

.field private static final HASH_SIZE:I = 0x1fd

.field private static final LFH_OFFSET_FOR_FILENAME_LENGTH:J = 0x1aL

.field private static final MAX_EOCD_SIZE:I = 0x10015

.field private static final MIN_EOCD_SIZE:I = 0x16

.field private static final NIBLET_MASK:I = 0xf

.field private static final POS_0:I = 0x0

.field private static final POS_1:I = 0x1

.field private static final POS_2:I = 0x2

.field private static final POS_3:I = 0x3

.field private static final SHORT:I = 0x2

.field private static final WORD:I = 0x4


# instance fields
.field private archive:Ljava/io/RandomAccessFile;

.field private encoding:Ljava/lang/String;

.field private final entries:Ljava/util/Map;

.field private final nameMap:Ljava/util/Map;

.field private final useUnicodeExtraFields:Z

.field private final zipEncoding:Lorg/apache/tools/zip/ZipEncoding;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .parameter "f"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .parameter "f"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/tools/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    .line 163
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Z)V
    .locals 4
    .parameter "f"
    .parameter "encoding"
    .parameter "useUnicodeExtraFields"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x1fd

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lorg/apache/tools/zip/ZipFile;->entries:Ljava/util/Map;

    .line 83
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lorg/apache/tools/zip/ZipFile;->nameMap:Ljava/util/Map;

    .line 97
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/tools/zip/ZipFile;->encoding:Ljava/lang/String;

    .line 179
    iput-object p2, p0, Lorg/apache/tools/zip/ZipFile;->encoding:Ljava/lang/String;

    .line 180
    invoke-static {p2}, Lorg/apache/tools/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/tools/zip/ZipEncoding;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/tools/zip/ZipFile;->zipEncoding:Lorg/apache/tools/zip/ZipEncoding;

    .line 181
    iput-boolean p3, p0, Lorg/apache/tools/zip/ZipFile;->useUnicodeExtraFields:Z

    .line 182
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    .line 183
    const/4 v1, 0x0

    .line 185
    .local v1, success:Z
    :try_start_0
    invoke-direct {p0}, Lorg/apache/tools/zip/ZipFile;->populateFromCentralDirectory()Ljava/util/Map;

    move-result-object v0

    .line 186
    .local v0, entriesWithoutUTF8Flag:Ljava/util/Map;
    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipFile;->resolveLocalFileHeaderData(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    const/4 v1, 0x1

    .line 189
    if-nez v1, :cond_0

    .line 191
    :try_start_1
    iget-object v2, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 189
    .end local v0           #entriesWithoutUTF8Flag:Ljava/util/Map;
    :catchall_0
    move-exception v2

    if-nez v1, :cond_1

    .line 191
    :try_start_2
    iget-object v3, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 194
    :cond_1
    :goto_1
    throw v2

    .line 192
    :catch_0
    move-exception v3

    goto :goto_1

    .restart local v0       #entriesWithoutUTF8Flag:Ljava/util/Map;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lorg/apache/tools/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    .line 149
    return-void
.end method

.method static access$600(Lorg/apache/tools/zip/ZipFile;)Ljava/io/RandomAccessFile;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    return-object v0
.end method

.method public static closeQuietly(Lorg/apache/tools/zip/ZipFile;)V
    .locals 1
    .parameter "zipfile"

    .prologue
    .line 222
    if-eqz p0, :cond_0

    .line 224
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static dosToJavaTime(J)J
    .locals 9
    .parameter "dosTime"

    .prologue
    const/16 v8, 0xb

    const/4 v7, 0x5

    const/4 v6, 0x1

    .line 557
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 559
    .local v0, cal:Ljava/util/Calendar;
    const/16 v1, 0x19

    shr-long v1, p0, v1

    const-wide/16 v3, 0x7f

    and-long/2addr v1, v3

    long-to-int v1, v1

    add-int/lit16 v1, v1, 0x7bc

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 560
    const/4 v1, 0x2

    const/16 v2, 0x15

    shr-long v2, p0, v2

    const-wide/16 v4, 0xf

    and-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 561
    const/16 v1, 0x10

    shr-long v1, p0, v1

    long-to-int v1, v1

    and-int/lit8 v1, v1, 0x1f

    invoke-virtual {v0, v7, v1}, Ljava/util/Calendar;->set(II)V

    .line 562
    shr-long v1, p0, v8

    long-to-int v1, v1

    and-int/lit8 v1, v1, 0x1f

    invoke-virtual {v0, v8, v1}, Ljava/util/Calendar;->set(II)V

    .line 563
    const/16 v1, 0xc

    shr-long v2, p0, v7

    long-to-int v2, v2

    and-int/lit8 v2, v2, 0x3f

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 564
    const/16 v1, 0xd

    shl-long v2, p0, v6

    long-to-int v2, v2

    and-int/lit8 v2, v2, 0x3e

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 566
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    return-wide v1
.end method

.method protected static fromDosTime(Lorg/apache/tools/zip/ZipLong;)Ljava/util/Date;
    .locals 5
    .parameter "zipDosTime"

    .prologue
    .line 549
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipLong;->getValue()J

    move-result-wide v0

    .line 550
    .local v0, dosTime:J
    new-instance v2, Ljava/util/Date;

    invoke-static {v0, v1}, Lorg/apache/tools/zip/ZipFile;->dosToJavaTime(J)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    return-object v2
.end method

.method private getUnicodeStringIfOriginalMatches(Lorg/apache/tools/zip/AbstractUnicodeExtraField;[B)Ljava/lang/String;
    .locals 7
    .parameter "f"
    .parameter "orig"

    .prologue
    const/4 v4, 0x0

    .line 639
    if-eqz p1, :cond_0

    .line 640
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 641
    .local v0, crc32:Ljava/util/zip/CRC32;
    invoke-virtual {v0, p2}, Ljava/util/zip/CRC32;->update([B)V

    .line 642
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    .line 644
    .local v2, origCRC32:J
    invoke-virtual {p1}, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->getNameCRC32()J

    move-result-wide v5

    cmp-long v5, v2, v5

    if-nez v5, :cond_0

    .line 646
    :try_start_0
    sget-object v5, Lorg/apache/tools/zip/ZipEncodingHelper;->UTF8_ZIP_ENCODING:Lorg/apache/tools/zip/ZipEncoding;

    invoke-virtual {p1}, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->getUnicodeName()[B

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/tools/zip/ZipEncoding;->decode([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 657
    .end local v0           #crc32:Ljava/util/zip/CRC32;
    .end local v2           #origCRC32:J
    :cond_0
    :goto_0
    return-object v4

    .line 648
    .restart local v0       #crc32:Ljava/util/zip/CRC32;
    .restart local v2       #origCRC32:J
    :catch_0
    move-exception v1

    .line 653
    .local v1, ex:Ljava/io/IOException;
    goto :goto_0
.end method

.method private populateFromCentralDirectory()Ljava/util/Map;
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 313
    .local v15, noUTF8Flag:Ljava/util/HashMap;
    invoke-direct/range {p0 .. p0}, Lorg/apache/tools/zip/ZipFile;->positionAtCentralDirectory()V

    .line 315
    const/16 v25, 0x2a

    move/from16 v0, v25

    new-array v4, v0, [B

    .line 317
    .local v4, cfh:[B
    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 318
    .local v20, signatureBytes:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 319
    invoke-static/range {v20 .. v20}, Lorg/apache/tools/zip/ZipLong;->getValue([B)J

    move-result-wide v18

    .line 320
    .local v18, sig:J
    sget-object v25, Lorg/apache/tools/zip/ZipOutputStream;->CFH_SIG:[B

    invoke-static/range {v25 .. v25}, Lorg/apache/tools/zip/ZipLong;->getValue([B)J

    move-result-wide v5

    .line 321
    .local v5, cfhSig:J
    cmp-long v25, v18, v5

    if-eqz v25, :cond_0

    invoke-direct/range {p0 .. p0}, Lorg/apache/tools/zip/ZipFile;->startsWithLocalFileHeader()Z

    move-result v25

    if-eqz v25, :cond_0

    .line 322
    new-instance v25, Ljava/io/IOException;

    const-string v26, "central directory is empty, can\'t expand corrupt archive."

    invoke-direct/range {v25 .. v26}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 325
    :cond_0
    :goto_0
    cmp-long v25, v18, v5

    if-nez v25, :cond_3

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 327
    const/16 v16, 0x0

    .line 328
    .local v16, off:I
    new-instance v24, Lorg/apache/tools/zip/ZipEntry;

    invoke-direct/range {v24 .. v24}, Lorg/apache/tools/zip/ZipEntry;-><init>()V

    .line 330
    .local v24, ze:Lorg/apache/tools/zip/ZipEntry;
    move/from16 v0, v16

    invoke-static {v4, v0}, Lorg/apache/tools/zip/ZipShort;->getValue([BI)I

    move-result v23

    .line 331
    .local v23, versionMadeBy:I
    add-int/lit8 v16, v16, 0x2

    .line 332
    shr-int/lit8 v25, v23, 0x8

    and-int/lit8 v25, v25, 0xf

    invoke-virtual/range {v24 .. v25}, Lorg/apache/tools/zip/ZipEntry;->setPlatform(I)V

    .line 334
    add-int/lit8 v16, v16, 0x2

    .line 336
    move/from16 v0, v16

    invoke-static {v4, v0}, Lorg/apache/tools/zip/ZipShort;->getValue([BI)I

    move-result v13

    .line 337
    .local v13, generalPurposeFlag:I
    and-int/lit16 v0, v13, 0x800

    move/from16 v25, v0

    if-eqz v25, :cond_1

    const/4 v14, 0x1

    .line 339
    .local v14, hasUTF8Flag:Z
    :goto_1
    if-eqz v14, :cond_2

    sget-object v9, Lorg/apache/tools/zip/ZipEncodingHelper;->UTF8_ZIP_ENCODING:Lorg/apache/tools/zip/ZipEncoding;

    .line 342
    .local v9, entryEncoding:Lorg/apache/tools/zip/ZipEncoding;
    :goto_2
    add-int/lit8 v16, v16, 0x2

    .line 344
    move/from16 v0, v16

    invoke-static {v4, v0}, Lorg/apache/tools/zip/ZipShort;->getValue([BI)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Lorg/apache/tools/zip/ZipEntry;->setMethod(I)V

    .line 345
    add-int/lit8 v16, v16, 0x2

    .line 350
    move/from16 v0, v16

    invoke-static {v4, v0}, Lorg/apache/tools/zip/ZipLong;->getValue([BI)J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Lorg/apache/tools/zip/ZipFile;->dosToJavaTime(J)J

    move-result-wide v21

    .line 351
    .local v21, time:J
    move-object/from16 v0, v24

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/zip/ZipEntry;->setTime(J)V

    .line 352
    add-int/lit8 v16, v16, 0x4

    .line 354
    move/from16 v0, v16

    invoke-static {v4, v0}, Lorg/apache/tools/zip/ZipLong;->getValue([BI)J

    move-result-wide v25

    invoke-virtual/range {v24 .. v26}, Lorg/apache/tools/zip/ZipEntry;->setCrc(J)V

    .line 355
    add-int/lit8 v16, v16, 0x4

    .line 357
    move/from16 v0, v16

    invoke-static {v4, v0}, Lorg/apache/tools/zip/ZipLong;->getValue([BI)J

    move-result-wide v25

    invoke-virtual/range {v24 .. v26}, Lorg/apache/tools/zip/ZipEntry;->setCompressedSize(J)V

    .line 358
    add-int/lit8 v16, v16, 0x4

    .line 360
    move/from16 v0, v16

    invoke-static {v4, v0}, Lorg/apache/tools/zip/ZipLong;->getValue([BI)J

    move-result-wide v25

    invoke-virtual/range {v24 .. v26}, Lorg/apache/tools/zip/ZipEntry;->setSize(J)V

    .line 361
    add-int/lit8 v16, v16, 0x4

    .line 363
    move/from16 v0, v16

    invoke-static {v4, v0}, Lorg/apache/tools/zip/ZipShort;->getValue([BI)I

    move-result v12

    .line 364
    .local v12, fileNameLen:I
    add-int/lit8 v16, v16, 0x2

    .line 366
    move/from16 v0, v16

    invoke-static {v4, v0}, Lorg/apache/tools/zip/ZipShort;->getValue([BI)I

    move-result v10

    .line 367
    .local v10, extraLen:I
    add-int/lit8 v16, v16, 0x2

    .line 369
    move/from16 v0, v16

    invoke-static {v4, v0}, Lorg/apache/tools/zip/ZipShort;->getValue([BI)I

    move-result v8

    .line 370
    .local v8, commentLen:I
    add-int/lit8 v16, v16, 0x2

    .line 372
    add-int/lit8 v16, v16, 0x2

    .line 374
    move/from16 v0, v16

    invoke-static {v4, v0}, Lorg/apache/tools/zip/ZipShort;->getValue([BI)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Lorg/apache/tools/zip/ZipEntry;->setInternalAttributes(I)V

    .line 375
    add-int/lit8 v16, v16, 0x2

    .line 377
    move/from16 v0, v16

    invoke-static {v4, v0}, Lorg/apache/tools/zip/ZipLong;->getValue([BI)J

    move-result-wide v25

    invoke-virtual/range {v24 .. v26}, Lorg/apache/tools/zip/ZipEntry;->setExternalAttributes(J)V

    .line 378
    add-int/lit8 v16, v16, 0x4

    .line 380
    new-array v11, v12, [B

    .line 381
    .local v11, fileName:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 382
    invoke-interface {v9, v11}, Lorg/apache/tools/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/apache/tools/zip/ZipEntry;->setName(Ljava/lang/String;)V

    .line 385
    new-instance v17, Lorg/apache/tools/zip/ZipFile$OffsetEntry;

    const/16 v25, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/apache/tools/zip/ZipFile$OffsetEntry;-><init>(Lorg/apache/tools/zip/ZipFile$1;)V

    .line 386
    .local v17, offset:Lorg/apache/tools/zip/ZipFile$OffsetEntry;
    move/from16 v0, v16

    invoke-static {v4, v0}, Lorg/apache/tools/zip/ZipLong;->getValue([BI)J

    move-result-wide v25

    move-object/from16 v0, v17

    move-wide/from16 v1, v25

    invoke-static {v0, v1, v2}, Lorg/apache/tools/zip/ZipFile$OffsetEntry;->access$202(Lorg/apache/tools/zip/ZipFile$OffsetEntry;J)J

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/tools/zip/ZipFile;->entries:Ljava/util/Map;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/tools/zip/ZipFile;->nameMap:Ljava/util/Map;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v24}, Lorg/apache/tools/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    new-array v3, v10, [B

    .line 393
    .local v3, cdExtraData:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 394
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lorg/apache/tools/zip/ZipEntry;->setCentralDirectoryExtra([B)V

    .line 396
    new-array v7, v8, [B

    .line 397
    .local v7, comment:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 398
    invoke-interface {v9, v7}, Lorg/apache/tools/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/apache/tools/zip/ZipEntry;->setComment(Ljava/lang/String;)V

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 401
    invoke-static/range {v20 .. v20}, Lorg/apache/tools/zip/ZipLong;->getValue([B)J

    move-result-wide v18

    .line 403
    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/tools/zip/ZipFile;->useUnicodeExtraFields:Z

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 404
    new-instance v25, Lorg/apache/tools/zip/ZipFile$NameAndComment;

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v0, v11, v7, v1}, Lorg/apache/tools/zip/ZipFile$NameAndComment;-><init>([B[BLorg/apache/tools/zip/ZipFile$1;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 337
    .end local v3           #cdExtraData:[B
    .end local v7           #comment:[B
    .end local v8           #commentLen:I
    .end local v9           #entryEncoding:Lorg/apache/tools/zip/ZipEncoding;
    .end local v10           #extraLen:I
    .end local v11           #fileName:[B
    .end local v12           #fileNameLen:I
    .end local v14           #hasUTF8Flag:Z
    .end local v17           #offset:Lorg/apache/tools/zip/ZipFile$OffsetEntry;
    .end local v21           #time:J
    :cond_1
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 339
    .restart local v14       #hasUTF8Flag:Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/tools/zip/ZipFile;->zipEncoding:Lorg/apache/tools/zip/ZipEncoding;

    goto/16 :goto_2

    .line 407
    .end local v13           #generalPurposeFlag:I
    .end local v14           #hasUTF8Flag:Z
    .end local v16           #off:I
    .end local v23           #versionMadeBy:I
    .end local v24           #ze:Lorg/apache/tools/zip/ZipEntry;
    :cond_3
    return-object v15
.end method

.method private positionAtCentralDirectory()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v12, 0x0

    .line 446
    const/4 v2, 0x0

    .line 447
    .local v2, found:Z
    iget-object v8, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x16

    sub-long v3, v8, v10

    .line 448
    .local v3, off:J
    iget-object v8, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    const-wide/32 v10, 0x10015

    sub-long/2addr v8, v10

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 449
    .local v6, stopSearching:J
    cmp-long v8, v3, v12

    if-ltz v8, :cond_0

    .line 450
    iget-object v8, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v8, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 451
    sget-object v5, Lorg/apache/tools/zip/ZipOutputStream;->EOCD_SIG:[B

    .line 452
    .local v5, sig:[B
    iget-object v8, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    .line 453
    .local v1, curr:I
    :goto_0
    cmp-long v8, v3, v6

    if-ltz v8, :cond_0

    const/4 v8, -0x1

    if-eq v1, v8, :cond_0

    .line 454
    const/4 v8, 0x0

    aget-byte v8, v5, v8

    if-ne v1, v8, :cond_1

    .line 455
    iget-object v8, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    .line 456
    const/4 v8, 0x1

    aget-byte v8, v5, v8

    if-ne v1, v8, :cond_1

    .line 457
    iget-object v8, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    .line 458
    const/4 v8, 0x2

    aget-byte v8, v5, v8

    if-ne v1, v8, :cond_1

    .line 459
    iget-object v8, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    .line 460
    const/4 v8, 0x3

    aget-byte v8, v5, v8

    if-ne v1, v8, :cond_1

    .line 461
    const/4 v2, 0x1

    .line 471
    .end local v1           #curr:I
    .end local v5           #sig:[B
    :cond_0
    if-nez v2, :cond_2

    .line 472
    new-instance v8, Ljava/util/zip/ZipException;

    const-string v9, "archive is not a ZIP archive"

    invoke-direct {v8, v9}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 467
    .restart local v1       #curr:I
    .restart local v5       #sig:[B
    :cond_1
    iget-object v8, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    const-wide/16 v9, 0x1

    sub-long/2addr v3, v9

    invoke-virtual {v8, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 468
    iget-object v8, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    goto :goto_0

    .line 474
    .end local v1           #curr:I
    .end local v5           #sig:[B
    :cond_2
    iget-object v8, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    const-wide/16 v9, 0x10

    add-long/2addr v9, v3

    invoke-virtual {v8, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 475
    const/4 v8, 0x4

    new-array v0, v8, [B

    .line 476
    .local v0, cfdOffset:[B
    iget-object v8, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v8, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 477
    iget-object v8, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lorg/apache/tools/zip/ZipLong;->getValue([B)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 478
    return-void
.end method

.method private resolveLocalFileHeaderData(Ljava/util/Map;)V
    .locals 16
    .parameter "entriesWithoutUTF8Flag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 504
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/zip/ZipFile;->getEntries()Ljava/util/Enumeration;

    move-result-object v2

    .line 505
    .local v2, e:Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 506
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/tools/zip/ZipEntry;

    .line 507
    .local v11, ze:Lorg/apache/tools/zip/ZipEntry;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/tools/zip/ZipFile;->entries:Ljava/util/Map;

    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/tools/zip/ZipFile$OffsetEntry;

    .line 508
    .local v9, offsetEntry:Lorg/apache/tools/zip/ZipFile$OffsetEntry;
    invoke-static {v9}, Lorg/apache/tools/zip/ZipFile$OffsetEntry;->access$200(Lorg/apache/tools/zip/ZipFile$OffsetEntry;)J

    move-result-wide v7

    .line 509
    .local v7, offset:J
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    const-wide/16 v13, 0x1a

    add-long/2addr v13, v7

    invoke-virtual {v12, v13, v14}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 510
    const/4 v12, 0x2

    new-array v1, v12, [B

    .line 511
    .local v1, b:[B
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v12, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 512
    invoke-static {v1}, Lorg/apache/tools/zip/ZipShort;->getValue([B)I

    move-result v4

    .line 513
    .local v4, fileNameLen:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v12, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 514
    invoke-static {v1}, Lorg/apache/tools/zip/ZipShort;->getValue([B)I

    move-result v3

    .line 515
    .local v3, extraFieldLen:I
    move v5, v4

    .line 516
    .local v5, lenToSkip:I
    :goto_1
    if-lez v5, :cond_2

    .line 517
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v12, v5}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v10

    .line 518
    .local v10, skipped:I
    if-gtz v10, :cond_1

    .line 519
    new-instance v12, Ljava/lang/RuntimeException;

    const-string v13, "failed to skip file name in local file header"

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 522
    :cond_1
    sub-int/2addr v5, v10

    goto :goto_1

    .line 524
    .end local v10           #skipped:I
    :cond_2
    new-array v6, v3, [B

    .line 525
    .local v6, localExtraData:[B
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v12, v6}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 526
    invoke-virtual {v11, v6}, Lorg/apache/tools/zip/ZipEntry;->setExtra([B)V

    .line 531
    const-wide/16 v12, 0x1a

    add-long/2addr v12, v7

    const-wide/16 v14, 0x2

    add-long/2addr v12, v14

    const-wide/16 v14, 0x2

    add-long/2addr v12, v14

    int-to-long v14, v4

    add-long/2addr v12, v14

    int-to-long v14, v3

    add-long/2addr v12, v14

    invoke-static {v9, v12, v13}, Lorg/apache/tools/zip/ZipFile$OffsetEntry;->access$002(Lorg/apache/tools/zip/ZipFile$OffsetEntry;J)J

    .line 534
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 535
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/tools/zip/ZipFile$NameAndComment;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lorg/apache/tools/zip/ZipFile;->setNameAndCommentFromExtraFields(Lorg/apache/tools/zip/ZipEntry;Lorg/apache/tools/zip/ZipFile$NameAndComment;)V

    goto/16 :goto_0

    .line 540
    .end local v1           #b:[B
    .end local v3           #extraFieldLen:I
    .end local v4           #fileNameLen:I
    .end local v5           #lenToSkip:I
    .end local v6           #localExtraData:[B
    .end local v7           #offset:J
    .end local v9           #offsetEntry:Lorg/apache/tools/zip/ZipFile$OffsetEntry;
    .end local v11           #ze:Lorg/apache/tools/zip/ZipEntry;
    :cond_3
    return-void
.end method

.method private setNameAndCommentFromExtraFields(Lorg/apache/tools/zip/ZipEntry;Lorg/apache/tools/zip/ZipFile$NameAndComment;)V
    .locals 6
    .parameter "ze"
    .parameter "nc"

    .prologue
    .line 609
    sget-object v5, Lorg/apache/tools/zip/UnicodePathExtraField;->UPATH_ID:Lorg/apache/tools/zip/ZipShort;

    invoke-virtual {p1, v5}, Lorg/apache/tools/zip/ZipEntry;->getExtraField(Lorg/apache/tools/zip/ZipShort;)Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/zip/UnicodePathExtraField;

    .line 611
    .local v1, name:Lorg/apache/tools/zip/UnicodePathExtraField;
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 612
    .local v4, originalName:Ljava/lang/String;
    invoke-static {p2}, Lorg/apache/tools/zip/ZipFile$NameAndComment;->access$400(Lorg/apache/tools/zip/ZipFile$NameAndComment;)[B

    move-result-object v5

    invoke-direct {p0, v1, v5}, Lorg/apache/tools/zip/ZipFile;->getUnicodeStringIfOriginalMatches(Lorg/apache/tools/zip/AbstractUnicodeExtraField;[B)Ljava/lang/String;

    move-result-object v3

    .line 613
    .local v3, newName:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 614
    invoke-virtual {p1, v3}, Lorg/apache/tools/zip/ZipEntry;->setName(Ljava/lang/String;)V

    .line 615
    iget-object v5, p0, Lorg/apache/tools/zip/ZipFile;->nameMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    iget-object v5, p0, Lorg/apache/tools/zip/ZipFile;->nameMap:Ljava/util/Map;

    invoke-interface {v5, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    :cond_0
    invoke-static {p2}, Lorg/apache/tools/zip/ZipFile$NameAndComment;->access$500(Lorg/apache/tools/zip/ZipFile$NameAndComment;)[B

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-static {p2}, Lorg/apache/tools/zip/ZipFile$NameAndComment;->access$500(Lorg/apache/tools/zip/ZipFile$NameAndComment;)[B

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_1

    .line 620
    sget-object v5, Lorg/apache/tools/zip/UnicodeCommentExtraField;->UCOM_ID:Lorg/apache/tools/zip/ZipShort;

    invoke-virtual {p1, v5}, Lorg/apache/tools/zip/ZipEntry;->getExtraField(Lorg/apache/tools/zip/ZipShort;)Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/zip/UnicodeCommentExtraField;

    .line 622
    .local v0, cmt:Lorg/apache/tools/zip/UnicodeCommentExtraField;
    invoke-static {p2}, Lorg/apache/tools/zip/ZipFile$NameAndComment;->access$500(Lorg/apache/tools/zip/ZipFile$NameAndComment;)[B

    move-result-object v5

    invoke-direct {p0, v0, v5}, Lorg/apache/tools/zip/ZipFile;->getUnicodeStringIfOriginalMatches(Lorg/apache/tools/zip/AbstractUnicodeExtraField;[B)Ljava/lang/String;

    move-result-object v2

    .line 624
    .local v2, newComment:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 625
    invoke-virtual {p1, v2}, Lorg/apache/tools/zip/ZipEntry;->setComment(Ljava/lang/String;)V

    .line 628
    .end local v0           #cmt:Lorg/apache/tools/zip/UnicodeCommentExtraField;
    .end local v2           #newComment:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private startsWithLocalFileHeader()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 591
    iget-object v2, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 592
    const/4 v2, 0x4

    new-array v1, v2, [B

    .line 593
    .local v1, start:[B
    iget-object v2, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 594
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 595
    aget-byte v2, v1, v0

    sget-object v3, Lorg/apache/tools/zip/ZipOutputStream;->LFH_SIG:[B

    aget-byte v3, v3, v0

    if-eq v2, v3, :cond_0

    .line 596
    const/4 v2, 0x0

    .line 599
    :goto_1
    return v2

    .line 594
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 599
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 214
    return-void
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getEntries()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->entries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getEntry(Ljava/lang/String;)Lorg/apache/tools/zip/ZipEntry;
    .locals 1
    .parameter "name"

    .prologue
    .line 247
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->nameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/zip/ZipEntry;

    return-object v0
.end method

.method public getInputStream(Lorg/apache/tools/zip/ZipEntry;)Ljava/io/InputStream;
    .locals 7
    .parameter "ze"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    .line 260
    iget-object v1, p0, Lorg/apache/tools/zip/ZipFile;->entries:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/tools/zip/ZipFile$OffsetEntry;

    .line 261
    .local v6, offsetEntry:Lorg/apache/tools/zip/ZipFile$OffsetEntry;
    if-nez v6, :cond_0

    .line 262
    const/4 v0, 0x0

    .line 272
    :goto_0
    :sswitch_0
    return-object v0

    .line 264
    :cond_0
    invoke-static {v6}, Lorg/apache/tools/zip/ZipFile$OffsetEntry;->access$000(Lorg/apache/tools/zip/ZipFile$OffsetEntry;)J

    move-result-wide v2

    .line 265
    .local v2, start:J
    new-instance v0, Lorg/apache/tools/zip/ZipFile$BoundedInputStream;

    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/tools/zip/ZipFile$BoundedInputStream;-><init>(Lorg/apache/tools/zip/ZipFile;JJ)V

    .line 267
    .local v0, bis:Lorg/apache/tools/zip/ZipFile$BoundedInputStream;
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getMethod()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 274
    new-instance v1, Ljava/util/zip/ZipException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Found unsupported compression method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getMethod()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 271
    :sswitch_1
    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipFile$BoundedInputStream;->addDummy()V

    .line 272
    new-instance v1, Ljava/util/zip/InflaterInputStream;

    new-instance v4, Ljava/util/zip/Inflater;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {v1, v0, v4}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    move-object v0, v1

    goto :goto_0

    .line 267
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method protected getString([B)Ljava/lang/String;
    .locals 4
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    .line 580
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/zip/ZipFile;->encoding:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/tools/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/tools/zip/ZipEncoding;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/apache/tools/zip/ZipEncoding;->decode([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 581
    :catch_0
    move-exception v0

    .line 582
    .local v0, ex:Ljava/io/IOException;
    new-instance v1, Ljava/util/zip/ZipException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Failed to decode name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

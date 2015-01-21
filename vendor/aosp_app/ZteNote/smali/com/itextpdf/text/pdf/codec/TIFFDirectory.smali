.class public Lcom/itextpdf/text/pdf/codec/TIFFDirectory;
.super Ljava/lang/Object;
.source "TIFFDirectory.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x2571e3ed10b6c74L

.field private static final sizeOfType:[I


# instance fields
.field IFDOffset:J

.field fieldIndex:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field fields:[Lcom/itextpdf/text/pdf/codec/TIFFField;

.field isBigEndian:Z

.field nextIFDOffset:J

.field numEntries:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 206
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->sizeOfType:[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->fieldIndex:Ljava/util/Hashtable;

    .line 95
    const-wide/16 v0, 0x8

    iput-wide v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->IFDOffset:J

    .line 98
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->nextIFDOffset:J

    .line 101
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;I)V
    .locals 11
    .parameter "stream"
    .parameter "directory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v8, Ljava/util/Hashtable;

    invoke-direct {v8}, Ljava/util/Hashtable;-><init>()V

    iput-object v8, p0, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->fieldIndex:Ljava/util/Hashtable;

    .line 95
    const-wide/16 v8, 0x8

    iput-wide v8, p0, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->IFDOffset:J

    .line 98
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->nextIFDOffset:J

    .line 120
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->getFilePointer()J

    move-result-wide v2

    .line 124
    .local v2, global_save_offset:J
    const-wide/16 v8, 0x0

    invoke-virtual {p1, v8, v9}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V

    .line 125
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v0

    .line 126
    .local v0, endian:I
    invoke-static {v0}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->isValidEndianTag(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 127
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "bad.endianness.tag.not.0x4949.or.0x4d4d"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 129
    :cond_0
    const/16 v8, 0x4d4d

    if-ne v0, v8, :cond_1

    const/4 v8, 0x1

    :goto_0
    iput-boolean v8, p0, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->isBigEndian:Z

    .line 131
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->readUnsignedShort(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)I

    move-result v7

    .line 132
    .local v7, magic:I
    const/16 v8, 0x2a

    if-eq v7, v8, :cond_2

    .line 133
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "bad.magic.number.should.be.42"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 129
    .end local v7           #magic:I
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 137
    .restart local v7       #magic:I
    :cond_2
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->readUnsignedInt(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)J

    move-result-wide v5

    .line 139
    .local v5, ifd_offset:J
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, p2, :cond_4

    .line 140
    const-wide/16 v8, 0x0

    cmp-long v8, v5, v8

    if-nez v8, :cond_3

    .line 141
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "directory.number.too.large"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 144
    :cond_3
    invoke-virtual {p1, v5, v6}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V

    .line 145
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->readUnsignedShort(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)I

    move-result v1

    .line 146
    .local v1, entries:I
    mul-int/lit8 v8, v1, 0xc

    int-to-long v8, v8

    invoke-virtual {p1, v8, v9}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->skip(J)J

    .line 148
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->readUnsignedInt(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)J

    move-result-wide v5

    .line 139
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 151
    .end local v1           #entries:I
    :cond_4
    invoke-virtual {p1, v5, v6}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V

    .line 152
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->initialize(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)V

    .line 153
    invoke-virtual {p1, v2, v3}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V

    .line 154
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;JI)V
    .locals 10
    .parameter "stream"
    .parameter "ifd_offset"
    .parameter "directory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const/4 v5, 0x0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    iput-object v6, p0, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->fieldIndex:Ljava/util/Hashtable;

    .line 95
    const-wide/16 v6, 0x8

    iput-wide v6, p0, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->IFDOffset:J

    .line 98
    iput-wide v8, p0, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->nextIFDOffset:J

    .line 172
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->getFilePointer()J

    move-result-wide v2

    .line 173
    .local v2, global_save_offset:J
    invoke-virtual {p1, v8, v9}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V

    .line 174
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v1

    .line 175
    .local v1, endian:I
    invoke-static {v1}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->isValidEndianTag(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 176
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "bad.endianness.tag.not.0x4949.or.0x4d4d"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v7, v5}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 178
    :cond_0
    const/16 v6, 0x4d4d

    if-ne v1, v6, :cond_1

    const/4 v5, 0x1

    :cond_1
    iput-boolean v5, p0, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->isBigEndian:Z

    .line 181
    invoke-virtual {p1, p2, p3}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V

    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, dirNum:I
    :goto_0
    if-ge v0, p4, :cond_2

    .line 187
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->readUnsignedShort(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)I

    move-result v4

    .line 190
    .local v4, numEntries:I
    mul-int/lit8 v5, v4, 0xc

    int-to-long v5, v5

    add-long/2addr v5, p2

    invoke-virtual {p1, v5, v6}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V

    .line 193
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->readUnsignedInt(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)J

    move-result-wide p2

    .line 196
    invoke-virtual {p1, p2, p3}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V

    .line 199
    add-int/lit8 v0, v0, 0x1

    .line 200
    goto :goto_0

    .line 202
    .end local v4           #numEntries:I
    :cond_2
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->initialize(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)V

    .line 203
    invoke-virtual {p1, v2, v3}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V

    .line 204
    return-void
.end method

.method public static getNumDirectories(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)I
    .locals 14
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v12, 0x0

    const/4 v10, 0x0

    .line 613
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->getFilePointer()J

    move-result-wide v8

    .line 615
    .local v8, pointer:J
    invoke-virtual {p0, v12, v13}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V

    .line 616
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v0

    .line 617
    .local v0, endian:I
    invoke-static {v0}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->isValidEndianTag(I)Z

    move-result v11

    if-nez v11, :cond_0

    .line 618
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "bad.endianness.tag.not.0x4949.or.0x4d4d"

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v12, v10}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 620
    :cond_0
    const/16 v11, 0x4d4d

    if-ne v0, v11, :cond_1

    const/4 v3, 0x1

    .line 621
    .local v3, isBigEndian:Z
    :goto_0
    invoke-static {p0, v3}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->readUnsignedShort(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;Z)I

    move-result v4

    .line 622
    .local v4, magic:I
    const/16 v11, 0x2a

    if-eq v4, v11, :cond_2

    .line 623
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "bad.magic.number.should.be.42"

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v12, v10}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .end local v3           #isBigEndian:Z
    .end local v4           #magic:I
    :cond_1
    move v3, v10

    .line 620
    goto :goto_0

    .line 626
    .restart local v3       #isBigEndian:Z
    .restart local v4       #magic:I
    :cond_2
    const-wide/16 v10, 0x4

    invoke-virtual {p0, v10, v11}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V

    .line 627
    invoke-static {p0, v3}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->readUnsignedInt(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;Z)J

    move-result-wide v6

    .line 629
    .local v6, offset:J
    const/4 v5, 0x0

    .line 630
    .local v5, numDirectories:I
    :goto_1
    cmp-long v10, v6, v12

    if-eqz v10, :cond_3

    .line 631
    add-int/lit8 v5, v5, 0x1

    .line 635
    :try_start_0
    invoke-virtual {p0, v6, v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V

    .line 636
    invoke-static {p0, v3}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->readUnsignedShort(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;Z)I

    move-result v1

    .line 637
    .local v1, entries:I
    mul-int/lit8 v10, v1, 0xc

    int-to-long v10, v10

    invoke-virtual {p0, v10, v11}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->skip(J)J

    .line 638
    invoke-static {p0, v3}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->readUnsignedInt(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;Z)J
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    goto :goto_1

    .line 639
    .end local v1           #entries:I
    :catch_0
    move-exception v2

    .line 645
    :cond_3
    invoke-virtual {p0, v8, v9}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V

    .line 646
    return v5
.end method

.method private initialize(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)V
    .locals 38
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    const-wide/16 v22, 0x0

    .line 224
    .local v22, nextTagOffset:J
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->length()J

    move-result-wide v20

    .line 227
    .local v20, maxOffset:J
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->getFilePointer()J

    move-result-wide v34

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->IFDOffset:J

    .line 229
    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->readUnsignedShort(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->numEntries:I

    .line 230
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->numEntries:I

    move/from16 v34, v0

    move/from16 v0, v34

    new-array v0, v0, [Lcom/itextpdf/text/pdf/codec/TIFFField;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->fields:[Lcom/itextpdf/text/pdf/codec/TIFFField;

    .line 232
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->numEntries:I

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v12, v0, :cond_10

    cmp-long v34, v22, v20

    if-gez v34, :cond_10

    .line 233
    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->readUnsignedShort(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)I

    move-result v29

    .line 234
    .local v29, tag:I
    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->readUnsignedShort(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)I

    move-result v30

    .line 235
    .local v30, type:I
    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->readUnsignedInt(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)J

    move-result-wide v34

    move-wide/from16 v0, v34

    long-to-int v7, v0

    .line 236
    .local v7, count:I
    const/16 v26, 0x1

    .line 239
    .local v26, processTag:Z
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->getFilePointer()J

    move-result-wide v34

    const-wide/16 v36, 0x4

    add-long v22, v34, v36

    .line 244
    :try_start_0
    sget-object v34, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->sizeOfType:[I

    aget v34, v34, v30

    mul-int v34, v34, v7

    const/16 v35, 0x4

    move/from16 v0, v34

    move/from16 v1, v35

    if-le v0, v1, :cond_0

    .line 245
    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->readUnsignedInt(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)J

    move-result-wide v32

    .line 248
    .local v32, valueOffset:J
    cmp-long v34, v32, v20

    if-gez v34, :cond_2

    .line 249
    move-object/from16 v0, p1

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    .end local v32           #valueOffset:J
    :cond_0
    :goto_1
    if-eqz v26, :cond_1

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->fieldIndex:Ljava/util/Hashtable;

    move-object/from16 v34, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const/16 v24, 0x0

    .line 265
    .local v24, obj:Ljava/lang/Object;
    packed-switch v30, :pswitch_data_0

    .line 372
    .end local v24           #obj:Ljava/lang/Object;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->fields:[Lcom/itextpdf/text/pdf/codec/TIFFField;

    move-object/from16 v34, v0

    new-instance v35, Lcom/itextpdf/text/pdf/codec/TIFFField;

    move-object/from16 v0, v35

    move/from16 v1, v29

    move/from16 v2, v30

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v7, v3}, Lcom/itextpdf/text/pdf/codec/TIFFField;-><init>(IIILjava/lang/Object;)V

    aput-object v35, v34, v12

    .line 375
    :cond_1
    move-object/from16 v0, p1

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V

    .line 232
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 253
    .restart local v32       #valueOffset:J
    :cond_2
    const/16 v26, 0x0

    goto :goto_1

    .line 256
    .end local v32           #valueOffset:J
    :catch_0
    move-exception v4

    .line 258
    .local v4, ae:Ljava/lang/ArrayIndexOutOfBoundsException;
    const/16 v26, 0x0

    goto :goto_1

    .line 270
    .end local v4           #ae:Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v24       #obj:Ljava/lang/Object;
    :pswitch_0
    new-array v5, v7, [B

    .line 271
    .local v5, bvalues:[B
    const/16 v34, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-virtual {v0, v5, v1, v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readFully([BII)V

    .line 273
    const/16 v34, 0x2

    move/from16 v0, v30

    move/from16 v1, v34

    if-ne v0, v1, :cond_7

    .line 276
    const/4 v14, 0x0

    .local v14, index:I
    const/16 v25, 0x0

    .line 277
    .local v25, prevIndex:I
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .local v31, v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_3
    if-ge v14, v7, :cond_5

    move v15, v14

    .line 281
    .end local v14           #index:I
    .local v15, index:I
    :goto_4
    if-ge v15, v7, :cond_3

    add-int/lit8 v14, v15, 0x1

    .end local v15           #index:I
    .restart local v14       #index:I
    aget-byte v34, v5, v15

    if-eqz v34, :cond_4

    move v15, v14

    .end local v14           #index:I
    .restart local v15       #index:I
    goto :goto_4

    :cond_3
    move v14, v15

    .line 284
    .end local v15           #index:I
    .restart local v14       #index:I
    :cond_4
    new-instance v34, Ljava/lang/String;

    sub-int v35, v14, v25

    move-object/from16 v0, v34

    move/from16 v1, v25

    move/from16 v2, v35

    invoke-direct {v0, v5, v1, v2}, Ljava/lang/String;-><init>([BII)V

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    move/from16 v25, v14

    goto :goto_3

    .line 289
    :cond_5
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 290
    new-array v0, v7, [Ljava/lang/String;

    move-object/from16 v27, v0

    .line 291
    .local v27, strings:[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, c:I
    :goto_5
    if-ge v6, v7, :cond_6

    .line 292
    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    aput-object v34, v27, v6

    .line 291
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 295
    :cond_6
    move-object/from16 v24, v27

    .line 296
    .local v24, obj:[Ljava/lang/String;
    goto :goto_2

    .line 297
    .end local v6           #c:I
    .end local v14           #index:I
    .end local v25           #prevIndex:I
    .end local v27           #strings:[Ljava/lang/String;
    .end local v31           #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v24, obj:Ljava/lang/Object;
    :cond_7
    move-object/from16 v24, v5

    .line 300
    .local v24, obj:[B
    goto/16 :goto_2

    .line 303
    .end local v5           #bvalues:[B
    .local v24, obj:Ljava/lang/Object;
    :pswitch_1
    new-array v8, v7, [C

    .line 304
    .local v8, cvalues:[C
    const/16 v17, 0x0

    .local v17, j:I
    :goto_6
    move/from16 v0, v17

    if-ge v0, v7, :cond_8

    .line 305
    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->readUnsignedShort(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)I

    move-result v34

    move/from16 v0, v34

    int-to-char v0, v0

    move/from16 v34, v0

    aput-char v34, v8, v17

    .line 304
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 307
    :cond_8
    move-object/from16 v24, v8

    .line 308
    .local v24, obj:[C
    goto/16 :goto_2

    .line 311
    .end local v8           #cvalues:[C
    .end local v17           #j:I
    .local v24, obj:Ljava/lang/Object;
    :pswitch_2
    new-array v0, v7, [J

    move-object/from16 v19, v0

    .line 312
    .local v19, lvalues:[J
    const/16 v17, 0x0

    .restart local v17       #j:I
    :goto_7
    move/from16 v0, v17

    if-ge v0, v7, :cond_9

    .line 313
    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->readUnsignedInt(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)J

    move-result-wide v34

    aput-wide v34, v19, v17

    .line 312
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    .line 315
    :cond_9
    move-object/from16 v24, v19

    .line 316
    .local v24, obj:[J
    goto/16 :goto_2

    .line 319
    .end local v17           #j:I
    .end local v19           #lvalues:[J
    .local v24, obj:Ljava/lang/Object;
    :pswitch_3
    const/16 v34, 0x2

    move/from16 v0, v34

    filled-new-array {v7, v0}, [I

    move-result-object v34

    sget-object v35, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [[J

    .line 320
    .local v18, llvalues:[[J
    const/16 v17, 0x0

    .restart local v17       #j:I
    :goto_8
    move/from16 v0, v17

    if-ge v0, v7, :cond_a

    .line 321
    aget-object v34, v18, v17

    const/16 v35, 0x0

    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->readUnsignedInt(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)J

    move-result-wide v36

    aput-wide v36, v34, v35

    .line 322
    aget-object v34, v18, v17

    const/16 v35, 0x1

    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->readUnsignedInt(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)J

    move-result-wide v36

    aput-wide v36, v34, v35

    .line 320
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    .line 324
    :cond_a
    move-object/from16 v24, v18

    .line 325
    .local v24, obj:[[J
    goto/16 :goto_2

    .line 328
    .end local v17           #j:I
    .end local v18           #llvalues:[[J
    .local v24, obj:Ljava/lang/Object;
    :pswitch_4
    new-array v0, v7, [S

    move-object/from16 v28, v0

    .line 329
    .local v28, svalues:[S
    const/16 v17, 0x0

    .restart local v17       #j:I
    :goto_9
    move/from16 v0, v17

    if-ge v0, v7, :cond_b

    .line 330
    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->readShort(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)S

    move-result v34

    aput-short v34, v28, v17

    .line 329
    add-int/lit8 v17, v17, 0x1

    goto :goto_9

    .line 332
    :cond_b
    move-object/from16 v24, v28

    .line 333
    .local v24, obj:[S
    goto/16 :goto_2

    .line 336
    .end local v17           #j:I
    .end local v28           #svalues:[S
    .local v24, obj:Ljava/lang/Object;
    :pswitch_5
    new-array v0, v7, [I

    move-object/from16 v16, v0

    .line 337
    .local v16, ivalues:[I
    const/16 v17, 0x0

    .restart local v17       #j:I
    :goto_a
    move/from16 v0, v17

    if-ge v0, v7, :cond_c

    .line 338
    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->readInt(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)I

    move-result v34

    aput v34, v16, v17

    .line 337
    add-int/lit8 v17, v17, 0x1

    goto :goto_a

    .line 340
    :cond_c
    move-object/from16 v24, v16

    .line 341
    .local v24, obj:[I
    goto/16 :goto_2

    .line 344
    .end local v16           #ivalues:[I
    .end local v17           #j:I
    .local v24, obj:Ljava/lang/Object;
    :pswitch_6
    const/16 v34, 0x2

    move/from16 v0, v34

    filled-new-array {v7, v0}, [I

    move-result-object v34

    sget-object v35, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[I

    .line 345
    .local v13, iivalues:[[I
    const/16 v17, 0x0

    .restart local v17       #j:I
    :goto_b
    move/from16 v0, v17

    if-ge v0, v7, :cond_d

    .line 346
    aget-object v34, v13, v17

    const/16 v35, 0x0

    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->readInt(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)I

    move-result v36

    aput v36, v34, v35

    .line 347
    aget-object v34, v13, v17

    const/16 v35, 0x1

    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->readInt(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)I

    move-result v36

    aput v36, v34, v35

    .line 345
    add-int/lit8 v17, v17, 0x1

    goto :goto_b

    .line 349
    :cond_d
    move-object/from16 v24, v13

    .line 350
    .local v24, obj:[[I
    goto/16 :goto_2

    .line 353
    .end local v13           #iivalues:[[I
    .end local v17           #j:I
    .local v24, obj:Ljava/lang/Object;
    :pswitch_7
    new-array v11, v7, [F

    .line 354
    .local v11, fvalues:[F
    const/16 v17, 0x0

    .restart local v17       #j:I
    :goto_c
    move/from16 v0, v17

    if-ge v0, v7, :cond_e

    .line 355
    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->readFloat(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)F

    move-result v34

    aput v34, v11, v17

    .line 354
    add-int/lit8 v17, v17, 0x1

    goto :goto_c

    .line 357
    :cond_e
    move-object/from16 v24, v11

    .line 358
    .local v24, obj:[F
    goto/16 :goto_2

    .line 361
    .end local v11           #fvalues:[F
    .end local v17           #j:I
    .local v24, obj:Ljava/lang/Object;
    :pswitch_8
    new-array v9, v7, [D

    .line 362
    .local v9, dvalues:[D
    const/16 v17, 0x0

    .restart local v17       #j:I
    :goto_d
    move/from16 v0, v17

    if-ge v0, v7, :cond_f

    .line 363
    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->readDouble(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)D

    move-result-wide v34

    aput-wide v34, v9, v17

    .line 362
    add-int/lit8 v17, v17, 0x1

    goto :goto_d

    .line 365
    :cond_f
    move-object/from16 v24, v9

    .line 366
    .local v24, obj:[D
    goto/16 :goto_2

    .line 380
    .end local v7           #count:I
    .end local v9           #dvalues:[D
    .end local v17           #j:I
    .end local v24           #obj:[D
    .end local v26           #processTag:Z
    .end local v29           #tag:I
    .end local v30           #type:I
    :cond_10
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->readUnsignedInt(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)J

    move-result-wide v34

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->nextIFDOffset:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 386
    :goto_e
    return-void

    .line 382
    :catch_1
    move-exception v10

    .line 384
    .local v10, e:Ljava/lang/Exception;
    const-wide/16 v34, 0x0

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->nextIFDOffset:J

    goto :goto_e

    .line 265
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private static isValidEndianTag(I)Z
    .locals 1
    .parameter "endian"

    .prologue
    .line 104
    const/16 v0, 0x4949

    if-eq p0, v0, :cond_0

    const/16 v0, 0x4d4d

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readDouble(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)D
    .locals 2
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 578
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->isBigEndian:Z

    if-eqz v0, :cond_0

    .line 579
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readDouble()D

    move-result-wide v0

    .line 581
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readDoubleLE()D

    move-result-wide v0

    goto :goto_0
.end method

.method private readFloat(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)F
    .locals 1
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 569
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->isBigEndian:Z

    if-eqz v0, :cond_0

    .line 570
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readFloat()F

    move-result v0

    .line 572
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readFloatLE()F

    move-result v0

    goto :goto_0
.end method

.method private readInt(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)I
    .locals 1
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 542
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->isBigEndian:Z

    if-eqz v0, :cond_0

    .line 543
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readInt()I

    move-result v0

    .line 545
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readIntLE()I

    move-result v0

    goto :goto_0
.end method

.method private readLong(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)J
    .locals 2
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 560
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->isBigEndian:Z

    if-eqz v0, :cond_0

    .line 561
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readLong()J

    move-result-wide v0

    .line 563
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readLongLE()J

    move-result-wide v0

    goto :goto_0
.end method

.method private readShort(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)S
    .locals 1
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 524
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->isBigEndian:Z

    if-eqz v0, :cond_0

    .line 525
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShort()S

    move-result v0

    .line 527
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    goto :goto_0
.end method

.method private readUnsignedInt(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)J
    .locals 2
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 551
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->isBigEndian:Z

    if-eqz v0, :cond_0

    .line 552
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedInt()J

    move-result-wide v0

    .line 554
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedIntLE()J

    move-result-wide v0

    goto :goto_0
.end method

.method private static readUnsignedInt(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;Z)J
    .locals 2
    .parameter "stream"
    .parameter "isBigEndian"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 598
    if-eqz p1, :cond_0

    .line 599
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedInt()J

    move-result-wide v0

    .line 601
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedIntLE()J

    move-result-wide v0

    goto :goto_0
.end method

.method private readUnsignedShort(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)I
    .locals 1
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 533
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->isBigEndian:Z

    if-eqz v0, :cond_0

    .line 534
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v0

    .line 536
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShortLE()I

    move-result v0

    goto :goto_0
.end method

.method private static readUnsignedShort(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;Z)I
    .locals 1
    .parameter "stream"
    .parameter "isBigEndian"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 588
    if-eqz p1, :cond_0

    .line 589
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v0

    .line 591
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShortLE()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getField(I)Lcom/itextpdf/text/pdf/codec/TIFFField;
    .locals 3
    .parameter "tag"

    .prologue
    .line 398
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->fieldIndex:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 399
    .local v0, i:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 400
    const/4 v1, 0x0

    .line 402
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->fields:[Lcom/itextpdf/text/pdf/codec/TIFFField;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    goto :goto_0
.end method

.method public getFieldAsByte(I)B
    .locals 1
    .parameter "tag"

    .prologue
    .line 456
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getFieldAsByte(II)B

    move-result v0

    return v0
.end method

.method public getFieldAsByte(II)B
    .locals 4
    .parameter "tag"
    .parameter "index"

    .prologue
    .line 444
    iget-object v2, p0, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->fieldIndex:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 445
    .local v1, i:Ljava/lang/Integer;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->fields:[Lcom/itextpdf/text/pdf/codec/TIFFField;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/codec/TIFFField;->getAsBytes()[B

    move-result-object v0

    .line 446
    .local v0, b:[B
    aget-byte v2, v0, p2

    return v2
.end method

.method public getFieldAsDouble(I)D
    .locals 2
    .parameter "tag"

    .prologue
    .line 517
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getFieldAsDouble(II)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFieldAsDouble(II)D
    .locals 3
    .parameter "tag"
    .parameter "index"

    .prologue
    .line 507
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->fieldIndex:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 508
    .local v0, i:Ljava/lang/Integer;
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->fields:[Lcom/itextpdf/text/pdf/codec/TIFFField;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1, p2}, Lcom/itextpdf/text/pdf/codec/TIFFField;->getAsDouble(I)D

    move-result-wide v1

    return-wide v1
.end method

.method public getFieldAsFloat(I)F
    .locals 1
    .parameter "tag"

    .prologue
    .line 497
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getFieldAsFloat(II)F

    move-result v0

    return v0
.end method

.method public getFieldAsFloat(II)F
    .locals 3
    .parameter "tag"
    .parameter "index"

    .prologue
    .line 487
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->fieldIndex:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 488
    .local v0, i:Ljava/lang/Integer;
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->fields:[Lcom/itextpdf/text/pdf/codec/TIFFField;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1, p2}, Lcom/itextpdf/text/pdf/codec/TIFFField;->getAsFloat(I)F

    move-result v1

    return v1
.end method

.method public getFieldAsLong(I)J
    .locals 2
    .parameter "tag"

    .prologue
    .line 477
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getFieldAsLong(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFieldAsLong(II)J
    .locals 3
    .parameter "tag"
    .parameter "index"

    .prologue
    .line 466
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->fieldIndex:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 467
    .local v0, i:Ljava/lang/Integer;
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->fields:[Lcom/itextpdf/text/pdf/codec/TIFFField;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1, p2}, Lcom/itextpdf/text/pdf/codec/TIFFField;->getAsLong(I)J

    move-result-wide v1

    return-wide v1
.end method

.method public getFields()[Lcom/itextpdf/text/pdf/codec/TIFFField;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->fields:[Lcom/itextpdf/text/pdf/codec/TIFFField;

    return-object v0
.end method

.method public getIFDOffset()J
    .locals 2

    .prologue
    .line 663
    iget-wide v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->IFDOffset:J

    return-wide v0
.end method

.method public getNextIFDOffset()J
    .locals 2

    .prologue
    .line 671
    iget-wide v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->nextIFDOffset:J

    return-wide v0
.end method

.method public getNumEntries()I
    .locals 1

    .prologue
    .line 390
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->numEntries:I

    return v0
.end method

.method public getTags()[I
    .locals 5

    .prologue
    .line 418
    iget-object v4, p0, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->fieldIndex:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->size()I

    move-result v4

    new-array v3, v4, [I

    .line 419
    .local v3, tags:[I
    iget-object v4, p0, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->fieldIndex:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 420
    .local v0, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 422
    .local v1, i:I
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 423
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v1

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 426
    :cond_0
    return-object v3
.end method

.method public isBigEndian()Z
    .locals 1

    .prologue
    .line 655
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->isBigEndian:Z

    return v0
.end method

.method public isTagPresent(I)Z
    .locals 2
    .parameter "tag"

    .prologue
    .line 410
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->fieldIndex:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

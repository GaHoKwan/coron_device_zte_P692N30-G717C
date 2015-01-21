.class public Lcom/nuance/dragon/toolkit/file/FileZip;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/nio/ByteBuffer;

.field private b:Ljava/util/HashMap;

.field public mZipFiles:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/file/FileZip;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/file/FileZip;->mZipFiles:Ljava/util/HashMap;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/file/FileZip;->a:Ljava/nio/ByteBuffer;

    invoke-direct {p0, p1}, Lcom/nuance/dragon/toolkit/file/FileZip;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 18

    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v10, v9, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    const-wide/16 v1, 0x16

    cmp-long v1, v7, v1

    if-gez v1, :cond_0

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    :cond_0
    const-wide/32 v1, 0x10015

    const-wide/32 v3, 0x10015

    cmp-long v3, v3, v7

    if-lez v3, :cond_1

    move-wide v1, v7

    :cond_1
    const-wide/16 v3, 0x0

    invoke-virtual {v10, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    and-int/lit16 v4, v3, 0xff

    shl-int/lit8 v4, v4, 0x18

    const v5, 0xff00

    and-int/2addr v5, v3

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v4, v5

    const/high16 v5, 0xff

    and-int/2addr v5, v3

    ushr-int/lit8 v5, v5, 0x8

    add-int/2addr v4, v5

    ushr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v3, v4

    const v4, 0x6054b50

    if-ne v3, v4, :cond_2

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    :cond_2
    const v4, 0x4034b50

    if-eq v3, v4, :cond_3

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    :cond_3
    sub-long v3, v7, v1

    invoke-virtual {v10, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    long-to-int v1, v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/RandomAccessFile;->readFully([B)V

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    array-length v1, v3

    add-int/lit8 v1, v1, -0x16

    :goto_0
    if-ltz v1, :cond_4

    aget-byte v4, v3, v1

    const/16 v5, 0x50

    if-ne v4, v5, :cond_6

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v4

    const v5, 0x6054b50

    if-ne v4, v5, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "+++ Found EOCD at index: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_4
    if-gez v1, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Zip: EOCD not found, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not zip"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v3, v1, 0x8

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v11

    add-int/lit8 v3, v1, 0xc

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v5, v3

    add-int/lit8 v3, v1, 0x10

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    const-wide v12, 0xffffffffL

    and-long v3, v2, v12

    add-long v12, v3, v5

    cmp-long v2, v12, v7

    if-lez v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "bad offsets (dir "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", eocd "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    :cond_7
    if-nez v11, :cond_8

    const-string v1, "empty archive?"

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "+++ numEntries="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dirSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dirOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v3

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v1}, Ljava/nio/MappedByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const v1, 0xffff

    new-array v4, v1, [B

    const/4 v2, 0x0

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v11, :cond_a

    invoke-virtual {v3, v2}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v6

    const v7, 0x2014b50

    if-eq v6, v7, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Missed a central dir sig (at "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    :cond_9
    add-int/lit8 v6, v2, 0x1c

    invoke-virtual {v3, v6}, Ljava/nio/MappedByteBuffer;->getShort(I)S

    move-result v6

    const v7, 0xffff

    and-int/2addr v6, v7

    add-int/lit8 v7, v2, 0x1e

    invoke-virtual {v3, v7}, Ljava/nio/MappedByteBuffer;->getShort(I)S

    move-result v7

    const v8, 0xffff

    and-int/2addr v7, v8

    add-int/lit8 v8, v2, 0x20

    invoke-virtual {v3, v8}, Ljava/nio/MappedByteBuffer;->getShort(I)S

    move-result v8

    const v12, 0xffff

    and-int/2addr v8, v12

    add-int/lit8 v12, v2, 0x2e

    invoke-virtual {v3, v12}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v12, 0x0

    invoke-virtual {v3, v4, v12, v6}, Ljava/nio/MappedByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance v12, Ljava/lang/String;

    const/4 v13, 0x0

    invoke-direct {v12, v4, v13, v6}, Ljava/lang/String;-><init>([BII)V

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Filename: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v13, Lcom/nuance/dragon/toolkit/file/FileZip$ZipEntryRO;

    move-object/from16 v0, p1

    invoke-direct {v13, v0, v9, v12}, Lcom/nuance/dragon/toolkit/file/FileZip$ZipEntryRO;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    add-int/lit8 v14, v2, 0xa

    invoke-virtual {v3, v14}, Ljava/nio/MappedByteBuffer;->getShort(I)S

    move-result v14

    const v15, 0xffff

    and-int/2addr v14, v15

    iput v14, v13, Lcom/nuance/dragon/toolkit/file/FileZip$ZipEntryRO;->mMethod:I

    add-int/lit8 v14, v2, 0xc

    invoke-virtual {v3, v14}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v14

    int-to-long v14, v14

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    iput-wide v14, v13, Lcom/nuance/dragon/toolkit/file/FileZip$ZipEntryRO;->mWhenModified:J

    add-int/lit8 v14, v2, 0x10

    invoke-virtual {v3, v14}, Ljava/nio/MappedByteBuffer;->getLong(I)J

    move-result-wide v14

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    iput-wide v14, v13, Lcom/nuance/dragon/toolkit/file/FileZip$ZipEntryRO;->mCRC32:J

    add-int/lit8 v14, v2, 0x14

    invoke-virtual {v3, v14}, Ljava/nio/MappedByteBuffer;->getLong(I)J

    move-result-wide v14

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    iput-wide v14, v13, Lcom/nuance/dragon/toolkit/file/FileZip$ZipEntryRO;->mCompressedLength:J

    add-int/lit8 v14, v2, 0x18

    invoke-virtual {v3, v14}, Ljava/nio/MappedByteBuffer;->getLong(I)J

    move-result-wide v14

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    iput-wide v14, v13, Lcom/nuance/dragon/toolkit/file/FileZip$ZipEntryRO;->mUncompressedLength:J

    add-int/lit8 v14, v2, 0x2a

    invoke-virtual {v3, v14}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v14

    int-to-long v14, v14

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    iput-wide v14, v13, Lcom/nuance/dragon/toolkit/file/FileZip$ZipEntryRO;->mLocalHdrOffset:J

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v13, v10, v5}, Lcom/nuance/dragon/toolkit/file/FileZip$ZipEntryRO;->setOffsetFromFile(Ljava/io/RandomAccessFile;Ljava/nio/ByteBuffer;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/dragon/toolkit/file/FileZip;->b:Ljava/util/HashMap;

    invoke-virtual {v14, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x2e

    add-int/2addr v6, v7

    add-int/2addr v6, v8

    add-int/2addr v2, v6

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "+++ zip good scan "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " entries"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)[Lcom/nuance/dragon/toolkit/file/FileZip$ZipEntryRO;
    .locals 7

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/file/FileZip;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/file/FileZip$ZipEntryRO;

    iget-object v4, v0, Lcom/nuance/dragon/toolkit/file/FileZip$ZipEntryRO;->mFileName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, -0x1

    iget-object v5, v0, Lcom/nuance/dragon/toolkit/file/FileZip$ZipEntryRO;->mFileName:Ljava/lang/String;

    const/16 v6, 0x2f

    invoke-virtual {v5, v6, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-ne v4, v5, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lcom/nuance/dragon/toolkit/file/FileZip$ZipEntryRO;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/dragon/toolkit/file/FileZip$ZipEntryRO;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/nuance/dragon/toolkit/file/FileZip;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/file/FileZip;->b:Ljava/util/HashMap;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/file/FileZip;->b:Ljava/util/HashMap;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/file/FileZip;->b:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/file/FileZip;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/file/FileZip;->a:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/file/FileZip;->a:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/file/FileZip;->a:Ljava/nio/ByteBuffer;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/file/FileZip;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/file/FileZip;->mZipFiles:Ljava/util/HashMap;

    if-nez v2, :cond_8

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/file/FileZip;->mZipFiles:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/file/FileZip;->mZipFiles:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/file/FileZip;->mZipFiles:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getAllEntries()[Lcom/nuance/dragon/toolkit/file/FileZip$ZipEntryRO;
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/file/FileZip;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Lcom/nuance/dragon/toolkit/file/FileZip$ZipEntryRO;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/dragon/toolkit/file/FileZip$ZipEntryRO;

    return-object v0
.end method

.method public getAssetFileDescriptor(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/file/FileZip;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/file/FileZip$ZipEntryRO;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/file/FileZip$ZipEntryRO;->getAssetFileDescriptor()Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/file/FileZip;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/file/FileZip$ZipEntryRO;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/file/FileZip$ZipEntryRO;->isUncompressed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/file/FileZip$ZipEntryRO;->getAssetFileDescriptor()Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/file/FileZip;->mZipFiles:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/file/FileZip$ZipEntryRO;->getZipFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipFile;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/file/FileZip$ZipEntryRO;->getZipFile()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/file/FileZip;->mZipFiles:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/file/FileZip$ZipEntryRO;->getZipFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/file/FileZip;->b:Ljava/util/HashMap;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/file/FileZip;->a:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/file/FileZip;->mZipFiles:Ljava/util/HashMap;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/file/FileZip;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/file/FileZip;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/file/FileZip;->mZipFiles:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->hashCode()I

    move-result v1

    goto :goto_2
.end method

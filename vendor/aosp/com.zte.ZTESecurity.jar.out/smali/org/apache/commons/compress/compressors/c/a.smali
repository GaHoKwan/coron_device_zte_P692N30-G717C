.class public Lorg/apache/commons/compress/compressors/c/a;
.super Lorg/apache/commons/compress/compressors/a;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final eb:I = 0x2

.field private static final ec:I = 0x4

.field private static final ed:I = 0x8

.field private static final ee:I = 0x10

.field private static final ef:I = 0xe0


# instance fields
.field private final buf:[B

.field private crc:Ljava/util/zip/CRC32;

.field private final eg:Z

.field private eh:I

.field private ei:I

.field private ej:Z

.field private final in:Ljava/io/InputStream;

.field private inf:Ljava/util/zip/Inflater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/commons/compress/compressors/c/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/commons/compress/compressors/c/a;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/c/a;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/c/a;->buf:[B

    iput v1, p0, Lorg/apache/commons/compress/compressors/c/a;->eh:I

    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0, v2}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/c/a;->inf:Ljava/util/zip/Inflater;

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/c/a;->crc:Ljava/util/zip/CRC32;

    iput-boolean v1, p0, Lorg/apache/commons/compress/compressors/c/a;->ej:Z

    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/c/a;->in:Ljava/io/InputStream;

    :goto_0
    iput-boolean p2, p0, Lorg/apache/commons/compress/compressors/c/a;->eg:Z

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/compressors/c/a;->c(Z)Z

    return-void

    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/c/a;->in:Ljava/io/InputStream;

    goto :goto_0
.end method

.method private a(Ljava/io/DataInputStream;)V
    .locals 1

    :cond_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public static a([BI)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x2

    if-ge p1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    aget-byte v2, p0, v0

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_0

    aget-byte v2, p0, v1

    const/16 v3, -0x75

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private c(Z)Z
    .locals 5

    const/4 v0, 0x0

    sget-boolean v1, Lorg/apache/commons/compress/compressors/c/a;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    iget-boolean v1, p0, Lorg/apache/commons/compress/compressors/c/a;->eg:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/c/a;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/c/a;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    if-nez p1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/16 v3, 0x1f

    if-ne v1, v3, :cond_2

    const/16 v1, 0x8b

    if-eq v2, v1, :cond_4

    :cond_2
    new-instance v1, Ljava/io/IOException;

    if-eqz p1, :cond_3

    const-string v0, "Input is not in the .gz format"

    :goto_1
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string v0, "Garbage after a valid .gz stream"

    goto :goto_1

    :cond_4
    new-instance v3, Ljava/io/DataInputStream;

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/c/a;->in:Ljava/io/InputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_5

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported compression method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in the .gz header"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    and-int/lit16 v1, v4, 0xe0

    if-eqz v1, :cond_6

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Reserved flags are set in the .gz header"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    and-int/lit8 v1, v4, 0x4

    if-eqz v1, :cond_7

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    :goto_2
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_7

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move v1, v2

    goto :goto_2

    :cond_7
    and-int/lit8 v1, v4, 0x8

    if-eqz v1, :cond_8

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/compressors/c/a;->a(Ljava/io/DataInputStream;)V

    :cond_8
    and-int/lit8 v1, v4, 0x10

    if-eqz v1, :cond_9

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/compressors/c/a;->a(Ljava/io/DataInputStream;)V

    :cond_9
    and-int/lit8 v1, v4, 0x2

    if-eqz v1, :cond_a

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readShort()S

    :cond_a
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/c/a;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->reset()V

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/c/a;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->reset()V

    iput v0, p0, Lorg/apache/commons/compress/compressors/c/a;->ei:I

    const/4 v0, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/c/a;->inf:Ljava/util/zip/Inflater;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/c/a;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/c/a;->inf:Ljava/util/zip/Inflater;

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/c/a;->in:Ljava/io/InputStream;

    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/c/a;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    return-void
.end method

.method public read()I
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, -0x1

    new-array v1, v2, [B

    invoke-virtual {p0, v1, v3, v2}, Lorg/apache/commons/compress/compressors/c/a;->read([BII)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    aget-byte v0, v1, v3

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 11

    const/4 v10, 0x4

    const/4 v0, -0x1

    const/4 v3, 0x0

    iget-boolean v1, p0, Lorg/apache/commons/compress/compressors/c/a;->ej:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, v3

    :cond_2
    if-lez p3, :cond_b

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/c/a;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/c/a;->in:Ljava/io/InputStream;

    iget-object v4, p0, Lorg/apache/commons/compress/compressors/c/a;->buf:[B

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/io/InputStream;->mark(I)V

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/c/a;->in:Ljava/io/InputStream;

    iget-object v4, p0, Lorg/apache/commons/compress/compressors/c/a;->buf:[B

    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v2

    iput v2, p0, Lorg/apache/commons/compress/compressors/c/a;->eh:I

    iget v2, p0, Lorg/apache/commons/compress/compressors/c/a;->eh:I

    if-ne v2, v0, :cond_3

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_3
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/c/a;->inf:Ljava/util/zip/Inflater;

    iget-object v4, p0, Lorg/apache/commons/compress/compressors/c/a;->buf:[B

    iget v5, p0, Lorg/apache/commons/compress/compressors/c/a;->eh:I

    invoke-virtual {v2, v4, v3, v5}, Ljava/util/zip/Inflater;->setInput([BII)V

    :cond_4
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/c/a;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v2, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    iget-object v4, p0, Lorg/apache/commons/compress/compressors/c/a;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v4, p1, p2, v2}, Ljava/util/zip/CRC32;->update([BII)V

    iget v4, p0, Lorg/apache/commons/compress/compressors/c/a;->ei:I

    add-int/2addr v4, v2

    iput v4, p0, Lorg/apache/commons/compress/compressors/c/a;->ei:I

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/compressors/c/a;->z(I)V

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/c/a;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->finished()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/c/a;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    iget v2, p0, Lorg/apache/commons/compress/compressors/c/a;->eh:I

    iget-object v4, p0, Lorg/apache/commons/compress/compressors/c/a;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v4

    sub-int/2addr v2, v4

    iget-object v4, p0, Lorg/apache/commons/compress/compressors/c/a;->in:Ljava/io/InputStream;

    int-to-long v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    int-to-long v6, v2

    cmp-long v2, v4, v6

    if-eqz v2, :cond_5

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Gzip-compressed data is corrupt"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iput v3, p0, Lorg/apache/commons/compress/compressors/c/a;->eh:I

    new-instance v6, Ljava/io/DataInputStream;

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/c/a;->in:Ljava/io/InputStream;

    invoke-direct {v6, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v4, 0x0

    move v2, v3

    :goto_1
    if-ge v2, v10, :cond_6

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v7

    int-to-long v7, v7

    mul-int/lit8 v9, v2, 0x8

    shl-long/2addr v7, v9

    or-long/2addr v4, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/c/a;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v7

    cmp-long v2, v4, v7

    if-eqz v2, :cond_7

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Gzip-compressed data is corrupt (CRC32 error)"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move v2, v3

    move v4, v3

    :goto_2
    if-ge v2, v10, :cond_8

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v5

    mul-int/lit8 v7, v2, 0x8

    shl-int/2addr v5, v7

    or-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    iget v2, p0, Lorg/apache/commons/compress/compressors/c/a;->ei:I

    if-eq v4, v2, :cond_9

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Gzip-compressed data is corrupt(uncompressed size mismatch)"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    iget-boolean v2, p0, Lorg/apache/commons/compress/compressors/c/a;->eg:Z

    if-eqz v2, :cond_a

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/compressors/c/a;->c(Z)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_a
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/c/a;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->end()V

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/commons/compress/compressors/c/a;->inf:Ljava/util/zip/Inflater;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/commons/compress/compressors/c/a;->ej:Z

    if-eqz v1, :cond_0

    move v0, v1

    goto/16 :goto_0

    :cond_b
    move v0, v1

    goto/16 :goto_0
.end method

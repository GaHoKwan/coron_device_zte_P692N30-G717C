.class Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;
.super Ljava/io/InputStream;
.source "PdfSignatureAppearance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/PdfSignatureAppearance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RangeStream"
.end annotation


# instance fields
.field private b:[B

.field private bout:[B

.field private raf:Ljava/io/RandomAccessFile;

.field private range:[J

.field private rangePosition:J


# direct methods
.method private constructor <init>(Ljava/io/RandomAccessFile;[B[J)V
    .locals 2
    .parameter "raf"
    .parameter "bout"
    .parameter "range"

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 228
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->b:[B

    .line 232
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->rangePosition:J

    .line 235
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->raf:Ljava/io/RandomAccessFile;

    .line 236
    iput-object p2, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->bout:[B

    .line 237
    iput-object p3, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->range:[J

    .line 238
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/RandomAccessFile;[B[JLcom/itextpdf/text/pdf/PdfSignatureAppearance$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 227
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;-><init>(Ljava/io/RandomAccessFile;[B[J)V

    return-void
.end method


# virtual methods
.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->b:[B

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->read([B)I

    move-result v0

    .line 246
    .local v0, n:I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 247
    const/4 v1, -0x1

    .line 248
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->b:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 12
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 256
    if-nez p1, :cond_0

    .line 257
    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    .line 258
    :cond_0
    if-ltz p2, :cond_1

    array-length v6, p1

    if-gt p2, v6, :cond_1

    if-ltz p3, :cond_1

    add-int v6, p2, p3

    array-length v7, p1

    if-gt v6, v7, :cond_1

    add-int v6, p2, p3

    if-gez v6, :cond_2

    .line 260
    :cond_1
    new-instance v6, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v6}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v6

    .line 261
    :cond_2
    if-nez p3, :cond_4

    .line 262
    const/4 v3, 0x0

    .line 284
    :cond_3
    :goto_0
    return v3

    .line 264
    :cond_4
    iget-wide v6, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->rangePosition:J

    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->range:[J

    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->range:[J

    array-length v9, v9

    add-int/lit8 v9, v9, -0x2

    aget-wide v8, v8, v9

    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->range:[J

    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->range:[J

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    aget-wide v10, v10, v11

    add-long/2addr v8, v10

    cmp-long v6, v6, v8

    if-gez v6, :cond_3

    .line 267
    const/4 v2, 0x0

    .local v2, k:I
    :goto_1
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->range:[J

    array-length v6, v6

    if-ge v2, v6, :cond_3

    .line 268
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->range:[J

    aget-wide v4, v6, v2

    .line 269
    .local v4, start:J
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->range:[J

    add-int/lit8 v7, v2, 0x1

    aget-wide v6, v6, v7

    add-long v0, v4, v6

    .line 270
    .local v0, end:J
    iget-wide v6, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->rangePosition:J

    cmp-long v6, v6, v4

    if-gez v6, :cond_5

    .line 271
    iput-wide v4, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->rangePosition:J

    .line 272
    :cond_5
    iget-wide v6, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->rangePosition:J

    cmp-long v6, v6, v4

    if-ltz v6, :cond_7

    iget-wide v6, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->rangePosition:J

    cmp-long v6, v6, v0

    if-gez v6, :cond_7

    .line 273
    iget-wide v6, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->rangePosition:J

    sub-long v6, v0, v6

    long-to-int v6, v6

    invoke-static {p3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 274
    .local v3, lenf:I
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->raf:Ljava/io/RandomAccessFile;

    if-nez v6, :cond_6

    .line 275
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->bout:[B

    iget-wide v7, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->rangePosition:J

    long-to-int v7, v7

    invoke-static {v6, v7, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 280
    :goto_2
    iget-wide v6, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->rangePosition:J

    int-to-long v8, v3

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->rangePosition:J

    goto :goto_0

    .line 277
    :cond_6
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->raf:Ljava/io/RandomAccessFile;

    iget-wide v7, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->rangePosition:J

    invoke-virtual {v6, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 278
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v6, p1, p2, v3}, Ljava/io/RandomAccessFile;->readFully([BII)V

    goto :goto_2

    .line 267
    .end local v3           #lenf:I
    :cond_7
    add-int/lit8 v2, v2, 0x2

    goto :goto_1
.end method

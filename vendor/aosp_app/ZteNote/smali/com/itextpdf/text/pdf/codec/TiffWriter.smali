.class public Lcom/itextpdf/text/pdf/codec/TiffWriter;
.super Ljava/lang/Object;
.source "TiffWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldAscii;,
        Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldImage;,
        Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldUndefined;,
        Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldByte;,
        Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldRational;,
        Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldLong;,
        Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldShort;,
        Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;
    }
.end annotation


# instance fields
.field private ifd:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/TiffWriter;->ifd:Ljava/util/TreeMap;

    .line 252
    return-void
.end method

.method public static compressLZW(Ljava/io/OutputStream;I[BIII)V
    .locals 9
    .parameter "stream"
    .parameter "predictor"
    .parameter "b"
    .parameter "height"
    .parameter "samplesPerPixel"
    .parameter "stride"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 275
    new-instance v2, Lcom/itextpdf/text/pdf/codec/LZWCompressor;

    const/16 v7, 0x8

    invoke-direct {v2, p0, v7, v5}, Lcom/itextpdf/text/pdf/codec/LZWCompressor;-><init>(Ljava/io/OutputStream;IZ)V

    .line 276
    .local v2, lzwCompressor:Lcom/itextpdf/text/pdf/codec/LZWCompressor;
    const/4 v7, 0x2

    if-ne p1, v7, :cond_1

    .line 278
    .local v5, usePredictor:Z
    :goto_0
    if-nez v5, :cond_2

    .line 279
    array-length v7, p2

    invoke-virtual {v2, p2, v6, v7}, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->compress([BII)V

    .line 293
    :cond_0
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->flush()V

    .line 294
    return-void

    .end local v5           #usePredictor:Z
    :cond_1
    move v5, v6

    .line 276
    goto :goto_0

    .line 281
    .restart local v5       #usePredictor:Z
    :cond_2
    const/4 v3, 0x0

    .line 282
    .local v3, off:I
    if-eqz v5, :cond_3

    new-array v4, p5, [B

    .line 283
    .local v4, rowBuf:[B
    :goto_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, p3, :cond_0

    .line 284
    invoke-static {p2, v3, v4, v6, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 285
    add-int/lit8 v1, p5, -0x1

    .local v1, j:I
    :goto_3
    if-lt v1, p4, :cond_4

    .line 286
    aget-byte v7, v4, v1

    sub-int v8, v1, p4

    aget-byte v8, v4, v8

    sub-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v4, v1

    .line 285
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 282
    .end local v0           #i:I
    .end local v1           #j:I
    .end local v4           #rowBuf:[B
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 288
    .restart local v0       #i:I
    .restart local v1       #j:I
    .restart local v4       #rowBuf:[B
    :cond_4
    invoke-virtual {v2, v4, v6, p5}, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->compress([BII)V

    .line 289
    add-int/2addr v3, p5

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static writeLong(ILjava/io/OutputStream;)V
    .locals 1
    .parameter "v"
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 267
    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 268
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 269
    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 270
    and-int/lit16 v0, p0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 271
    return-void
.end method

.method public static writeShort(ILjava/io/OutputStream;)V
    .locals 1
    .parameter "v"
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 263
    and-int/lit16 v0, p0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 264
    return-void
.end method


# virtual methods
.method public addField(Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;)V
    .locals 2
    .parameter "field"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/TiffWriter;->ifd:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;->getTag()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public getIfdSize()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/TiffWriter;->ifd:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public writeFile(Ljava/io/OutputStream;)V
    .locals 6
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x4d

    const/4 v5, 0x0

    .line 65
    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    .line 66
    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    .line 67
    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write(I)V

    .line 68
    const/16 v4, 0x2a

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    .line 69
    const/16 v4, 0x8

    invoke-static {v4, p1}, Lcom/itextpdf/text/pdf/codec/TiffWriter;->writeLong(ILjava/io/OutputStream;)V

    .line 70
    iget-object v4, p0, Lcom/itextpdf/text/pdf/codec/TiffWriter;->ifd:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->size()I

    move-result v4

    invoke-static {v4, p1}, Lcom/itextpdf/text/pdf/codec/TiffWriter;->writeShort(ILjava/io/OutputStream;)V

    .line 71
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/codec/TiffWriter;->getIfdSize()I

    move-result v4

    add-int/lit8 v2, v4, 0x8

    .line 72
    .local v2, offset:I
    iget-object v4, p0, Lcom/itextpdf/text/pdf/codec/TiffWriter;->ifd:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;

    .line 73
    .local v0, field:Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;->getValueSize()I

    move-result v3

    .line 74
    .local v3, size:I
    const/4 v4, 0x4

    if-le v3, v4, :cond_0

    .line 75
    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;->setOffset(I)V

    .line 76
    add-int/2addr v2, v3

    .line 78
    :cond_0
    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;->writeField(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 80
    .end local v0           #field:Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;
    .end local v3           #size:I
    :cond_1
    invoke-static {v5, p1}, Lcom/itextpdf/text/pdf/codec/TiffWriter;->writeLong(ILjava/io/OutputStream;)V

    .line 81
    iget-object v4, p0, Lcom/itextpdf/text/pdf/codec/TiffWriter;->ifd:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;

    .line 82
    .restart local v0       #field:Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;
    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;->writeValue(Ljava/io/OutputStream;)V

    goto :goto_1

    .line 84
    .end local v0           #field:Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;
    :cond_2
    return-void
.end method

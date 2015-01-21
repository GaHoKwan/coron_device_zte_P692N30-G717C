.class public Lcom/itextpdf/text/pdf/codec/BitFile;
.super Ljava/lang/Object;
.source "BitFile.java"


# instance fields
.field bitsLeft_:I

.field blocks_:Z

.field buffer_:[B

.field index_:I

.field output_:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 2
    .parameter "output"
    .parameter "blocks"

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->blocks_:Z

    .line 77
    iput-object p1, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->output_:Ljava/io/OutputStream;

    .line 78
    iput-boolean p2, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->blocks_:Z

    .line 79
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->buffer_:[B

    .line 80
    iput v1, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->index_:I

    .line 81
    const/16 v0, 0x8

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->bitsLeft_:I

    .line 82
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x0

    .line 86
    iget v3, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->index_:I

    iget v1, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->bitsLeft_:I

    if-ne v1, v4, :cond_2

    move v1, v2

    :goto_0
    add-int v0, v3, v1

    .line 87
    .local v0, numBytes:I
    if-lez v0, :cond_1

    .line 89
    iget-boolean v1, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->blocks_:Z

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->output_:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->output_:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->buffer_:[B

    invoke-virtual {v1, v3, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 92
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->buffer_:[B

    aput-byte v2, v1, v2

    .line 93
    iput v2, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->index_:I

    .line 94
    iput v4, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->bitsLeft_:I

    .line 96
    :cond_1
    return-void

    .line 86
    .end local v0           #numBytes:I
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public writeBits(II)V
    .locals 12
    .parameter "bits"
    .parameter "numbits"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0xfe

    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, bitsWritten:I
    const/16 v1, 0xff

    .line 105
    .local v1, numBytes:I
    :cond_0
    iget v3, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->index_:I

    if-ne v3, v11, :cond_1

    iget v3, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->bitsLeft_:I

    if-eqz v3, :cond_2

    :cond_1
    iget v3, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->index_:I

    if-le v3, v11, :cond_4

    .line 107
    :cond_2
    iget-boolean v3, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->blocks_:Z

    if-eqz v3, :cond_3

    .line 108
    iget-object v3, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->output_:Ljava/io/OutputStream;

    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write(I)V

    .line 110
    :cond_3
    iget-object v3, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->output_:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->buffer_:[B

    invoke-virtual {v3, v4, v8, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 112
    iget-object v3, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->buffer_:[B

    aput-byte v8, v3, v8

    .line 113
    iput v8, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->index_:I

    .line 114
    iput v10, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->bitsLeft_:I

    .line 117
    :cond_4
    iget v3, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->bitsLeft_:I

    if-gt p2, v3, :cond_6

    .line 119
    iget-boolean v3, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->blocks_:Z

    if-eqz v3, :cond_5

    .line 121
    iget-object v3, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->buffer_:[B

    iget v4, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->index_:I

    aget-byte v5, v3, v4

    shl-int v6, v9, p2

    add-int/lit8 v6, v6, -0x1

    and-int/2addr v6, p1

    iget v7, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->bitsLeft_:I

    rsub-int/lit8 v7, v7, 0x8

    shl-int/2addr v6, v7

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 122
    add-int/2addr v0, p2

    .line 123
    iget v3, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->bitsLeft_:I

    sub-int/2addr v3, p2

    iput v3, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->bitsLeft_:I

    .line 124
    const/4 p2, 0x0

    .line 162
    :goto_0
    if-nez p2, :cond_0

    .line 163
    return-void

    .line 128
    :cond_5
    iget-object v3, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->buffer_:[B

    iget v4, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->index_:I

    aget-byte v5, v3, v4

    shl-int v6, v9, p2

    add-int/lit8 v6, v6, -0x1

    and-int/2addr v6, p1

    iget v7, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->bitsLeft_:I

    sub-int/2addr v7, p2

    shl-int/2addr v6, v7

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 129
    add-int/2addr v0, p2

    .line 130
    iget v3, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->bitsLeft_:I

    sub-int/2addr v3, p2

    iput v3, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->bitsLeft_:I

    .line 131
    const/4 p2, 0x0

    goto :goto_0

    .line 137
    :cond_6
    iget-boolean v3, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->blocks_:Z

    if-eqz v3, :cond_7

    .line 141
    iget-object v3, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->buffer_:[B

    iget v4, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->index_:I

    aget-byte v5, v3, v4

    iget v6, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->bitsLeft_:I

    shl-int v6, v9, v6

    add-int/lit8 v6, v6, -0x1

    and-int/2addr v6, p1

    iget v7, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->bitsLeft_:I

    rsub-int/lit8 v7, v7, 0x8

    shl-int/2addr v6, v7

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 142
    iget v3, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->bitsLeft_:I

    add-int/2addr v0, v3

    .line 143
    iget v3, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->bitsLeft_:I

    shr-int/2addr p1, v3

    .line 144
    iget v3, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->bitsLeft_:I

    sub-int/2addr p2, v3

    .line 145
    iget-object v3, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->buffer_:[B

    iget v4, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->index_:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->index_:I

    aput-byte v8, v3, v4

    .line 146
    iput v10, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->bitsLeft_:I

    goto :goto_0

    .line 153
    :cond_7
    iget v3, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->bitsLeft_:I

    sub-int v3, p2, v3

    ushr-int v3, p1, v3

    iget v4, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->bitsLeft_:I

    shl-int v4, v9, v4

    add-int/lit8 v4, v4, -0x1

    and-int v2, v3, v4

    .line 154
    .local v2, topbits:I
    iget-object v3, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->buffer_:[B

    iget v4, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->index_:I

    aget-byte v5, v3, v4

    or-int/2addr v5, v2

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 155
    iget v3, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->bitsLeft_:I

    sub-int/2addr p2, v3

    .line 156
    iget v3, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->bitsLeft_:I

    add-int/2addr v0, v3

    .line 157
    iget-object v3, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->buffer_:[B

    iget v4, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->index_:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->index_:I

    aput-byte v8, v3, v4

    .line 158
    iput v10, p0, Lcom/itextpdf/text/pdf/codec/BitFile;->bitsLeft_:I

    goto :goto_0
.end method

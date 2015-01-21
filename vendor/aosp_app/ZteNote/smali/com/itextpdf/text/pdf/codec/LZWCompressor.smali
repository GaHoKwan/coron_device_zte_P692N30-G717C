.class public Lcom/itextpdf/text/pdf/codec/LZWCompressor;
.super Ljava/lang/Object;
.source "LZWCompressor.java"


# instance fields
.field bf_:Lcom/itextpdf/text/pdf/codec/BitFile;

.field clearCode_:I

.field codeSize_:I

.field endOfInfo_:I

.field limit_:I

.field lzss_:Lcom/itextpdf/text/pdf/codec/LZWStringTable;

.field numBits_:I

.field prefix_:S

.field tiffFudge_:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;IZ)V
    .locals 3
    .parameter "out"
    .parameter "codeSize"
    .parameter "TIFF"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v2, Lcom/itextpdf/text/pdf/codec/BitFile;

    if-nez p3, :cond_1

    move v0, v1

    :goto_0
    invoke-direct {v2, p1, v0}, Lcom/itextpdf/text/pdf/codec/BitFile;-><init>(Ljava/io/OutputStream;Z)V

    iput-object v2, p0, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->bf_:Lcom/itextpdf/text/pdf/codec/BitFile;

    .line 99
    iput p2, p0, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->codeSize_:I

    .line 100
    iput-boolean p3, p0, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->tiffFudge_:Z

    .line 101
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->codeSize_:I

    shl-int v0, v1, v0

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->clearCode_:I

    .line 102
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->clearCode_:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->endOfInfo_:I

    .line 103
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->codeSize_:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->numBits_:I

    .line 105
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->numBits_:I

    shl-int v0, v1, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->limit_:I

    .line 106
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->tiffFudge_:Z

    if-eqz v0, :cond_0

    .line 107
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->limit_:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->limit_:I

    .line 109
    :cond_0
    const/4 v0, -0x1

    iput-short v0, p0, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->prefix_:S

    .line 110
    new-instance v0, Lcom/itextpdf/text/pdf/codec/LZWStringTable;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/codec/LZWStringTable;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->lzss_:Lcom/itextpdf/text/pdf/codec/LZWStringTable;

    .line 111
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->lzss_:Lcom/itextpdf/text/pdf/codec/LZWStringTable;

    iget v1, p0, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->codeSize_:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/codec/LZWStringTable;->ClearTable(I)V

    .line 112
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->bf_:Lcom/itextpdf/text/pdf/codec/BitFile;

    iget v1, p0, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->clearCode_:I

    iget v2, p0, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->numBits_:I

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/codec/BitFile;->writeBits(II)V

    .line 113
    return-void

    .line 98
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public compress([BII)V
    .locals 7
    .parameter "buf"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    add-int v3, p2, p3

    .line 127
    .local v3, maxOffset:I
    move v1, p2

    .local v1, idx:I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 129
    aget-byte v0, p1, v1

    .line 130
    .local v0, c:B
    iget-object v4, p0, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->lzss_:Lcom/itextpdf/text/pdf/codec/LZWStringTable;

    iget-short v5, p0, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->prefix_:S

    invoke-virtual {v4, v5, v0}, Lcom/itextpdf/text/pdf/codec/LZWStringTable;->FindCharString(SB)S

    move-result v2

    .local v2, index:S
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 131
    iput-short v2, p0, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->prefix_:S

    .line 127
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    :cond_0
    iget-object v4, p0, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->bf_:Lcom/itextpdf/text/pdf/codec/BitFile;

    iget-short v5, p0, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->prefix_:S

    iget v6, p0, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->numBits_:I

    invoke-virtual {v4, v5, v6}, Lcom/itextpdf/text/pdf/codec/BitFile;->writeBits(II)V

    .line 135
    iget-object v4, p0, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->lzss_:Lcom/itextpdf/text/pdf/codec/LZWStringTable;

    iget-short v5, p0, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->prefix_:S

    invoke-virtual {v4, v5, v0}, Lcom/itextpdf/text/pdf/codec/LZWStringTable;->AddCharString(SB)I

    move-result v4

    iget v5, p0, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->limit_:I

    if-le v4, v5, :cond_1

    .line 137
    iget v4, p0, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->numBits_:I

    const/16 v5, 0xc

    if-ne v4, v5, :cond_2

    .line 139
    iget-object v4, p0, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->bf_:Lcom/itextpdf/text/pdf/codec/BitFile;

    iget v5, p0, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->clearCode_:I

    iget v6, p0, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->numBits_:I

    invoke-virtual {v4, v5, v6}, Lcom/itextpdf/text/pdf/codec/BitFile;->writeBits(II)V

    .line 140
    iget-object v4, p0, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->lzss_:Lcom/itextpdf/text/pdf/codec/LZWStringTable;

    iget v5, p0, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->codeSize_:I

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/codec/LZWStringTable;->ClearTable(I)V

    .line 141
    iget v4, p0, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->codeSize_:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->numBits_:I

    .line 146
    :goto_2
    const/4 v4, 0x1

    iget v5, p0, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->numBits_:I

    shl-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->limit_:I

    .line 147
    iget-boolean v4, p0, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->tiffFudge_:Z

    if-eqz v4, :cond_1

    .line 148
    iget v4, p0, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->limit_:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->limit_:I

    .line 150
    :cond_1
    int-to-short v4, v0

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    iput-short v4, p0, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->prefix_:S

    goto :goto_1

    .line 144
    :cond_2
    iget v4, p0, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->numBits_:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->numBits_:I

    goto :goto_2

    .line 153
    .end local v0           #c:B
    .end local v2           #index:S
    :cond_3
    return-void
.end method

.method public flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    iget-short v0, p0, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->prefix_:S

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->bf_:Lcom/itextpdf/text/pdf/codec/BitFile;

    iget-short v1, p0, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->prefix_:S

    iget v2, p0, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->numBits_:I

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/codec/BitFile;->writeBits(II)V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->bf_:Lcom/itextpdf/text/pdf/codec/BitFile;

    iget v1, p0, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->endOfInfo_:I

    iget v2, p0, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->numBits_:I

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/codec/BitFile;->writeBits(II)V

    .line 167
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/LZWCompressor;->bf_:Lcom/itextpdf/text/pdf/codec/BitFile;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/codec/BitFile;->flush()V

    .line 168
    return-void
.end method

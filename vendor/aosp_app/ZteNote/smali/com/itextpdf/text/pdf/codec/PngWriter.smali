.class public Lcom/itextpdf/text/pdf/codec/PngWriter;
.super Ljava/lang/Object;
.source "PngWriter.java"


# static fields
.field private static final IDAT:[B

.field private static final IEND:[B

.field private static final IHDR:[B

.field private static final PLTE:[B

.field private static final PNG_SIGNTURE:[B

.field private static crc_table:[I

.field private static final iCCP:[B


# instance fields
.field private outp:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/text/pdf/codec/PngWriter;->PNG_SIGNTURE:[B

    .line 62
    const-string v0, "IHDR"

    invoke-static {v0}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/text/pdf/codec/PngWriter;->IHDR:[B

    .line 63
    const-string v0, "PLTE"

    invoke-static {v0}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/text/pdf/codec/PngWriter;->PLTE:[B

    .line 64
    const-string v0, "IDAT"

    invoke-static {v0}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/text/pdf/codec/PngWriter;->IDAT:[B

    .line 65
    const-string v0, "IEND"

    invoke-static {v0}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/text/pdf/codec/PngWriter;->IEND:[B

    .line 66
    const-string v0, "iCCP"

    invoke-static {v0}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/text/pdf/codec/PngWriter;->iCCP:[B

    return-void

    .line 60
    :array_0
    .array-data 0x1
        0x89t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "outp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/itextpdf/text/pdf/codec/PngWriter;->outp:Ljava/io/OutputStream;

    .line 74
    sget-object v0, Lcom/itextpdf/text/pdf/codec/PngWriter;->PNG_SIGNTURE:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 75
    return-void
.end method

.method private static crc([B)I
    .locals 3
    .parameter "buf"

    .prologue
    .line 160
    const/4 v0, -0x1

    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {v0, p0, v1, v2}, Lcom/itextpdf/text/pdf/codec/PngWriter;->update_crc(I[BII)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private static crc([BII)I
    .locals 1
    .parameter "buf"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 156
    const/4 v0, -0x1

    invoke-static {v0, p0, p1, p2}, Lcom/itextpdf/text/pdf/codec/PngWriter;->update_crc(I[BII)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private static make_crc_table()V
    .locals 7

    .prologue
    const/16 v6, 0x100

    .line 128
    sget-object v4, Lcom/itextpdf/text/pdf/codec/PngWriter;->crc_table:[I

    if-eqz v4, :cond_0

    .line 142
    .local v1, crc2:[I
    .local v3, n:I
    :goto_0
    return-void

    .line 130
    .end local v1           #crc2:[I
    .end local v3           #n:I
    :cond_0
    new-array v1, v6, [I

    .line 131
    .restart local v1       #crc2:[I
    const/4 v3, 0x0

    .restart local v3       #n:I
    :goto_1
    if-ge v3, v6, :cond_3

    .line 132
    move v0, v3

    .line 133
    .local v0, c:I
    const/4 v2, 0x0

    .local v2, k:I
    :goto_2
    const/16 v4, 0x8

    if-ge v2, v4, :cond_2

    .line 134
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_1

    .line 135
    const v4, -0x12477ce0

    ushr-int/lit8 v5, v0, 0x1

    xor-int v0, v4, v5

    .line 133
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 137
    :cond_1
    ushr-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 139
    :cond_2
    aput v0, v1, v3

    .line 131
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 141
    .end local v0           #c:I
    .end local v2           #k:I
    :cond_3
    sput-object v1, Lcom/itextpdf/text/pdf/codec/PngWriter;->crc_table:[I

    goto :goto_0
.end method

.method public static outputInt(ILjava/io/OutputStream;)V
    .locals 1
    .parameter "n"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    shr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 169
    shr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 170
    shr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 171
    int-to-byte v0, p0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 172
    return-void
.end method

.method private static update_crc(I[BII)I
    .locals 4
    .parameter "crc"
    .parameter "buf"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 145
    move v0, p0

    .line 147
    .local v0, c:I
    sget-object v2, Lcom/itextpdf/text/pdf/codec/PngWriter;->crc_table:[I

    if-nez v2, :cond_0

    .line 148
    invoke-static {}, Lcom/itextpdf/text/pdf/codec/PngWriter;->make_crc_table()V

    .line 149
    :cond_0
    const/4 v1, 0x0

    .local v1, n:I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 150
    sget-object v2, Lcom/itextpdf/text/pdf/codec/PngWriter;->crc_table:[I

    add-int v3, v1, p2

    aget-byte v3, p1, v3

    xor-int/2addr v3, v0

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    ushr-int/lit8 v3, v0, 0x8

    xor-int v0, v2, v3

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    :cond_1
    return v0
.end method


# virtual methods
.method public outputInt(I)V
    .locals 1
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/PngWriter;->outp:Ljava/io/OutputStream;

    invoke-static {p1, v0}, Lcom/itextpdf/text/pdf/codec/PngWriter;->outputInt(ILjava/io/OutputStream;)V

    .line 165
    return-void
.end method

.method public writeChunk([B[B)V
    .locals 4
    .parameter "chunkType"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 175
    array-length v1, p2

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/codec/PngWriter;->outputInt(I)V

    .line 176
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/PngWriter;->outp:Ljava/io/OutputStream;

    const/4 v2, 0x4

    invoke-virtual {v1, p1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 177
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/PngWriter;->outp:Ljava/io/OutputStream;

    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 178
    const/4 v1, -0x1

    array-length v2, p1

    invoke-static {v1, p1, v3, v2}, Lcom/itextpdf/text/pdf/codec/PngWriter;->update_crc(I[BII)I

    move-result v0

    .line 179
    .local v0, c:I
    array-length v1, p2

    invoke-static {v0, p2, v3, v1}, Lcom/itextpdf/text/pdf/codec/PngWriter;->update_crc(I[BII)I

    move-result v1

    xor-int/lit8 v0, v1, -0x1

    .line 180
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/codec/PngWriter;->outputInt(I)V

    .line 181
    return-void
.end method

.method public writeData([BI)V
    .locals 6
    .parameter "data"
    .parameter "stride"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 94
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 95
    .local v2, stream:Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 97
    .local v3, zip:Ljava/util/zip/DeflaterOutputStream;
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    array-length v4, p1

    sub-int/2addr v4, p2

    if-ge v0, v4, :cond_0

    .line 98
    invoke-virtual {v3, v5}, Ljava/util/zip/DeflaterOutputStream;->write(I)V

    .line 99
    invoke-virtual {v3, p1, v0, p2}, Ljava/util/zip/DeflaterOutputStream;->write([BII)V

    .line 97
    add-int/2addr v0, p2

    goto :goto_0

    .line 101
    :cond_0
    array-length v4, p1

    sub-int v1, v4, v0

    .line 102
    .local v1, remaining:I
    if-lez v1, :cond_1

    .line 103
    invoke-virtual {v3, v5}, Ljava/util/zip/DeflaterOutputStream;->write(I)V

    .line 104
    invoke-virtual {v3, p1, v0, v1}, Ljava/util/zip/DeflaterOutputStream;->write([BII)V

    .line 106
    :cond_1
    invoke-virtual {v3}, Ljava/util/zip/DeflaterOutputStream;->finish()V

    .line 107
    sget-object v4, Lcom/itextpdf/text/pdf/codec/PngWriter;->IDAT:[B

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/itextpdf/text/pdf/codec/PngWriter;->writeChunk([B[B)V

    .line 108
    return-void
.end method

.method public writeEnd()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    sget-object v0, Lcom/itextpdf/text/pdf/codec/PngWriter;->IEND:[B

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/codec/PngWriter;->writeChunk([B[B)V

    .line 91
    return-void
.end method

.method public writeHeader(IIII)V
    .locals 3
    .parameter "width"
    .parameter "height"
    .parameter "bitDepth"
    .parameter "colorType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 78
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 79
    .local v0, ms:Ljava/io/ByteArrayOutputStream;
    invoke-static {p1, v0}, Lcom/itextpdf/text/pdf/codec/PngWriter;->outputInt(ILjava/io/OutputStream;)V

    .line 80
    invoke-static {p2, v0}, Lcom/itextpdf/text/pdf/codec/PngWriter;->outputInt(ILjava/io/OutputStream;)V

    .line 81
    invoke-virtual {v0, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 82
    invoke-virtual {v0, p4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 83
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 84
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 85
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 86
    sget-object v1, Lcom/itextpdf/text/pdf/codec/PngWriter;->IHDR:[B

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/text/pdf/codec/PngWriter;->writeChunk([B[B)V

    .line 87
    return-void
.end method

.method public writeIccProfile([B)V
    .locals 5
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x43

    const/4 v3, 0x0

    .line 115
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 116
    .local v0, stream:Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0x49

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 117
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 118
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 119
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 120
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 121
    new-instance v1, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 122
    .local v1, zip:Ljava/util/zip/DeflaterOutputStream;
    invoke-virtual {v1, p1}, Ljava/util/zip/DeflaterOutputStream;->write([B)V

    .line 123
    invoke-virtual {v1}, Ljava/util/zip/DeflaterOutputStream;->finish()V

    .line 124
    sget-object v2, Lcom/itextpdf/text/pdf/codec/PngWriter;->iCCP:[B

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/itextpdf/text/pdf/codec/PngWriter;->writeChunk([B[B)V

    .line 125
    return-void
.end method

.method public writePalette([B)V
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    sget-object v0, Lcom/itextpdf/text/pdf/codec/PngWriter;->PLTE:[B

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/codec/PngWriter;->writeChunk([B[B)V

    .line 112
    return-void
.end method

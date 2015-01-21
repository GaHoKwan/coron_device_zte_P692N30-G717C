.class public Lcom/itextpdf/text/pdf/PRStream;
.super Lcom/itextpdf/text/pdf/PdfStream;
.source "PRStream.java"


# instance fields
.field protected length:I

.field protected objGen:I

.field protected objNum:I

.field protected offset:J

.field protected reader:Lcom/itextpdf/text/pdf/PdfReader;


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/PRStream;Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 2
    .parameter "stream"
    .parameter "newDic"

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfStream;-><init>()V

    .line 62
    iput v0, p0, Lcom/itextpdf/text/pdf/PRStream;->objNum:I

    .line 63
    iput v0, p0, Lcom/itextpdf/text/pdf/PRStream;->objGen:I

    .line 66
    iget-object v0, p1, Lcom/itextpdf/text/pdf/PRStream;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PRStream;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    .line 67
    iget-wide v0, p1, Lcom/itextpdf/text/pdf/PRStream;->offset:J

    iput-wide v0, p0, Lcom/itextpdf/text/pdf/PRStream;->offset:J

    .line 68
    iget v0, p1, Lcom/itextpdf/text/pdf/PRStream;->length:I

    iput v0, p0, Lcom/itextpdf/text/pdf/PRStream;->length:I

    .line 69
    iget-boolean v0, p1, Lcom/itextpdf/text/pdf/PRStream;->compressed:Z

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PRStream;->compressed:Z

    .line 70
    iget v0, p1, Lcom/itextpdf/text/pdf/PRStream;->compressionLevel:I

    iput v0, p0, Lcom/itextpdf/text/pdf/PRStream;->compressionLevel:I

    .line 71
    iget-object v0, p1, Lcom/itextpdf/text/pdf/PRStream;->streamBytes:Ljava/io/ByteArrayOutputStream;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PRStream;->streamBytes:Ljava/io/ByteArrayOutputStream;

    .line 72
    iget-object v0, p1, Lcom/itextpdf/text/pdf/PRStream;->bytes:[B

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PRStream;->bytes:[B

    .line 73
    iget v0, p1, Lcom/itextpdf/text/pdf/PRStream;->objNum:I

    iput v0, p0, Lcom/itextpdf/text/pdf/PRStream;->objNum:I

    .line 74
    iget v0, p1, Lcom/itextpdf/text/pdf/PRStream;->objGen:I

    iput v0, p0, Lcom/itextpdf/text/pdf/PRStream;->objGen:I

    .line 75
    if-eqz p2, :cond_0

    .line 76
    invoke-virtual {p0, p2}, Lcom/itextpdf/text/pdf/PRStream;->putAll(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 79
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PRStream;->hashMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/itextpdf/text/pdf/PRStream;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PRStream;Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfReader;)V
    .locals 0
    .parameter "stream"
    .parameter "newDic"
    .parameter "reader"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/text/pdf/PRStream;-><init>(Lcom/itextpdf/text/pdf/PRStream;Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 83
    iput-object p3, p0, Lcom/itextpdf/text/pdf/PRStream;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    .line 84
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfReader;J)V
    .locals 1
    .parameter "reader"
    .parameter "offset"

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfStream;-><init>()V

    .line 62
    iput v0, p0, Lcom/itextpdf/text/pdf/PRStream;->objNum:I

    .line 63
    iput v0, p0, Lcom/itextpdf/text/pdf/PRStream;->objGen:I

    .line 87
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PRStream;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    .line 88
    iput-wide p2, p0, Lcom/itextpdf/text/pdf/PRStream;->offset:J

    .line 89
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfReader;[B)V
    .locals 1
    .parameter "reader"
    .parameter "conts"

    .prologue
    .line 92
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/itextpdf/text/pdf/PRStream;-><init>(Lcom/itextpdf/text/pdf/PdfReader;[BI)V

    .line 93
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfReader;[BI)V
    .locals 6
    .parameter "reader"
    .parameter "conts"
    .parameter "compressionLevel"

    .prologue
    const/4 v4, 0x0

    .line 103
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfStream;-><init>()V

    .line 62
    iput v4, p0, Lcom/itextpdf/text/pdf/PRStream;->objNum:I

    .line 63
    iput v4, p0, Lcom/itextpdf/text/pdf/PRStream;->objGen:I

    .line 104
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PRStream;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    .line 105
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/itextpdf/text/pdf/PRStream;->offset:J

    .line 106
    sget-boolean v4, Lcom/itextpdf/text/Document;->compress:Z

    if-eqz v4, :cond_0

    .line 108
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 109
    .local v2, stream:Ljava/io/ByteArrayOutputStream;
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0, p3}, Ljava/util/zip/Deflater;-><init>(I)V

    .line 110
    .local v0, deflater:Ljava/util/zip/Deflater;
    new-instance v3, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v3, v2, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    .line 111
    .local v3, zip:Ljava/util/zip/DeflaterOutputStream;
    invoke-virtual {v3, p2}, Ljava/util/zip/DeflaterOutputStream;->write([B)V

    .line 112
    invoke-virtual {v3}, Ljava/util/zip/DeflaterOutputStream;->close()V

    .line 113
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    .line 114
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/text/pdf/PRStream;->bytes:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->FILTER:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->FLATEDECODE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v4, v5}, Lcom/itextpdf/text/pdf/PRStream;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 123
    .end local v0           #deflater:Ljava/util/zip/Deflater;
    .end local v2           #stream:Ljava/io/ByteArrayOutputStream;
    .end local v3           #zip:Ljava/util/zip/DeflaterOutputStream;
    :goto_0
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PRStream;->bytes:[B

    array-length v4, v4

    invoke-virtual {p0, v4}, Lcom/itextpdf/text/pdf/PRStream;->setLength(I)V

    .line 124
    return-void

    .line 116
    :catch_0
    move-exception v1

    .line 117
    .local v1, ioe:Ljava/io/IOException;
    new-instance v4, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v4, v1}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v4

    .line 122
    .end local v1           #ioe:Ljava/io/IOException;
    :cond_0
    iput-object p2, p0, Lcom/itextpdf/text/pdf/PRStream;->bytes:[B

    goto :goto_0
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PRStream;->bytes:[B

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/itextpdf/text/pdf/PRStream;->length:I

    return v0
.end method

.method getObjGen()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/itextpdf/text/pdf/PRStream;->objGen:I

    return v0
.end method

.method getObjNum()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/itextpdf/text/pdf/PRStream;->objNum:I

    return v0
.end method

.method public getOffset()J
    .locals 2

    .prologue
    .line 186
    iget-wide v0, p0, Lcom/itextpdf/text/pdf/PRStream;->offset:J

    return-wide v0
.end method

.method public getReader()Lcom/itextpdf/text/pdf/PdfReader;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PRStream;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    return-object v0
.end method

.method public setData([B)V
    .locals 1
    .parameter "data"

    .prologue
    .line 177
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/text/pdf/PRStream;->setData([BZ)V

    .line 178
    return-void
.end method

.method public setData([BZ)V
    .locals 1
    .parameter "data"
    .parameter "compress"

    .prologue
    .line 136
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/text/pdf/PRStream;->setData([BZI)V

    .line 137
    return-void
.end method

.method public setData([BZI)V
    .locals 6
    .parameter "data"
    .parameter "compress"
    .parameter "compressionLevel"

    .prologue
    .line 150
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->FILTER:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v4}, Lcom/itextpdf/text/pdf/PRStream;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 151
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/itextpdf/text/pdf/PRStream;->offset:J

    .line 152
    sget-boolean v4, Lcom/itextpdf/text/Document;->compress:Z

    if-eqz v4, :cond_0

    if-eqz p2, :cond_0

    .line 154
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 155
    .local v2, stream:Ljava/io/ByteArrayOutputStream;
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0, p3}, Ljava/util/zip/Deflater;-><init>(I)V

    .line 156
    .local v0, deflater:Ljava/util/zip/Deflater;
    new-instance v3, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v3, v2, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    .line 157
    .local v3, zip:Ljava/util/zip/DeflaterOutputStream;
    invoke-virtual {v3, p1}, Ljava/util/zip/DeflaterOutputStream;->write([B)V

    .line 158
    invoke-virtual {v3}, Ljava/util/zip/DeflaterOutputStream;->close()V

    .line 159
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    .line 160
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/text/pdf/PRStream;->bytes:[B

    .line 161
    iput p3, p0, Lcom/itextpdf/text/pdf/PRStream;->compressionLevel:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->FILTER:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->FLATEDECODE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v4, v5}, Lcom/itextpdf/text/pdf/PRStream;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 170
    .end local v0           #deflater:Ljava/util/zip/Deflater;
    .end local v2           #stream:Ljava/io/ByteArrayOutputStream;
    .end local v3           #zip:Ljava/util/zip/DeflaterOutputStream;
    :goto_0
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PRStream;->bytes:[B

    array-length v4, v4

    invoke-virtual {p0, v4}, Lcom/itextpdf/text/pdf/PRStream;->setLength(I)V

    .line 171
    return-void

    .line 163
    :catch_0
    move-exception v1

    .line 164
    .local v1, ioe:Ljava/io/IOException;
    new-instance v4, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v4, v1}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v4

    .line 169
    .end local v1           #ioe:Ljava/io/IOException;
    :cond_0
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PRStream;->bytes:[B

    goto :goto_0
.end method

.method public setLength(I)V
    .locals 2
    .parameter "length"

    .prologue
    .line 181
    iput p1, p0, Lcom/itextpdf/text/pdf/PRStream;->length:I

    .line 182
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->LENGTH:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v1, p1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PRStream;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 183
    return-void
.end method

.method public setObjNum(II)V
    .locals 0
    .parameter "objNum"
    .parameter "objGen"

    .prologue
    .line 202
    iput p1, p0, Lcom/itextpdf/text/pdf/PRStream;->objNum:I

    .line 203
    iput p2, p0, Lcom/itextpdf/text/pdf/PRStream;->objGen:I

    .line 204
    return-void
.end method

.method public toPdf(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/io/OutputStream;)V
    .locals 6
    .parameter "writer"
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    invoke-static {p0}, Lcom/itextpdf/text/pdf/PdfReader;->getStreamBytesRaw(Lcom/itextpdf/text/pdf/PRStream;)[B

    move-result-object v0

    .line 216
    .local v0, b:[B
    const/4 v1, 0x0

    .line 217
    .local v1, crypto:Lcom/itextpdf/text/pdf/PdfEncryption;
    if-eqz p1, :cond_0

    .line 218
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfWriter;->getEncryption()Lcom/itextpdf/text/pdf/PdfEncryption;

    move-result-object v1

    .line 219
    :cond_0
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->LENGTH:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v4}, Lcom/itextpdf/text/pdf/PRStream;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    .line 220
    .local v3, objLen:Lcom/itextpdf/text/pdf/PdfObject;
    array-length v2, v0

    .line 221
    .local v2, nn:I
    if-eqz v1, :cond_1

    .line 222
    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfEncryption;->calculateStreamSize(I)I

    move-result v2

    .line 223
    :cond_1
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->LENGTH:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v5, v2}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v4, v5}, Lcom/itextpdf/text/pdf/PRStream;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 224
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/text/pdf/PRStream;->superToPdf(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/io/OutputStream;)V

    .line 225
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->LENGTH:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v4, v3}, Lcom/itextpdf/text/pdf/PRStream;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 226
    sget-object v4, Lcom/itextpdf/text/pdf/PRStream;->STARTSTREAM:[B

    invoke-virtual {p2, v4}, Ljava/io/OutputStream;->write([B)V

    .line 227
    iget v4, p0, Lcom/itextpdf/text/pdf/PRStream;->length:I

    if-lez v4, :cond_3

    .line 228
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfEncryption;->isEmbeddedFilesOnly()Z

    move-result v4

    if-nez v4, :cond_2

    .line 229
    invoke-virtual {v1, v0}, Lcom/itextpdf/text/pdf/PdfEncryption;->encryptByteArray([B)[B

    move-result-object v0

    .line 230
    :cond_2
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 232
    :cond_3
    sget-object v4, Lcom/itextpdf/text/pdf/PRStream;->ENDSTREAM:[B

    invoke-virtual {p2, v4}, Ljava/io/OutputStream;->write([B)V

    .line 233
    return-void
.end method

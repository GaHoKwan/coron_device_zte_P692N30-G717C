.class public Lcom/itextpdf/text/pdf/PdfString;
.super Lcom/itextpdf/text/pdf/PdfObject;
.source "PdfString.java"


# instance fields
.field protected encoding:Ljava/lang/String;

.field protected hexWriting:Z

.field protected objGen:I

.field protected objNum:I

.field protected originalValue:Ljava/lang/String;

.field protected value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfObject;-><init>(I)V

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfString;->value:Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfString;->originalValue:Ljava/lang/String;

    .line 77
    const-string v0, "PDF"

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfString;->encoding:Ljava/lang/String;

    .line 79
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfString;->objNum:I

    .line 81
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfString;->objGen:I

    .line 83
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfString;->hexWriting:Z

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 101
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfObject;-><init>(I)V

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfString;->value:Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfString;->originalValue:Ljava/lang/String;

    .line 77
    const-string v0, "PDF"

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfString;->encoding:Ljava/lang/String;

    .line 79
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfString;->objNum:I

    .line 81
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfString;->objGen:I

    .line 83
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfString;->hexWriting:Z

    .line 102
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfString;->value:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "value"
    .parameter "encoding"

    .prologue
    const/4 v1, 0x0

    .line 113
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfObject;-><init>(I)V

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfString;->value:Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfString;->originalValue:Ljava/lang/String;

    .line 77
    const-string v0, "PDF"

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfString;->encoding:Ljava/lang/String;

    .line 79
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfString;->objNum:I

    .line 81
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfString;->objGen:I

    .line 83
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfString;->hexWriting:Z

    .line 114
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfString;->value:Ljava/lang/String;

    .line 115
    iput-object p2, p0, Lcom/itextpdf/text/pdf/PdfString;->encoding:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .parameter "bytes"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 124
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfObject;-><init>(I)V

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfString;->value:Ljava/lang/String;

    .line 74
    iput-object v2, p0, Lcom/itextpdf/text/pdf/PdfString;->originalValue:Ljava/lang/String;

    .line 77
    const-string v0, "PDF"

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfString;->encoding:Ljava/lang/String;

    .line 79
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfString;->objNum:I

    .line 81
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfString;->objGen:I

    .line 83
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfString;->hexWriting:Z

    .line 125
    invoke-static {p1, v2}, Lcom/itextpdf/text/pdf/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfString;->value:Ljava/lang/String;

    .line 126
    const-string v0, ""

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfString;->encoding:Ljava/lang/String;

    .line 127
    return-void
.end method


# virtual methods
.method decrypt(Lcom/itextpdf/text/pdf/PdfReader;)V
    .locals 4
    .parameter "reader"

    .prologue
    const/4 v3, 0x0

    .line 213
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getDecrypt()Lcom/itextpdf/text/pdf/PdfEncryption;

    move-result-object v0

    .line 214
    .local v0, decrypt:Lcom/itextpdf/text/pdf/PdfEncryption;
    if-eqz v0, :cond_0

    .line 215
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfString;->value:Ljava/lang/String;

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfString;->originalValue:Ljava/lang/String;

    .line 216
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfString;->objNum:I

    iget v2, p0, Lcom/itextpdf/text/pdf/PdfString;->objGen:I

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfEncryption;->setHashKey(II)V

    .line 217
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfString;->value:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/itextpdf/text/pdf/PdfEncodings;->convertToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfString;->bytes:[B

    .line 218
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfString;->bytes:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfEncryption;->decryptByteArray([B)[B

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfString;->bytes:[B

    .line 219
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfString;->bytes:[B

    invoke-static {v1, v3}, Lcom/itextpdf/text/pdf/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfString;->value:Ljava/lang/String;

    .line 221
    :cond_0
    return-void
.end method

.method public getBytes()[B
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfString;->bytes:[B

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfString;->encoding:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfString;->encoding:Ljava/lang/String;

    const-string v1, "UnicodeBig"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfString;->value:Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/text/pdf/PdfEncodings;->isPdfDocEncoding(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfString;->value:Ljava/lang/String;

    const-string v1, "PDF"

    invoke-static {v0, v1}, Lcom/itextpdf/text/pdf/PdfEncodings;->convertToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfString;->bytes:[B

    .line 174
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfString;->bytes:[B

    return-object v0

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfString;->value:Ljava/lang/String;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfString;->encoding:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/itextpdf/text/pdf/PdfEncodings;->convertToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfString;->bytes:[B

    goto :goto_0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfString;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalBytes()[B
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfString;->originalValue:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfString;->getBytes()[B

    move-result-object v0

    .line 226
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfString;->originalValue:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/itextpdf/text/pdf/PdfEncodings;->convertToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public isHexWriting()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfString;->hexWriting:Z

    return v0
.end method

.method public setHexWriting(Z)Lcom/itextpdf/text/pdf/PdfString;
    .locals 0
    .parameter "hexWriting"

    .prologue
    .line 230
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/PdfString;->hexWriting:Z

    .line 231
    return-object p0
.end method

.method setObjNum(II)V
    .locals 0
    .parameter "objNum"
    .parameter "objGen"

    .prologue
    .line 205
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfString;->objNum:I

    .line 206
    iput p2, p0, Lcom/itextpdf/text/pdf/PdfString;->objGen:I

    .line 207
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
    .line 139
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfString;->getBytes()[B

    move-result-object v0

    .line 140
    .local v0, b:[B
    const/4 v2, 0x0

    .line 141
    .local v2, crypto:Lcom/itextpdf/text/pdf/PdfEncryption;
    if-eqz p1, :cond_0

    .line 142
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfWriter;->getEncryption()Lcom/itextpdf/text/pdf/PdfEncryption;

    move-result-object v2

    .line 143
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfEncryption;->isEmbeddedFilesOnly()Z

    move-result v5

    if-nez v5, :cond_1

    .line 144
    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfEncryption;->encryptByteArray([B)[B

    move-result-object v0

    .line 145
    :cond_1
    iget-boolean v5, p0, Lcom/itextpdf/text/pdf/PdfString;->hexWriting:Z

    if-eqz v5, :cond_3

    .line 146
    new-instance v1, Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/ByteBuffer;-><init>()V

    .line 147
    .local v1, buf:Lcom/itextpdf/text/pdf/ByteBuffer;
    const/16 v5, 0x3c

    invoke-virtual {v1, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 148
    array-length v4, v0

    .line 149
    .local v4, len:I
    const/4 v3, 0x0

    .local v3, k:I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 150
    aget-byte v5, v0, v3

    invoke-virtual {v1, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->appendHex(B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 149
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 151
    :cond_2
    const/16 v5, 0x3e

    invoke-virtual {v1, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 152
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->toByteArray()[B

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write([B)V

    .line 156
    .end local v1           #buf:Lcom/itextpdf/text/pdf/ByteBuffer;
    .end local v3           #k:I
    .end local v4           #len:I
    :goto_1
    return-void

    .line 155
    :cond_3
    invoke-static {v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->escapeString([B)[B

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfString;->value:Ljava/lang/String;

    return-object v0
.end method

.method public toUnicodeString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfString;->encoding:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfString;->encoding:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfString;->value:Ljava/lang/String;

    .line 192
    :goto_0
    return-object v0

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfString;->getBytes()[B

    .line 189
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfString;->bytes:[B

    array-length v0, v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfString;->bytes:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfString;->bytes:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 190
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfString;->bytes:[B

    const-string v1, "UnicodeBig"

    invoke-static {v0, v1}, Lcom/itextpdf/text/pdf/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfString;->bytes:[B

    const-string v1, "PDF"

    invoke-static {v0, v1}, Lcom/itextpdf/text/pdf/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

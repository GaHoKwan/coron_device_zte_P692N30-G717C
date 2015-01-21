.class public Lcom/itextpdf/text/pdf/PdfStream;
.super Lcom/itextpdf/text/pdf/PdfDictionary;
.source "PdfStream.java"


# static fields
.field public static final BEST_COMPRESSION:I = 0x9

.field public static final BEST_SPEED:I = 0x1

.field public static final DEFAULT_COMPRESSION:I = -0x1

.field static final ENDSTREAM:[B

.field public static final NO_COMPRESSION:I

.field static final SIZESTREAM:I

.field static final STARTSTREAM:[B


# instance fields
.field protected compressed:Z

.field protected compressionLevel:I

.field protected inputStream:Ljava/io/InputStream;

.field protected inputStreamLength:I

.field protected rawLength:I

.field protected ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;

.field protected streamBytes:Ljava/io/ByteArrayOutputStream;

.field protected writer:Lcom/itextpdf/text/pdf/PdfWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 120
    const-string v0, "stream\n"

    invoke-static {v0}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/text/pdf/PdfStream;->STARTSTREAM:[B

    .line 121
    const-string v0, "\nendstream"

    invoke-static {v0}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/text/pdf/PdfStream;->ENDSTREAM:[B

    .line 122
    sget-object v0, Lcom/itextpdf/text/pdf/PdfStream;->STARTSTREAM:[B

    array-length v0, v0

    sget-object v1, Lcom/itextpdf/text/pdf/PdfStream;->ENDSTREAM:[B

    array-length v1, v1

    add-int/2addr v0, v1

    sput v0, Lcom/itextpdf/text/pdf/PdfStream;->SIZESTREAM:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 169
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 106
    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfStream;->compressed:Z

    .line 111
    iput v0, p0, Lcom/itextpdf/text/pdf/PdfStream;->compressionLevel:I

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfStream;->streamBytes:Ljava/io/ByteArrayOutputStream;

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfStream;->inputStreamLength:I

    .line 170
    const/4 v0, 0x7

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfStream;->type:I

    .line 171
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/itextpdf/text/pdf/PdfWriter;)V
    .locals 2
    .parameter "inputStream"
    .parameter "writer"

    .prologue
    const/4 v0, 0x0

    .line 156
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 106
    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfStream;->compressed:Z

    .line 111
    iput v0, p0, Lcom/itextpdf/text/pdf/PdfStream;->compressionLevel:I

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfStream;->streamBytes:Ljava/io/ByteArrayOutputStream;

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfStream;->inputStreamLength:I

    .line 157
    const/4 v0, 0x7

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfStream;->type:I

    .line 158
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfStream;->inputStream:Ljava/io/InputStream;

    .line 159
    iput-object p2, p0, Lcom/itextpdf/text/pdf/PdfStream;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    .line 160
    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/PdfWriter;->getPdfIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfStream;->ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 161
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->LENGTH:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStream;->ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfStream;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 162
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .parameter "bytes"

    .prologue
    const/4 v0, 0x0

    .line 133
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 106
    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfStream;->compressed:Z

    .line 111
    iput v0, p0, Lcom/itextpdf/text/pdf/PdfStream;->compressionLevel:I

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfStream;->streamBytes:Ljava/io/ByteArrayOutputStream;

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfStream;->inputStreamLength:I

    .line 134
    const/4 v0, 0x7

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfStream;->type:I

    .line 135
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfStream;->bytes:[B

    .line 136
    array-length v0, p1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfStream;->rawLength:I

    .line 137
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->LENGTH:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfNumber;

    array-length v2, p1

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfStream;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 138
    return-void
.end method


# virtual methods
.method public flateCompress()V
    .locals 1

    .prologue
    .line 201
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfStream;->flateCompress(I)V

    .line 202
    return-void
.end method

.method public flateCompress(I)V
    .locals 9
    .parameter "compressionLevel"

    .prologue
    const/4 v7, 0x1

    .line 210
    sget-boolean v6, Lcom/itextpdf/text/Document;->compress:Z

    if-nez v6, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-boolean v6, p0, Lcom/itextpdf/text/pdf/PdfStream;->compressed:Z

    if-nez v6, :cond_0

    .line 216
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfStream;->compressionLevel:I

    .line 217
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfStream;->inputStream:Ljava/io/InputStream;

    if-eqz v6, :cond_2

    .line 218
    iput-boolean v7, p0, Lcom/itextpdf/text/pdf/PdfStream;->compressed:Z

    goto :goto_0

    .line 222
    :cond_2
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->FILTER:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v6}, Lcom/itextpdf/text/pdf/PdfStream;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v6

    invoke-static {v6}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    .line 223
    .local v1, filter:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v1, :cond_3

    .line 224
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfObject;->isName()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 225
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->FLATEDECODE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v1}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 238
    :cond_3
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 239
    .local v4, stream:Ljava/io/ByteArrayOutputStream;
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0, p1}, Ljava/util/zip/Deflater;-><init>(I)V

    .line 240
    .local v0, deflater:Ljava/util/zip/Deflater;
    new-instance v5, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v5, v4, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    .line 241
    .local v5, zip:Ljava/util/zip/DeflaterOutputStream;
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfStream;->streamBytes:Ljava/io/ByteArrayOutputStream;

    if-eqz v6, :cond_6

    .line 242
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfStream;->streamBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6, v5}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 245
    :goto_1
    invoke-virtual {v5}, Ljava/util/zip/DeflaterOutputStream;->close()V

    .line 246
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    .line 248
    iput-object v4, p0, Lcom/itextpdf/text/pdf/PdfStream;->streamBytes:Ljava/io/ByteArrayOutputStream;

    .line 249
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/itextpdf/text/pdf/PdfStream;->bytes:[B

    .line 250
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->LENGTH:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v7, Lcom/itextpdf/text/pdf/PdfNumber;

    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfStream;->streamBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    invoke-direct {v7, v8}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v6, v7}, Lcom/itextpdf/text/pdf/PdfStream;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 251
    if-nez v1, :cond_7

    .line 252
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->FILTER:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->FLATEDECODE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v6, v7}, Lcom/itextpdf/text/pdf/PdfStream;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 259
    :goto_2
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/itextpdf/text/pdf/PdfStream;->compressed:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 261
    .end local v0           #deflater:Ljava/util/zip/Deflater;
    .end local v4           #stream:Ljava/io/ByteArrayOutputStream;
    .end local v5           #zip:Ljava/util/zip/DeflaterOutputStream;
    :catch_0
    move-exception v3

    .line 262
    .local v3, ioe:Ljava/io/IOException;
    new-instance v6, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v6, v3}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v6

    .line 228
    .end local v3           #ioe:Ljava/io/IOException;
    :cond_4
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfObject;->isArray()Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v6, v1

    .line 229
    check-cast v6, Lcom/itextpdf/text/pdf/PdfArray;

    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->FLATEDECODE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v7}, Lcom/itextpdf/text/pdf/PdfArray;->contains(Lcom/itextpdf/text/pdf/PdfObject;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0

    .line 233
    :cond_5
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "stream.could.not.be.compressed.filter.is.not.a.name.or.array"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 244
    .restart local v0       #deflater:Ljava/util/zip/Deflater;
    .restart local v4       #stream:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #zip:Ljava/util/zip/DeflaterOutputStream;
    :cond_6
    :try_start_1
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfStream;->bytes:[B

    invoke-virtual {v5, v6}, Ljava/util/zip/DeflaterOutputStream;->write([B)V

    goto :goto_1

    .line 255
    :cond_7
    new-instance v2, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v2, v1}, Lcom/itextpdf/text/pdf/PdfArray;-><init>(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 256
    .local v2, filters:Lcom/itextpdf/text/pdf/PdfArray;
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->FLATEDECODE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v6}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 257
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->FILTER:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v6, v2}, Lcom/itextpdf/text/pdf/PdfStream;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public getRawLength()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfStream;->rawLength:I

    return v0
.end method

.method protected superToPdf(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/io/OutputStream;)V
    .locals 0
    .parameter "writer"
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    invoke-super {p0, p1, p2}, Lcom/itextpdf/text/pdf/PdfDictionary;->toPdf(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/io/OutputStream;)V

    .line 277
    return-void
.end method

.method public toPdf(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/io/OutputStream;)V
    .locals 17
    .parameter "writer"
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/PdfStream;->inputStream:Ljava/io/InputStream;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/itextpdf/text/pdf/PdfStream;->compressed:Z

    if-eqz v14, :cond_0

    .line 284
    sget-object v14, Lcom/itextpdf/text/pdf/PdfName;->FILTER:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v15, Lcom/itextpdf/text/pdf/PdfName;->FLATEDECODE:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/itextpdf/text/pdf/PdfStream;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 285
    :cond_0
    const/4 v4, 0x0

    .line 286
    .local v4, crypto:Lcom/itextpdf/text/pdf/PdfEncryption;
    if-eqz p1, :cond_1

    .line 287
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfWriter;->getEncryption()Lcom/itextpdf/text/pdf/PdfEncryption;

    move-result-object v4

    .line 288
    :cond_1
    if-eqz v4, :cond_2

    .line 289
    sget-object v14, Lcom/itextpdf/text/pdf/PdfName;->FILTER:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/itextpdf/text/pdf/PdfStream;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    .line 290
    .local v7, filter:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v7, :cond_2

    .line 291
    sget-object v14, Lcom/itextpdf/text/pdf/PdfName;->CRYPT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v14, v7}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 292
    const/4 v4, 0x0

    .line 300
    .end local v7           #filter:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_2
    :goto_0
    sget-object v14, Lcom/itextpdf/text/pdf/PdfName;->LENGTH:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/itextpdf/text/pdf/PdfStream;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v10

    .line 301
    .local v10, nn:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v4, :cond_8

    if-eqz v10, :cond_8

    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/PdfObject;->isNumber()Z

    move-result v14

    if-eqz v14, :cond_8

    move-object v14, v10

    .line 302
    check-cast v14, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v14}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v13

    .line 303
    .local v13, sz:I
    sget-object v14, Lcom/itextpdf/text/pdf/PdfName;->LENGTH:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v15, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v4, v13}, Lcom/itextpdf/text/pdf/PdfEncryption;->calculateStreamSize(I)I

    move-result v16

    invoke-direct/range {v15 .. v16}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/itextpdf/text/pdf/PdfStream;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 304
    invoke-virtual/range {p0 .. p2}, Lcom/itextpdf/text/pdf/PdfStream;->superToPdf(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/io/OutputStream;)V

    .line 305
    sget-object v14, Lcom/itextpdf/text/pdf/PdfName;->LENGTH:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v10}, Lcom/itextpdf/text/pdf/PdfStream;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 309
    .end local v13           #sz:I
    :goto_1
    sget-object v14, Lcom/itextpdf/text/pdf/PdfStream;->STARTSTREAM:[B

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/OutputStream;->write([B)V

    .line 310
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/PdfStream;->inputStream:Ljava/io/InputStream;

    if-eqz v14, :cond_a

    .line 311
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/itextpdf/text/pdf/PdfStream;->rawLength:I

    .line 312
    const/4 v5, 0x0

    .line 313
    .local v5, def:Ljava/util/zip/DeflaterOutputStream;
    new-instance v11, Lcom/itextpdf/text/pdf/OutputStreamCounter;

    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Lcom/itextpdf/text/pdf/OutputStreamCounter;-><init>(Ljava/io/OutputStream;)V

    .line 314
    .local v11, osc:Lcom/itextpdf/text/pdf/OutputStreamCounter;
    const/4 v12, 0x0

    .line 315
    .local v12, ose:Lcom/itextpdf/text/pdf/OutputStreamEncryption;
    move-object v8, v11

    .line 316
    .local v8, fout:Ljava/io/OutputStream;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfEncryption;->isEmbeddedFilesOnly()Z

    move-result v14

    if-nez v14, :cond_3

    .line 317
    invoke-virtual {v4, v8}, Lcom/itextpdf/text/pdf/PdfEncryption;->getEncryptionStream(Ljava/io/OutputStream;)Lcom/itextpdf/text/pdf/OutputStreamEncryption;

    move-result-object v12

    move-object v8, v12

    .line 318
    :cond_3
    const/4 v6, 0x0

    .line 319
    .local v6, deflater:Ljava/util/zip/Deflater;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/itextpdf/text/pdf/PdfStream;->compressed:Z

    if-eqz v14, :cond_4

    .line 320
    new-instance v6, Ljava/util/zip/Deflater;

    .end local v6           #deflater:Ljava/util/zip/Deflater;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/itextpdf/text/pdf/PdfStream;->compressionLevel:I

    invoke-direct {v6, v14}, Ljava/util/zip/Deflater;-><init>(I)V

    .line 321
    .restart local v6       #deflater:Ljava/util/zip/Deflater;
    new-instance v5, Ljava/util/zip/DeflaterOutputStream;

    .end local v5           #def:Ljava/util/zip/DeflaterOutputStream;
    const v14, 0x8000

    invoke-direct {v5, v8, v6, v14}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;I)V

    .restart local v5       #def:Ljava/util/zip/DeflaterOutputStream;
    move-object v8, v5

    .line 324
    :cond_4
    const/16 v14, 0x1060

    new-array v3, v14, [B

    .line 326
    .local v3, buf:[B
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/PdfStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v14, v3}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .line 327
    .local v9, n:I
    if-gtz v9, :cond_9

    .line 332
    if-eqz v5, :cond_5

    .line 333
    invoke-virtual {v5}, Ljava/util/zip/DeflaterOutputStream;->finish()V

    .line 334
    invoke-virtual {v6}, Ljava/util/zip/Deflater;->end()V

    .line 336
    :cond_5
    if-eqz v12, :cond_6

    .line 337
    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/OutputStreamEncryption;->finish()V

    .line 338
    :cond_6
    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/OutputStreamCounter;->getCounter()J

    move-result-wide v14

    long-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/itextpdf/text/pdf/PdfStream;->inputStreamLength:I

    .line 358
    .end local v3           #buf:[B
    .end local v5           #def:Ljava/util/zip/DeflaterOutputStream;
    .end local v6           #deflater:Ljava/util/zip/Deflater;
    .end local v8           #fout:Ljava/io/OutputStream;
    .end local v9           #n:I
    .end local v11           #osc:Lcom/itextpdf/text/pdf/OutputStreamCounter;
    .end local v12           #ose:Lcom/itextpdf/text/pdf/OutputStreamEncryption;
    :goto_3
    sget-object v14, Lcom/itextpdf/text/pdf/PdfStream;->ENDSTREAM:[B

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/OutputStream;->write([B)V

    .line 359
    return-void

    .line 293
    .end local v10           #nn:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v7       #filter:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_7
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfObject;->isArray()Z

    move-result v14

    if-eqz v14, :cond_2

    move-object v1, v7

    .line 294
    check-cast v1, Lcom/itextpdf/text/pdf/PdfArray;

    .line 295
    .local v1, a:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfArray;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_2

    sget-object v14, Lcom/itextpdf/text/pdf/PdfName;->CRYPT:Lcom/itextpdf/text/pdf/PdfName;

    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 296
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 308
    .end local v1           #a:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v7           #filter:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v10       #nn:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_8
    invoke-virtual/range {p0 .. p2}, Lcom/itextpdf/text/pdf/PdfStream;->superToPdf(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/io/OutputStream;)V

    goto/16 :goto_1

    .line 329
    .restart local v3       #buf:[B
    .restart local v5       #def:Ljava/util/zip/DeflaterOutputStream;
    .restart local v6       #deflater:Ljava/util/zip/Deflater;
    .restart local v8       #fout:Ljava/io/OutputStream;
    .restart local v9       #n:I
    .restart local v11       #osc:Lcom/itextpdf/text/pdf/OutputStreamCounter;
    .restart local v12       #ose:Lcom/itextpdf/text/pdf/OutputStreamEncryption;
    :cond_9
    const/4 v14, 0x0

    invoke-virtual {v8, v3, v14, v9}, Ljava/io/OutputStream;->write([BII)V

    .line 330
    move-object/from16 v0, p0

    iget v14, v0, Lcom/itextpdf/text/pdf/PdfStream;->rawLength:I

    add-int/2addr v14, v9

    move-object/from16 v0, p0

    iput v14, v0, Lcom/itextpdf/text/pdf/PdfStream;->rawLength:I

    goto :goto_2

    .line 341
    .end local v3           #buf:[B
    .end local v5           #def:Ljava/util/zip/DeflaterOutputStream;
    .end local v6           #deflater:Ljava/util/zip/Deflater;
    .end local v8           #fout:Ljava/io/OutputStream;
    .end local v9           #n:I
    .end local v11           #osc:Lcom/itextpdf/text/pdf/OutputStreamCounter;
    .end local v12           #ose:Lcom/itextpdf/text/pdf/OutputStreamEncryption;
    :cond_a
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfEncryption;->isEmbeddedFilesOnly()Z

    move-result v14

    if-nez v14, :cond_c

    .line 343
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/PdfStream;->streamBytes:Ljava/io/ByteArrayOutputStream;

    if-eqz v14, :cond_b

    .line 344
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/PdfStream;->streamBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/itextpdf/text/pdf/PdfEncryption;->encryptByteArray([B)[B

    move-result-object v2

    .line 349
    .local v2, b:[B
    :goto_4
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_3

    .line 347
    .end local v2           #b:[B
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/PdfStream;->bytes:[B

    invoke-virtual {v4, v14}, Lcom/itextpdf/text/pdf/PdfEncryption;->encryptByteArray([B)[B

    move-result-object v2

    .restart local v2       #b:[B
    goto :goto_4

    .line 352
    .end local v2           #b:[B
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/PdfStream;->streamBytes:Ljava/io/ByteArrayOutputStream;

    if-eqz v14, :cond_d

    .line 353
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/PdfStream;->streamBytes:Ljava/io/ByteArrayOutputStream;

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_3

    .line 355
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/PdfStream;->bytes:[B

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/OutputStream;->write([B)V

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 377
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->TYPE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfStream;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Stream"

    .line 378
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stream of type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->TYPE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfStream;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeContent(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 367
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStream;->streamBytes:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStream;->streamBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStream;->bytes:[B

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStream;->bytes:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method

.method public writeLength()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 182
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStream;->inputStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "writelength.can.only.be.called.in.a.contructed.pdfstream.inputstream.pdfwriter"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_0
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfStream;->inputStreamLength:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 185
    new-instance v0, Ljava/io/IOException;

    const-string v1, "writelength.can.only.be.called.after.output.of.the.stream.body"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStream;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfNumber;

    iget v2, p0, Lcom/itextpdf/text/pdf/PdfStream;->inputStreamLength:I

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStream;->ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    invoke-virtual {v0, v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;Z)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    .line 187
    return-void
.end method

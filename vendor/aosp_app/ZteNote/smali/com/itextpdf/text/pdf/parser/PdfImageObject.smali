.class public Lcom/itextpdf/text/pdf/parser/PdfImageObject;
.super Ljava/lang/Object;
.source "PdfImageObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/pdf/parser/PdfImageObject$1;,
        Lcom/itextpdf/text/pdf/parser/PdfImageObject$TrackingFilter;,
        Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;
    }
.end annotation


# instance fields
.field private bpc:I

.field private colorSpaceDic:Lcom/itextpdf/text/pdf/PdfDictionary;

.field private dictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

.field private height:I

.field private icc:[B

.field private imageBytes:[B

.field private palette:[B

.field private pngBitDepth:I

.field private pngColorType:I

.field private streamContentType:Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;

.field private stride:I

.field private width:I


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/PRStream;)V
    .locals 2
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-static {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getStreamBytesRaw(Lcom/itextpdf/text/pdf/PRStream;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/itextpdf/text/pdf/parser/PdfImageObject;-><init>(Lcom/itextpdf/text/pdf/PdfDictionary;[BLcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 159
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PRStream;Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 1
    .parameter "stream"
    .parameter "colorSpaceDic"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-static {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getStreamBytesRaw(Lcom/itextpdf/text/pdf/PRStream;)[B

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/itextpdf/text/pdf/parser/PdfImageObject;-><init>(Lcom/itextpdf/text/pdf/PdfDictionary;[BLcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 169
    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/text/pdf/PdfDictionary;[BLcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 4
    .parameter "dictionary"
    .parameter "samples"
    .parameter "colorSpaceDic"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const/4 v2, -0x1

    iput v2, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->pngColorType:I

    .line 139
    iput-object v3, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->streamContentType:Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;

    .line 181
    iput-object p1, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->dictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 182
    iput-object p3, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->colorSpaceDic:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 183
    new-instance v1, Lcom/itextpdf/text/pdf/parser/PdfImageObject$TrackingFilter;

    invoke-direct {v1, v3}, Lcom/itextpdf/text/pdf/parser/PdfImageObject$TrackingFilter;-><init>(Lcom/itextpdf/text/pdf/parser/PdfImageObject$1;)V

    .line 184
    .local v1, trackingFilter:Lcom/itextpdf/text/pdf/parser/PdfImageObject$TrackingFilter;
    new-instance v0, Ljava/util/HashMap;

    invoke-static {}, Lcom/itextpdf/text/pdf/FilterHandlers;->getDefaultFilterHandlers()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 185
    .local v0, handlers:Ljava/util/Map;,"Ljava/util/Map<Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/FilterHandlers$FilterHandler;>;"
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->JBIG2DECODE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->DCTDECODE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->JPXDECODE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-static {p2, p1, v0}, Lcom/itextpdf/text/pdf/PdfReader;->decodeBytes([BLcom/itextpdf/text/pdf/PdfDictionary;Ljava/util/Map;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->imageBytes:[B

    .line 191
    iget-object v2, v1, Lcom/itextpdf/text/pdf/parser/PdfImageObject$TrackingFilter;->lastFilterName:Lcom/itextpdf/text/pdf/PdfName;

    if-eqz v2, :cond_3

    .line 192
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->JBIG2DECODE:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v3, v1, Lcom/itextpdf/text/pdf/parser/PdfImageObject$TrackingFilter;->lastFilterName:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 193
    sget-object v2, Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;->JBIG2:Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;

    iput-object v2, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->streamContentType:Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->DCTDECODE:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v3, v1, Lcom/itextpdf/text/pdf/parser/PdfImageObject$TrackingFilter;->lastFilterName:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 195
    sget-object v2, Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;->JPG:Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;

    iput-object v2, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->streamContentType:Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;

    goto :goto_0

    .line 196
    :cond_2
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->JPXDECODE:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v3, v1, Lcom/itextpdf/text/pdf/parser/PdfImageObject$TrackingFilter;->lastFilterName:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    sget-object v2, Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;->JP2:Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;

    iput-object v2, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->streamContentType:Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;

    goto :goto_0

    .line 199
    :cond_3
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->decodeImageBytes()V

    goto :goto_0
.end method

.method private decodeImageBytes()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->streamContentType:Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;

    if-eqz v2, :cond_0

    .line 292
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Decoding.can\'t.happen.on.this.type.of.stream.(.1.)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->streamContentType:Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 294
    :cond_0
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->pngColorType:I

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->dictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->DECODE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v11

    .line 296
    .local v11, decode:Lcom/itextpdf/text/pdf/PdfArray;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->dictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->WIDTH:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->width:I

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->dictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->HEIGHT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->height:I

    .line 298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->dictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->BITSPERCOMPONENT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->bpc:I

    .line 299
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->bpc:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->pngBitDepth:I

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->dictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->COLORSPACE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->getDirectObject(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    .line 301
    .local v9, colorspace:Lcom/itextpdf/text/pdf/PdfObject;
    instance-of v2, v9, Lcom/itextpdf/text/pdf/PdfName;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->colorSpaceDic:Lcom/itextpdf/text/pdf/PdfDictionary;

    if-eqz v2, :cond_1

    .line 302
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->colorSpaceDic:Lcom/itextpdf/text/pdf/PdfDictionary;

    move-object v2, v9

    check-cast v2, Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getDirectObject(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v10

    .line 303
    .local v10, csLookup:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v10, :cond_1

    .line 304
    move-object v9, v10

    .line 307
    .end local v10           #csLookup:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->palette:[B

    .line 308
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->icc:[B

    .line 309
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->stride:I

    .line 310
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2}, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->findColorspace(Lcom/itextpdf/text/pdf/PdfObject;Z)V

    .line 311
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 312
    .local v13, ms:Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->pngColorType:I

    if-gez v2, :cond_8

    .line 313
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->bpc:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_2

    .line 314
    new-instance v2, Lcom/itextpdf/text/exceptions/UnsupportedPdfException;

    const-string v3, "the.color.depth.1.is.not.supported"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->bpc:I

    invoke-static {v3, v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/text/exceptions/UnsupportedPdfException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 316
    :cond_2
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->DEVICECMYK:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v9}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 332
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->width:I

    mul-int/lit8 v2, v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->stride:I

    .line 333
    new-instance v19, Lcom/itextpdf/text/pdf/codec/TiffWriter;

    invoke-direct/range {v19 .. v19}, Lcom/itextpdf/text/pdf/codec/TiffWriter;-><init>()V

    .line 334
    .local v19, wr:Lcom/itextpdf/text/pdf/codec/TiffWriter;
    new-instance v2, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldShort;

    const/16 v3, 0x115

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldShort;-><init>(II)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/codec/TiffWriter;->addField(Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;)V

    .line 335
    new-instance v2, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldShort;

    const/16 v3, 0x102

    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldShort;-><init>(I[I)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/codec/TiffWriter;->addField(Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;)V

    .line 336
    new-instance v2, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldShort;

    const/16 v3, 0x106

    const/4 v4, 0x5

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldShort;-><init>(II)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/codec/TiffWriter;->addField(Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;)V

    .line 337
    new-instance v2, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldLong;

    const/16 v3, 0x100

    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->width:I

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldLong;-><init>(II)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/codec/TiffWriter;->addField(Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;)V

    .line 338
    new-instance v2, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldLong;

    const/16 v3, 0x101

    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->height:I

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldLong;-><init>(II)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/codec/TiffWriter;->addField(Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;)V

    .line 339
    new-instance v2, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldShort;

    const/16 v3, 0x103

    const/4 v4, 0x5

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldShort;-><init>(II)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/codec/TiffWriter;->addField(Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;)V

    .line 340
    new-instance v2, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldShort;

    const/16 v3, 0x13d

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldShort;-><init>(II)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/codec/TiffWriter;->addField(Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;)V

    .line 341
    new-instance v2, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldLong;

    const/16 v3, 0x116

    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->height:I

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldLong;-><init>(II)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/codec/TiffWriter;->addField(Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;)V

    .line 342
    new-instance v2, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldRational;

    const/16 v3, 0x11a

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_1

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldRational;-><init>(I[I)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/codec/TiffWriter;->addField(Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;)V

    .line 343
    new-instance v2, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldRational;

    const/16 v3, 0x11b

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_2

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldRational;-><init>(I[I)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/codec/TiffWriter;->addField(Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;)V

    .line 344
    new-instance v2, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldShort;

    const/16 v3, 0x128

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldShort;-><init>(II)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/codec/TiffWriter;->addField(Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;)V

    .line 345
    new-instance v2, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldAscii;

    const/16 v3, 0x131

    invoke-static {}, Lcom/itextpdf/text/Document;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldAscii;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/codec/TiffWriter;->addField(Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;)V

    .line 346
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 347
    .local v1, comp:Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->imageBytes:[B

    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->height:I

    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->stride:I

    invoke-static/range {v1 .. v6}, Lcom/itextpdf/text/pdf/codec/TiffWriter;->compressLZW(Ljava/io/OutputStream;I[BIII)V

    .line 348
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 349
    .local v7, buf:[B
    new-instance v2, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldImage;

    invoke-direct {v2, v7}, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldImage;-><init>([B)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/codec/TiffWriter;->addField(Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;)V

    .line 350
    new-instance v2, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldLong;

    const/16 v3, 0x117

    array-length v4, v7

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldLong;-><init>(II)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/codec/TiffWriter;->addField(Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;)V

    .line 351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->icc:[B

    if-eqz v2, :cond_3

    .line 352
    new-instance v2, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldUndefined;

    const v3, 0x8773

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->icc:[B

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldUndefined;-><init>(I[B)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/codec/TiffWriter;->addField(Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;)V

    .line 353
    :cond_3
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lcom/itextpdf/text/pdf/codec/TiffWriter;->writeFile(Ljava/io/OutputStream;)V

    .line 354
    sget-object v2, Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;->CCITT:Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->streamContentType:Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;

    .line 355
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->imageBytes:[B

    .line 384
    .end local v1           #comp:Ljava/io/ByteArrayOutputStream;
    .end local v7           #buf:[B
    .end local v19           #wr:Lcom/itextpdf/text/pdf/codec/TiffWriter;
    :goto_1
    return-void

    .line 318
    :cond_4
    instance-of v2, v9, Lcom/itextpdf/text/pdf/PdfArray;

    if-eqz v2, :cond_7

    move-object v8, v9

    .line 319
    check-cast v8, Lcom/itextpdf/text/pdf/PdfArray;

    .line 320
    .local v8, ca:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Lcom/itextpdf/text/pdf/PdfArray;->getDirectObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v18

    .line 321
    .local v18, tyca:Lcom/itextpdf/text/pdf/PdfObject;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->ICCBASED:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 322
    new-instance v2, Lcom/itextpdf/text/exceptions/UnsupportedPdfException;

    const-string v3, "the.color.space.1.is.not.supported"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v9, v4, v5

    invoke-static {v3, v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/text/exceptions/UnsupportedPdfException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 323
    :cond_5
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Lcom/itextpdf/text/pdf/PdfArray;->getDirectObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v16

    check-cast v16, Lcom/itextpdf/text/pdf/PRStream;

    .line 324
    .local v16, pr:Lcom/itextpdf/text/pdf/PRStream;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->N:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PRStream;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v14

    .line 325
    .local v14, n:I
    const/4 v2, 0x4

    if-eq v14, v2, :cond_6

    .line 326
    new-instance v2, Lcom/itextpdf/text/exceptions/UnsupportedPdfException;

    const-string v3, "N.value.1.is.not.supported"

    invoke-static {v3, v14}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/text/exceptions/UnsupportedPdfException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 328
    :cond_6
    invoke-static/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfReader;->getStreamBytes(Lcom/itextpdf/text/pdf/PRStream;)[B

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->icc:[B

    goto/16 :goto_0

    .line 331
    .end local v8           #ca:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v14           #n:I
    .end local v16           #pr:Lcom/itextpdf/text/pdf/PRStream;
    .end local v18           #tyca:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_7
    new-instance v2, Lcom/itextpdf/text/exceptions/UnsupportedPdfException;

    const-string v3, "the.color.space.1.is.not.supported"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v9, v4, v5

    invoke-static {v3, v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/text/exceptions/UnsupportedPdfException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 358
    :cond_8
    new-instance v15, Lcom/itextpdf/text/pdf/codec/PngWriter;

    invoke-direct {v15, v13}, Lcom/itextpdf/text/pdf/codec/PngWriter;-><init>(Ljava/io/OutputStream;)V

    .line 359
    .local v15, png:Lcom/itextpdf/text/pdf/codec/PngWriter;
    if-eqz v11, :cond_9

    .line 360
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->pngBitDepth:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    .line 362
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v2

    if-nez v2, :cond_9

    .line 363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->imageBytes:[B

    array-length v12, v2

    .line 364
    .local v12, len:I
    const/16 v17, 0x0

    .local v17, t:I
    :goto_2
    move/from16 v0, v17

    if-ge v0, v12, :cond_9

    .line 365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->imageBytes:[B

    aget-byte v3, v2, v17

    xor-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v17

    .line 364
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 374
    .end local v12           #len:I
    .end local v17           #t:I
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->width:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->height:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->pngBitDepth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->pngColorType:I

    invoke-virtual {v15, v2, v3, v4, v5}, Lcom/itextpdf/text/pdf/codec/PngWriter;->writeHeader(IIII)V

    .line 375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->icc:[B

    if-eqz v2, :cond_a

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->icc:[B

    invoke-virtual {v15, v2}, Lcom/itextpdf/text/pdf/codec/PngWriter;->writeIccProfile([B)V

    .line 377
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->palette:[B

    if-eqz v2, :cond_b

    .line 378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->palette:[B

    invoke-virtual {v15, v2}, Lcom/itextpdf/text/pdf/codec/PngWriter;->writePalette([B)V

    .line 379
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->imageBytes:[B

    move-object/from16 v0, p0

    iget v3, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->stride:I

    invoke-virtual {v15, v2, v3}, Lcom/itextpdf/text/pdf/codec/PngWriter;->writeData([BI)V

    .line 380
    invoke-virtual {v15}, Lcom/itextpdf/text/pdf/codec/PngWriter;->writeEnd()V

    .line 381
    sget-object v2, Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;->PNG:Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->streamContentType:Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;

    .line 382
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->imageBytes:[B

    goto/16 :goto_1

    .line 335
    :array_0
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 342
    :array_1
    .array-data 0x4
        0x2ct 0x1t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 343
    :array_2
    .array-data 0x4
        0x2ct 0x1t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private findColorspace(Lcom/itextpdf/text/pdf/PdfObject;Z)V
    .locals 11
    .parameter "colorspace"
    .parameter "allowIndexed"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 227
    if-nez p1, :cond_1

    iget v5, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->bpc:I

    if-ne v5, v6, :cond_1

    .line 228
    iget v5, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->width:I

    iget v6, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->bpc:I

    mul-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x7

    div-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->stride:I

    .line 229
    iput v7, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->pngColorType:I

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->DEVICEGRAY:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v5, p1}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 232
    iget v5, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->width:I

    iget v6, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->bpc:I

    mul-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x7

    div-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->stride:I

    .line 233
    iput v7, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->pngColorType:I

    goto :goto_0

    .line 235
    :cond_2
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->DEVICERGB:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v5, p1}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 236
    iget v5, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->bpc:I

    if-eq v5, v10, :cond_3

    iget v5, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->bpc:I

    const/16 v6, 0x10

    if-ne v5, v6, :cond_0

    .line 237
    :cond_3
    iget v5, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->width:I

    iget v6, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->bpc:I

    mul-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, 0x7

    div-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->stride:I

    .line 238
    iput v8, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->pngColorType:I

    goto :goto_0

    .line 241
    :cond_4
    instance-of v5, p1, Lcom/itextpdf/text/pdf/PdfArray;

    if-eqz v5, :cond_0

    move-object v0, p1

    .line 242
    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    .line 243
    .local v0, ca:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-virtual {v0, v7}, Lcom/itextpdf/text/pdf/PdfArray;->getDirectObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    .line 244
    .local v4, tyca:Lcom/itextpdf/text/pdf/PdfObject;
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->CALGRAY:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v5, v4}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 245
    iget v5, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->width:I

    iget v6, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->bpc:I

    mul-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x7

    div-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->stride:I

    .line 246
    iput v7, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->pngColorType:I

    goto :goto_0

    .line 248
    :cond_5
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->CALRGB:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v5, v4}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 249
    iget v5, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->bpc:I

    if-eq v5, v10, :cond_6

    iget v5, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->bpc:I

    const/16 v6, 0x10

    if-ne v5, v6, :cond_0

    .line 250
    :cond_6
    iget v5, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->width:I

    iget v6, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->bpc:I

    mul-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, 0x7

    div-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->stride:I

    .line 251
    iput v8, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->pngColorType:I

    goto :goto_0

    .line 254
    :cond_7
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->ICCBASED:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v5, v4}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 255
    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/PdfArray;->getDirectObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/PRStream;

    .line 256
    .local v3, pr:Lcom/itextpdf/text/pdf/PRStream;
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->N:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v5}, Lcom/itextpdf/text/pdf/PRStream;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v2

    .line 257
    .local v2, n:I
    if-ne v2, v6, :cond_8

    .line 258
    iget v5, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->width:I

    iget v6, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->bpc:I

    mul-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x7

    div-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->stride:I

    .line 259
    iput v7, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->pngColorType:I

    .line 260
    invoke-static {v3}, Lcom/itextpdf/text/pdf/PdfReader;->getStreamBytes(Lcom/itextpdf/text/pdf/PRStream;)[B

    move-result-object v5

    iput-object v5, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->icc:[B

    goto/16 :goto_0

    .line 262
    :cond_8
    if-ne v2, v9, :cond_0

    .line 263
    iget v5, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->width:I

    iget v6, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->bpc:I

    mul-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, 0x7

    div-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->stride:I

    .line 264
    iput v8, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->pngColorType:I

    .line 265
    invoke-static {v3}, Lcom/itextpdf/text/pdf/PdfReader;->getStreamBytes(Lcom/itextpdf/text/pdf/PRStream;)[B

    move-result-object v5

    iput-object v5, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->icc:[B

    goto/16 :goto_0

    .line 268
    .end local v2           #n:I
    .end local v3           #pr:Lcom/itextpdf/text/pdf/PRStream;
    :cond_9
    if-eqz p2, :cond_0

    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->INDEXED:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v5, v4}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 269
    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/PdfArray;->getDirectObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    invoke-direct {p0, v5, v7}, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->findColorspace(Lcom/itextpdf/text/pdf/PdfObject;Z)V

    .line 270
    iget v5, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->pngColorType:I

    if-ne v5, v8, :cond_0

    .line 271
    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/PdfArray;->getDirectObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    .line 272
    .local v1, id2:Lcom/itextpdf/text/pdf/PdfObject;
    instance-of v5, v1, Lcom/itextpdf/text/pdf/PdfString;

    if-eqz v5, :cond_b

    .line 273
    check-cast v1, Lcom/itextpdf/text/pdf/PdfString;

    .end local v1           #id2:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfString;->getBytes()[B

    move-result-object v5

    iput-object v5, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->palette:[B

    .line 278
    :cond_a
    :goto_1
    iget v5, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->width:I

    iget v6, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->bpc:I

    mul-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x7

    div-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->stride:I

    .line 279
    iput v9, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->pngColorType:I

    goto/16 :goto_0

    .line 275
    .restart local v1       #id2:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_b
    instance-of v5, v1, Lcom/itextpdf/text/pdf/PRStream;

    if-eqz v5, :cond_a

    .line 276
    check-cast v1, Lcom/itextpdf/text/pdf/PRStream;

    .end local v1           #id2:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-static {v1}, Lcom/itextpdf/text/pdf/PdfReader;->getStreamBytes(Lcom/itextpdf/text/pdf/PRStream;)[B

    move-result-object v5

    iput-object v5, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->palette:[B

    goto :goto_1
.end method


# virtual methods
.method public get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;
    .locals 1
    .parameter "key"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->dictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    return-object v0
.end method

.method public getBufferedImage()Ljava/awt/image/BufferedImage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->getImageAsBytes()[B

    move-result-object v0

    .line 402
    .local v0, img:[B
    if-nez v0, :cond_0

    .line 403
    const/4 v1, 0x0

    .line 404
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v1}, Ljavax/imageio/ImageIO;->read(Ljava/io/InputStream;)Ljava/awt/image/BufferedImage;

    move-result-object v1

    goto :goto_0
.end method

.method public getDictionary()Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->dictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    return-object v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->streamContentType:Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;->getFileExtension()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageAsBytes()[B
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->imageBytes:[B

    return-object v0
.end method

.method public getImageBytesType()Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->streamContentType:Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;

    return-object v0
.end method

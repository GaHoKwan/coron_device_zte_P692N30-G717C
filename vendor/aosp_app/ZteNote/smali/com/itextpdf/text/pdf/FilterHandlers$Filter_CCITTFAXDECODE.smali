.class Lcom/itextpdf/text/pdf/FilterHandlers$Filter_CCITTFAXDECODE;
.super Ljava/lang/Object;
.source "FilterHandlers.java"

# interfaces
.implements Lcom/itextpdf/text/pdf/FilterHandlers$FilterHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/FilterHandlers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Filter_CCITTFAXDECODE"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/itextpdf/text/pdf/FilterHandlers$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/FilterHandlers$Filter_CCITTFAXDECODE;-><init>()V

    return-void
.end method


# virtual methods
.method public decode([BLcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfDictionary;)[B
    .locals 25
    .parameter "b"
    .parameter "filterName"
    .parameter "decodeParams"
    .parameter "streamDictionary"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->WIDTH:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    invoke-static {v5}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v24

    check-cast v24, Lcom/itextpdf/text/pdf/PdfNumber;

    .line 151
    .local v24, wn:Lcom/itextpdf/text/pdf/PdfNumber;
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->HEIGHT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    invoke-static {v5}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v14

    check-cast v14, Lcom/itextpdf/text/pdf/PdfNumber;

    .line 152
    .local v14, hn:Lcom/itextpdf/text/pdf/PdfNumber;
    if-eqz v24, :cond_0

    if-nez v14, :cond_1

    .line 153
    :cond_0
    new-instance v5, Lcom/itextpdf/text/exceptions/UnsupportedPdfException;

    const-string v6, "filter.ccittfaxdecode.is.only.supported.for.images"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v8}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/itextpdf/text/exceptions/UnsupportedPdfException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 154
    :cond_1
    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v23

    .line 155
    .local v23, width:I
    invoke-virtual {v14}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v7

    .line 157
    .local v7, height:I
    move-object/from16 v0, p3

    instance-of v5, v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    if-eqz v5, :cond_7

    check-cast p3, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local p3
    move-object/from16 v20, p3

    .line 158
    .local v20, param:Lcom/itextpdf/text/pdf/PdfDictionary;
    :goto_0
    const/4 v15, 0x0

    .line 159
    .local v15, k:I
    const/4 v10, 0x0

    .line 160
    .local v10, blackIs1:Z
    const/4 v12, 0x0

    .line 161
    .local v12, byteAlign:Z
    if-eqz v20, :cond_4

    .line 162
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->K:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v16

    .line 163
    .local v16, kn:Lcom/itextpdf/text/pdf/PdfNumber;
    if-eqz v16, :cond_2

    .line 164
    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v15

    .line 165
    :cond_2
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->BLACKIS1:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsBoolean(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfBoolean;

    move-result-object v11

    .line 166
    .local v11, bo:Lcom/itextpdf/text/pdf/PdfBoolean;
    if-eqz v11, :cond_3

    .line 167
    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/PdfBoolean;->booleanValue()Z

    move-result v10

    .line 168
    :cond_3
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->ENCODEDBYTEALIGN:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsBoolean(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfBoolean;

    move-result-object v11

    .line 169
    if-eqz v11, :cond_4

    .line 170
    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/PdfBoolean;->booleanValue()Z

    move-result v12

    .line 172
    .end local v11           #bo:Lcom/itextpdf/text/pdf/PdfBoolean;
    .end local v16           #kn:Lcom/itextpdf/text/pdf/PdfNumber;
    :cond_4
    add-int/lit8 v5, v23, 0x7

    div-int/lit8 v5, v5, 0x8

    mul-int/2addr v5, v7

    new-array v4, v5, [B

    .line 173
    .local v4, outBuf:[B
    new-instance v13, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;

    invoke-direct {v13}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;-><init>()V

    .line 174
    .local v13, decoder:Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;
    if-eqz v15, :cond_5

    if-lez v15, :cond_a

    .line 175
    :cond_5
    if-lez v15, :cond_8

    const/16 v22, 0x1

    .line 176
    .local v22, tiffT4Options:I
    :goto_1
    if-eqz v12, :cond_9

    const/4 v5, 0x4

    :goto_2
    or-int v22, v22, v5

    .line 177
    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v8, 0x0

    move/from16 v0, v22

    invoke-virtual {v13, v5, v6, v0, v8}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->SetOptions(IIII)V

    .line 178
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v13, v4, v0, v1, v7}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->decodeRaw([B[BII)V

    .line 179
    iget v5, v13, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->fails:I

    if-lez v5, :cond_6

    .line 180
    add-int/lit8 v5, v23, 0x7

    div-int/lit8 v5, v5, 0x8

    mul-int/2addr v5, v7

    new-array v0, v5, [B

    move-object/from16 v19, v0

    .line 181
    .local v19, outBuf2:[B
    iget v0, v13, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->fails:I

    move/from16 v18, v0

    .line 182
    .local v18, oldFails:I
    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v8, 0x0

    move/from16 v0, v22

    invoke-virtual {v13, v5, v6, v0, v8}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->SetOptions(IIII)V

    .line 183
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v13, v0, v1, v2, v7}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->decodeRaw([B[BII)V

    .line 184
    iget v5, v13, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->fails:I

    move/from16 v0, v18

    if-ge v5, v0, :cond_6

    .line 185
    move-object/from16 v4, v19

    .line 193
    .end local v18           #oldFails:I
    .end local v19           #outBuf2:[B
    .end local v22           #tiffT4Options:I
    :cond_6
    :goto_3
    if-nez v10, :cond_b

    .line 194
    array-length v0, v4

    move/from16 v17, v0

    .line 195
    .local v17, len:I
    const/16 v21, 0x0

    .local v21, t:I
    :goto_4
    move/from16 v0, v21

    move/from16 v1, v17

    if-ge v0, v1, :cond_b

    .line 196
    aget-byte v5, v4, v21

    xor-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v21

    .line 195
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 157
    .end local v4           #outBuf:[B
    .end local v10           #blackIs1:Z
    .end local v12           #byteAlign:Z
    .end local v13           #decoder:Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;
    .end local v15           #k:I
    .end local v17           #len:I
    .end local v20           #param:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v21           #t:I
    .restart local p3
    :cond_7
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 175
    .end local p3
    .restart local v4       #outBuf:[B
    .restart local v10       #blackIs1:Z
    .restart local v12       #byteAlign:Z
    .restart local v13       #decoder:Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;
    .restart local v15       #k:I
    .restart local v20       #param:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_8
    const/16 v22, 0x0

    goto :goto_1

    .line 176
    .restart local v22       #tiffT4Options:I
    :cond_9
    const/4 v5, 0x0

    goto :goto_2

    .line 190
    .end local v22           #tiffT4Options:I
    :cond_a
    new-instance v3, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;

    const/4 v5, 0x1

    move/from16 v0, v23

    invoke-direct {v3, v5, v0, v7}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;-><init>(III)V

    .line 191
    .local v3, deca:Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;
    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v3 .. v9}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->decodeT6([B[BIIJ)V

    goto :goto_3

    .line 199
    .end local v3           #deca:Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;
    :cond_b
    move-object/from16 p1, v4

    .line 200
    return-object p1
.end method

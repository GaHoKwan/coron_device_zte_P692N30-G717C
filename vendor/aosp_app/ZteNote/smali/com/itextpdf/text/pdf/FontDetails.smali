.class Lcom/itextpdf/text/pdf/FontDetails;
.super Ljava/lang/Object;
.source "FontDetails.java"


# instance fields
.field baseFont:Lcom/itextpdf/text/pdf/BaseFont;

.field cjkFont:Lcom/itextpdf/text/pdf/CJKFont;

.field cjkTag:Lcom/itextpdf/text/pdf/IntHashtable;

.field fontName:Lcom/itextpdf/text/pdf/PdfName;

.field fontType:I

.field indirectReference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

.field longTag:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field shortTag:[B

.field protected subset:Z

.field symbolic:Z

.field ttu:Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;


# direct methods
.method constructor <init>(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;Lcom/itextpdf/text/pdf/BaseFont;)V
    .locals 1
    .parameter "fontName"
    .parameter "indirectReference"
    .parameter "baseFont"

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/FontDetails;->subset:Z

    .line 116
    iput-object p1, p0, Lcom/itextpdf/text/pdf/FontDetails;->fontName:Lcom/itextpdf/text/pdf/PdfName;

    .line 117
    iput-object p2, p0, Lcom/itextpdf/text/pdf/FontDetails;->indirectReference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 118
    iput-object p3, p0, Lcom/itextpdf/text/pdf/FontDetails;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    .line 119
    invoke-virtual {p3}, Lcom/itextpdf/text/pdf/BaseFont;->getFontType()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/pdf/FontDetails;->fontType:I

    .line 120
    iget v0, p0, Lcom/itextpdf/text/pdf/FontDetails;->fontType:I

    packed-switch v0, :pswitch_data_0

    .line 135
    .end local p3
    :goto_0
    return-void

    .line 123
    .restart local p3
    :pswitch_0
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/text/pdf/FontDetails;->shortTag:[B

    goto :goto_0

    .line 126
    :pswitch_1
    new-instance v0, Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/IntHashtable;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/FontDetails;->cjkTag:Lcom/itextpdf/text/pdf/IntHashtable;

    .line 127
    check-cast p3, Lcom/itextpdf/text/pdf/CJKFont;

    .end local p3
    iput-object p3, p0, Lcom/itextpdf/text/pdf/FontDetails;->cjkFont:Lcom/itextpdf/text/pdf/CJKFont;

    goto :goto_0

    .line 130
    .restart local p3
    :pswitch_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/FontDetails;->longTag:Ljava/util/HashMap;

    move-object v0, p3

    .line 131
    check-cast v0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/FontDetails;->ttu:Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;

    .line 132
    invoke-virtual {p3}, Lcom/itextpdf/text/pdf/BaseFont;->isFontSpecific()Z

    move-result v0

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/FontDetails;->symbolic:Z

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method convertToBytes(Ljava/lang/String;)[B
    .locals 19
    .parameter "text"

    .prologue
    .line 169
    const/4 v1, 0x0

    .line 170
    .local v1, b:[B
    move-object/from16 v0, p0

    iget v13, v0, Lcom/itextpdf/text/pdf/FontDetails;->fontType:I

    packed-switch v13, :pswitch_data_0

    :cond_0
    :goto_0
    move-object v13, v1

    .line 254
    :goto_1
    return-object v13

    .line 172
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/itextpdf/text/pdf/FontDetails;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/itextpdf/text/pdf/BaseFont;->convertToBytes(Ljava/lang/String;)[B

    move-result-object v13

    goto :goto_1

    .line 175
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/itextpdf/text/pdf/FontDetails;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/itextpdf/text/pdf/BaseFont;->convertToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 176
    array-length v8, v1

    .line 177
    .local v8, len:I
    const/4 v7, 0x0

    .local v7, k:I
    :goto_2
    if-ge v7, v8, :cond_0

    .line 178
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/itextpdf/text/pdf/FontDetails;->shortTag:[B

    aget-byte v14, v1, v7

    and-int/lit16 v14, v14, 0xff

    const/4 v15, 0x1

    aput-byte v15, v13, v14

    .line 177
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 182
    .end local v7           #k:I
    .end local v8           #len:I
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 183
    .restart local v8       #len:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/itextpdf/text/pdf/FontDetails;->cjkFont:Lcom/itextpdf/text/pdf/CJKFont;

    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/CJKFont;->isIdentity()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 184
    const/4 v7, 0x0

    .restart local v7       #k:I
    :goto_3
    if-ge v7, v8, :cond_3

    .line 185
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/itextpdf/text/pdf/FontDetails;->cjkTag:Lcom/itextpdf/text/pdf/IntHashtable;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 184
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 189
    .end local v7           #k:I
    :cond_1
    const/4 v7, 0x0

    .restart local v7       #k:I
    :goto_4
    if-ge v7, v8, :cond_3

    .line 191
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/itextpdf/text/Utilities;->isSurrogatePair(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 192
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/itextpdf/text/Utilities;->convertToUtf32(Ljava/lang/String;I)I

    move-result v12

    .line 193
    .local v12, val:I
    add-int/lit8 v7, v7, 0x1

    .line 198
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/itextpdf/text/pdf/FontDetails;->cjkTag:Lcom/itextpdf/text/pdf/IntHashtable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/FontDetails;->cjkFont:Lcom/itextpdf/text/pdf/CJKFont;

    invoke-virtual {v14, v12}, Lcom/itextpdf/text/pdf/CJKFont;->getCidCode(I)I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 189
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 196
    .end local v12           #val:I
    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .restart local v12       #val:I
    goto :goto_5

    .line 201
    .end local v12           #val:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/itextpdf/text/pdf/FontDetails;->cjkFont:Lcom/itextpdf/text/pdf/CJKFont;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/itextpdf/text/pdf/CJKFont;->convertToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 202
    goto/16 :goto_0

    .line 205
    .end local v7           #k:I
    .end local v8           #len:I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/itextpdf/text/pdf/FontDetails;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/itextpdf/text/pdf/BaseFont;->convertToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 206
    goto/16 :goto_0

    .line 210
    :pswitch_4
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 211
    .restart local v8       #len:I
    const/4 v10, 0x0

    .line 212
    .local v10, metrics:[I
    new-array v4, v8, [C

    .line 213
    .local v4, glyph:[C
    const/4 v5, 0x0

    .line 214
    .local v5, i:I
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/itextpdf/text/pdf/FontDetails;->symbolic:Z

    if-eqz v13, :cond_6

    .line 215
    const-string v13, "symboltt"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/itextpdf/text/pdf/PdfEncodings;->convertToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 216
    array-length v8, v1

    .line 217
    const/4 v7, 0x0

    .restart local v7       #k:I
    move v6, v5

    .end local v5           #i:I
    .local v6, i:I
    :goto_6
    if-ge v7, v8, :cond_5

    .line 218
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/itextpdf/text/pdf/FontDetails;->ttu:Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;

    aget-byte v14, v1, v7

    and-int/lit16 v14, v14, 0xff

    invoke-virtual {v13, v14}, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->getMetricsTT(I)[I

    move-result-object v10

    .line 219
    if-nez v10, :cond_4

    move v5, v6

    .line 217
    .end local v6           #i:I
    .restart local v5       #i:I
    :goto_7
    add-int/lit8 v7, v7, 0x1

    move v6, v5

    .end local v5           #i:I
    .restart local v6       #i:I
    goto :goto_6

    .line 221
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/itextpdf/text/pdf/FontDetails;->longTag:Ljava/util/HashMap;

    const/4 v14, 0x0

    aget v14, v10, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x3

    new-array v15, v15, [I

    const/16 v16, 0x0

    const/16 v17, 0x0

    aget v17, v10, v17

    aput v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x1

    aget v17, v10, v17

    aput v17, v15, v16

    const/16 v16, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/FontDetails;->ttu:Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;

    move-object/from16 v17, v0

    aget-byte v18, v1, v7

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->getUnicodeDifferences(I)C

    move-result v17

    aput v17, v15, v16

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    add-int/lit8 v5, v6, 0x1

    .end local v6           #i:I
    .restart local v5       #i:I
    const/4 v13, 0x0

    aget v13, v10, v13

    int-to-char v13, v13

    aput-char v13, v4, v6
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    .line 248
    .end local v4           #glyph:[C
    .end local v5           #i:I
    .end local v7           #k:I
    .end local v8           #len:I
    .end local v10           #metrics:[I
    :catch_0
    move-exception v2

    .line 249
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    new-instance v13, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v13, v2}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v13

    .end local v2           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v4       #glyph:[C
    .restart local v6       #i:I
    .restart local v7       #k:I
    .restart local v8       #len:I
    .restart local v10       #metrics:[I
    :cond_5
    move v5, v6

    .line 245
    .end local v6           #i:I
    .restart local v5       #i:I
    :goto_8
    :try_start_1
    new-instance v11, Ljava/lang/String;

    const/4 v13, 0x0

    invoke-direct {v11, v4, v13, v5}, Ljava/lang/String;-><init>([CII)V

    .line 246
    .local v11, s:Ljava/lang/String;
    const-string v13, "UnicodeBigUnmarked"

    invoke-virtual {v11, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    goto/16 :goto_0

    .line 226
    .end local v7           #k:I
    .end local v11           #s:Ljava/lang/String;
    :cond_6
    const/4 v7, 0x0

    .restart local v7       #k:I
    move v6, v5

    .end local v5           #i:I
    .restart local v6       #i:I
    :goto_9
    if-ge v7, v8, :cond_a

    .line 228
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/itextpdf/text/Utilities;->isSurrogatePair(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 229
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/itextpdf/text/Utilities;->convertToUtf32(Ljava/lang/String;I)I

    move-result v12

    .line 230
    .restart local v12       #val:I
    add-int/lit8 v7, v7, 0x1

    .line 235
    :goto_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/itextpdf/text/pdf/FontDetails;->ttu:Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;

    invoke-virtual {v13, v12}, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->getMetricsTT(I)[I

    move-result-object v10

    .line 236
    if-nez v10, :cond_8

    move v5, v6

    .line 226
    .end local v6           #i:I
    .restart local v5       #i:I
    :goto_b
    add-int/lit8 v7, v7, 0x1

    move v6, v5

    .end local v5           #i:I
    .restart local v6       #i:I
    goto :goto_9

    .line 233
    .end local v12           #val:I
    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .restart local v12       #val:I
    goto :goto_a

    .line 238
    :cond_8
    const/4 v13, 0x0

    aget v9, v10, v13

    .line 239
    .local v9, m0:I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 240
    .local v3, gl:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/itextpdf/text/pdf/FontDetails;->longTag:Ljava/util/HashMap;

    invoke-virtual {v13, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 241
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/itextpdf/text/pdf/FontDetails;->longTag:Ljava/util/HashMap;

    const/4 v14, 0x3

    new-array v14, v14, [I

    const/4 v15, 0x0

    aput v9, v14, v15

    const/4 v15, 0x1

    const/16 v16, 0x1

    aget v16, v10, v16

    aput v16, v14, v15

    const/4 v15, 0x2

    aput v12, v14, v15

    invoke-virtual {v13, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    :cond_9
    add-int/lit8 v5, v6, 0x1

    .end local v6           #i:I
    .restart local v5       #i:I
    int-to-char v13, v9

    aput-char v13, v4, v6
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_b

    .end local v3           #gl:Ljava/lang/Integer;
    .end local v5           #i:I
    .end local v9           #m0:I
    .end local v12           #val:I
    .restart local v6       #i:I
    :cond_a
    move v5, v6

    .end local v6           #i:I
    .restart local v5       #i:I
    goto :goto_8

    .line 170
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method getBaseFont()Lcom/itextpdf/text/pdf/BaseFont;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/itextpdf/text/pdf/FontDetails;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    return-object v0
.end method

.method getFontName()Lcom/itextpdf/text/pdf/PdfName;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/itextpdf/text/pdf/FontDetails;->fontName:Lcom/itextpdf/text/pdf/PdfName;

    return-object v0
.end method

.method getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/itextpdf/text/pdf/FontDetails;->indirectReference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    return-object v0
.end method

.method public isSubset()Z
    .locals 1

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/FontDetails;->subset:Z

    return v0
.end method

.method public setSubset(Z)V
    .locals 0
    .parameter "subset"

    .prologue
    .line 315
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/FontDetails;->subset:Z

    .line 316
    return-void
.end method

.method writeFont(Lcom/itextpdf/text/pdf/PdfWriter;)V
    .locals 8
    .parameter "writer"

    .prologue
    .line 263
    :try_start_0
    iget v3, p0, Lcom/itextpdf/text/pdf/FontDetails;->fontType:I

    packed-switch v3, :pswitch_data_0

    .line 297
    :goto_0
    :pswitch_0
    return-void

    .line 265
    :pswitch_1
    iget-object v3, p0, Lcom/itextpdf/text/pdf/FontDetails;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/FontDetails;->indirectReference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v4, v5}, Lcom/itextpdf/text/pdf/BaseFont;->writeFont(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/pdf/PdfIndirectReference;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v3, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 271
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_2
    const/4 v1, 0x0

    .local v1, firstChar:I
    :goto_1
    const/16 v3, 0x100

    if-ge v1, v3, :cond_0

    .line 272
    :try_start_1
    iget-object v3, p0, Lcom/itextpdf/text/pdf/FontDetails;->shortTag:[B

    aget-byte v3, v3, v1

    if-eqz v3, :cond_3

    .line 275
    :cond_0
    const/16 v2, 0xff

    .local v2, lastChar:I
    :goto_2
    if-lt v2, v1, :cond_1

    .line 276
    iget-object v3, p0, Lcom/itextpdf/text/pdf/FontDetails;->shortTag:[B

    aget-byte v3, v3, v2

    if-eqz v3, :cond_4

    .line 279
    :cond_1
    const/16 v3, 0xff

    if-le v1, v3, :cond_2

    .line 280
    const/16 v1, 0xff

    .line 281
    const/16 v2, 0xff

    .line 283
    :cond_2
    iget-object v3, p0, Lcom/itextpdf/text/pdf/FontDetails;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/FontDetails;->indirectReference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/itextpdf/text/pdf/FontDetails;->shortTag:[B

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-boolean v7, p0, Lcom/itextpdf/text/pdf/FontDetails;->subset:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, p1, v4, v5}, Lcom/itextpdf/text/pdf/BaseFont;->writeFont(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/pdf/PdfIndirectReference;[Ljava/lang/Object;)V

    goto :goto_0

    .line 271
    .end local v2           #lastChar:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 275
    .restart local v2       #lastChar:I
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 287
    .end local v1           #firstChar:I
    .end local v2           #lastChar:I
    :pswitch_3
    iget-object v3, p0, Lcom/itextpdf/text/pdf/FontDetails;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/FontDetails;->indirectReference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/itextpdf/text/pdf/FontDetails;->cjkTag:Lcom/itextpdf/text/pdf/IntHashtable;

    aput-object v7, v5, v6

    invoke-virtual {v3, p1, v4, v5}, Lcom/itextpdf/text/pdf/BaseFont;->writeFont(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/pdf/PdfIndirectReference;[Ljava/lang/Object;)V

    goto :goto_0

    .line 290
    :pswitch_4
    iget-object v3, p0, Lcom/itextpdf/text/pdf/FontDetails;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/FontDetails;->indirectReference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/itextpdf/text/pdf/FontDetails;->longTag:Ljava/util/HashMap;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-boolean v7, p0, Lcom/itextpdf/text/pdf/FontDetails;->subset:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, p1, v4, v5}, Lcom/itextpdf/text/pdf/BaseFont;->writeFont(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/pdf/PdfIndirectReference;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 263
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

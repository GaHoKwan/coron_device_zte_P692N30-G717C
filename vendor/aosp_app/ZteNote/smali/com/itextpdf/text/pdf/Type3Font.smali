.class public Lcom/itextpdf/text/pdf/Type3Font;
.super Lcom/itextpdf/text/pdf/BaseFont;
.source "Type3Font.java"


# instance fields
.field private char2glyph:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/itextpdf/text/pdf/Type3Glyph;",
            ">;"
        }
    .end annotation
.end field

.field private colorized:Z

.field private llx:F

.field private lly:F

.field private pageResources:Lcom/itextpdf/text/pdf/PageResources;

.field private urx:F

.field private ury:F

.field private usedSlot:[Z

.field private widths3:Lcom/itextpdf/text/pdf/IntHashtable;

.field private writer:Lcom/itextpdf/text/pdf/PdfWriter;


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfWriter;Z)V
    .locals 1
    .parameter "writer"
    .parameter "colorized"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/BaseFont;-><init>()V

    .line 57
    new-instance v0, Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/IntHashtable;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/Type3Font;->widths3:Lcom/itextpdf/text/pdf/IntHashtable;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/Type3Font;->char2glyph:Ljava/util/HashMap;

    .line 60
    const/high16 v0, 0x7fc0

    iput v0, p0, Lcom/itextpdf/text/pdf/Type3Font;->llx:F

    .line 61
    new-instance v0, Lcom/itextpdf/text/pdf/PageResources;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PageResources;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/Type3Font;->pageResources:Lcom/itextpdf/text/pdf/PageResources;

    .line 103
    iput-object p1, p0, Lcom/itextpdf/text/pdf/Type3Font;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    .line 104
    iput-boolean p2, p0, Lcom/itextpdf/text/pdf/Type3Font;->colorized:Z

    .line 105
    const/4 v0, 0x5

    iput v0, p0, Lcom/itextpdf/text/pdf/Type3Font;->fontType:I

    .line 106
    const/16 v0, 0x100

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/itextpdf/text/pdf/Type3Font;->usedSlot:[Z

    .line 107
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfWriter;[CZ)V
    .locals 0
    .parameter "writer"
    .parameter "chars"
    .parameter "colorized"

    .prologue
    .line 72
    invoke-direct {p0, p1, p3}, Lcom/itextpdf/text/pdf/Type3Font;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;Z)V

    .line 73
    return-void
.end method


# virtual methods
.method public charExists(I)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 332
    if-lez p1, :cond_0

    const/16 v0, 0x100

    if-ge p1, v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Type3Font;->usedSlot:[Z

    aget-boolean v0, v0, p1

    .line 335
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method convertToBytes(I)[B
    .locals 3
    .parameter "char1"

    .prologue
    const/4 v2, 0x0

    .line 304
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/Type3Font;->charExists(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    const/4 v0, 0x1

    new-array v0, v0, [B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 306
    :goto_0
    return-object v0

    :cond_0
    new-array v0, v2, [B

    goto :goto_0
.end method

.method convertToBytes(Ljava/lang/String;)[B
    .locals 9
    .parameter "text"

    .prologue
    const/4 v8, 0x0

    .line 287
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 288
    .local v3, cc:[C
    array-length v7, v3

    new-array v0, v7, [B

    .line 289
    .local v0, b:[B
    const/4 v5, 0x0

    .line 290
    .local v5, p:I
    const/4 v4, 0x0

    .local v4, k:I
    :goto_0
    array-length v7, v3

    if-ge v4, v7, :cond_1

    .line 291
    aget-char v2, v3, v4

    .line 292
    .local v2, c:C
    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/Type3Font;->charExists(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 293
    add-int/lit8 v6, v5, 0x1

    .end local v5           #p:I
    .local v6, p:I
    int-to-byte v7, v2

    aput-byte v7, v0, v5

    move v5, v6

    .line 290
    .end local v6           #p:I
    .restart local v5       #p:I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 295
    .end local v2           #c:C
    :cond_1
    array-length v7, v0

    if-ne v7, v5, :cond_2

    .line 299
    .end local v0           #b:[B
    :goto_1
    return-object v0

    .line 297
    .restart local v0       #b:[B
    :cond_2
    new-array v1, v5, [B

    .line 298
    .local v1, b2:[B
    invoke-static {v0, v8, v1, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 299
    goto :goto_1
.end method

.method public defineGlyph(CFFFFF)Lcom/itextpdf/text/pdf/PdfContentByte;
    .locals 12
    .parameter "c"
    .parameter "wx"
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    .line 124
    if-eqz p1, :cond_0

    const/16 v2, 0xff

    if-le p1, v2, :cond_1

    .line 125
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "the.char.1.doesn.t.belong.in.this.type3.font"

    invoke-static {v3, p1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 126
    :cond_1
    iget-object v2, p0, Lcom/itextpdf/text/pdf/Type3Font;->usedSlot:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, p1

    .line 127
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 128
    .local v10, ck:Ljava/lang/Integer;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/Type3Font;->char2glyph:Ljava/util/HashMap;

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/Type3Glyph;

    .line 129
    .local v1, glyph:Lcom/itextpdf/text/pdf/Type3Glyph;
    if-eqz v1, :cond_2

    move-object v11, v1

    .line 148
    .end local v1           #glyph:Lcom/itextpdf/text/pdf/Type3Glyph;
    .local v11, glyph:Ljava/lang/Object;
    :goto_0
    return-object v11

    .line 131
    .end local v11           #glyph:Ljava/lang/Object;
    .restart local v1       #glyph:Lcom/itextpdf/text/pdf/Type3Glyph;
    :cond_2
    iget-object v2, p0, Lcom/itextpdf/text/pdf/Type3Font;->widths3:Lcom/itextpdf/text/pdf/IntHashtable;

    float-to-int v3, p2

    invoke-virtual {v2, p1, v3}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 132
    iget-boolean v2, p0, Lcom/itextpdf/text/pdf/Type3Font;->colorized:Z

    if-nez v2, :cond_3

    .line 133
    iget v2, p0, Lcom/itextpdf/text/pdf/Type3Font;->llx:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 134
    iput p3, p0, Lcom/itextpdf/text/pdf/Type3Font;->llx:F

    .line 135
    move/from16 v0, p4

    iput v0, p0, Lcom/itextpdf/text/pdf/Type3Font;->lly:F

    .line 136
    move/from16 v0, p5

    iput v0, p0, Lcom/itextpdf/text/pdf/Type3Font;->urx:F

    .line 137
    move/from16 v0, p6

    iput v0, p0, Lcom/itextpdf/text/pdf/Type3Font;->ury:F

    .line 146
    :cond_3
    :goto_1
    new-instance v1, Lcom/itextpdf/text/pdf/Type3Glyph;

    .end local v1           #glyph:Lcom/itextpdf/text/pdf/Type3Glyph;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/Type3Font;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/Type3Font;->pageResources:Lcom/itextpdf/text/pdf/PageResources;

    iget-boolean v9, p0, Lcom/itextpdf/text/pdf/Type3Font;->colorized:Z

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lcom/itextpdf/text/pdf/Type3Glyph;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/pdf/PageResources;FFFFFZ)V

    .line 147
    .restart local v1       #glyph:Lcom/itextpdf/text/pdf/Type3Glyph;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/Type3Font;->char2glyph:Ljava/util/HashMap;

    invoke-virtual {v2, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v11, v1

    .line 148
    .restart local v11       #glyph:Ljava/lang/Object;
    goto :goto_0

    .line 140
    .end local v11           #glyph:Ljava/lang/Object;
    :cond_4
    iget v2, p0, Lcom/itextpdf/text/pdf/Type3Font;->llx:F

    invoke-static {v2, p3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/itextpdf/text/pdf/Type3Font;->llx:F

    .line 141
    iget v2, p0, Lcom/itextpdf/text/pdf/Type3Font;->lly:F

    move/from16 v0, p4

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/itextpdf/text/pdf/Type3Font;->lly:F

    .line 142
    iget v2, p0, Lcom/itextpdf/text/pdf/Type3Font;->urx:F

    move/from16 v0, p5

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/itextpdf/text/pdf/Type3Font;->urx:F

    .line 143
    iget v2, p0, Lcom/itextpdf/text/pdf/Type3Font;->ury:F

    move/from16 v0, p6

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/itextpdf/text/pdf/Type3Font;->ury:F

    goto :goto_1
.end method

.method public getAllNameEntries()[[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 171
    new-array v0, v3, [[Ljava/lang/String;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "4"

    aput-object v2, v1, v4

    const-string v2, ""

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, ""

    aput-object v3, v1, v2

    aput-object v1, v0, v4

    return-object v0
.end method

.method public getCharBBox(I)[I
    .locals 1
    .parameter "c"

    .prologue
    .line 327
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFamilyFontName()[[Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/Type3Font;->getFullFontName()[[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFontDescriptor(IF)F
    .locals 1
    .parameter "key"
    .parameter "fontSize"

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public getFullFontName()[[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 163
    new-array v0, v3, [[Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v4

    const-string v2, ""

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, ""

    aput-object v3, v1, v2

    aput-object v1, v0, v4

    return-object v0
.end method

.method public getFullFontStream()Lcom/itextpdf/text/pdf/PdfStream;
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKerning(II)I
    .locals 1
    .parameter "char1"
    .parameter "char2"

    .prologue
    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public getPostscriptFontName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    const-string v0, ""

    return-object v0
.end method

.method protected getRawCharBBox(ILjava/lang/String;)[I
    .locals 1
    .parameter "c"
    .parameter "name"

    .prologue
    .line 186
    const/4 v0, 0x0

    return-object v0
.end method

.method getRawWidth(ILjava/lang/String;)I
    .locals 1
    .parameter "c"
    .parameter "name"

    .prologue
    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public getWidth(I)I
    .locals 2
    .parameter "char1"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Type3Font;->widths3:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/IntHashtable;->containsKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the.char.1.is.not.defined.in.a.type3.font"

    invoke-static {v1, p1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Type3Font;->widths3:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v0

    return v0
.end method

.method public getWidth(Ljava/lang/String;)I
    .locals 4
    .parameter "text"

    .prologue
    .line 318
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 319
    .local v0, c:[C
    const/4 v2, 0x0

    .line 320
    .local v2, total:I
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 321
    aget-char v3, v0, v1

    invoke-virtual {p0, v3}, Lcom/itextpdf/text/pdf/Type3Font;->getWidth(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 320
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 322
    :cond_0
    return v2
.end method

.method public hasKernPairs()Z
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public setCharAdvance(II)Z
    .locals 1
    .parameter "c"
    .parameter "advance"

    .prologue
    .line 341
    const/4 v0, 0x0

    return v0
.end method

.method public setKerning(III)Z
    .locals 1
    .parameter "char1"
    .parameter "char2"
    .parameter "kern"

    .prologue
    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public setPostscriptFontName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 206
    return-void
.end method

.method writeFont(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/pdf/PdfIndirectReference;[Ljava/lang/Object;)V
    .locals 29
    .parameter "writer"
    .parameter "ref"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/Type3Font;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_0

    .line 211
    new-instance v23, Ljava/lang/IllegalArgumentException;

    const-string v24, "type3.font.used.with.the.wrong.pdfwriter"

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    invoke-static/range {v24 .. v25}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 214
    :cond_0
    const/4 v7, 0x0

    .line 215
    .local v7, firstChar:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/Type3Font;->usedSlot:[Z

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v7, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/Type3Font;->usedSlot:[Z

    move-object/from16 v23, v0

    aget-boolean v23, v23, v7

    if-nez v23, :cond_1

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 217
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/Type3Font;->usedSlot:[Z

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ne v7, v0, :cond_2

    .line 218
    new-instance v23, Lcom/itextpdf/text/DocumentException;

    const-string v24, "no.glyphs.defined.for.type3.font"

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    invoke-static/range {v24 .. v25}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 220
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/Type3Font;->usedSlot:[Z

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v15, v23, -0x1

    .line 221
    .local v15, lastChar:I
    :goto_1
    if-lt v15, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/Type3Font;->usedSlot:[Z

    move-object/from16 v23, v0

    aget-boolean v23, v23, v15

    if-nez v23, :cond_3

    add-int/lit8 v15, v15, -0x1

    goto :goto_1

    .line 223
    :cond_3
    sub-int v23, v15, v7

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v22, v0

    .line 224
    .local v22, widths:[I
    sub-int v23, v15, v7

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    new-array v10, v0, [I

    .line 226
    .local v10, invOrd:[I
    const/4 v11, 0x0

    .local v11, invOrdIndx:I
    const/16 v21, 0x0

    .line 227
    .local v21, w:I
    move/from16 v20, v7

    .local v20, u:I
    move v12, v11

    .end local v11           #invOrdIndx:I
    .local v12, invOrdIndx:I
    :goto_2
    move/from16 v0, v20

    if-gt v0, v15, :cond_4

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/Type3Font;->usedSlot:[Z

    move-object/from16 v23, v0

    aget-boolean v23, v23, v20

    if-eqz v23, :cond_a

    .line 229
    add-int/lit8 v11, v12, 0x1

    .end local v12           #invOrdIndx:I
    .restart local v11       #invOrdIndx:I
    aput v20, v10, v12

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/Type3Font;->widths3:Lcom/itextpdf/text/pdf/IntHashtable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v23

    aput v23, v22, v21

    .line 227
    :goto_3
    add-int/lit8 v20, v20, 0x1

    add-int/lit8 v21, v21, 0x1

    move v12, v11

    .end local v11           #invOrdIndx:I
    .restart local v12       #invOrdIndx:I
    goto :goto_2

    .line 233
    :cond_4
    new-instance v5, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v5}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 234
    .local v5, diffs:Lcom/itextpdf/text/pdf/PdfArray;
    new-instance v4, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v4}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 235
    .local v4, charprocs:Lcom/itextpdf/text/pdf/PdfDictionary;
    const/4 v14, -0x1

    .line 236
    .local v14, last:I
    const/4 v13, 0x0

    .local v13, k:I
    :goto_4
    if-ge v13, v12, :cond_7

    .line 237
    aget v2, v10, v13

    .line 238
    .local v2, c:I
    if-le v2, v14, :cond_5

    .line 239
    move v14, v2

    .line 240
    new-instance v23, Lcom/itextpdf/text/pdf/PdfNumber;

    move-object/from16 v0, v23

    invoke-direct {v0, v14}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 242
    :cond_5
    add-int/lit8 v14, v14, 0x1

    .line 243
    aget v3, v10, v13

    .line 244
    .local v3, c2:I
    invoke-static {v3}, Lcom/itextpdf/text/pdf/GlyphList;->unicodeToName(I)Ljava/lang/String;

    move-result-object v18

    .line 245
    .local v18, s:Ljava/lang/String;
    if-nez v18, :cond_6

    .line 246
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "a"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 247
    :cond_6
    new-instance v16, Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    .line 248
    .local v16, n:Lcom/itextpdf/text/pdf/PdfName;
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/Type3Font;->char2glyph:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/text/pdf/Type3Glyph;

    .line 250
    .local v9, glyph:Lcom/itextpdf/text/pdf/Type3Glyph;
    new-instance v19, Lcom/itextpdf/text/pdf/PdfStream;

    const/16 v23, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Lcom/itextpdf/text/pdf/Type3Glyph;->toPdf(Lcom/itextpdf/text/pdf/PdfWriter;)[B

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfStream;-><init>([B)V

    .line 251
    .local v19, stream:Lcom/itextpdf/text/pdf/PdfStream;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/Type3Font;->compressionLevel:I

    move/from16 v23, v0

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfStream;->flateCompress(I)V

    .line 252
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v17

    .line 253
    .local v17, refp:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 236
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 255
    .end local v2           #c:I
    .end local v3           #c2:I
    .end local v9           #glyph:Lcom/itextpdf/text/pdf/Type3Glyph;
    .end local v16           #n:Lcom/itextpdf/text/pdf/PdfName;
    .end local v17           #refp:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .end local v18           #s:Ljava/lang/String;
    .end local v19           #stream:Lcom/itextpdf/text/pdf/PdfStream;
    :cond_7
    new-instance v8, Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v23, Lcom/itextpdf/text/pdf/PdfName;->FONT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v23

    invoke-direct {v8, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 256
    .local v8, font:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v23, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v24, Lcom/itextpdf/text/pdf/PdfName;->TYPE3:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 257
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/itextpdf/text/pdf/Type3Font;->colorized:Z

    move/from16 v23, v0

    if-eqz v23, :cond_9

    .line 258
    sget-object v23, Lcom/itextpdf/text/pdf/PdfName;->FONTBBOX:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v24, Lcom/itextpdf/text/pdf/PdfRectangle;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-direct/range {v24 .. v28}, Lcom/itextpdf/text/pdf/PdfRectangle;-><init>(FFFF)V

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 261
    :goto_5
    sget-object v23, Lcom/itextpdf/text/pdf/PdfName;->FONTMATRIX:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v24, Lcom/itextpdf/text/pdf/PdfArray;

    const/16 v25, 0x6

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    fill-array-data v25, :array_0

    invoke-direct/range {v24 .. v25}, Lcom/itextpdf/text/pdf/PdfArray;-><init>([F)V

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 262
    sget-object v23, Lcom/itextpdf/text/pdf/PdfName;->CHARPROCS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 263
    new-instance v6, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v6}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 264
    .local v6, encoding:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v23, Lcom/itextpdf/text/pdf/PdfName;->DIFFERENCES:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v23

    invoke-virtual {v6, v0, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 265
    sget-object v23, Lcom/itextpdf/text/pdf/PdfName;->ENCODING:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 266
    sget-object v23, Lcom/itextpdf/text/pdf/PdfName;->FIRSTCHAR:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v24, Lcom/itextpdf/text/pdf/PdfNumber;

    move-object/from16 v0, v24

    invoke-direct {v0, v7}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 267
    sget-object v23, Lcom/itextpdf/text/pdf/PdfName;->LASTCHAR:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v24, Lcom/itextpdf/text/pdf/PdfNumber;

    move-object/from16 v0, v24

    invoke-direct {v0, v15}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 268
    sget-object v23, Lcom/itextpdf/text/pdf/PdfName;->WIDTHS:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v24, Lcom/itextpdf/text/pdf/PdfArray;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfArray;-><init>([I)V

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/Type3Font;->pageResources:Lcom/itextpdf/text/pdf/PageResources;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/itextpdf/text/pdf/PageResources;->hasResources()Z

    move-result v23

    if-eqz v23, :cond_8

    .line 270
    sget-object v23, Lcom/itextpdf/text/pdf/PdfName;->RESOURCES:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/Type3Font;->pageResources:Lcom/itextpdf/text/pdf/PageResources;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/pdf/PageResources;->getResources()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 271
    :cond_8
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v8, v1}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    .line 272
    return-void

    .line 260
    .end local v6           #encoding:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_9
    sget-object v23, Lcom/itextpdf/text/pdf/PdfName;->FONTBBOX:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v24, Lcom/itextpdf/text/pdf/PdfRectangle;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/Type3Font;->llx:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/Type3Font;->lly:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/Type3Font;->urx:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/Type3Font;->ury:F

    move/from16 v28, v0

    invoke-direct/range {v24 .. v28}, Lcom/itextpdf/text/pdf/PdfRectangle;-><init>(FFFF)V

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_5

    .end local v4           #charprocs:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v5           #diffs:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v8           #font:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v13           #k:I
    .end local v14           #last:I
    :cond_a
    move v11, v12

    .end local v12           #invOrdIndx:I
    .restart local v11       #invOrdIndx:I
    goto/16 :goto_3

    .line 261
    :array_0
    .array-data 0x4
        0x6ft 0x12t 0x83t 0x3at
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x6ft 0x12t 0x83t 0x3at
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

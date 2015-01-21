.class public Lcom/itextpdf/text/pdf/RadioCheckField;
.super Lcom/itextpdf/text/pdf/BaseField;
.source "RadioCheckField.java"


# static fields
.field public static final TYPE_CHECK:I = 0x1

.field public static final TYPE_CIRCLE:I = 0x2

.field public static final TYPE_CROSS:I = 0x3

.field public static final TYPE_DIAMOND:I = 0x4

.field public static final TYPE_SQUARE:I = 0x5

.field public static final TYPE_STAR:I = 0x6

.field private static typeChars:[Ljava/lang/String;


# instance fields
.field private checkType:I

.field private checked:Z

.field private onValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 110
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "l"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "8"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "u"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "n"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "H"

    aput-object v2, v0, v1

    sput-object v0, Lcom/itextpdf/text/pdf/RadioCheckField;->typeChars:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "writer"
    .parameter "box"
    .parameter "fieldName"
    .parameter "onValue"

    .prologue
    .line 135
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/text/pdf/BaseField;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0, p4}, Lcom/itextpdf/text/pdf/RadioCheckField;->setOnValue(Ljava/lang/String;)V

    .line 137
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/RadioCheckField;->setCheckType(I)V

    .line 138
    return-void
.end method


# virtual methods
.method public getAppearance(ZZ)Lcom/itextpdf/text/pdf/PdfAppearance;
    .locals 17
    .parameter "isRadio"
    .parameter "on"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 215
    if-eqz p1, :cond_1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/itextpdf/text/pdf/RadioCheckField;->checkType:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_1

    .line 216
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/RadioCheckField;->getAppearanceRadioCircle(Z)Lcom/itextpdf/text/pdf/PdfAppearance;

    move-result-object v2

    .line 258
    :cond_0
    :goto_0
    return-object v2

    .line 217
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/RadioCheckField;->getBorderAppearance()Lcom/itextpdf/text/pdf/PdfAppearance;

    move-result-object v2

    .line 218
    .local v2, app:Lcom/itextpdf/text/pdf/PdfAppearance;
    if-eqz p2, :cond_0

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/RadioCheckField;->getRealFont()Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v12

    .line 221
    .local v12, ufont:Lcom/itextpdf/text/pdf/BaseFont;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/itextpdf/text/pdf/RadioCheckField;->borderStyle:I

    const/4 v15, 0x2

    if-eq v14, v15, :cond_2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/itextpdf/text/pdf/RadioCheckField;->borderStyle:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_5

    :cond_2
    const/4 v3, 0x1

    .line 222
    .local v3, borderExtra:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/RadioCheckField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v14}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/itextpdf/text/pdf/RadioCheckField;->borderWidth:F

    const/high16 v16, 0x4000

    mul-float v15, v15, v16

    sub-float v7, v14, v15

    .line 223
    .local v7, h:F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/RadioCheckField;->borderWidth:F

    .line 224
    .local v5, bw2:F
    if-eqz v3, :cond_3

    .line 225
    move-object/from16 v0, p0

    iget v14, v0, Lcom/itextpdf/text/pdf/RadioCheckField;->borderWidth:F

    const/high16 v15, 0x4000

    mul-float/2addr v14, v15

    sub-float/2addr v7, v14

    .line 226
    const/high16 v14, 0x4000

    mul-float/2addr v5, v14

    .line 228
    :cond_3
    if-eqz v3, :cond_6

    const/high16 v14, 0x4000

    move-object/from16 v0, p0

    iget v15, v0, Lcom/itextpdf/text/pdf/RadioCheckField;->borderWidth:F

    mul-float v11, v14, v15

    .line 229
    .local v11, offsetX:F
    :goto_2
    const/high16 v14, 0x3f80

    invoke-static {v11, v14}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 230
    invoke-static {v5, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 231
    .local v10, offX:F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/RadioCheckField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v14}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v14

    const/high16 v15, 0x4000

    mul-float/2addr v15, v10

    sub-float v13, v14, v15

    .line 232
    .local v13, wt:F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/RadioCheckField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v14}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v14

    const/high16 v15, 0x4000

    mul-float/2addr v15, v10

    sub-float v8, v14, v15

    .line 233
    .local v8, ht:F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/RadioCheckField;->fontSize:F

    .line 234
    .local v6, fsize:F
    const/4 v14, 0x0

    cmpl-float v14, v6, v14

    if-nez v14, :cond_4

    .line 235
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/RadioCheckField;->text:Ljava/lang/String;

    const/high16 v15, 0x3f80

    invoke-virtual {v12, v14, v15}, Lcom/itextpdf/text/pdf/BaseFont;->getWidthPoint(Ljava/lang/String;F)F

    move-result v4

    .line 236
    .local v4, bw:F
    const/4 v14, 0x0

    cmpl-float v14, v4, v14

    if-nez v14, :cond_7

    .line 237
    const/high16 v6, 0x4140

    .line 240
    :goto_3
    const/4 v14, 0x1

    const/high16 v15, 0x3f80

    invoke-virtual {v12, v14, v15}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v14

    div-float v9, v7, v14

    .line 241
    .local v9, nfsize:F
    invoke-static {v6, v9}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 243
    .end local v4           #bw:F
    .end local v9           #nfsize:F
    :cond_4
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfAppearance;->saveState()V

    .line 244
    invoke-virtual {v2, v10, v10, v13, v8}, Lcom/itextpdf/text/pdf/PdfAppearance;->rectangle(FFFF)V

    .line 245
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfAppearance;->clip()V

    .line 246
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfAppearance;->newPath()V

    .line 247
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/RadioCheckField;->textColor:Lcom/itextpdf/text/BaseColor;

    if-nez v14, :cond_8

    .line 248
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfAppearance;->resetGrayFill()V

    .line 251
    :goto_4
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfAppearance;->beginText()V

    .line 252
    invoke-virtual {v2, v12, v6}, Lcom/itextpdf/text/pdf/PdfAppearance;->setFontAndSize(Lcom/itextpdf/text/pdf/BaseFont;F)V

    .line 253
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/RadioCheckField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v14}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/RadioCheckField;->text:Ljava/lang/String;

    invoke-virtual {v12, v15, v6}, Lcom/itextpdf/text/pdf/BaseFont;->getWidthPoint(Ljava/lang/String;F)F

    move-result v15

    sub-float/2addr v14, v15

    const/high16 v15, 0x4000

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/RadioCheckField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v15}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/RadioCheckField;->text:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v12, v0, v6}, Lcom/itextpdf/text/pdf/BaseFont;->getAscentPoint(Ljava/lang/String;F)F

    move-result v16

    sub-float v15, v15, v16

    const/high16 v16, 0x4000

    div-float v15, v15, v16

    invoke-virtual {v2, v14, v15}, Lcom/itextpdf/text/pdf/PdfAppearance;->setTextMatrix(FF)V

    .line 255
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/RadioCheckField;->text:Ljava/lang/String;

    invoke-virtual {v2, v14}, Lcom/itextpdf/text/pdf/PdfAppearance;->showText(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfAppearance;->endText()V

    .line 257
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfAppearance;->restoreState()V

    goto/16 :goto_0

    .line 221
    .end local v3           #borderExtra:Z
    .end local v5           #bw2:F
    .end local v6           #fsize:F
    .end local v7           #h:F
    .end local v8           #ht:F
    .end local v10           #offX:F
    .end local v11           #offsetX:F
    .end local v13           #wt:F
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 228
    .restart local v3       #borderExtra:Z
    .restart local v5       #bw2:F
    .restart local v7       #h:F
    :cond_6
    move-object/from16 v0, p0

    iget v11, v0, Lcom/itextpdf/text/pdf/RadioCheckField;->borderWidth:F

    goto/16 :goto_2

    .line 239
    .restart local v4       #bw:F
    .restart local v6       #fsize:F
    .restart local v8       #ht:F
    .restart local v10       #offX:F
    .restart local v11       #offsetX:F
    .restart local v13       #wt:F
    :cond_7
    div-float v6, v13, v4

    goto :goto_3

    .line 250
    .end local v4           #bw:F
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/RadioCheckField;->textColor:Lcom/itextpdf/text/BaseColor;

    invoke-virtual {v2, v14}, Lcom/itextpdf/text/pdf/PdfAppearance;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    goto :goto_4
.end method

.method public getAppearanceRadioCircle(Z)Lcom/itextpdf/text/pdf/PdfAppearance;
    .locals 11
    .parameter "on"

    .prologue
    .line 268
    iget-object v1, p0, Lcom/itextpdf/text/pdf/RadioCheckField;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/RadioCheckField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v2}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v2

    iget-object v3, p0, Lcom/itextpdf/text/pdf/RadioCheckField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v3}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfAppearance;->createAppearance(Lcom/itextpdf/text/pdf/PdfWriter;FF)Lcom/itextpdf/text/pdf/PdfAppearance;

    move-result-object v0

    .line 269
    .local v0, app:Lcom/itextpdf/text/pdf/PdfAppearance;
    iget v1, p0, Lcom/itextpdf/text/pdf/RadioCheckField;->rotation:I

    sparse-switch v1, :sswitch_data_0

    .line 280
    :goto_0
    new-instance v7, Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfAppearance;->getBoundingBox()Lcom/itextpdf/text/Rectangle;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/itextpdf/text/Rectangle;-><init>(Lcom/itextpdf/text/Rectangle;)V

    .line 281
    .local v7, box:Lcom/itextpdf/text/Rectangle;
    invoke-virtual {v7}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v1

    const/high16 v2, 0x4000

    div-float v8, v1, v2

    .line 282
    .local v8, cx:F
    invoke-virtual {v7}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v1

    const/high16 v2, 0x4000

    div-float v9, v1, v2

    .line 283
    .local v9, cy:F
    invoke-virtual {v7}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v1

    invoke-virtual {v7}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v2, p0, Lcom/itextpdf/text/pdf/RadioCheckField;->borderWidth:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float v10, v1, v2

    .line 284
    .local v10, r:F
    const/4 v1, 0x0

    cmpg-float v1, v10, v1

    if-gtz v1, :cond_1

    .line 305
    :cond_0
    :goto_1
    return-object v0

    .line 271
    .end local v7           #box:Lcom/itextpdf/text/Rectangle;
    .end local v8           #cx:F
    .end local v9           #cy:F
    .end local v10           #r:F
    :sswitch_0
    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    const/high16 v3, -0x4080

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/itextpdf/text/pdf/RadioCheckField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v5}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v5

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfAppearance;->setMatrix(FFFFFF)V

    goto :goto_0

    .line 274
    :sswitch_1
    const/high16 v1, -0x4080

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, -0x4080

    iget-object v5, p0, Lcom/itextpdf/text/pdf/RadioCheckField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v5}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v5

    iget-object v6, p0, Lcom/itextpdf/text/pdf/RadioCheckField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfAppearance;->setMatrix(FFFFFF)V

    goto :goto_0

    .line 277
    :sswitch_2
    const/4 v1, 0x0

    const/high16 v2, -0x4080

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/itextpdf/text/pdf/RadioCheckField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfAppearance;->setMatrix(FFFFFF)V

    goto :goto_0

    .line 286
    .restart local v7       #box:Lcom/itextpdf/text/Rectangle;
    .restart local v8       #cx:F
    .restart local v9       #cy:F
    .restart local v10       #r:F
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/RadioCheckField;->backgroundColor:Lcom/itextpdf/text/BaseColor;

    if-eqz v1, :cond_2

    .line 287
    iget-object v1, p0, Lcom/itextpdf/text/pdf/RadioCheckField;->backgroundColor:Lcom/itextpdf/text/BaseColor;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfAppearance;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    .line 288
    iget v1, p0, Lcom/itextpdf/text/pdf/RadioCheckField;->borderWidth:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v1, v10

    invoke-virtual {v0, v8, v9, v1}, Lcom/itextpdf/text/pdf/PdfAppearance;->circle(FFF)V

    .line 289
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfAppearance;->fill()V

    .line 291
    :cond_2
    iget v1, p0, Lcom/itextpdf/text/pdf/RadioCheckField;->borderWidth:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/itextpdf/text/pdf/RadioCheckField;->borderColor:Lcom/itextpdf/text/BaseColor;

    if-eqz v1, :cond_3

    .line 292
    iget v1, p0, Lcom/itextpdf/text/pdf/RadioCheckField;->borderWidth:F

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfAppearance;->setLineWidth(F)V

    .line 293
    iget-object v1, p0, Lcom/itextpdf/text/pdf/RadioCheckField;->borderColor:Lcom/itextpdf/text/BaseColor;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfAppearance;->setColorStroke(Lcom/itextpdf/text/BaseColor;)V

    .line 294
    invoke-virtual {v0, v8, v9, v10}, Lcom/itextpdf/text/pdf/PdfAppearance;->circle(FFF)V

    .line 295
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfAppearance;->stroke()V

    .line 297
    :cond_3
    if-eqz p1, :cond_0

    .line 298
    iget-object v1, p0, Lcom/itextpdf/text/pdf/RadioCheckField;->textColor:Lcom/itextpdf/text/BaseColor;

    if-nez v1, :cond_4

    .line 299
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfAppearance;->resetGrayFill()V

    .line 302
    :goto_2
    const/high16 v1, 0x4000

    div-float v1, v10, v1

    invoke-virtual {v0, v8, v9, v1}, Lcom/itextpdf/text/pdf/PdfAppearance;->circle(FFF)V

    .line 303
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfAppearance;->fill()V

    goto :goto_1

    .line 301
    :cond_4
    iget-object v1, p0, Lcom/itextpdf/text/pdf/RadioCheckField;->textColor:Lcom/itextpdf/text/BaseColor;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfAppearance;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    goto :goto_2

    .line 269
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public getCheckField()Lcom/itextpdf/text/pdf/PdfFormField;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 352
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/RadioCheckField;->getField(Z)Lcom/itextpdf/text/pdf/PdfFormField;

    move-result-object v0

    return-object v0
.end method

.method public getCheckType()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/itextpdf/text/pdf/RadioCheckField;->checkType:I

    return v0
.end method

.method protected getField(Z)Lcom/itextpdf/text/pdf/PdfFormField;
    .locals 10
    .parameter "isRadio"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 364
    const/4 v1, 0x0

    .line 365
    .local v1, field:Lcom/itextpdf/text/pdf/PdfFormField;
    if-eqz p1, :cond_7

    .line 366
    iget-object v4, p0, Lcom/itextpdf/text/pdf/RadioCheckField;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-static {v4}, Lcom/itextpdf/text/pdf/PdfFormField;->createEmpty(Lcom/itextpdf/text/pdf/PdfWriter;)Lcom/itextpdf/text/pdf/PdfFormField;

    move-result-object v1

    .line 369
    :goto_0
    iget-object v4, p0, Lcom/itextpdf/text/pdf/RadioCheckField;->box:Lcom/itextpdf/text/Rectangle;

    sget-object v5, Lcom/itextpdf/text/pdf/PdfAnnotation;->HIGHLIGHT_INVERT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v4, v5}, Lcom/itextpdf/text/pdf/PdfFormField;->setWidget(Lcom/itextpdf/text/Rectangle;Lcom/itextpdf/text/pdf/PdfName;)V

    .line 370
    if-nez p1, :cond_2

    .line 371
    iget-object v4, p0, Lcom/itextpdf/text/pdf/RadioCheckField;->fieldName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/itextpdf/text/pdf/PdfFormField;->setFieldName(Ljava/lang/String;)V

    .line 372
    iget v4, p0, Lcom/itextpdf/text/pdf/RadioCheckField;->options:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 373
    invoke-virtual {v1, v9}, Lcom/itextpdf/text/pdf/PdfFormField;->setFieldFlags(I)I

    .line 374
    :cond_0
    iget v4, p0, Lcom/itextpdf/text/pdf/RadioCheckField;->options:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 375
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/itextpdf/text/pdf/PdfFormField;->setFieldFlags(I)I

    .line 376
    :cond_1
    iget-boolean v4, p0, Lcom/itextpdf/text/pdf/RadioCheckField;->checked:Z

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/itextpdf/text/pdf/RadioCheckField;->onValue:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v4}, Lcom/itextpdf/text/pdf/PdfFormField;->setValueAsName(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p0, v9}, Lcom/itextpdf/text/pdf/RadioCheckField;->setCheckType(I)V

    .line 379
    :cond_2
    iget-object v4, p0, Lcom/itextpdf/text/pdf/RadioCheckField;->text:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 380
    iget-object v4, p0, Lcom/itextpdf/text/pdf/RadioCheckField;->text:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/itextpdf/text/pdf/PdfFormField;->setMKNormalCaption(Ljava/lang/String;)V

    .line 381
    :cond_3
    iget v4, p0, Lcom/itextpdf/text/pdf/RadioCheckField;->rotation:I

    if-eqz v4, :cond_4

    .line 382
    iget v4, p0, Lcom/itextpdf/text/pdf/RadioCheckField;->rotation:I

    invoke-virtual {v1, v4}, Lcom/itextpdf/text/pdf/PdfFormField;->setMKRotation(I)V

    .line 383
    :cond_4
    new-instance v4, Lcom/itextpdf/text/pdf/PdfBorderDictionary;

    iget v5, p0, Lcom/itextpdf/text/pdf/RadioCheckField;->borderWidth:F

    iget v6, p0, Lcom/itextpdf/text/pdf/RadioCheckField;->borderStyle:I

    new-instance v7, Lcom/itextpdf/text/pdf/PdfDashPattern;

    const/high16 v8, 0x4040

    invoke-direct {v7, v8}, Lcom/itextpdf/text/pdf/PdfDashPattern;-><init>(F)V

    invoke-direct {v4, v5, v6, v7}, Lcom/itextpdf/text/pdf/PdfBorderDictionary;-><init>(FILcom/itextpdf/text/pdf/PdfDashPattern;)V

    invoke-virtual {v1, v4}, Lcom/itextpdf/text/pdf/PdfFormField;->setBorderStyle(Lcom/itextpdf/text/pdf/PdfBorderDictionary;)V

    .line 384
    invoke-virtual {p0, p1, v9}, Lcom/itextpdf/text/pdf/RadioCheckField;->getAppearance(ZZ)Lcom/itextpdf/text/pdf/PdfAppearance;

    move-result-object v3

    .line 385
    .local v3, tpon:Lcom/itextpdf/text/pdf/PdfAppearance;
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Lcom/itextpdf/text/pdf/RadioCheckField;->getAppearance(ZZ)Lcom/itextpdf/text/pdf/PdfAppearance;

    move-result-object v2

    .line 386
    .local v2, tpoff:Lcom/itextpdf/text/pdf/PdfAppearance;
    sget-object v4, Lcom/itextpdf/text/pdf/PdfAnnotation;->APPEARANCE_NORMAL:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v5, p0, Lcom/itextpdf/text/pdf/RadioCheckField;->onValue:Ljava/lang/String;

    invoke-virtual {v1, v4, v5, v3}, Lcom/itextpdf/text/pdf/PdfFormField;->setAppearance(Lcom/itextpdf/text/pdf/PdfName;Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfTemplate;)V

    .line 387
    sget-object v4, Lcom/itextpdf/text/pdf/PdfAnnotation;->APPEARANCE_NORMAL:Lcom/itextpdf/text/pdf/PdfName;

    const-string v5, "Off"

    invoke-virtual {v1, v4, v5, v2}, Lcom/itextpdf/text/pdf/PdfFormField;->setAppearance(Lcom/itextpdf/text/pdf/PdfName;Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfTemplate;)V

    .line 388
    iget-boolean v4, p0, Lcom/itextpdf/text/pdf/RadioCheckField;->checked:Z

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/itextpdf/text/pdf/RadioCheckField;->onValue:Ljava/lang/String;

    :goto_2
    invoke-virtual {v1, v4}, Lcom/itextpdf/text/pdf/PdfFormField;->setAppearanceState(Ljava/lang/String;)V

    .line 389
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfAppearance;->getDuplicate()Lcom/itextpdf/text/pdf/PdfContentByte;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfAppearance;

    .line 390
    .local v0, da:Lcom/itextpdf/text/pdf/PdfAppearance;
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RadioCheckField;->getRealFont()Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v4

    iget v5, p0, Lcom/itextpdf/text/pdf/RadioCheckField;->fontSize:F

    invoke-virtual {v0, v4, v5}, Lcom/itextpdf/text/pdf/PdfAppearance;->setFontAndSize(Lcom/itextpdf/text/pdf/BaseFont;F)V

    .line 391
    iget-object v4, p0, Lcom/itextpdf/text/pdf/RadioCheckField;->textColor:Lcom/itextpdf/text/BaseColor;

    if-nez v4, :cond_a

    .line 392
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfAppearance;->setGrayFill(F)V

    .line 395
    :goto_3
    invoke-virtual {v1, v0}, Lcom/itextpdf/text/pdf/PdfFormField;->setDefaultAppearanceString(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 396
    iget-object v4, p0, Lcom/itextpdf/text/pdf/RadioCheckField;->borderColor:Lcom/itextpdf/text/BaseColor;

    if-eqz v4, :cond_5

    .line 397
    iget-object v4, p0, Lcom/itextpdf/text/pdf/RadioCheckField;->borderColor:Lcom/itextpdf/text/BaseColor;

    invoke-virtual {v1, v4}, Lcom/itextpdf/text/pdf/PdfFormField;->setMKBorderColor(Lcom/itextpdf/text/BaseColor;)V

    .line 398
    :cond_5
    iget-object v4, p0, Lcom/itextpdf/text/pdf/RadioCheckField;->backgroundColor:Lcom/itextpdf/text/BaseColor;

    if-eqz v4, :cond_6

    .line 399
    iget-object v4, p0, Lcom/itextpdf/text/pdf/RadioCheckField;->backgroundColor:Lcom/itextpdf/text/BaseColor;

    invoke-virtual {v1, v4}, Lcom/itextpdf/text/pdf/PdfFormField;->setMKBackgroundColor(Lcom/itextpdf/text/BaseColor;)V

    .line 400
    :cond_6
    iget v4, p0, Lcom/itextpdf/text/pdf/RadioCheckField;->visibility:I

    packed-switch v4, :pswitch_data_0

    .line 410
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lcom/itextpdf/text/pdf/PdfFormField;->setFlags(I)V

    .line 413
    :goto_4
    :pswitch_0
    return-object v1

    .line 368
    .end local v0           #da:Lcom/itextpdf/text/pdf/PdfAppearance;
    .end local v2           #tpoff:Lcom/itextpdf/text/pdf/PdfAppearance;
    .end local v3           #tpon:Lcom/itextpdf/text/pdf/PdfAppearance;
    :cond_7
    iget-object v4, p0, Lcom/itextpdf/text/pdf/RadioCheckField;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-static {v4}, Lcom/itextpdf/text/pdf/PdfFormField;->createCheckBox(Lcom/itextpdf/text/pdf/PdfWriter;)Lcom/itextpdf/text/pdf/PdfFormField;

    move-result-object v1

    goto/16 :goto_0

    .line 376
    :cond_8
    const-string v4, "Off"

    goto/16 :goto_1

    .line 388
    .restart local v2       #tpoff:Lcom/itextpdf/text/pdf/PdfAppearance;
    .restart local v3       #tpon:Lcom/itextpdf/text/pdf/PdfAppearance;
    :cond_9
    const-string v4, "Off"

    goto :goto_2

    .line 394
    .restart local v0       #da:Lcom/itextpdf/text/pdf/PdfAppearance;
    :cond_a
    iget-object v4, p0, Lcom/itextpdf/text/pdf/RadioCheckField;->textColor:Lcom/itextpdf/text/BaseColor;

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfAppearance;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    goto :goto_3

    .line 402
    :pswitch_1
    const/4 v4, 0x6

    invoke-virtual {v1, v4}, Lcom/itextpdf/text/pdf/PdfFormField;->setFlags(I)V

    goto :goto_4

    .line 407
    :pswitch_2
    const/16 v4, 0x24

    invoke-virtual {v1, v4}, Lcom/itextpdf/text/pdf/PdfFormField;->setFlags(I)V

    goto :goto_4

    .line 400
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getOnValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/itextpdf/text/pdf/RadioCheckField;->onValue:Ljava/lang/String;

    return-object v0
.end method

.method public getRadioField()Lcom/itextpdf/text/pdf/PdfFormField;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 342
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/RadioCheckField;->getField(Z)Lcom/itextpdf/text/pdf/PdfFormField;

    move-result-object v0

    return-object v0
.end method

.method public getRadioGroup(ZZ)Lcom/itextpdf/text/pdf/PdfFormField;
    .locals 2
    .parameter "noToggleToOff"
    .parameter "radiosInUnison"

    .prologue
    .line 322
    iget-object v1, p0, Lcom/itextpdf/text/pdf/RadioCheckField;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-static {v1, p1}, Lcom/itextpdf/text/pdf/PdfFormField;->createRadioButton(Lcom/itextpdf/text/pdf/PdfWriter;Z)Lcom/itextpdf/text/pdf/PdfFormField;

    move-result-object v0

    .line 323
    .local v0, field:Lcom/itextpdf/text/pdf/PdfFormField;
    if-eqz p2, :cond_0

    .line 324
    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfFormField;->setFieldFlags(I)I

    .line 325
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/RadioCheckField;->fieldName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfFormField;->setFieldName(Ljava/lang/String;)V

    .line 326
    iget v1, p0, Lcom/itextpdf/text/pdf/RadioCheckField;->options:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 327
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfFormField;->setFieldFlags(I)I

    .line 328
    :cond_1
    iget v1, p0, Lcom/itextpdf/text/pdf/RadioCheckField;->options:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 329
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfFormField;->setFieldFlags(I)I

    .line 330
    :cond_2
    iget-boolean v1, p0, Lcom/itextpdf/text/pdf/RadioCheckField;->checked:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/itextpdf/text/pdf/RadioCheckField;->onValue:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfFormField;->setValueAsName(Ljava/lang/String;)V

    .line 331
    return-object v0

    .line 330
    :cond_3
    const-string v1, "Off"

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/RadioCheckField;->checked:Z

    return v0
.end method

.method public setCheckType(I)V
    .locals 4
    .parameter "checkType"

    .prologue
    .line 159
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const/4 v1, 0x6

    if-le p1, v1, :cond_1

    .line 160
    :cond_0
    const/4 p1, 0x2

    .line 161
    :cond_1
    iput p1, p0, Lcom/itextpdf/text/pdf/RadioCheckField;->checkType:I

    .line 162
    sget-object v1, Lcom/itextpdf/text/pdf/RadioCheckField;->typeChars:[Ljava/lang/String;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/RadioCheckField;->setText(Ljava/lang/String;)V

    .line 164
    :try_start_0
    const-string v1, "ZapfDingbats"

    const-string v2, "Cp1252"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/itextpdf/text/pdf/BaseFont;->createFont(Ljava/lang/String;Ljava/lang/String;Z)Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/RadioCheckField;->setFont(Lcom/itextpdf/text/pdf/BaseFont;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 201
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/RadioCheckField;->checked:Z

    .line 202
    return-void
.end method

.method public setOnValue(Ljava/lang/String;)V
    .locals 0
    .parameter "onValue"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/itextpdf/text/pdf/RadioCheckField;->onValue:Ljava/lang/String;

    .line 185
    return-void
.end method

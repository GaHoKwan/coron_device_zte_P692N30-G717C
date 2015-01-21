.class public Lcom/itextpdf/text/pdf/PdfDiv;
.super Ljava/lang/Object;
.source "PdfDiv.java"

# interfaces
.implements Lcom/itextpdf/text/Element;
.implements Lcom/itextpdf/text/api/Spaceable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/pdf/PdfDiv$PositionType;,
        Lcom/itextpdf/text/pdf/PdfDiv$FloatType;
    }
.end annotation


# instance fields
.field private backgroundColor:Lcom/itextpdf/text/BaseColor;

.field private bottom:Ljava/lang/Float;

.field private content:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/Element;",
            ">;"
        }
    .end annotation
.end field

.field private contentHeight:F

.field private contentWidth:F

.field private floatLayout:Lcom/itextpdf/text/pdf/FloatLayout;

.field private floatType:Lcom/itextpdf/text/pdf/PdfDiv$FloatType;

.field private height:Ljava/lang/Float;

.field private left:Ljava/lang/Float;

.field private paddingBottom:F

.field private paddingLeft:F

.field private paddingRight:F

.field private paddingTop:F

.field private percentageHeight:Ljava/lang/Float;

.field private percentageWidth:Ljava/lang/Float;

.field private position:Lcom/itextpdf/text/pdf/PdfDiv$PositionType;

.field private right:Ljava/lang/Float;

.field protected spacingAfter:F

.field protected spacingBefore:F

.field private textAlignment:I

.field private top:Ljava/lang/Float;

.field private width:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfDiv;->left:Ljava/lang/Float;

    .line 65
    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfDiv;->top:Ljava/lang/Float;

    .line 67
    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfDiv;->right:Ljava/lang/Float;

    .line 69
    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfDiv;->bottom:Ljava/lang/Float;

    .line 71
    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfDiv;->width:Ljava/lang/Float;

    .line 73
    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfDiv;->height:Ljava/lang/Float;

    .line 75
    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfDiv;->percentageHeight:Ljava/lang/Float;

    .line 77
    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfDiv;->percentageWidth:Ljava/lang/Float;

    .line 79
    iput v2, p0, Lcom/itextpdf/text/pdf/PdfDiv;->contentWidth:F

    .line 81
    iput v2, p0, Lcom/itextpdf/text/pdf/PdfDiv;->contentHeight:F

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfDiv;->textAlignment:I

    .line 85
    iput v2, p0, Lcom/itextpdf/text/pdf/PdfDiv;->paddingLeft:F

    .line 87
    iput v2, p0, Lcom/itextpdf/text/pdf/PdfDiv;->paddingRight:F

    .line 89
    iput v2, p0, Lcom/itextpdf/text/pdf/PdfDiv;->paddingTop:F

    .line 91
    iput v2, p0, Lcom/itextpdf/text/pdf/PdfDiv;->paddingBottom:F

    .line 93
    sget-object v0, Lcom/itextpdf/text/pdf/PdfDiv$FloatType;->NONE:Lcom/itextpdf/text/pdf/PdfDiv$FloatType;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDiv;->floatType:Lcom/itextpdf/text/pdf/PdfDiv$FloatType;

    .line 95
    sget-object v0, Lcom/itextpdf/text/pdf/PdfDiv$PositionType;->STATIC:Lcom/itextpdf/text/pdf/PdfDiv$PositionType;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDiv;->position:Lcom/itextpdf/text/pdf/PdfDiv$PositionType;

    .line 97
    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfDiv;->floatLayout:Lcom/itextpdf/text/pdf/FloatLayout;

    .line 147
    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfDiv;->backgroundColor:Lcom/itextpdf/text/BaseColor;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDiv;->content:Ljava/util/ArrayList;

    .line 161
    return-void
.end method


# virtual methods
.method public addElement(Lcom/itextpdf/text/Element;)V
    .locals 1
    .parameter "element"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDiv;->content:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    return-void
.end method

.method public getActualHeight()F
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDiv;->height:Ljava/lang/Float;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDiv;->height:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfDiv;->contentHeight:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDiv;->height:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDiv;->contentHeight:F

    goto :goto_0
.end method

.method public getActualWidth()F
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDiv;->width:Ljava/lang/Float;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDiv;->width:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfDiv;->contentWidth:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDiv;->width:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDiv;->contentWidth:F

    goto :goto_0
.end method

.method public getBackgroundColor()Lcom/itextpdf/text/BaseColor;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDiv;->backgroundColor:Lcom/itextpdf/text/BaseColor;

    return-object v0
.end method

.method public getBottom()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDiv;->bottom:Ljava/lang/Float;

    return-object v0
.end method

.method public getChunks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/itextpdf/text/Chunk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getContent()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 369
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDiv;->content:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getContentHeight()F
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDiv;->contentHeight:F

    return v0
.end method

.method public getContentWidth()F
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDiv;->contentWidth:F

    return v0
.end method

.method public getFloatType()Lcom/itextpdf/text/pdf/PdfDiv$FloatType;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDiv;->floatType:Lcom/itextpdf/text/pdf/PdfDiv$FloatType;

    return-object v0
.end method

.method public getHeight()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDiv;->height:Ljava/lang/Float;

    return-object v0
.end method

.method public getLeft()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDiv;->left:Ljava/lang/Float;

    return-object v0
.end method

.method public getPaddingBottom()F
    .locals 1

    .prologue
    .line 345
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDiv;->paddingBottom:F

    return v0
.end method

.method public getPaddingLeft()F
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDiv;->paddingLeft:F

    return v0
.end method

.method public getPaddingRight()F
    .locals 1

    .prologue
    .line 329
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDiv;->paddingRight:F

    return v0
.end method

.method public getPaddingTop()F
    .locals 1

    .prologue
    .line 337
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDiv;->paddingTop:F

    return v0
.end method

.method public getPercentageHeight()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDiv;->percentageHeight:Ljava/lang/Float;

    return-object v0
.end method

.method public getPercentageWidth()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDiv;->percentageWidth:Ljava/lang/Float;

    return-object v0
.end method

.method public getPosition()Lcom/itextpdf/text/pdf/PdfDiv$PositionType;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDiv;->position:Lcom/itextpdf/text/pdf/PdfDiv$PositionType;

    return-object v0
.end method

.method public getRight()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDiv;->right:Ljava/lang/Float;

    return-object v0
.end method

.method public getSpacingAfter()F
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDiv;->spacingAfter:F

    return v0
.end method

.method public getSpacingBefore()F
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDiv;->spacingBefore:F

    return v0
.end method

.method public getTextAlignment()I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDiv;->textAlignment:I

    return v0
.end method

.method public getTop()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDiv;->top:Ljava/lang/Float;

    return-object v0
.end method

.method public getWidth()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDiv;->width:Ljava/lang/Float;

    return-object v0
.end method

.method public isContent()Z
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x1

    return v0
.end method

.method public isNestable()Z
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x1

    return v0
.end method

.method public layout(Lcom/itextpdf/text/pdf/ColumnText;ZFFFF)I
    .locals 22
    .parameter "compositeColumn"
    .parameter "simulate"
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 378
    move/from16 v0, p3

    move/from16 v1, p5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 379
    .local v13, leftX:F
    move/from16 v0, p4

    move/from16 v1, p6

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v14

    .line 380
    .local v14, maxY:F
    move/from16 v0, p4

    move/from16 v1, p6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v15

    .line 381
    .local v15, minY:F
    move/from16 v0, p3

    move/from16 v1, p5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v16

    .line 382
    .local v16, rightX:F
    move/from16 v20, v14

    .line 384
    .local v20, yLine:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->width:Ljava/lang/Float;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->width:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_d

    .line 385
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->width:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float v3, v16, v13

    cmpg-float v2, v2, v3

    if-gez v2, :cond_c

    .line 386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->width:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float v16, v13, v2

    .line 395
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->height:Ljava/lang/Float;

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->height:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_f

    .line 396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->height:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float v3, v14, v15

    cmpg-float v2, v2, v3

    if-gez v2, :cond_e

    .line 397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->height:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float v15, v14, v2

    .line 406
    :cond_1
    :goto_1
    if-nez p2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->position:Lcom/itextpdf/text/pdf/PdfDiv$PositionType;

    sget-object v3, Lcom/itextpdf/text/pdf/PdfDiv$PositionType;->RELATIVE:Lcom/itextpdf/text/pdf/PdfDiv$PositionType;

    if-ne v2, v3, :cond_2

    .line 407
    const/16 v18, 0x0

    .line 408
    .local v18, translationX:Ljava/lang/Float;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->left:Ljava/lang/Float;

    if-eqz v2, :cond_10

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfDiv;->left:Ljava/lang/Float;

    move-object/from16 v18, v0

    .line 416
    :goto_2
    const/16 v19, 0x0

    .line 417
    .local v19, translationY:Ljava/lang/Float;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->top:Ljava/lang/Float;

    if-eqz v2, :cond_12

    .line 418
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->top:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    neg-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    .line 424
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/ColumnText;->getCanvas()Lcom/itextpdf/text/pdf/PdfContentByte;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->saveState()V

    .line 425
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/ColumnText;->getCanvas()Lcom/itextpdf/text/pdf/PdfContentByte;

    move-result-object v21

    new-instance v2, Lcom/itextpdf/awt/geom/AffineTransform;

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-direct/range {v2 .. v8}, Lcom/itextpdf/awt/geom/AffineTransform;-><init>(FFFFFF)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->transform(Lcom/itextpdf/awt/geom/AffineTransform;)V

    .line 428
    .end local v18           #translationX:Ljava/lang/Float;
    .end local v19           #translationY:Ljava/lang/Float;
    :cond_2
    if-nez p2, :cond_5

    .line 429
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->backgroundColor:Lcom/itextpdf/text/BaseColor;

    if-eqz v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDiv;->getActualWidth()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDiv;->getActualHeight()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    .line 430
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDiv;->getActualWidth()F

    move-result v11

    .line 431
    .local v11, backgroundWidth:F
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDiv;->getActualHeight()F

    move-result v10

    .line 432
    .local v10, backgroundHeight:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->width:Ljava/lang/Float;

    if-eqz v2, :cond_3

    .line 433
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->width:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->width:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v11

    .line 436
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->height:Ljava/lang/Float;

    if-eqz v2, :cond_4

    .line 437
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->height:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->height:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v10

    .line 439
    :cond_4
    :goto_5
    const/4 v2, 0x0

    cmpl-float v2, v11, v2

    if-lez v2, :cond_5

    const/4 v2, 0x0

    cmpl-float v2, v10, v2

    if-lez v2, :cond_5

    .line 440
    new-instance v9, Lcom/itextpdf/text/Rectangle;

    sub-float v2, v14, v10

    add-float v3, v13, v11

    invoke-direct {v9, v13, v2, v3, v14}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    .line 441
    .local v9, background:Lcom/itextpdf/text/Rectangle;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->backgroundColor:Lcom/itextpdf/text/BaseColor;

    invoke-virtual {v9, v2}, Lcom/itextpdf/text/Rectangle;->setBackgroundColor(Lcom/itextpdf/text/BaseColor;)V

    .line 442
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/ColumnText;->getCanvas()Lcom/itextpdf/text/pdf/PdfContentByte;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/itextpdf/text/pdf/PdfContentByte;->rectangle(Lcom/itextpdf/text/Rectangle;)V

    .line 447
    .end local v9           #background:Lcom/itextpdf/text/Rectangle;
    .end local v10           #backgroundHeight:F
    .end local v11           #backgroundWidth:F
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->percentageWidth:Ljava/lang/Float;

    if-nez v2, :cond_6

    .line 448
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->contentWidth:F

    .line 450
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->percentageHeight:Ljava/lang/Float;

    if-nez v2, :cond_7

    .line 451
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->contentHeight:F

    .line 454
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->paddingBottom:F

    add-float/2addr v15, v2

    .line 455
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->paddingLeft:F

    add-float/2addr v13, v2

    .line 456
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->paddingRight:F

    sub-float v16, v16, v2

    .line 458
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->paddingTop:F

    sub-float v20, v20, v2

    .line 460
    const/16 v17, 0x1

    .line 462
    .local v17, status:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->content:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 464
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 465
    .local v12, floatingElements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/Element;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->content:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 466
    new-instance v2, Lcom/itextpdf/text/pdf/FloatLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v12}, Lcom/itextpdf/text/pdf/FloatLayout;-><init>(Lcom/itextpdf/text/pdf/ColumnText;Ljava/util/List;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->floatLayout:Lcom/itextpdf/text/pdf/FloatLayout;

    .line 469
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->floatLayout:Lcom/itextpdf/text/pdf/FloatLayout;

    move/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v2, v13, v15, v0, v1}, Lcom/itextpdf/text/pdf/FloatLayout;->setSimpleColumn(FFFF)V

    .line 470
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->floatLayout:Lcom/itextpdf/text/pdf/FloatLayout;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/FloatLayout;->layout(Z)I

    move-result v17

    .line 471
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->floatLayout:Lcom/itextpdf/text/pdf/FloatLayout;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/FloatLayout;->getYLine()F

    move-result v20

    .line 472
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->percentageWidth:Ljava/lang/Float;

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->contentWidth:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfDiv;->floatLayout:Lcom/itextpdf/text/pdf/FloatLayout;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/FloatLayout;->getFilledWidth()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_8

    .line 473
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->floatLayout:Lcom/itextpdf/text/pdf/FloatLayout;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/FloatLayout;->getFilledWidth()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->contentWidth:F

    .line 478
    .end local v12           #floatingElements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/Element;>;"
    :cond_8
    if-nez p2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->position:Lcom/itextpdf/text/pdf/PdfDiv$PositionType;

    sget-object v3, Lcom/itextpdf/text/pdf/PdfDiv$PositionType;->RELATIVE:Lcom/itextpdf/text/pdf/PdfDiv$PositionType;

    if-ne v2, v3, :cond_9

    .line 479
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/ColumnText;->getCanvas()Lcom/itextpdf/text/pdf/PdfContentByte;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->restoreState()V

    .line 482
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->paddingBottom:F

    sub-float v20, v20, v2

    .line 483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->percentageHeight:Ljava/lang/Float;

    if-nez v2, :cond_a

    .line 484
    sub-float v2, v14, v20

    move-object/from16 v0, p0

    iput v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->contentHeight:F

    .line 487
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->percentageWidth:Ljava/lang/Float;

    if-nez v2, :cond_b

    .line 488
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->contentWidth:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/itextpdf/text/pdf/PdfDiv;->paddingLeft:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/PdfDiv;->paddingRight:F

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->contentWidth:F

    .line 491
    .end local v17           #status:I
    :cond_b
    :goto_6
    return v17

    .line 387
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->width:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float v3, v16, v13

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 388
    const/16 v17, 0x2

    goto :goto_6

    .line 390
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->percentageWidth:Ljava/lang/Float;

    if-eqz v2, :cond_0

    .line 391
    sub-float v2, v16, v13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfDiv;->percentageWidth:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->contentWidth:F

    .line 392
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->contentWidth:F

    add-float v16, v13, v2

    goto/16 :goto_0

    .line 398
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->height:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float v3, v14, v15

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 399
    const/16 v17, 0x2

    goto :goto_6

    .line 401
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->percentageHeight:Ljava/lang/Float;

    if-eqz v2, :cond_1

    .line 402
    sub-float v2, v14, v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfDiv;->percentageHeight:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->contentHeight:F

    .line 403
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->contentHeight:F

    sub-float v15, v14, v2

    goto/16 :goto_1

    .line 410
    .restart local v18       #translationX:Ljava/lang/Float;
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->right:Ljava/lang/Float;

    if-eqz v2, :cond_11

    .line 411
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->right:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    neg-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    goto/16 :goto_2

    .line 413
    :cond_11
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    goto/16 :goto_2

    .line 419
    .restart local v19       #translationY:Ljava/lang/Float;
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfDiv;->bottom:Ljava/lang/Float;

    if-eqz v2, :cond_13

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfDiv;->bottom:Ljava/lang/Float;

    move-object/from16 v19, v0

    goto/16 :goto_3

    .line 422
    :cond_13
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    goto/16 :goto_3

    .line 433
    .end local v18           #translationX:Ljava/lang/Float;
    .end local v19           #translationY:Ljava/lang/Float;
    .restart local v10       #backgroundHeight:F
    .restart local v11       #backgroundWidth:F
    :cond_14
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 437
    :cond_15
    const/4 v10, 0x0

    goto/16 :goto_5
.end method

.method public process(Lcom/itextpdf/text/ElementListener;)Z
    .locals 2
    .parameter "listener"

    .prologue
    .line 206
    :try_start_0
    invoke-interface {p1, p0}, Lcom/itextpdf/text/ElementListener;->add(Lcom/itextpdf/text/Element;)Z
    :try_end_0
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 209
    :goto_0
    return v1

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, de:Lcom/itextpdf/text/DocumentException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBackgroundColor(Lcom/itextpdf/text/BaseColor;)V
    .locals 0
    .parameter "backgroundColor"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfDiv;->backgroundColor:Lcom/itextpdf/text/BaseColor;

    .line 145
    return-void
.end method

.method public setBottom(Ljava/lang/Float;)V
    .locals 0
    .parameter "bottom"

    .prologue
    .line 301
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfDiv;->bottom:Ljava/lang/Float;

    .line 302
    return-void
.end method

.method public setContent(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/Element;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 373
    .local p1, content:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/Element;>;"
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfDiv;->content:Ljava/util/ArrayList;

    .line 374
    return-void
.end method

.method public setContentHeight(F)V
    .locals 0
    .parameter "contentHeight"

    .prologue
    .line 112
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfDiv;->contentHeight:F

    .line 113
    return-void
.end method

.method public setContentWidth(F)V
    .locals 0
    .parameter "contentWidth"

    .prologue
    .line 104
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfDiv;->contentWidth:F

    .line 105
    return-void
.end method

.method public setFloatType(Lcom/itextpdf/text/pdf/PdfDiv$FloatType;)V
    .locals 0
    .parameter "floatType"

    .prologue
    .line 357
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfDiv;->floatType:Lcom/itextpdf/text/pdf/PdfDiv$FloatType;

    .line 358
    return-void
.end method

.method public setHeight(Ljava/lang/Float;)V
    .locals 0
    .parameter "height"

    .prologue
    .line 317
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfDiv;->height:Ljava/lang/Float;

    .line 318
    return-void
.end method

.method public setLeft(Ljava/lang/Float;)V
    .locals 0
    .parameter "left"

    .prologue
    .line 277
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfDiv;->left:Ljava/lang/Float;

    .line 278
    return-void
.end method

.method public setPaddingBottom(F)V
    .locals 0
    .parameter "paddingBottom"

    .prologue
    .line 349
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfDiv;->paddingBottom:F

    .line 350
    return-void
.end method

.method public setPaddingLeft(F)V
    .locals 0
    .parameter "paddingLeft"

    .prologue
    .line 325
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfDiv;->paddingLeft:F

    .line 326
    return-void
.end method

.method public setPaddingRight(F)V
    .locals 0
    .parameter "paddingRight"

    .prologue
    .line 333
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfDiv;->paddingRight:F

    .line 334
    return-void
.end method

.method public setPaddingTop(F)V
    .locals 0
    .parameter "paddingTop"

    .prologue
    .line 341
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfDiv;->paddingTop:F

    .line 342
    return-void
.end method

.method public setPercentageHeight(Ljava/lang/Float;)V
    .locals 0
    .parameter "percentageHeight"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfDiv;->percentageHeight:Ljava/lang/Float;

    .line 129
    return-void
.end method

.method public setPercentageWidth(Ljava/lang/Float;)V
    .locals 0
    .parameter "percentageWidth"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfDiv;->percentageWidth:Ljava/lang/Float;

    .line 137
    return-void
.end method

.method public setPosition(Lcom/itextpdf/text/pdf/PdfDiv$PositionType;)V
    .locals 0
    .parameter "position"

    .prologue
    .line 365
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfDiv;->position:Lcom/itextpdf/text/pdf/PdfDiv$PositionType;

    .line 366
    return-void
.end method

.method public setRight(Ljava/lang/Float;)V
    .locals 0
    .parameter "right"

    .prologue
    .line 285
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfDiv;->right:Ljava/lang/Float;

    .line 286
    return-void
.end method

.method public setSpacingAfter(F)V
    .locals 0
    .parameter "spacing"

    .prologue
    .line 228
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfDiv;->spacingAfter:F

    .line 229
    return-void
.end method

.method public setSpacingBefore(F)V
    .locals 0
    .parameter "spacing"

    .prologue
    .line 219
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfDiv;->spacingBefore:F

    .line 220
    return-void
.end method

.method public setTextAlignment(I)V
    .locals 0
    .parameter "textAlignment"

    .prologue
    .line 265
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfDiv;->textAlignment:I

    .line 266
    return-void
.end method

.method public setTop(Ljava/lang/Float;)V
    .locals 0
    .parameter "top"

    .prologue
    .line 293
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfDiv;->top:Ljava/lang/Float;

    .line 294
    return-void
.end method

.method public setWidth(Ljava/lang/Float;)V
    .locals 0
    .parameter "width"

    .prologue
    .line 309
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfDiv;->width:Ljava/lang/Float;

    .line 310
    return-void
.end method

.method public type()I
    .locals 1

    .prologue
    .line 178
    const/16 v0, 0x25

    return v0
.end method

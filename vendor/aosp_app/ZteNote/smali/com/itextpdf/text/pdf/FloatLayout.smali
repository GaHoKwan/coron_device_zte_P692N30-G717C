.class public Lcom/itextpdf/text/pdf/FloatLayout;
.super Ljava/lang/Object;
.source "FloatLayout.java"


# instance fields
.field protected final compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

.field protected final content:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/itextpdf/text/Element;",
            ">;"
        }
    .end annotation
.end field

.field protected filledWidth:F

.field protected floatLeftX:F

.field protected floatRightX:F

.field protected leftX:F

.field protected maxY:F

.field protected minY:F

.field protected rightX:F

.field protected yLine:F


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/ColumnText;Ljava/util/List;)V
    .locals 1
    .parameter "compositeColumn"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/text/pdf/ColumnText;",
            "Ljava/util/List",
            "<",
            "Lcom/itextpdf/text/Element;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p2, elements:Ljava/util/List;,"Ljava/util/List<Lcom/itextpdf/text/Element;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    invoke-static {p1}, Lcom/itextpdf/text/pdf/ColumnText;->duplicate(Lcom/itextpdf/text/pdf/ColumnText;)Lcom/itextpdf/text/pdf/ColumnText;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/FloatLayout;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    .line 96
    iput-object p2, p0, Lcom/itextpdf/text/pdf/FloatLayout;->content:Ljava/util/List;

    .line 97
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfContentByte;Ljava/util/List;)V
    .locals 2
    .parameter "canvas"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/text/pdf/PdfContentByte;",
            "Ljava/util/List",
            "<",
            "Lcom/itextpdf/text/Element;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p2, elements:Ljava/util/List;,"Ljava/util/List<Lcom/itextpdf/text/Element;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Lcom/itextpdf/text/pdf/ColumnText;

    invoke-direct {v0, p1}, Lcom/itextpdf/text/pdf/ColumnText;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/FloatLayout;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    .line 101
    iget-object v0, p0, Lcom/itextpdf/text/pdf/FloatLayout;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ColumnText;->setUseAscender(Z)V

    .line 102
    iput-object p2, p0, Lcom/itextpdf/text/pdf/FloatLayout;->content:Ljava/util/List;

    .line 103
    return-void
.end method

.method private floatingLayout(Ljava/util/List;Z)I
    .locals 12
    .parameter
    .parameter "simulate"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/itextpdf/text/Element;",
            ">;Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 168
    .local p1, floatingElements:Ljava/util/List;,"Ljava/util/List<Lcom/itextpdf/text/Element;>;"
    const/4 v11, 0x1

    .line 169
    .local v11, status:I
    iget v9, p0, Lcom/itextpdf/text/pdf/FloatLayout;->yLine:F

    .line 170
    .local v9, minYLine:F
    const/4 v8, 0x0

    .line 171
    .local v8, leftWidth:F
    const/4 v10, 0x0

    .line 173
    .local v10, rightWidth:F
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    .line 174
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/itextpdf/text/pdf/PdfDiv;

    if-eqz v1, :cond_3

    .line 175
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfDiv;

    .line 176
    .local v0, floatingElement:Lcom/itextpdf/text/pdf/PdfDiv;
    iget-object v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    const/4 v2, 0x1

    iget v3, p0, Lcom/itextpdf/text/pdf/FloatLayout;->floatLeftX:F

    iget v4, p0, Lcom/itextpdf/text/pdf/FloatLayout;->minY:F

    iget v5, p0, Lcom/itextpdf/text/pdf/FloatLayout;->floatRightX:F

    iget v6, p0, Lcom/itextpdf/text/pdf/FloatLayout;->yLine:F

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfDiv;->layout(Lcom/itextpdf/text/pdf/ColumnText;ZFFFF)I

    move-result v11

    .line 177
    and-int/lit8 v1, v11, 0x1

    if-nez v1, :cond_0

    .line 178
    iput v9, p0, Lcom/itextpdf/text/pdf/FloatLayout;->yLine:F

    .line 179
    iget v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->leftX:F

    iput v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->floatLeftX:F

    .line 180
    iget v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->rightX:F

    iput v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->floatRightX:F

    .line 181
    iget-object v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    const/4 v2, 0x1

    iget v3, p0, Lcom/itextpdf/text/pdf/FloatLayout;->floatLeftX:F

    iget v4, p0, Lcom/itextpdf/text/pdf/FloatLayout;->minY:F

    iget v5, p0, Lcom/itextpdf/text/pdf/FloatLayout;->floatRightX:F

    iget v6, p0, Lcom/itextpdf/text/pdf/FloatLayout;->yLine:F

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfDiv;->layout(Lcom/itextpdf/text/pdf/ColumnText;ZFFFF)I

    move-result v11

    .line 186
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfDiv;->getFloatType()Lcom/itextpdf/text/pdf/PdfDiv$FloatType;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/text/pdf/PdfDiv$FloatType;->LEFT:Lcom/itextpdf/text/pdf/PdfDiv$FloatType;

    if-ne v1, v2, :cond_2

    .line 187
    iget-object v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    iget v3, p0, Lcom/itextpdf/text/pdf/FloatLayout;->floatLeftX:F

    iget v4, p0, Lcom/itextpdf/text/pdf/FloatLayout;->minY:F

    iget v5, p0, Lcom/itextpdf/text/pdf/FloatLayout;->floatRightX:F

    iget v6, p0, Lcom/itextpdf/text/pdf/FloatLayout;->yLine:F

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfDiv;->layout(Lcom/itextpdf/text/pdf/ColumnText;ZFFFF)I

    move-result v11

    .line 188
    iget v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->floatLeftX:F

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfDiv;->getActualWidth()F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->floatLeftX:F

    .line 189
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfDiv;->getActualWidth()F

    move-result v1

    add-float/2addr v8, v1

    .line 195
    :cond_1
    :goto_1
    iget v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->yLine:F

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfDiv;->getActualHeight()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v9, v1}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 252
    .end local v0           #floatingElement:Lcom/itextpdf/text/pdf/PdfDiv;
    :goto_2
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 190
    .restart local v0       #floatingElement:Lcom/itextpdf/text/pdf/PdfDiv;
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfDiv;->getFloatType()Lcom/itextpdf/text/pdf/PdfDiv$FloatType;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/text/pdf/PdfDiv$FloatType;->RIGHT:Lcom/itextpdf/text/pdf/PdfDiv$FloatType;

    if-ne v1, v2, :cond_1

    .line 191
    iget-object v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    iget v2, p0, Lcom/itextpdf/text/pdf/FloatLayout;->floatRightX:F

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfDiv;->getActualWidth()F

    move-result v3

    sub-float/2addr v2, v3

    const v3, 0x3c23d70a

    sub-float v3, v2, v3

    iget v4, p0, Lcom/itextpdf/text/pdf/FloatLayout;->minY:F

    iget v5, p0, Lcom/itextpdf/text/pdf/FloatLayout;->floatRightX:F

    iget v6, p0, Lcom/itextpdf/text/pdf/FloatLayout;->yLine:F

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfDiv;->layout(Lcom/itextpdf/text/pdf/ColumnText;ZFFFF)I

    move-result v11

    .line 192
    iget v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->floatRightX:F

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfDiv;->getActualWidth()F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->floatRightX:F

    .line 193
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfDiv;->getActualWidth()F

    move-result v1

    add-float/2addr v10, v1

    goto :goto_1

    .line 197
    .end local v0           #floatingElement:Lcom/itextpdf/text/pdf/PdfDiv;
    :cond_3
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/text/Element;

    .line 198
    .local v7, firstElement:Lcom/itextpdf/text/Element;
    instance-of v1, v7, Lcom/itextpdf/text/api/Spaceable;

    if-eqz v1, :cond_4

    .line 199
    iget v2, p0, Lcom/itextpdf/text/pdf/FloatLayout;->yLine:F

    move-object v1, v7

    check-cast v1, Lcom/itextpdf/text/api/Spaceable;

    invoke-interface {v1}, Lcom/itextpdf/text/api/Spaceable;->getSpacingBefore()F

    move-result v1

    sub-float v1, v2, v1

    iput v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->yLine:F

    .line 201
    :cond_4
    iget-object v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v1, v7}, Lcom/itextpdf/text/pdf/ColumnText;->addElement(Lcom/itextpdf/text/Element;)V

    .line 202
    iget v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->yLine:F

    cmpl-float v1, v1, v9

    if-lez v1, :cond_8

    .line 203
    iget-object v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    iget v2, p0, Lcom/itextpdf/text/pdf/FloatLayout;->floatLeftX:F

    iget v3, p0, Lcom/itextpdf/text/pdf/FloatLayout;->yLine:F

    iget v4, p0, Lcom/itextpdf/text/pdf/FloatLayout;->floatRightX:F

    invoke-virtual {v1, v2, v3, v4, v9}, Lcom/itextpdf/text/pdf/ColumnText;->setSimpleColumn(FFFF)V

    .line 207
    :goto_3
    iget-object v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/ColumnText;->setFilledWidth(F)V

    .line 209
    iget-object v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v1, p2}, Lcom/itextpdf/text/pdf/ColumnText;->go(Z)I

    move-result v11

    .line 210
    iget v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->yLine:F

    cmpl-float v1, v1, v9

    if-lez v1, :cond_b

    iget v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->floatLeftX:F

    iget v2, p0, Lcom/itextpdf/text/pdf/FloatLayout;->leftX:F

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_5

    iget v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->floatRightX:F

    iget v2, p0, Lcom/itextpdf/text/pdf/FloatLayout;->rightX:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_b

    :cond_5
    and-int/lit8 v1, v11, 0x1

    if-nez v1, :cond_b

    .line 211
    iput v9, p0, Lcom/itextpdf/text/pdf/FloatLayout;->yLine:F

    .line 212
    iget v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->leftX:F

    iput v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->floatLeftX:F

    .line 213
    iget v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->rightX:F

    iput v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->floatRightX:F

    .line 214
    const/4 v1, 0x0

    cmpl-float v1, v8, v1

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    cmpl-float v1, v10, v1

    if-eqz v1, :cond_9

    .line 215
    iget v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->rightX:F

    iget v2, p0, Lcom/itextpdf/text/pdf/FloatLayout;->leftX:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->filledWidth:F

    .line 225
    :cond_6
    :goto_4
    const/4 v8, 0x0

    .line 226
    const/4 v10, 0x0

    .line 227
    iget-object v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    iget v2, p0, Lcom/itextpdf/text/pdf/FloatLayout;->floatLeftX:F

    iget v3, p0, Lcom/itextpdf/text/pdf/FloatLayout;->yLine:F

    iget v4, p0, Lcom/itextpdf/text/pdf/FloatLayout;->floatRightX:F

    iget v5, p0, Lcom/itextpdf/text/pdf/FloatLayout;->minY:F

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/itextpdf/text/pdf/ColumnText;->setSimpleColumn(FFFF)V

    .line 228
    iget-object v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v1, p2}, Lcom/itextpdf/text/pdf/ColumnText;->go(Z)I

    move-result v11

    .line 229
    iget-object v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/ColumnText;->getYLine()F

    move-result v1

    iget-object v2, p0, Lcom/itextpdf/text/pdf/FloatLayout;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/ColumnText;->getDescender()F

    move-result v2

    add-float v9, v1, v2

    .line 230
    iput v9, p0, Lcom/itextpdf/text/pdf/FloatLayout;->yLine:F

    .line 231
    iget-object v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/ColumnText;->getFilledWidth()F

    move-result v1

    iget v2, p0, Lcom/itextpdf/text/pdf/FloatLayout;->filledWidth:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7

    .line 232
    iget-object v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/ColumnText;->getFilledWidth()F

    move-result v1

    iput v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->filledWidth:F

    .line 246
    :cond_7
    :goto_5
    iget-object v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/ColumnText;->getCompositeElements()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto/16 :goto_2

    .line 205
    :cond_8
    iget-object v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    iget v2, p0, Lcom/itextpdf/text/pdf/FloatLayout;->floatLeftX:F

    iget v3, p0, Lcom/itextpdf/text/pdf/FloatLayout;->yLine:F

    iget v4, p0, Lcom/itextpdf/text/pdf/FloatLayout;->floatRightX:F

    iget v5, p0, Lcom/itextpdf/text/pdf/FloatLayout;->minY:F

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/itextpdf/text/pdf/ColumnText;->setSimpleColumn(FFFF)V

    goto/16 :goto_3

    .line 217
    :cond_9
    iget v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->filledWidth:F

    cmpl-float v1, v8, v1

    if-lez v1, :cond_a

    .line 218
    iput v8, p0, Lcom/itextpdf/text/pdf/FloatLayout;->filledWidth:F

    .line 220
    :cond_a
    iget v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->filledWidth:F

    cmpl-float v1, v10, v1

    if-lez v1, :cond_6

    .line 221
    iput v10, p0, Lcom/itextpdf/text/pdf/FloatLayout;->filledWidth:F

    goto :goto_4

    .line 235
    :cond_b
    const/4 v1, 0x0

    cmpl-float v1, v10, v1

    if-lez v1, :cond_d

    .line 236
    iget-object v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/ColumnText;->getFilledWidth()F

    move-result v1

    add-float/2addr v10, v1

    .line 242
    :cond_c
    :goto_6
    iget-object v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/ColumnText;->getYLine()F

    move-result v1

    iget-object v2, p0, Lcom/itextpdf/text/pdf/FloatLayout;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/ColumnText;->getDescender()F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {v1, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 243
    iget-object v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/ColumnText;->getYLine()F

    move-result v1

    iget-object v2, p0, Lcom/itextpdf/text/pdf/FloatLayout;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/ColumnText;->getDescender()F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->yLine:F

    goto :goto_5

    .line 237
    :cond_d
    const/4 v1, 0x0

    cmpl-float v1, v8, v1

    if-lez v1, :cond_e

    .line 238
    iget-object v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/ColumnText;->getFilledWidth()F

    move-result v1

    add-float/2addr v8, v1

    goto :goto_6

    .line 239
    :cond_e
    iget-object v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/ColumnText;->getFilledWidth()F

    move-result v1

    iget v2, p0, Lcom/itextpdf/text/pdf/FloatLayout;->filledWidth:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_c

    .line 240
    iget-object v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/ColumnText;->getFilledWidth()F

    move-result v1

    iput v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->filledWidth:F

    goto :goto_6

    .line 256
    .end local v7           #firstElement:Lcom/itextpdf/text/Element;
    :cond_f
    const/4 v1, 0x0

    cmpl-float v1, v8, v1

    if-eqz v1, :cond_11

    const/4 v1, 0x0

    cmpl-float v1, v10, v1

    if-eqz v1, :cond_11

    .line 257
    iget v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->rightX:F

    iget v2, p0, Lcom/itextpdf/text/pdf/FloatLayout;->leftX:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->filledWidth:F

    .line 267
    :cond_10
    :goto_7
    iput v9, p0, Lcom/itextpdf/text/pdf/FloatLayout;->yLine:F

    .line 268
    iget v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->leftX:F

    iput v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->floatLeftX:F

    .line 269
    iget v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->rightX:F

    iput v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->floatRightX:F

    .line 271
    return v11

    .line 259
    :cond_11
    iget v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->filledWidth:F

    cmpl-float v1, v8, v1

    if-lez v1, :cond_12

    .line 260
    iput v8, p0, Lcom/itextpdf/text/pdf/FloatLayout;->filledWidth:F

    .line 262
    :cond_12
    iget v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->filledWidth:F

    cmpl-float v1, v10, v1

    if-lez v1, :cond_10

    .line 263
    iput v10, p0, Lcom/itextpdf/text/pdf/FloatLayout;->filledWidth:F

    goto :goto_7
.end method


# virtual methods
.method public getFilledWidth()F
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/itextpdf/text/pdf/FloatLayout;->filledWidth:F

    return v0
.end method

.method public getYLine()F
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/itextpdf/text/pdf/FloatLayout;->yLine:F

    return v0
.end method

.method public layout(Z)I
    .locals 10
    .parameter "simulate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 117
    const/4 v8, 0x1

    .line 118
    .local v8, status:I
    const/4 v1, 0x0

    iput v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->filledWidth:F

    .line 120
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v7, floatingElements:Ljava/util/List;,"Ljava/util/List<Lcom/itextpdf/text/Element;>;"
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->content:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 123
    iget-object v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->content:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/itextpdf/text/pdf/PdfDiv;

    if-eqz v1, :cond_5

    .line 124
    iget-object v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->content:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfDiv;

    .line 125
    .local v0, floatingElement:Lcom/itextpdf/text/pdf/PdfDiv;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfDiv;->getFloatType()Lcom/itextpdf/text/pdf/PdfDiv$FloatType;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/text/pdf/PdfDiv$FloatType;->LEFT:Lcom/itextpdf/text/pdf/PdfDiv$FloatType;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfDiv;->getFloatType()Lcom/itextpdf/text/pdf/PdfDiv$FloatType;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/text/pdf/PdfDiv$FloatType;->RIGHT:Lcom/itextpdf/text/pdf/PdfDiv$FloatType;

    if-ne v1, v2, :cond_1

    .line 126
    :cond_0
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->content:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 129
    :cond_1
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 130
    invoke-direct {p0, v7, p1}, Lcom/itextpdf/text/pdf/FloatLayout;->floatingLayout(Ljava/util/List;Z)I

    move-result v8

    .line 136
    :cond_2
    iget-object v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    const/4 v2, 0x1

    iget v3, p0, Lcom/itextpdf/text/pdf/FloatLayout;->floatLeftX:F

    iget v4, p0, Lcom/itextpdf/text/pdf/FloatLayout;->minY:F

    iget v5, p0, Lcom/itextpdf/text/pdf/FloatLayout;->floatRightX:F

    iget v6, p0, Lcom/itextpdf/text/pdf/FloatLayout;->yLine:F

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfDiv;->layout(Lcom/itextpdf/text/pdf/ColumnText;ZFFFF)I

    move-result v8

    .line 138
    if-nez p1, :cond_3

    .line 139
    iget-object v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    iget v3, p0, Lcom/itextpdf/text/pdf/FloatLayout;->floatLeftX:F

    iget v4, p0, Lcom/itextpdf/text/pdf/FloatLayout;->minY:F

    iget v5, p0, Lcom/itextpdf/text/pdf/FloatLayout;->floatRightX:F

    iget v6, p0, Lcom/itextpdf/text/pdf/FloatLayout;->yLine:F

    move v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfDiv;->layout(Lcom/itextpdf/text/pdf/ColumnText;ZFFFF)I

    move-result v8

    .line 142
    :cond_3
    iget v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->yLine:F

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfDiv;->getActualHeight()F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->yLine:F

    .line 144
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfDiv;->getActualWidth()F

    move-result v1

    iget v2, p0, Lcom/itextpdf/text/pdf/FloatLayout;->filledWidth:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 145
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfDiv;->getActualWidth()F

    move-result v1

    iput v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->filledWidth:F

    .line 150
    :cond_4
    iget-object v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->content:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 153
    .end local v0           #floatingElement:Lcom/itextpdf/text/pdf/PdfDiv;
    :cond_5
    iget-object v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->content:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->content:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_0

    .line 158
    :cond_6
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 159
    invoke-direct {p0, v7, p1}, Lcom/itextpdf/text/pdf/FloatLayout;->floatingLayout(Ljava/util/List;Z)I

    move-result v8

    .line 162
    :cond_7
    iget-object v1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->content:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 164
    return v8
.end method

.method public setFilledWidth(F)V
    .locals 0
    .parameter "filledWidth"

    .prologue
    .line 85
    iput p1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->filledWidth:F

    .line 86
    return-void
.end method

.method public setSimpleColumn(FFFF)V
    .locals 1
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    .line 106
    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/pdf/FloatLayout;->leftX:F

    .line 107
    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/pdf/FloatLayout;->maxY:F

    .line 108
    invoke-static {p2, p4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/pdf/FloatLayout;->minY:F

    .line 109
    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/pdf/FloatLayout;->rightX:F

    .line 110
    iget v0, p0, Lcom/itextpdf/text/pdf/FloatLayout;->leftX:F

    iput v0, p0, Lcom/itextpdf/text/pdf/FloatLayout;->floatLeftX:F

    .line 111
    iget v0, p0, Lcom/itextpdf/text/pdf/FloatLayout;->rightX:F

    iput v0, p0, Lcom/itextpdf/text/pdf/FloatLayout;->floatRightX:F

    .line 112
    iget v0, p0, Lcom/itextpdf/text/pdf/FloatLayout;->maxY:F

    iput v0, p0, Lcom/itextpdf/text/pdf/FloatLayout;->yLine:F

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/pdf/FloatLayout;->filledWidth:F

    .line 114
    return-void
.end method

.method public setYLine(F)V
    .locals 0
    .parameter "yLine"

    .prologue
    .line 71
    iput p1, p0, Lcom/itextpdf/text/pdf/FloatLayout;->yLine:F

    .line 72
    return-void
.end method

.class public Lcom/itextpdf/text/Rectangle;
.super Ljava/lang/Object;
.source "Rectangle.java"

# interfaces
.implements Lcom/itextpdf/text/Element;


# static fields
.field public static final BOTTOM:I = 0x2

.field public static final BOX:I = 0xf

.field public static final LEFT:I = 0x4

.field public static final NO_BORDER:I = 0x0

.field public static final RIGHT:I = 0x8

.field public static final TOP:I = 0x1

.field public static final UNDEFINED:I = -0x1


# instance fields
.field protected backgroundColor:Lcom/itextpdf/text/BaseColor;

.field protected border:I

.field protected borderColor:Lcom/itextpdf/text/BaseColor;

.field protected borderColorBottom:Lcom/itextpdf/text/BaseColor;

.field protected borderColorLeft:Lcom/itextpdf/text/BaseColor;

.field protected borderColorRight:Lcom/itextpdf/text/BaseColor;

.field protected borderColorTop:Lcom/itextpdf/text/BaseColor;

.field protected borderWidth:F

.field protected borderWidthBottom:F

.field protected borderWidthLeft:F

.field protected borderWidthRight:F

.field protected borderWidthTop:F

.field protected llx:F

.field protected lly:F

.field protected rotation:I

.field protected urx:F

.field protected ury:F

.field protected useVariableBorders:Z


# direct methods
.method public constructor <init>(FF)V
    .locals 1
    .parameter "urx"
    .parameter "ury"

    .prologue
    const/4 v0, 0x0

    .line 183
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    .line 184
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 4
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    const/4 v3, 0x0

    const/high16 v2, -0x4080

    const/4 v1, 0x0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput v3, p0, Lcom/itextpdf/text/Rectangle;->rotation:I

    .line 105
    iput-object v1, p0, Lcom/itextpdf/text/Rectangle;->backgroundColor:Lcom/itextpdf/text/BaseColor;

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/Rectangle;->border:I

    .line 111
    iput-boolean v3, p0, Lcom/itextpdf/text/Rectangle;->useVariableBorders:Z

    .line 114
    iput v2, p0, Lcom/itextpdf/text/Rectangle;->borderWidth:F

    .line 117
    iput v2, p0, Lcom/itextpdf/text/Rectangle;->borderWidthLeft:F

    .line 120
    iput v2, p0, Lcom/itextpdf/text/Rectangle;->borderWidthRight:F

    .line 123
    iput v2, p0, Lcom/itextpdf/text/Rectangle;->borderWidthTop:F

    .line 126
    iput v2, p0, Lcom/itextpdf/text/Rectangle;->borderWidthBottom:F

    .line 129
    iput-object v1, p0, Lcom/itextpdf/text/Rectangle;->borderColor:Lcom/itextpdf/text/BaseColor;

    .line 132
    iput-object v1, p0, Lcom/itextpdf/text/Rectangle;->borderColorLeft:Lcom/itextpdf/text/BaseColor;

    .line 135
    iput-object v1, p0, Lcom/itextpdf/text/Rectangle;->borderColorRight:Lcom/itextpdf/text/BaseColor;

    .line 138
    iput-object v1, p0, Lcom/itextpdf/text/Rectangle;->borderColorTop:Lcom/itextpdf/text/BaseColor;

    .line 141
    iput-object v1, p0, Lcom/itextpdf/text/Rectangle;->borderColorBottom:Lcom/itextpdf/text/BaseColor;

    .line 154
    iput p1, p0, Lcom/itextpdf/text/Rectangle;->llx:F

    .line 155
    iput p2, p0, Lcom/itextpdf/text/Rectangle;->lly:F

    .line 156
    iput p3, p0, Lcom/itextpdf/text/Rectangle;->urx:F

    .line 157
    iput p4, p0, Lcom/itextpdf/text/Rectangle;->ury:F

    .line 158
    return-void
.end method

.method public constructor <init>(FFFFI)V
    .locals 0
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"
    .parameter "rotation"

    .prologue
    .line 171
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    .line 172
    invoke-virtual {p0, p5}, Lcom/itextpdf/text/Rectangle;->setRotation(I)V

    .line 173
    return-void
.end method

.method public constructor <init>(FFI)V
    .locals 6
    .parameter "urx"
    .parameter "ury"
    .parameter "rotation"

    .prologue
    const/4 v1, 0x0

    .line 196
    move-object v0, p0

    move v2, v1

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/text/Rectangle;-><init>(FFFFI)V

    .line 197
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/Rectangle;)V
    .locals 4
    .parameter "rect"

    .prologue
    .line 205
    iget v0, p1, Lcom/itextpdf/text/Rectangle;->llx:F

    iget v1, p1, Lcom/itextpdf/text/Rectangle;->lly:F

    iget v2, p1, Lcom/itextpdf/text/Rectangle;->urx:F

    iget v3, p1, Lcom/itextpdf/text/Rectangle;->ury:F

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    .line 206
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/Rectangle;->cloneNonPositionParameters(Lcom/itextpdf/text/Rectangle;)V

    .line 207
    return-void
.end method

.method private getVariableBorderWidth(FI)F
    .locals 1
    .parameter "variableWidthValue"
    .parameter "side"

    .prologue
    .line 616
    iget v0, p0, Lcom/itextpdf/text/Rectangle;->border:I

    and-int/2addr v0, p2

    if-eqz v0, :cond_1

    .line 617
    const/high16 v0, -0x4080

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 618
    .end local p1
    :goto_0
    return p1

    .line 617
    .restart local p1
    :cond_0
    iget p1, p0, Lcom/itextpdf/text/Rectangle;->borderWidth:F

    goto :goto_0

    .line 618
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private updateBorderBasedOnWidth(FI)V
    .locals 1
    .parameter "width"
    .parameter "side"

    .prologue
    .line 631
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/Rectangle;->useVariableBorders:Z

    .line 632
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 633
    invoke-virtual {p0, p2}, Lcom/itextpdf/text/Rectangle;->enableBorderSide(I)V

    .line 636
    :goto_0
    return-void

    .line 635
    :cond_0
    invoke-virtual {p0, p2}, Lcom/itextpdf/text/Rectangle;->disableBorderSide(I)V

    goto :goto_0
.end method


# virtual methods
.method public cloneNonPositionParameters(Lcom/itextpdf/text/Rectangle;)V
    .locals 1
    .parameter "rect"

    .prologue
    .line 843
    iget v0, p1, Lcom/itextpdf/text/Rectangle;->rotation:I

    iput v0, p0, Lcom/itextpdf/text/Rectangle;->rotation:I

    .line 844
    iget-object v0, p1, Lcom/itextpdf/text/Rectangle;->backgroundColor:Lcom/itextpdf/text/BaseColor;

    iput-object v0, p0, Lcom/itextpdf/text/Rectangle;->backgroundColor:Lcom/itextpdf/text/BaseColor;

    .line 845
    iget v0, p1, Lcom/itextpdf/text/Rectangle;->border:I

    iput v0, p0, Lcom/itextpdf/text/Rectangle;->border:I

    .line 846
    iget-boolean v0, p1, Lcom/itextpdf/text/Rectangle;->useVariableBorders:Z

    iput-boolean v0, p0, Lcom/itextpdf/text/Rectangle;->useVariableBorders:Z

    .line 847
    iget v0, p1, Lcom/itextpdf/text/Rectangle;->borderWidth:F

    iput v0, p0, Lcom/itextpdf/text/Rectangle;->borderWidth:F

    .line 848
    iget v0, p1, Lcom/itextpdf/text/Rectangle;->borderWidthLeft:F

    iput v0, p0, Lcom/itextpdf/text/Rectangle;->borderWidthLeft:F

    .line 849
    iget v0, p1, Lcom/itextpdf/text/Rectangle;->borderWidthRight:F

    iput v0, p0, Lcom/itextpdf/text/Rectangle;->borderWidthRight:F

    .line 850
    iget v0, p1, Lcom/itextpdf/text/Rectangle;->borderWidthTop:F

    iput v0, p0, Lcom/itextpdf/text/Rectangle;->borderWidthTop:F

    .line 851
    iget v0, p1, Lcom/itextpdf/text/Rectangle;->borderWidthBottom:F

    iput v0, p0, Lcom/itextpdf/text/Rectangle;->borderWidthBottom:F

    .line 852
    iget-object v0, p1, Lcom/itextpdf/text/Rectangle;->borderColor:Lcom/itextpdf/text/BaseColor;

    iput-object v0, p0, Lcom/itextpdf/text/Rectangle;->borderColor:Lcom/itextpdf/text/BaseColor;

    .line 853
    iget-object v0, p1, Lcom/itextpdf/text/Rectangle;->borderColorLeft:Lcom/itextpdf/text/BaseColor;

    iput-object v0, p0, Lcom/itextpdf/text/Rectangle;->borderColorLeft:Lcom/itextpdf/text/BaseColor;

    .line 854
    iget-object v0, p1, Lcom/itextpdf/text/Rectangle;->borderColorRight:Lcom/itextpdf/text/BaseColor;

    iput-object v0, p0, Lcom/itextpdf/text/Rectangle;->borderColorRight:Lcom/itextpdf/text/BaseColor;

    .line 855
    iget-object v0, p1, Lcom/itextpdf/text/Rectangle;->borderColorTop:Lcom/itextpdf/text/BaseColor;

    iput-object v0, p0, Lcom/itextpdf/text/Rectangle;->borderColorTop:Lcom/itextpdf/text/BaseColor;

    .line 856
    iget-object v0, p1, Lcom/itextpdf/text/Rectangle;->borderColorBottom:Lcom/itextpdf/text/BaseColor;

    iput-object v0, p0, Lcom/itextpdf/text/Rectangle;->borderColorBottom:Lcom/itextpdf/text/BaseColor;

    .line 857
    return-void
.end method

.method public disableBorderSide(I)V
    .locals 2
    .parameter "side"

    .prologue
    .line 583
    iget v0, p0, Lcom/itextpdf/text/Rectangle;->border:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 584
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/Rectangle;->border:I

    .line 585
    :cond_0
    iget v0, p0, Lcom/itextpdf/text/Rectangle;->border:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/itextpdf/text/Rectangle;->border:I

    .line 586
    return-void
.end method

.method public enableBorderSide(I)V
    .locals 2
    .parameter "side"

    .prologue
    .line 571
    iget v0, p0, Lcom/itextpdf/text/Rectangle;->border:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 572
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/Rectangle;->border:I

    .line 573
    :cond_0
    iget v0, p0, Lcom/itextpdf/text/Rectangle;->border:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/itextpdf/text/Rectangle;->border:I

    .line 574
    return-void
.end method

.method public getBackgroundColor()Lcom/itextpdf/text/BaseColor;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/itextpdf/text/Rectangle;->backgroundColor:Lcom/itextpdf/text/BaseColor;

    return-object v0
.end method

.method public getBorder()I
    .locals 1

    .prologue
    .line 500
    iget v0, p0, Lcom/itextpdf/text/Rectangle;->border:I

    return v0
.end method

.method public getBorderColor()Lcom/itextpdf/text/BaseColor;
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/itextpdf/text/Rectangle;->borderColor:Lcom/itextpdf/text/BaseColor;

    return-object v0
.end method

.method public getBorderColorBottom()Lcom/itextpdf/text/BaseColor;
    .locals 1

    .prologue
    .line 800
    iget-object v0, p0, Lcom/itextpdf/text/Rectangle;->borderColorBottom:Lcom/itextpdf/text/BaseColor;

    if-nez v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/itextpdf/text/Rectangle;->borderColor:Lcom/itextpdf/text/BaseColor;

    .line 802
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/Rectangle;->borderColorBottom:Lcom/itextpdf/text/BaseColor;

    goto :goto_0
.end method

.method public getBorderColorLeft()Lcom/itextpdf/text/BaseColor;
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lcom/itextpdf/text/Rectangle;->borderColorLeft:Lcom/itextpdf/text/BaseColor;

    if-nez v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/itextpdf/text/Rectangle;->borderColor:Lcom/itextpdf/text/BaseColor;

    .line 742
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/Rectangle;->borderColorLeft:Lcom/itextpdf/text/BaseColor;

    goto :goto_0
.end method

.method public getBorderColorRight()Lcom/itextpdf/text/BaseColor;
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Lcom/itextpdf/text/Rectangle;->borderColorRight:Lcom/itextpdf/text/BaseColor;

    if-nez v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/itextpdf/text/Rectangle;->borderColor:Lcom/itextpdf/text/BaseColor;

    .line 762
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/Rectangle;->borderColorRight:Lcom/itextpdf/text/BaseColor;

    goto :goto_0
.end method

.method public getBorderColorTop()Lcom/itextpdf/text/BaseColor;
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lcom/itextpdf/text/Rectangle;->borderColorTop:Lcom/itextpdf/text/BaseColor;

    if-nez v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/itextpdf/text/Rectangle;->borderColor:Lcom/itextpdf/text/BaseColor;

    .line 782
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/Rectangle;->borderColorTop:Lcom/itextpdf/text/BaseColor;

    goto :goto_0
.end method

.method public getBorderWidth()F
    .locals 1

    .prologue
    .line 596
    iget v0, p0, Lcom/itextpdf/text/Rectangle;->borderWidth:F

    return v0
.end method

.method public getBorderWidthBottom()F
    .locals 2

    .prologue
    .line 701
    iget v0, p0, Lcom/itextpdf/text/Rectangle;->borderWidthBottom:F

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/text/Rectangle;->getVariableBorderWidth(FI)F

    move-result v0

    return v0
.end method

.method public getBorderWidthLeft()F
    .locals 2

    .prologue
    .line 644
    iget v0, p0, Lcom/itextpdf/text/Rectangle;->borderWidthLeft:F

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/text/Rectangle;->getVariableBorderWidth(FI)F

    move-result v0

    return v0
.end method

.method public getBorderWidthRight()F
    .locals 2

    .prologue
    .line 663
    iget v0, p0, Lcom/itextpdf/text/Rectangle;->borderWidthRight:F

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/text/Rectangle;->getVariableBorderWidth(FI)F

    move-result v0

    return v0
.end method

.method public getBorderWidthTop()F
    .locals 2

    .prologue
    .line 682
    iget v0, p0, Lcom/itextpdf/text/Rectangle;->borderWidthTop:F

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/text/Rectangle;->getVariableBorderWidth(FI)F

    move-result v0

    return v0
.end method

.method public getBottom()F
    .locals 1

    .prologue
    .line 371
    iget v0, p0, Lcom/itextpdf/text/Rectangle;->lly:F

    return v0
.end method

.method public getBottom(F)F
    .locals 1
    .parameter "margin"

    .prologue
    .line 381
    iget v0, p0, Lcom/itextpdf/text/Rectangle;->lly:F

    add-float/2addr v0, p1

    return v0
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
    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getGrayFill()F
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/itextpdf/text/Rectangle;->backgroundColor:Lcom/itextpdf/text/BaseColor;

    instance-of v0, v0, Lcom/itextpdf/text/pdf/GrayColor;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/itextpdf/text/Rectangle;->backgroundColor:Lcom/itextpdf/text/BaseColor;

    check-cast v0, Lcom/itextpdf/text/pdf/GrayColor;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/GrayColor;->getGray()F

    move-result v0

    .line 480
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeight()F
    .locals 2

    .prologue
    .line 390
    iget v0, p0, Lcom/itextpdf/text/Rectangle;->ury:F

    iget v1, p0, Lcom/itextpdf/text/Rectangle;->lly:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getLeft()F
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/itextpdf/text/Rectangle;->llx:F

    return v0
.end method

.method public getLeft(F)F
    .locals 1
    .parameter "margin"

    .prologue
    .line 288
    iget v0, p0, Lcom/itextpdf/text/Rectangle;->llx:F

    add-float/2addr v0, p1

    return v0
.end method

.method public getRight()F
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lcom/itextpdf/text/Rectangle;->urx:F

    return v0
.end method

.method public getRight(F)F
    .locals 1
    .parameter "margin"

    .prologue
    .line 316
    iget v0, p0, Lcom/itextpdf/text/Rectangle;->urx:F

    sub-float/2addr v0, p1

    return v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 418
    iget v0, p0, Lcom/itextpdf/text/Rectangle;->rotation:I

    return v0
.end method

.method public getTop()F
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Lcom/itextpdf/text/Rectangle;->ury:F

    return v0
.end method

.method public getTop(F)F
    .locals 1
    .parameter "margin"

    .prologue
    .line 353
    iget v0, p0, Lcom/itextpdf/text/Rectangle;->ury:F

    sub-float/2addr v0, p1

    return v0
.end method

.method public getWidth()F
    .locals 2

    .prologue
    .line 325
    iget v0, p0, Lcom/itextpdf/text/Rectangle;->urx:F

    iget v1, p0, Lcom/itextpdf/text/Rectangle;->llx:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public hasBorder(I)Z
    .locals 3
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    .line 526
    iget v1, p0, Lcom/itextpdf/text/Rectangle;->border:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 528
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/itextpdf/text/Rectangle;->border:I

    and-int/2addr v1, p1

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasBorders()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 509
    iget v1, p0, Lcom/itextpdf/text/Rectangle;->border:I

    packed-switch v1, :pswitch_data_0

    .line 514
    iget v1, p0, Lcom/itextpdf/text/Rectangle;->borderWidth:F

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    iget v1, p0, Lcom/itextpdf/text/Rectangle;->borderWidthLeft:F

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    iget v1, p0, Lcom/itextpdf/text/Rectangle;->borderWidthRight:F

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    iget v1, p0, Lcom/itextpdf/text/Rectangle;->borderWidthTop:F

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    iget v1, p0, Lcom/itextpdf/text/Rectangle;->borderWidthBottom:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :pswitch_0
    return v0

    .line 509
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isContent()Z
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x1

    return v0
.end method

.method public isNestable()Z
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method public isUseVariableBorders()Z
    .locals 1

    .prologue
    .line 552
    iget-boolean v0, p0, Lcom/itextpdf/text/Rectangle;->useVariableBorders:Z

    return v0
.end method

.method public normalize()V
    .locals 3

    .prologue
    .line 398
    iget v1, p0, Lcom/itextpdf/text/Rectangle;->llx:F

    iget v2, p0, Lcom/itextpdf/text/Rectangle;->urx:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 399
    iget v0, p0, Lcom/itextpdf/text/Rectangle;->llx:F

    .line 400
    .local v0, a:F
    iget v1, p0, Lcom/itextpdf/text/Rectangle;->urx:F

    iput v1, p0, Lcom/itextpdf/text/Rectangle;->llx:F

    .line 401
    iput v0, p0, Lcom/itextpdf/text/Rectangle;->urx:F

    .line 403
    .end local v0           #a:F
    :cond_0
    iget v1, p0, Lcom/itextpdf/text/Rectangle;->lly:F

    iget v2, p0, Lcom/itextpdf/text/Rectangle;->ury:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 404
    iget v0, p0, Lcom/itextpdf/text/Rectangle;->lly:F

    .line 405
    .restart local v0       #a:F
    iget v1, p0, Lcom/itextpdf/text/Rectangle;->ury:F

    iput v1, p0, Lcom/itextpdf/text/Rectangle;->lly:F

    .line 406
    iput v0, p0, Lcom/itextpdf/text/Rectangle;->ury:F

    .line 408
    .end local v0           #a:F
    :cond_1
    return-void
.end method

.method public process(Lcom/itextpdf/text/ElementListener;)Z
    .locals 2
    .parameter "listener"

    .prologue
    .line 220
    :try_start_0
    invoke-interface {p1, p0}, Lcom/itextpdf/text/ElementListener;->add(Lcom/itextpdf/text/Element;)Z
    :try_end_0
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 223
    :goto_0
    return v1

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, de:Lcom/itextpdf/text/DocumentException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public rectangle(FF)Lcom/itextpdf/text/Rectangle;
    .locals 2
    .parameter "top"
    .parameter "bottom"

    .prologue
    .line 824
    new-instance v0, Lcom/itextpdf/text/Rectangle;

    invoke-direct {v0, p0}, Lcom/itextpdf/text/Rectangle;-><init>(Lcom/itextpdf/text/Rectangle;)V

    .line 825
    .local v0, tmp:Lcom/itextpdf/text/Rectangle;
    invoke-virtual {p0}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v1

    cmpl-float v1, v1, p1

    if-lez v1, :cond_0

    .line 826
    invoke-virtual {v0, p1}, Lcom/itextpdf/text/Rectangle;->setTop(F)V

    .line 827
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Rectangle;->disableBorderSide(I)V

    .line 829
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/Rectangle;->getBottom()F

    move-result v1

    cmpg-float v1, v1, p2

    if-gez v1, :cond_1

    .line 830
    invoke-virtual {v0, p2}, Lcom/itextpdf/text/Rectangle;->setBottom(F)V

    .line 831
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Rectangle;->disableBorderSide(I)V

    .line 833
    :cond_1
    return-object v0
.end method

.method public rotate()Lcom/itextpdf/text/Rectangle;
    .locals 5

    .prologue
    .line 445
    new-instance v0, Lcom/itextpdf/text/Rectangle;

    iget v1, p0, Lcom/itextpdf/text/Rectangle;->lly:F

    iget v2, p0, Lcom/itextpdf/text/Rectangle;->llx:F

    iget v3, p0, Lcom/itextpdf/text/Rectangle;->ury:F

    iget v4, p0, Lcom/itextpdf/text/Rectangle;->urx:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    .line 446
    .local v0, rect:Lcom/itextpdf/text/Rectangle;
    iget v1, p0, Lcom/itextpdf/text/Rectangle;->rotation:I

    add-int/lit8 v1, v1, 0x5a

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Rectangle;->setRotation(I)V

    .line 447
    return-object v0
.end method

.method public setBackgroundColor(Lcom/itextpdf/text/BaseColor;)V
    .locals 0
    .parameter "backgroundColor"

    .prologue
    .line 468
    iput-object p1, p0, Lcom/itextpdf/text/Rectangle;->backgroundColor:Lcom/itextpdf/text/BaseColor;

    .line 469
    return-void
.end method

.method public setBorder(I)V
    .locals 0
    .parameter "border"

    .prologue
    .line 541
    iput p1, p0, Lcom/itextpdf/text/Rectangle;->border:I

    .line 542
    return-void
.end method

.method public setBorderColor(Lcom/itextpdf/text/BaseColor;)V
    .locals 0
    .parameter "borderColor"

    .prologue
    .line 731
    iput-object p1, p0, Lcom/itextpdf/text/Rectangle;->borderColor:Lcom/itextpdf/text/BaseColor;

    .line 732
    return-void
.end method

.method public setBorderColorBottom(Lcom/itextpdf/text/BaseColor;)V
    .locals 0
    .parameter "borderColorBottom"

    .prologue
    .line 811
    iput-object p1, p0, Lcom/itextpdf/text/Rectangle;->borderColorBottom:Lcom/itextpdf/text/BaseColor;

    .line 812
    return-void
.end method

.method public setBorderColorLeft(Lcom/itextpdf/text/BaseColor;)V
    .locals 0
    .parameter "borderColorLeft"

    .prologue
    .line 751
    iput-object p1, p0, Lcom/itextpdf/text/Rectangle;->borderColorLeft:Lcom/itextpdf/text/BaseColor;

    .line 752
    return-void
.end method

.method public setBorderColorRight(Lcom/itextpdf/text/BaseColor;)V
    .locals 0
    .parameter "borderColorRight"

    .prologue
    .line 771
    iput-object p1, p0, Lcom/itextpdf/text/Rectangle;->borderColorRight:Lcom/itextpdf/text/BaseColor;

    .line 772
    return-void
.end method

.method public setBorderColorTop(Lcom/itextpdf/text/BaseColor;)V
    .locals 0
    .parameter "borderColorTop"

    .prologue
    .line 791
    iput-object p1, p0, Lcom/itextpdf/text/Rectangle;->borderColorTop:Lcom/itextpdf/text/BaseColor;

    .line 792
    return-void
.end method

.method public setBorderWidth(F)V
    .locals 0
    .parameter "borderWidth"

    .prologue
    .line 605
    iput p1, p0, Lcom/itextpdf/text/Rectangle;->borderWidth:F

    .line 606
    return-void
.end method

.method public setBorderWidthBottom(F)V
    .locals 1
    .parameter "borderWidthBottom"

    .prologue
    .line 710
    iput p1, p0, Lcom/itextpdf/text/Rectangle;->borderWidthBottom:F

    .line 711
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/text/Rectangle;->updateBorderBasedOnWidth(FI)V

    .line 712
    return-void
.end method

.method public setBorderWidthLeft(F)V
    .locals 1
    .parameter "borderWidthLeft"

    .prologue
    .line 653
    iput p1, p0, Lcom/itextpdf/text/Rectangle;->borderWidthLeft:F

    .line 654
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/text/Rectangle;->updateBorderBasedOnWidth(FI)V

    .line 655
    return-void
.end method

.method public setBorderWidthRight(F)V
    .locals 1
    .parameter "borderWidthRight"

    .prologue
    .line 672
    iput p1, p0, Lcom/itextpdf/text/Rectangle;->borderWidthRight:F

    .line 673
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/text/Rectangle;->updateBorderBasedOnWidth(FI)V

    .line 674
    return-void
.end method

.method public setBorderWidthTop(F)V
    .locals 1
    .parameter "borderWidthTop"

    .prologue
    .line 691
    iput p1, p0, Lcom/itextpdf/text/Rectangle;->borderWidthTop:F

    .line 692
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/text/Rectangle;->updateBorderBasedOnWidth(FI)V

    .line 693
    return-void
.end method

.method public setBottom(F)V
    .locals 0
    .parameter "lly"

    .prologue
    .line 362
    iput p1, p0, Lcom/itextpdf/text/Rectangle;->lly:F

    .line 363
    return-void
.end method

.method public setGrayFill(F)V
    .locals 1
    .parameter "value"

    .prologue
    .line 489
    new-instance v0, Lcom/itextpdf/text/pdf/GrayColor;

    invoke-direct {v0, p1}, Lcom/itextpdf/text/pdf/GrayColor;-><init>(F)V

    iput-object v0, p0, Lcom/itextpdf/text/Rectangle;->backgroundColor:Lcom/itextpdf/text/BaseColor;

    .line 490
    return-void
.end method

.method public setLeft(F)V
    .locals 0
    .parameter "llx"

    .prologue
    .line 269
    iput p1, p0, Lcom/itextpdf/text/Rectangle;->llx:F

    .line 270
    return-void
.end method

.method public setRight(F)V
    .locals 0
    .parameter "urx"

    .prologue
    .line 297
    iput p1, p0, Lcom/itextpdf/text/Rectangle;->urx:F

    .line 298
    return-void
.end method

.method public setRotation(I)V
    .locals 1
    .parameter "rotation"

    .prologue
    .line 427
    rem-int/lit16 v0, p1, 0x168

    iput v0, p0, Lcom/itextpdf/text/Rectangle;->rotation:I

    .line 428
    iget v0, p0, Lcom/itextpdf/text/Rectangle;->rotation:I

    sparse-switch v0, :sswitch_data_0

    .line 434
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/Rectangle;->rotation:I

    .line 436
    :sswitch_0
    return-void

    .line 428
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method public setTop(F)V
    .locals 0
    .parameter "ury"

    .prologue
    .line 334
    iput p1, p0, Lcom/itextpdf/text/Rectangle;->ury:F

    .line 335
    return-void
.end method

.method public setUseVariableBorders(Z)V
    .locals 0
    .parameter "useVariableBorders"

    .prologue
    .line 561
    iput-boolean p1, p0, Lcom/itextpdf/text/Rectangle;->useVariableBorders:Z

    .line 562
    return-void
.end method

.method public softCloneNonPositionParameters(Lcom/itextpdf/text/Rectangle;)V
    .locals 3
    .parameter "rect"

    .prologue
    const/high16 v2, -0x4080

    .line 866
    iget v0, p1, Lcom/itextpdf/text/Rectangle;->rotation:I

    if-eqz v0, :cond_0

    .line 867
    iget v0, p1, Lcom/itextpdf/text/Rectangle;->rotation:I

    iput v0, p0, Lcom/itextpdf/text/Rectangle;->rotation:I

    .line 868
    :cond_0
    iget-object v0, p1, Lcom/itextpdf/text/Rectangle;->backgroundColor:Lcom/itextpdf/text/BaseColor;

    if-eqz v0, :cond_1

    .line 869
    iget-object v0, p1, Lcom/itextpdf/text/Rectangle;->backgroundColor:Lcom/itextpdf/text/BaseColor;

    iput-object v0, p0, Lcom/itextpdf/text/Rectangle;->backgroundColor:Lcom/itextpdf/text/BaseColor;

    .line 870
    :cond_1
    iget v0, p1, Lcom/itextpdf/text/Rectangle;->border:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 871
    iget v0, p1, Lcom/itextpdf/text/Rectangle;->border:I

    iput v0, p0, Lcom/itextpdf/text/Rectangle;->border:I

    .line 872
    :cond_2
    iget-boolean v0, p0, Lcom/itextpdf/text/Rectangle;->useVariableBorders:Z

    if-eqz v0, :cond_3

    .line 873
    iget-boolean v0, p1, Lcom/itextpdf/text/Rectangle;->useVariableBorders:Z

    iput-boolean v0, p0, Lcom/itextpdf/text/Rectangle;->useVariableBorders:Z

    .line 874
    :cond_3
    iget v0, p1, Lcom/itextpdf/text/Rectangle;->borderWidth:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_4

    .line 875
    iget v0, p1, Lcom/itextpdf/text/Rectangle;->borderWidth:F

    iput v0, p0, Lcom/itextpdf/text/Rectangle;->borderWidth:F

    .line 876
    :cond_4
    iget v0, p1, Lcom/itextpdf/text/Rectangle;->borderWidthLeft:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_5

    .line 877
    iget v0, p1, Lcom/itextpdf/text/Rectangle;->borderWidthLeft:F

    iput v0, p0, Lcom/itextpdf/text/Rectangle;->borderWidthLeft:F

    .line 878
    :cond_5
    iget v0, p1, Lcom/itextpdf/text/Rectangle;->borderWidthRight:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_6

    .line 879
    iget v0, p1, Lcom/itextpdf/text/Rectangle;->borderWidthRight:F

    iput v0, p0, Lcom/itextpdf/text/Rectangle;->borderWidthRight:F

    .line 880
    :cond_6
    iget v0, p1, Lcom/itextpdf/text/Rectangle;->borderWidthTop:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_7

    .line 881
    iget v0, p1, Lcom/itextpdf/text/Rectangle;->borderWidthTop:F

    iput v0, p0, Lcom/itextpdf/text/Rectangle;->borderWidthTop:F

    .line 882
    :cond_7
    iget v0, p1, Lcom/itextpdf/text/Rectangle;->borderWidthBottom:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_8

    .line 883
    iget v0, p1, Lcom/itextpdf/text/Rectangle;->borderWidthBottom:F

    iput v0, p0, Lcom/itextpdf/text/Rectangle;->borderWidthBottom:F

    .line 884
    :cond_8
    iget-object v0, p1, Lcom/itextpdf/text/Rectangle;->borderColor:Lcom/itextpdf/text/BaseColor;

    if-eqz v0, :cond_9

    .line 885
    iget-object v0, p1, Lcom/itextpdf/text/Rectangle;->borderColor:Lcom/itextpdf/text/BaseColor;

    iput-object v0, p0, Lcom/itextpdf/text/Rectangle;->borderColor:Lcom/itextpdf/text/BaseColor;

    .line 886
    :cond_9
    iget-object v0, p1, Lcom/itextpdf/text/Rectangle;->borderColorLeft:Lcom/itextpdf/text/BaseColor;

    if-eqz v0, :cond_a

    .line 887
    iget-object v0, p1, Lcom/itextpdf/text/Rectangle;->borderColorLeft:Lcom/itextpdf/text/BaseColor;

    iput-object v0, p0, Lcom/itextpdf/text/Rectangle;->borderColorLeft:Lcom/itextpdf/text/BaseColor;

    .line 888
    :cond_a
    iget-object v0, p1, Lcom/itextpdf/text/Rectangle;->borderColorRight:Lcom/itextpdf/text/BaseColor;

    if-eqz v0, :cond_b

    .line 889
    iget-object v0, p1, Lcom/itextpdf/text/Rectangle;->borderColorRight:Lcom/itextpdf/text/BaseColor;

    iput-object v0, p0, Lcom/itextpdf/text/Rectangle;->borderColorRight:Lcom/itextpdf/text/BaseColor;

    .line 890
    :cond_b
    iget-object v0, p1, Lcom/itextpdf/text/Rectangle;->borderColorTop:Lcom/itextpdf/text/BaseColor;

    if-eqz v0, :cond_c

    .line 891
    iget-object v0, p1, Lcom/itextpdf/text/Rectangle;->borderColorTop:Lcom/itextpdf/text/BaseColor;

    iput-object v0, p0, Lcom/itextpdf/text/Rectangle;->borderColorTop:Lcom/itextpdf/text/BaseColor;

    .line 892
    :cond_c
    iget-object v0, p1, Lcom/itextpdf/text/Rectangle;->borderColorBottom:Lcom/itextpdf/text/BaseColor;

    if-eqz v0, :cond_d

    .line 893
    iget-object v0, p1, Lcom/itextpdf/text/Rectangle;->borderColorBottom:Lcom/itextpdf/text/BaseColor;

    iput-object v0, p0, Lcom/itextpdf/text/Rectangle;->borderColorBottom:Lcom/itextpdf/text/BaseColor;

    .line 894
    :cond_d
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 902
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Rectangle: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 903
    .local v0, buf:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 904
    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 905
    invoke-virtual {p0}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 906
    const-string v1, " (rot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 907
    iget v1, p0, Lcom/itextpdf/text/Rectangle;->rotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 908
    const-string v1, " degrees)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 909
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public type()I
    .locals 1

    .prologue
    .line 233
    const/16 v0, 0x1e

    return v0
.end method

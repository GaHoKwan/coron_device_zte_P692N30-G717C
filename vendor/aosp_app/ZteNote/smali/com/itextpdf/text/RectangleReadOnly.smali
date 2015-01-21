.class public Lcom/itextpdf/text/RectangleReadOnly;
.super Lcom/itextpdf/text/Rectangle;
.source "RectangleReadOnly.java"


# direct methods
.method public constructor <init>(FF)V
    .locals 1
    .parameter "urx"
    .parameter "ury"

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    .line 102
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    .line 76
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
    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    .line 90
    invoke-super {p0, p5}, Lcom/itextpdf/text/Rectangle;->setRotation(I)V

    .line 91
    return-void
.end method

.method public constructor <init>(FFI)V
    .locals 1
    .parameter "urx"
    .parameter "ury"
    .parameter "rotation"

    .prologue
    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    .line 115
    invoke-super {p0, p3}, Lcom/itextpdf/text/Rectangle;->setRotation(I)V

    .line 116
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/Rectangle;)V
    .locals 4
    .parameter "rect"

    .prologue
    .line 124
    iget v0, p1, Lcom/itextpdf/text/Rectangle;->llx:F

    iget v1, p1, Lcom/itextpdf/text/Rectangle;->lly:F

    iget v2, p1, Lcom/itextpdf/text/Rectangle;->urx:F

    iget v3, p1, Lcom/itextpdf/text/Rectangle;->ury:F

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    .line 125
    invoke-super {p0, p1}, Lcom/itextpdf/text/Rectangle;->cloneNonPositionParameters(Lcom/itextpdf/text/Rectangle;)V

    .line 126
    return-void
.end method

.method private throwReadOnlyError()V
    .locals 3

    .prologue
    .line 132
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "rectanglereadonly.this.rectangle.is.read.only"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public cloneNonPositionParameters(Lcom/itextpdf/text/Rectangle;)V
    .locals 0
    .parameter "rect"

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/itextpdf/text/RectangleReadOnly;->throwReadOnlyError()V

    .line 384
    return-void
.end method

.method public disableBorderSide(I)V
    .locals 0
    .parameter "side"

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/itextpdf/text/RectangleReadOnly;->throwReadOnlyError()V

    .line 265
    return-void
.end method

.method public enableBorderSide(I)V
    .locals 0
    .parameter "side"

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/itextpdf/text/RectangleReadOnly;->throwReadOnlyError()V

    .line 254
    return-void
.end method

.method public normalize()V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/itextpdf/text/RectangleReadOnly;->throwReadOnlyError()V

    .line 195
    return-void
.end method

.method public setBackgroundColor(Lcom/itextpdf/text/BaseColor;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/itextpdf/text/RectangleReadOnly;->throwReadOnlyError()V

    .line 207
    return-void
.end method

.method public setBorder(I)V
    .locals 0
    .parameter "border"

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/itextpdf/text/RectangleReadOnly;->throwReadOnlyError()V

    .line 233
    return-void
.end method

.method public setBorderColor(Lcom/itextpdf/text/BaseColor;)V
    .locals 0
    .parameter "borderColor"

    .prologue
    .line 330
    invoke-direct {p0}, Lcom/itextpdf/text/RectangleReadOnly;->throwReadOnlyError()V

    .line 331
    return-void
.end method

.method public setBorderColorBottom(Lcom/itextpdf/text/BaseColor;)V
    .locals 0
    .parameter "borderColorBottom"

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/itextpdf/text/RectangleReadOnly;->throwReadOnlyError()V

    .line 371
    return-void
.end method

.method public setBorderColorLeft(Lcom/itextpdf/text/BaseColor;)V
    .locals 0
    .parameter "borderColorLeft"

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/itextpdf/text/RectangleReadOnly;->throwReadOnlyError()V

    .line 341
    return-void
.end method

.method public setBorderColorRight(Lcom/itextpdf/text/BaseColor;)V
    .locals 0
    .parameter "borderColorRight"

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/itextpdf/text/RectangleReadOnly;->throwReadOnlyError()V

    .line 351
    return-void
.end method

.method public setBorderColorTop(Lcom/itextpdf/text/BaseColor;)V
    .locals 0
    .parameter "borderColorTop"

    .prologue
    .line 360
    invoke-direct {p0}, Lcom/itextpdf/text/RectangleReadOnly;->throwReadOnlyError()V

    .line 361
    return-void
.end method

.method public setBorderWidth(F)V
    .locals 0
    .parameter "borderWidth"

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/itextpdf/text/RectangleReadOnly;->throwReadOnlyError()V

    .line 278
    return-void
.end method

.method public setBorderWidthBottom(F)V
    .locals 0
    .parameter "borderWidthBottom"

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/itextpdf/text/RectangleReadOnly;->throwReadOnlyError()V

    .line 318
    return-void
.end method

.method public setBorderWidthLeft(F)V
    .locals 0
    .parameter "borderWidthLeft"

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/itextpdf/text/RectangleReadOnly;->throwReadOnlyError()V

    .line 288
    return-void
.end method

.method public setBorderWidthRight(F)V
    .locals 0
    .parameter "borderWidthRight"

    .prologue
    .line 297
    invoke-direct {p0}, Lcom/itextpdf/text/RectangleReadOnly;->throwReadOnlyError()V

    .line 298
    return-void
.end method

.method public setBorderWidthTop(F)V
    .locals 0
    .parameter "borderWidthTop"

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/itextpdf/text/RectangleReadOnly;->throwReadOnlyError()V

    .line 308
    return-void
.end method

.method public setBottom(F)V
    .locals 0
    .parameter "lly"

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/itextpdf/text/RectangleReadOnly;->throwReadOnlyError()V

    .line 186
    return-void
.end method

.method public setGrayFill(F)V
    .locals 0
    .parameter "value"

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/itextpdf/text/RectangleReadOnly;->throwReadOnlyError()V

    .line 217
    return-void
.end method

.method public setLeft(F)V
    .locals 0
    .parameter "llx"

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/itextpdf/text/RectangleReadOnly;->throwReadOnlyError()V

    .line 155
    return-void
.end method

.method public setRight(F)V
    .locals 0
    .parameter "urx"

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/itextpdf/text/RectangleReadOnly;->throwReadOnlyError()V

    .line 166
    return-void
.end method

.method public setRotation(I)V
    .locals 0
    .parameter "rotation"

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/itextpdf/text/RectangleReadOnly;->throwReadOnlyError()V

    .line 143
    return-void
.end method

.method public setTop(F)V
    .locals 0
    .parameter "ury"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/itextpdf/text/RectangleReadOnly;->throwReadOnlyError()V

    .line 176
    return-void
.end method

.method public setUseVariableBorders(Z)V
    .locals 0
    .parameter "useVariableBorders"

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/itextpdf/text/RectangleReadOnly;->throwReadOnlyError()V

    .line 243
    return-void
.end method

.method public softCloneNonPositionParameters(Lcom/itextpdf/text/Rectangle;)V
    .locals 0
    .parameter "rect"

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/itextpdf/text/RectangleReadOnly;->throwReadOnlyError()V

    .line 395
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 403
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "RectangleReadOnly: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 404
    .local v0, buf:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/itextpdf/text/RectangleReadOnly;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 405
    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 406
    invoke-virtual {p0}, Lcom/itextpdf/text/RectangleReadOnly;->getHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 407
    const-string v1, " (rot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 408
    iget v1, p0, Lcom/itextpdf/text/RectangleReadOnly;->rotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 409
    const-string v1, " degrees)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 410
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

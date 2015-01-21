.class public Lcom/itextpdf/text/pdf/PdfRectangle;
.super Lcom/itextpdf/text/pdf/NumberArray;
.source "PdfRectangle.java"


# instance fields
.field private llx:F

.field private lly:F

.field private urx:F

.field private ury:F


# direct methods
.method public constructor <init>(FF)V
    .locals 6
    .parameter "urx"
    .parameter "ury"

    .prologue
    const/4 v1, 0x0

    .line 127
    const/4 v5, 0x0

    move-object v0, p0

    move v2, v1

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/text/pdf/PdfRectangle;-><init>(FFFFI)V

    .line 128
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 6
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    .line 112
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/text/pdf/PdfRectangle;-><init>(FFFFI)V

    .line 113
    return-void
.end method

.method public constructor <init>(FFFFI)V
    .locals 2
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"
    .parameter "rotation"

    .prologue
    const/4 v1, 0x0

    .line 92
    const/4 v0, 0x0

    new-array v0, v0, [F

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/NumberArray;-><init>([F)V

    .line 67
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfRectangle;->llx:F

    .line 70
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfRectangle;->lly:F

    .line 73
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfRectangle;->urx:F

    .line 76
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfRectangle;->ury:F

    .line 93
    const/16 v0, 0x5a

    if-eq p5, v0, :cond_0

    const/16 v0, 0x10e

    if-ne p5, v0, :cond_1

    .line 94
    :cond_0
    iput p2, p0, Lcom/itextpdf/text/pdf/PdfRectangle;->llx:F

    .line 95
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfRectangle;->lly:F

    .line 96
    iput p4, p0, Lcom/itextpdf/text/pdf/PdfRectangle;->urx:F

    .line 97
    iput p3, p0, Lcom/itextpdf/text/pdf/PdfRectangle;->ury:F

    .line 105
    :goto_0
    new-instance v0, Lcom/itextpdf/text/pdf/PdfNumber;

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfRectangle;->llx:F

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-super {p0, v0}, Lcom/itextpdf/text/pdf/NumberArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 106
    new-instance v0, Lcom/itextpdf/text/pdf/PdfNumber;

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfRectangle;->lly:F

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-super {p0, v0}, Lcom/itextpdf/text/pdf/NumberArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 107
    new-instance v0, Lcom/itextpdf/text/pdf/PdfNumber;

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfRectangle;->urx:F

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-super {p0, v0}, Lcom/itextpdf/text/pdf/NumberArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 108
    new-instance v0, Lcom/itextpdf/text/pdf/PdfNumber;

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfRectangle;->ury:F

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-super {p0, v0}, Lcom/itextpdf/text/pdf/NumberArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 109
    return-void

    .line 100
    :cond_1
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfRectangle;->llx:F

    .line 101
    iput p2, p0, Lcom/itextpdf/text/pdf/PdfRectangle;->lly:F

    .line 102
    iput p3, p0, Lcom/itextpdf/text/pdf/PdfRectangle;->urx:F

    .line 103
    iput p4, p0, Lcom/itextpdf/text/pdf/PdfRectangle;->ury:F

    goto :goto_0
.end method

.method public constructor <init>(FFI)V
    .locals 6
    .parameter "urx"
    .parameter "ury"
    .parameter "rotation"

    .prologue
    const/4 v1, 0x0

    .line 123
    move-object v0, p0

    move v2, v1

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/text/pdf/PdfRectangle;-><init>(FFFFI)V

    .line 124
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/Rectangle;)V
    .locals 6
    .parameter "rectangle"

    .prologue
    .line 141
    invoke-virtual {p1}, Lcom/itextpdf/text/Rectangle;->getLeft()F

    move-result v1

    invoke-virtual {p1}, Lcom/itextpdf/text/Rectangle;->getBottom()F

    move-result v2

    invoke-virtual {p1}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v3

    invoke-virtual {p1}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/text/pdf/PdfRectangle;-><init>(FFFFI)V

    .line 142
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/Rectangle;I)V
    .locals 6
    .parameter "rectangle"
    .parameter "rotation"

    .prologue
    .line 137
    invoke-virtual {p1}, Lcom/itextpdf/text/Rectangle;->getLeft()F

    move-result v1

    invoke-virtual {p1}, Lcom/itextpdf/text/Rectangle;->getBottom()F

    move-result v2

    invoke-virtual {p1}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v3

    invoke-virtual {p1}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v4

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/text/pdf/PdfRectangle;-><init>(FFFFI)V

    .line 138
    return-void
.end method


# virtual methods
.method public add(Lcom/itextpdf/text/pdf/PdfObject;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public add([F)Z
    .locals 1
    .parameter "values"

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public add([I)Z
    .locals 1
    .parameter "values"

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public addFirst(Lcom/itextpdf/text/pdf/PdfObject;)V
    .locals 0
    .parameter "object"

    .prologue
    .line 193
    return-void
.end method

.method public bottom()F
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfRectangle;->lly:F

    return v0
.end method

.method public bottom(I)F
    .locals 2
    .parameter "margin"

    .prologue
    .line 275
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfRectangle;->lly:F

    int-to-float v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public getRectangle()Lcom/itextpdf/text/Rectangle;
    .locals 5

    .prologue
    .line 150
    new-instance v0, Lcom/itextpdf/text/Rectangle;

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfRectangle;->left()F

    move-result v1

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfRectangle;->bottom()F

    move-result v2

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfRectangle;->right()F

    move-result v3

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfRectangle;->top()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    return-object v0
.end method

.method public height()F
    .locals 2

    .prologue
    .line 295
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfRectangle;->ury:F

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfRectangle;->lly:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public left()F
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfRectangle;->llx:F

    return v0
.end method

.method public left(I)F
    .locals 2
    .parameter "margin"

    .prologue
    .line 242
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfRectangle;->llx:F

    int-to-float v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public right()F
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfRectangle;->urx:F

    return v0
.end method

.method public right(I)F
    .locals 2
    .parameter "margin"

    .prologue
    .line 253
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfRectangle;->urx:F

    int-to-float v1, p1

    sub-float/2addr v0, v1

    return v0
.end method

.method public rotate()Lcom/itextpdf/text/pdf/PdfRectangle;
    .locals 6

    .prologue
    .line 305
    new-instance v0, Lcom/itextpdf/text/pdf/PdfRectangle;

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfRectangle;->lly:F

    iget v2, p0, Lcom/itextpdf/text/pdf/PdfRectangle;->llx:F

    iget v3, p0, Lcom/itextpdf/text/pdf/PdfRectangle;->ury:F

    iget v4, p0, Lcom/itextpdf/text/pdf/PdfRectangle;->urx:F

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/text/pdf/PdfRectangle;-><init>(FFFFI)V

    return-object v0
.end method

.method public top()F
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfRectangle;->ury:F

    return v0
.end method

.method public top(I)F
    .locals 2
    .parameter "margin"

    .prologue
    .line 264
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfRectangle;->ury:F

    int-to-float v1, p1

    sub-float/2addr v0, v1

    return v0
.end method

.method public width()F
    .locals 2

    .prologue
    .line 285
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfRectangle;->urx:F

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfRectangle;->llx:F

    sub-float/2addr v0, v1

    return v0
.end method

.class public Lcom/itextpdf/text/pdf/PdfPRow;
.super Ljava/lang/Object;
.source "PdfPRow.java"


# static fields
.field public static final BOTTOM_LIMIT:F = -1.07374182E9f

.field public static final RIGHT_LIMIT:F = 20000.0f


# instance fields
.field protected calculated:Z

.field private canvasesPos:[I

.field protected cells:[Lcom/itextpdf/text/pdf/PdfPCell;

.field protected extraHeights:[F

.field protected maxHeight:F

.field protected widths:[F


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfPRow;)V
    .locals 5
    .parameter "row"

    .prologue
    const/4 v4, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v1, 0x0

    iput v1, p0, Lcom/itextpdf/text/pdf/PdfPRow;->maxHeight:F

    .line 80
    iput-boolean v4, p0, Lcom/itextpdf/text/pdf/PdfPRow;->calculated:Z

    .line 102
    iget v1, p1, Lcom/itextpdf/text/pdf/PdfPRow;->maxHeight:F

    iput v1, p0, Lcom/itextpdf/text/pdf/PdfPRow;->maxHeight:F

    .line 103
    iget-boolean v1, p1, Lcom/itextpdf/text/pdf/PdfPRow;->calculated:Z

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfPRow;->calculated:Z

    .line 104
    iget-object v1, p1, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    array-length v1, v1

    new-array v1, v1, [Lcom/itextpdf/text/pdf/PdfPCell;

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    .line 105
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 106
    iget-object v1, p1, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfPCell;

    iget-object v3, p1, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    aget-object v3, v3, v0

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfPCell;-><init>(Lcom/itextpdf/text/pdf/PdfPCell;)V

    aput-object v2, v1, v0

    .line 105
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    array-length v1, v1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfPRow;->widths:[F

    .line 110
    iget-object v1, p1, Lcom/itextpdf/text/pdf/PdfPRow;->widths:[F

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfPRow;->widths:[F

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPRow;->initExtraHeights()V

    .line 112
    return-void
.end method

.method public constructor <init>([Lcom/itextpdf/text/pdf/PdfPCell;)V
    .locals 1
    .parameter "cells"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPRow;->maxHeight:F

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPRow;->calculated:Z

    .line 91
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    .line 92
    array-length v0, p1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPRow;->widths:[F

    .line 93
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPRow;->initExtraHeights()V

    .line 94
    return-void
.end method

.method public static setColumn(Lcom/itextpdf/text/pdf/ColumnText;FFFF)F
    .locals 1
    .parameter "ct"
    .parameter "left"
    .parameter "bottom"
    .parameter "right"
    .parameter "top"

    .prologue
    .line 259
    cmpl-float v0, p1, p3

    if-lez v0, :cond_0

    .line 260
    move p3, p1

    .line 261
    :cond_0
    cmpl-float v0, p2, p4

    if-lez v0, :cond_1

    .line 262
    move p4, p2

    .line 263
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/itextpdf/text/pdf/ColumnText;->setSimpleColumn(FFFF)V

    .line 264
    return p4
.end method


# virtual methods
.method protected calculateHeights()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 172
    const/4 v3, 0x0

    iput v3, p0, Lcom/itextpdf/text/pdf/PdfPRow;->maxHeight:F

    .line 173
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 174
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    aget-object v0, v3, v2

    .line 175
    .local v0, cell:Lcom/itextpdf/text/pdf/PdfPCell;
    const/4 v1, 0x0

    .line 176
    .local v1, height:F
    if-nez v0, :cond_1

    .line 173
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfPCell;->getMaxHeight()F

    move-result v1

    .line 181
    iget v3, p0, Lcom/itextpdf/text/pdf/PdfPRow;->maxHeight:F

    cmpl-float v3, v1, v3

    if-lez v3, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfPCell;->getRowspan()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 182
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfPRow;->maxHeight:F

    goto :goto_1

    .line 185
    .end local v0           #cell:Lcom/itextpdf/text/pdf/PdfPCell;
    .end local v1           #height:F
    :cond_2
    iput-boolean v4, p0, Lcom/itextpdf/text/pdf/PdfPRow;->calculated:Z

    .line 186
    return-void
.end method

.method public copyRowContent(Lcom/itextpdf/text/pdf/PdfPTable;I)V
    .locals 5
    .parameter "table"
    .parameter "idx"

    .prologue
    .line 589
    if-nez p1, :cond_1

    .line 604
    :cond_0
    return-void

    .line 593
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 594
    move v2, p2

    .line 595
    .local v2, lastRow:I
    invoke-virtual {p1, v2}, Lcom/itextpdf/text/pdf/PdfPTable;->getRow(I)Lcom/itextpdf/text/pdf/PdfPRow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfPRow;->getCells()[Lcom/itextpdf/text/pdf/PdfPCell;

    move-result-object v3

    aget-object v0, v3, v1

    .line 596
    .local v0, copy:Lcom/itextpdf/text/pdf/PdfPCell;
    :goto_1
    if-nez v0, :cond_2

    if-lez v2, :cond_2

    .line 597
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Lcom/itextpdf/text/pdf/PdfPTable;->getRow(I)Lcom/itextpdf/text/pdf/PdfPRow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfPRow;->getCells()[Lcom/itextpdf/text/pdf/PdfPCell;

    move-result-object v3

    aget-object v0, v3, v1

    goto :goto_1

    .line 599
    :cond_2
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    aget-object v3, v3, v1

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    .line 600
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    aget-object v3, v3, v1

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfPCell;->getColumn()Lcom/itextpdf/text/pdf/ColumnText;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/PdfPCell;->setColumn(Lcom/itextpdf/text/pdf/ColumnText;)V

    .line 601
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfPRow;->calculated:Z

    .line 593
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCells()[Lcom/itextpdf/text/pdf/PdfPCell;
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    return-object v0
.end method

.method getEventWidth(F[F)[F
    .locals 8
    .parameter "xPos"
    .parameter "absoluteWidths"

    .prologue
    .line 545
    const/4 v4, 0x1

    .line 546
    .local v4, n:I
    const/4 v2, 0x0

    .local v2, k:I
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    array-length v6, v6

    if-ge v2, v6, :cond_2

    .line 547
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    aget-object v6, v6, v2

    if-eqz v6, :cond_1

    .line 548
    add-int/lit8 v4, v4, 0x1

    .line 549
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfPCell;->getColspan()I

    move-result v6

    add-int/2addr v2, v6

    goto :goto_0

    .line 552
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    array-length v6, v6

    if-ge v2, v6, :cond_0

    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    aget-object v6, v6, v2

    if-nez v6, :cond_0

    .line 553
    add-int/lit8 v4, v4, 0x1

    .line 554
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 558
    :cond_2
    new-array v5, v4, [F

    .line 559
    .local v5, width:[F
    const/4 v6, 0x0

    aput p1, v5, v6

    .line 560
    const/4 v4, 0x1

    .line 561
    const/4 v2, 0x0

    :goto_2
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    array-length v6, v6

    if-ge v2, v6, :cond_6

    array-length v6, v5

    if-ge v4, v6, :cond_6

    .line 562
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    aget-object v6, v6, v2

    if-eqz v6, :cond_4

    .line 563
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfPCell;->getColspan()I

    move-result v0

    .line 564
    .local v0, colspan:I
    add-int/lit8 v6, v4, -0x1

    aget v6, v5, v6

    aput v6, v5, v4

    .line 565
    const/4 v1, 0x0

    .local v1, i:I
    move v3, v2

    .end local v2           #k:I
    .local v3, k:I
    :goto_3
    if-ge v1, v0, :cond_3

    array-length v6, p2

    if-ge v3, v6, :cond_3

    .line 566
    aget v6, v5, v4

    add-int/lit8 v2, v3, 0x1

    .end local v3           #k:I
    .restart local v2       #k:I
    aget v7, p2, v3

    add-float/2addr v6, v7

    aput v6, v5, v4

    .line 565
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .end local v2           #k:I
    .restart local v3       #k:I
    goto :goto_3

    .line 568
    :cond_3
    add-int/lit8 v4, v4, 0x1

    move v2, v3

    .line 569
    .end local v3           #k:I
    .restart local v2       #k:I
    goto :goto_2

    .line 571
    .end local v0           #colspan:I
    .end local v1           #i:I
    :cond_4
    add-int/lit8 v6, v4, -0x1

    aget v6, v5, v6

    aput v6, v5, v4

    .line 572
    :goto_4
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    array-length v6, v6

    if-ge v2, v6, :cond_5

    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    aget-object v6, v6, v2

    if-nez v6, :cond_5

    .line 573
    aget v6, v5, v4

    add-int/lit8 v3, v2, 0x1

    .end local v2           #k:I
    .restart local v3       #k:I
    aget v7, p2, v2

    add-float/2addr v6, v7

    aput v6, v5, v4

    move v2, v3

    .end local v3           #k:I
    .restart local v2       #k:I
    goto :goto_4

    .line 575
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 578
    :cond_6
    return-object v5
.end method

.method public getMaxHeights()F
    .locals 1

    .prologue
    .line 527
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPRow;->calculated:Z

    if-nez v0, :cond_0

    .line 528
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPRow;->calculateHeights()V

    .line 529
    :cond_0
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfPRow;->maxHeight:F

    return v0
.end method

.method public hasRowspan()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 727
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 728
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfPCell;->getRowspan()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 731
    :goto_1
    return v1

    .line 727
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 731
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected initExtraHeights()V
    .locals 3

    .prologue
    .line 150
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    array-length v1, v1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfPRow;->extraHeights:[F

    .line 151
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPRow;->extraHeights:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPRow;->extraHeights:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_0
    return-void
.end method

.method public isCalculated()Z
    .locals 1

    .prologue
    .line 518
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPRow;->calculated:Z

    return v0
.end method

.method protected restoreCanvases([Lcom/itextpdf/text/pdf/PdfContentByte;)V
    .locals 6
    .parameter "canvases"

    .prologue
    .line 245
    const/4 v2, 0x4

    .line 246
    .local v2, last:I
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 247
    aget-object v4, p1, v1

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->getInternalBuffer()Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    .line 248
    .local v0, bb:Lcom/itextpdf/text/pdf/ByteBuffer;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->size()I

    move-result v3

    .line 249
    .local v3, p1:I
    aget-object v4, p1, v1

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->restoreState()V

    .line 250
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfPRow;->canvasesPos:[I

    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, 0x1

    aget v4, v4, v5

    if-ne v3, v4, :cond_0

    .line 251
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfPRow;->canvasesPos:[I

    mul-int/lit8 v5, v1, 0x2

    aget v4, v4, v5

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->setSize(I)V

    .line 246
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 253
    .end local v0           #bb:Lcom/itextpdf/text/pdf/ByteBuffer;
    .end local v3           #p1:I
    :cond_1
    return-void
.end method

.method protected saveAndRotateCanvases([Lcom/itextpdf/text/pdf/PdfContentByte;FFFFFF)V
    .locals 10
    .parameter "canvases"
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"
    .parameter "e"
    .parameter "f"

    .prologue
    .line 229
    const/4 v9, 0x4

    .line 230
    .local v9, last:I
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPRow;->canvasesPos:[I

    if-nez v0, :cond_0

    .line 231
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPRow;->canvasesPos:[I

    .line 232
    :cond_0
    const/4 v8, 0x0

    .local v8, k:I
    :goto_0
    if-ge v8, v9, :cond_1

    .line 233
    aget-object v0, p1, v8

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getInternalBuffer()Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v7

    .line 234
    .local v7, bb:Lcom/itextpdf/text/pdf/ByteBuffer;
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPRow;->canvasesPos:[I

    mul-int/lit8 v1, v8, 0x2

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/ByteBuffer;->size()I

    move-result v2

    aput v2, v0, v1

    .line 235
    aget-object v0, p1, v8

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->saveState()V

    .line 236
    aget-object v0, p1, v8

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->concatCTM(FFFFFF)V

    .line 237
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPRow;->canvasesPos:[I

    mul-int/lit8 v1, v8, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/ByteBuffer;->size()I

    move-result v2

    aput v2, v0, v1

    .line 232
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 239
    .end local v7           #bb:Lcom/itextpdf/text/pdf/ByteBuffer;
    :cond_1
    return-void
.end method

.method public setExtraHeight(IF)V
    .locals 1
    .parameter "cell"
    .parameter "height"

    .prologue
    .line 163
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPRow;->extraHeights:[F

    aput p2, v0, p1

    goto :goto_0
.end method

.method public setMaxHeights(F)V
    .locals 0
    .parameter "maxHeight"

    .prologue
    .line 539
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfPRow;->maxHeight:F

    .line 540
    return-void
.end method

.method public setWidths([F)Z
    .locals 7
    .parameter "widths"

    .prologue
    const/4 v4, 0x0

    .line 121
    array-length v5, p1

    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    array-length v6, v6

    if-eq v5, v6, :cond_0

    .line 142
    :goto_0
    return v4

    .line 123
    :cond_0
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfPRow;->widths:[F

    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    array-length v6, v6

    invoke-static {p1, v4, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    const/4 v3, 0x0

    .line 125
    .local v3, total:F
    iput-boolean v4, p0, Lcom/itextpdf/text/pdf/PdfPRow;->calculated:Z

    .line 126
    const/4 v1, 0x0

    .local v1, k:I
    :goto_1
    array-length v4, p1

    if-ge v1, v4, :cond_3

    .line 127
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    aget-object v0, v4, v1

    .line 129
    .local v0, cell:Lcom/itextpdf/text/pdf/PdfPCell;
    if-nez v0, :cond_1

    .line 130
    aget v4, p1, v1

    add-float/2addr v3, v4

    .line 126
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 134
    :cond_1
    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfPCell;->setLeft(F)V

    .line 135
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfPCell;->getColspan()I

    move-result v4

    add-int v2, v1, v4

    .line 136
    .local v2, last:I
    :goto_3
    if-ge v1, v2, :cond_2

    .line 137
    aget v4, p1, v1

    add-float/2addr v3, v4

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 138
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 139
    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfPCell;->setRight(F)V

    .line 140
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfPCell;->setTop(F)V

    goto :goto_2

    .line 142
    .end local v0           #cell:Lcom/itextpdf/text/pdf/PdfPCell;
    .end local v2           #last:I
    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public splitRow(Lcom/itextpdf/text/pdf/PdfPTable;IF)Lcom/itextpdf/text/pdf/PdfPRow;
    .locals 27
    .parameter "table"
    .parameter "rowIndex"
    .parameter "new_height"

    .prologue
    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    new-array v15, v0, [Lcom/itextpdf/text/pdf/PdfPCell;

    .line 618
    .local v15, newCells:[Lcom/itextpdf/text/pdf/PdfPCell;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    new-array v8, v0, [F

    .line 619
    .local v8, fixHs:[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    new-array v13, v0, [F

    .line 620
    .local v13, minHs:[F
    const/4 v3, 0x1

    .line 622
    .local v3, allEmpty:Z
    const/4 v11, 0x0

    .local v11, k:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v11, v0, :cond_b

    .line 623
    move/from16 v16, p3

    .line 624
    .local v16, newHeight:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    move-object/from16 v25, v0

    aget-object v5, v25, v11

    .line 625
    .local v5, cell:Lcom/itextpdf/text/pdf/PdfPCell;
    if-nez v5, :cond_2

    .line 626
    move/from16 v10, p2

    .line 627
    .local v10, index:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Lcom/itextpdf/text/pdf/PdfPTable;->rowSpanAbove(II)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 628
    :goto_1
    add-int/lit8 v10, v10, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Lcom/itextpdf/text/pdf/PdfPTable;->rowSpanAbove(II)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 629
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/itextpdf/text/pdf/PdfPTable;->getRow(I)Lcom/itextpdf/text/pdf/PdfPRow;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/itextpdf/text/pdf/PdfPRow;->getMaxHeights()F

    move-result v25

    add-float v16, v16, v25

    goto :goto_1

    .line 631
    :cond_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/itextpdf/text/pdf/PdfPTable;->getRow(I)Lcom/itextpdf/text/pdf/PdfPRow;

    move-result-object v19

    .line 632
    .local v19, row:Lcom/itextpdf/text/pdf/PdfPRow;
    if-eqz v19, :cond_1

    invoke-virtual/range {v19 .. v19}, Lcom/itextpdf/text/pdf/PdfPRow;->getCells()[Lcom/itextpdf/text/pdf/PdfPCell;

    move-result-object v25

    aget-object v25, v25, v11

    if-eqz v25, :cond_1

    .line 633
    new-instance v25, Lcom/itextpdf/text/pdf/PdfPCell;

    invoke-virtual/range {v19 .. v19}, Lcom/itextpdf/text/pdf/PdfPRow;->getCells()[Lcom/itextpdf/text/pdf/PdfPCell;

    move-result-object v26

    aget-object v26, v26, v11

    invoke-direct/range {v25 .. v26}, Lcom/itextpdf/text/pdf/PdfPCell;-><init>(Lcom/itextpdf/text/pdf/PdfPCell;)V

    aput-object v25, v15, v11

    .line 634
    aget-object v25, v15, v11

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/itextpdf/text/pdf/PdfPCell;->setColumn(Lcom/itextpdf/text/pdf/ColumnText;)V

    .line 635
    aget-object v25, v15, v11

    invoke-virtual/range {v19 .. v19}, Lcom/itextpdf/text/pdf/PdfPRow;->getCells()[Lcom/itextpdf/text/pdf/PdfPCell;

    move-result-object v26

    aget-object v26, v26, v11

    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/pdf/PdfPCell;->getRowspan()I

    move-result v26

    sub-int v26, v26, p2

    add-int v26, v26, v10

    invoke-virtual/range {v25 .. v26}, Lcom/itextpdf/text/pdf/PdfPCell;->setRowspan(I)V

    .line 636
    const/4 v3, 0x0

    .line 622
    .end local v10           #index:I
    .end local v19           #row:Lcom/itextpdf/text/pdf/PdfPRow;
    :cond_1
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 641
    :cond_2
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfPCell;->getFixedHeight()F

    move-result v25

    aput v25, v8, v11

    .line 642
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfPCell;->getMinimumHeight()F

    move-result v25

    aput v25, v13, v11

    .line 643
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfPCell;->getImage()Lcom/itextpdf/text/Image;

    move-result-object v9

    .line 644
    .local v9, img:Lcom/itextpdf/text/Image;
    new-instance v14, Lcom/itextpdf/text/pdf/PdfPCell;

    invoke-direct {v14, v5}, Lcom/itextpdf/text/pdf/PdfPCell;-><init>(Lcom/itextpdf/text/pdf/PdfPCell;)V

    .line 645
    .local v14, newCell:Lcom/itextpdf/text/pdf/PdfPCell;
    if-eqz v9, :cond_5

    .line 646
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingBottom()F

    move-result v25

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingTop()F

    move-result v26

    add-float v25, v25, v26

    const/high16 v26, 0x4000

    add-float v17, v25, v26

    .line 647
    .local v17, padding:F
    invoke-virtual {v9}, Lcom/itextpdf/text/Image;->isScaleToFitLineWhenOverflow()Z

    move-result v25

    if-nez v25, :cond_3

    invoke-virtual {v9}, Lcom/itextpdf/text/Image;->getScaledHeight()F

    move-result v25

    add-float v25, v25, v17

    cmpg-float v25, v25, v16

    if-gez v25, :cond_4

    :cond_3
    cmpl-float v25, v16, v17

    if-lez v25, :cond_4

    .line 649
    const/16 v25, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Lcom/itextpdf/text/pdf/PdfPCell;->setPhrase(Lcom/itextpdf/text/Phrase;)V

    .line 650
    const/4 v3, 0x0

    .line 689
    .end local v17           #padding:F
    :cond_4
    :goto_3
    aput-object v14, v15, v11

    .line 690
    move/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/itextpdf/text/pdf/PdfPCell;->setFixedHeight(F)V

    goto :goto_2

    .line 655
    :cond_5
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfPCell;->getColumn()Lcom/itextpdf/text/pdf/ColumnText;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/itextpdf/text/pdf/ColumnText;->duplicate(Lcom/itextpdf/text/pdf/ColumnText;)Lcom/itextpdf/text/pdf/ColumnText;

    move-result-object v6

    .line 656
    .local v6, ct:Lcom/itextpdf/text/pdf/ColumnText;
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfPCell;->getLeft()F

    move-result v25

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingLeft()F

    move-result v26

    add-float v12, v25, v26

    .line 657
    .local v12, left:F
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfPCell;->getTop()F

    move-result v25

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingBottom()F

    move-result v26

    add-float v25, v25, v26

    sub-float v4, v25, v16

    .line 658
    .local v4, bottom:F
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfPCell;->getRight()F

    move-result v25

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingRight()F

    move-result v26

    sub-float v18, v25, v26

    .line 659
    .local v18, right:F
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfPCell;->getTop()F

    move-result v25

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingTop()F

    move-result v26

    sub-float v23, v25, v26

    .line 660
    .local v23, top:F
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfPCell;->getRotation()I

    move-result v25

    sparse-switch v25, :sswitch_data_0

    .line 666
    const v25, 0x3727c5ac

    add-float v25, v25, v4

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfPCell;->isNoWrap()Z

    move-result v26

    if-eqz v26, :cond_6

    const v18, 0x469c4000

    .end local v18           #right:F
    :cond_6
    move/from16 v0, v25

    move/from16 v1, v18

    move/from16 v2, v23

    invoke-static {v6, v12, v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfPRow;->setColumn(Lcom/itextpdf/text/pdf/ColumnText;FFFF)F

    move-result v24

    .line 671
    .local v24, y:F
    :goto_4
    const/16 v25, 0x1

    :try_start_0
    move/from16 v0, v25

    invoke-virtual {v6, v0}, Lcom/itextpdf/text/pdf/ColumnText;->go(Z)I
    :try_end_0
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v21

    .line 676
    .local v21, status:I
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/ColumnText;->getYLine()F

    move-result v25

    cmpl-float v25, v25, v24

    if-nez v25, :cond_7

    const/16 v22, 0x1

    .line 677
    .local v22, thisEmpty:Z
    :goto_5
    if-eqz v22, :cond_8

    .line 678
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfPCell;->getColumn()Lcom/itextpdf/text/pdf/ColumnText;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/itextpdf/text/pdf/ColumnText;->duplicate(Lcom/itextpdf/text/pdf/ColumnText;)Lcom/itextpdf/text/pdf/ColumnText;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Lcom/itextpdf/text/pdf/PdfPCell;->setColumn(Lcom/itextpdf/text/pdf/ColumnText;)V

    .line 679
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Lcom/itextpdf/text/pdf/ColumnText;->setFilledWidth(F)V

    .line 687
    :goto_6
    if-eqz v3, :cond_a

    if-eqz v22, :cond_a

    const/4 v3, 0x1

    :goto_7
    goto/16 :goto_3

    .line 663
    .end local v21           #status:I
    .end local v22           #thisEmpty:Z
    .end local v24           #y:F
    .restart local v18       #right:F
    :sswitch_0
    move/from16 v0, v23

    move/from16 v1, v18

    invoke-static {v6, v4, v12, v0, v1}, Lcom/itextpdf/text/pdf/PdfPRow;->setColumn(Lcom/itextpdf/text/pdf/ColumnText;FFFF)F

    move-result v24

    .line 664
    .restart local v24       #y:F
    goto :goto_4

    .line 673
    .end local v18           #right:F
    :catch_0
    move-exception v7

    .line 674
    .local v7, e:Lcom/itextpdf/text/DocumentException;
    new-instance v25, Lcom/itextpdf/text/ExceptionConverter;

    move-object/from16 v0, v25

    invoke-direct {v0, v7}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v25

    .line 676
    .end local v7           #e:Lcom/itextpdf/text/DocumentException;
    .restart local v21       #status:I
    :cond_7
    const/16 v22, 0x0

    goto :goto_5

    .line 681
    .restart local v22       #thisEmpty:Z
    :cond_8
    and-int/lit8 v25, v21, 0x1

    if-nez v25, :cond_9

    .line 682
    invoke-virtual {v14, v6}, Lcom/itextpdf/text/pdf/PdfPCell;->setColumn(Lcom/itextpdf/text/pdf/ColumnText;)V

    .line 683
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Lcom/itextpdf/text/pdf/ColumnText;->setFilledWidth(F)V

    goto :goto_6

    .line 686
    :cond_9
    const/16 v25, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Lcom/itextpdf/text/pdf/PdfPCell;->setPhrase(Lcom/itextpdf/text/Phrase;)V

    goto :goto_6

    .line 687
    :cond_a
    const/4 v3, 0x0

    goto :goto_7

    .line 692
    .end local v4           #bottom:F
    .end local v5           #cell:Lcom/itextpdf/text/pdf/PdfPCell;
    .end local v6           #ct:Lcom/itextpdf/text/pdf/ColumnText;
    .end local v9           #img:Lcom/itextpdf/text/Image;
    .end local v12           #left:F
    .end local v14           #newCell:Lcom/itextpdf/text/pdf/PdfPCell;
    .end local v16           #newHeight:F
    .end local v21           #status:I
    .end local v22           #thisEmpty:Z
    .end local v23           #top:F
    .end local v24           #y:F
    :cond_b
    if-eqz v3, :cond_f

    .line 693
    const/4 v11, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v11, v0, :cond_e

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    move-object/from16 v25, v0

    aget-object v5, v25, v11

    .line 695
    .restart local v5       #cell:Lcom/itextpdf/text/pdf/PdfPCell;
    if-nez v5, :cond_c

    .line 693
    :goto_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 697
    :cond_c
    aget v25, v8, v11

    const/16 v26, 0x0

    cmpl-float v25, v25, v26

    if-lez v25, :cond_d

    .line 698
    aget v25, v8, v11

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Lcom/itextpdf/text/pdf/PdfPCell;->setFixedHeight(F)V

    goto :goto_9

    .line 700
    :cond_d
    aget v25, v13, v11

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Lcom/itextpdf/text/pdf/PdfPCell;->setMinimumHeight(F)V

    goto :goto_9

    .line 702
    .end local v5           #cell:Lcom/itextpdf/text/pdf/PdfPCell;
    :cond_e
    const/16 v20, 0x0

    .line 707
    :goto_a
    return-object v20

    .line 704
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfPRow;->calculateHeights()V

    .line 705
    new-instance v20, Lcom/itextpdf/text/pdf/PdfPRow;

    move-object/from16 v0, v20

    invoke-direct {v0, v15}, Lcom/itextpdf/text/pdf/PdfPRow;-><init>([Lcom/itextpdf/text/pdf/PdfPCell;)V

    .line 706
    .local v20, split:Lcom/itextpdf/text/pdf/PdfPRow;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfPRow;->widths:[F

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, [F->clone()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [F

    check-cast v25, [F

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/itextpdf/text/pdf/PdfPRow;->widths:[F

    goto :goto_a

    .line 660
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method public writeBorderAndBackground(FFFLcom/itextpdf/text/pdf/PdfPCell;[Lcom/itextpdf/text/pdf/PdfContentByte;)V
    .locals 10
    .parameter "xPos"
    .parameter "yPos"
    .parameter "currentMaxHeight"
    .parameter "cell"
    .parameter "canvases"

    .prologue
    .line 199
    invoke-virtual {p4}, Lcom/itextpdf/text/pdf/PdfPCell;->getBackgroundColor()Lcom/itextpdf/text/BaseColor;

    move-result-object v1

    .line 200
    .local v1, background:Lcom/itextpdf/text/BaseColor;
    if-nez v1, :cond_0

    invoke-virtual {p4}, Lcom/itextpdf/text/pdf/PdfPCell;->hasBorders()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 202
    :cond_0
    invoke-virtual {p4}, Lcom/itextpdf/text/pdf/PdfPCell;->getRight()F

    move-result v8

    add-float v6, v8, p1

    .line 203
    .local v6, right:F
    invoke-virtual {p4}, Lcom/itextpdf/text/pdf/PdfPCell;->getTop()F

    move-result v8

    add-float v7, v8, p2

    .line 204
    .local v7, top:F
    invoke-virtual {p4}, Lcom/itextpdf/text/pdf/PdfPCell;->getLeft()F

    move-result v8

    add-float v3, v8, p1

    .line 205
    .local v3, left:F
    sub-float v2, v7, p3

    .line 207
    .local v2, bottom:F
    if-eqz v1, :cond_1

    .line 208
    const/4 v8, 0x1

    aget-object v0, p5, v8

    .line 209
    .local v0, backgr:Lcom/itextpdf/text/pdf/PdfContentByte;
    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    .line 210
    sub-float v8, v6, v3

    sub-float v9, v7, v2

    invoke-virtual {v0, v3, v2, v8, v9}, Lcom/itextpdf/text/pdf/PdfContentByte;->rectangle(FFFF)V

    .line 211
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->fill()V

    .line 213
    .end local v0           #backgr:Lcom/itextpdf/text/pdf/PdfContentByte;
    :cond_1
    invoke-virtual {p4}, Lcom/itextpdf/text/pdf/PdfPCell;->hasBorders()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 214
    new-instance v5, Lcom/itextpdf/text/Rectangle;

    invoke-direct {v5, v3, v2, v6, v7}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    .line 216
    .local v5, newRect:Lcom/itextpdf/text/Rectangle;
    invoke-virtual {v5, p4}, Lcom/itextpdf/text/Rectangle;->cloneNonPositionParameters(Lcom/itextpdf/text/Rectangle;)V

    .line 217
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/itextpdf/text/Rectangle;->setBackgroundColor(Lcom/itextpdf/text/BaseColor;)V

    .line 219
    const/4 v8, 0x2

    aget-object v4, p5, v8

    .line 220
    .local v4, lineCanvas:Lcom/itextpdf/text/pdf/PdfContentByte;
    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/PdfContentByte;->rectangle(Lcom/itextpdf/text/Rectangle;)V

    .line 223
    .end local v2           #bottom:F
    .end local v3           #left:F
    .end local v4           #lineCanvas:Lcom/itextpdf/text/pdf/PdfContentByte;
    .end local v5           #newRect:Lcom/itextpdf/text/Rectangle;
    .end local v6           #right:F
    .end local v7           #top:F
    :cond_2
    return-void
.end method

.method public writeCells(IIFF[Lcom/itextpdf/text/pdf/PdfContentByte;Z)V
    .locals 43
    .parameter "colStart"
    .parameter "colEnd"
    .parameter "xPos"
    .parameter "yPos"
    .parameter "canvases"
    .parameter "reusable"

    .prologue
    .line 282
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/itextpdf/text/pdf/PdfPRow;->calculated:Z

    if-nez v4, :cond_0

    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfPRow;->calculateHeights()V

    .line 284
    :cond_0
    if-gez p2, :cond_3

    .line 285
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    array-length v0, v4

    move/from16 p2, v0

    .line 288
    :goto_0
    if-gez p1, :cond_1

    .line 289
    const/16 p1, 0x0

    .line 290
    :cond_1
    move/from16 v0, p1

    move/from16 v1, p2

    if-lt v0, v1, :cond_4

    .line 510
    :cond_2
    return-void

    .line 287
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    array-length v4, v4

    move/from16 v0, p2

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0

    .line 294
    :cond_4
    move/from16 v37, p1

    .local v37, newStart:I
    :goto_1
    if-ltz v37, :cond_5

    .line 295
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    aget-object v4, v4, v37

    if-eqz v4, :cond_9

    .line 301
    :cond_5
    if-gez v37, :cond_6

    .line 302
    const/16 v37, 0x0

    .line 303
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    aget-object v4, v4, v37

    if-eqz v4, :cond_7

    .line 304
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    aget-object v4, v4, v37

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfPCell;->getLeft()F

    move-result v4

    sub-float p3, p3, v4

    .line 306
    :cond_7
    move/from16 v32, v37

    .local v32, k:I
    :goto_2
    move/from16 v0, v32

    move/from16 v1, p2

    if-ge v0, v1, :cond_2

    .line 307
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    aget-object v8, v4, v32

    .line 308
    .local v8, cell:Lcom/itextpdf/text/pdf/PdfPCell;
    if-nez v8, :cond_b

    .line 306
    :cond_8
    :goto_3
    add-int/lit8 v32, v32, 0x1

    goto :goto_2

    .line 297
    .end local v8           #cell:Lcom/itextpdf/text/pdf/PdfPCell;
    .end local v32           #k:I
    :cond_9
    if-lez v37, :cond_a

    .line 298
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfPRow;->widths:[F

    add-int/lit8 v5, v37, -0x1

    aget v4, v4, v5

    sub-float p3, p3, v4

    .line 294
    :cond_a
    add-int/lit8 v37, v37, -0x1

    goto :goto_1

    .line 310
    .restart local v8       #cell:Lcom/itextpdf/text/pdf/PdfPCell;
    .restart local v32       #k:I
    :cond_b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/PdfPRow;->maxHeight:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/PdfPRow;->extraHeights:[F

    aget v5, v5, v32

    add-float v7, v4, v5

    .local v7, currentMaxHeight:F
    move-object/from16 v4, p0

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v9, p5

    .line 312
    invoke-virtual/range {v4 .. v9}, Lcom/itextpdf/text/pdf/PdfPRow;->writeBorderAndBackground(FFFLcom/itextpdf/text/pdf/PdfPCell;[Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 314
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getImage()Lcom/itextpdf/text/Image;

    move-result-object v31

    .line 316
    .local v31, img:Lcom/itextpdf/text/Image;
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getTop()F

    move-result v4

    add-float v4, v4, p4

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingTop()F

    move-result v5

    sub-float v41, v4, v5

    .line 317
    .local v41, tly:F
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getHeight()F

    move-result v4

    cmpg-float v4, v4, v7

    if-gtz v4, :cond_c

    .line 318
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getVerticalAlignment()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 331
    :cond_c
    :goto_4
    if-eqz v31, :cond_11

    .line 332
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getRotation()I

    move-result v4

    if-eqz v4, :cond_d

    .line 333
    invoke-static/range {v31 .. v31}, Lcom/itextpdf/text/Image;->getInstance(Lcom/itextpdf/text/Image;)Lcom/itextpdf/text/Image;

    move-result-object v31

    .line 334
    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/Image;->getImageRotation()F

    move-result v4

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getRotation()I

    move-result v5

    int-to-double v5, v5

    const-wide v9, 0x400921fb54442d18L

    mul-double/2addr v5, v9

    const-wide v9, 0x4066800000000000L

    div-double/2addr v5, v9

    double-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/Image;->setRotation(F)V

    .line 336
    :cond_d
    const/16 v42, 0x0

    .line 337
    .local v42, vf:Z
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getHeight()F

    move-result v4

    cmpl-float v4, v4, v7

    if-lez v4, :cond_e

    .line 338
    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/Image;->isScaleToFitLineWhenOverflow()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 341
    const/high16 v4, 0x42c8

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/Image;->scalePercent(F)V

    .line 342
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingTop()F

    move-result v4

    sub-float v4, v7, v4

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingBottom()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/Image;->getScaledHeight()F

    move-result v5

    div-float v40, v4, v5

    .line 345
    .local v40, scale:F
    const/high16 v4, 0x42c8

    mul-float v4, v4, v40

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/Image;->scalePercent(F)V

    .line 346
    const/16 v42, 0x1

    .line 348
    .end local v40           #scale:F
    :cond_e
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getLeft()F

    move-result v4

    add-float v4, v4, p3

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingLeft()F

    move-result v5

    add-float v33, v4, v5

    .line 350
    .local v33, left:F
    if-eqz v42, :cond_f

    .line 351
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getHorizontalAlignment()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 367
    :goto_5
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getTop()F

    move-result v4

    add-float v4, v4, p4

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingTop()F

    move-result v5

    sub-float v41, v4, v5

    .line 369
    :cond_f
    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/Image;->getScaledHeight()F

    move-result v4

    sub-float v4, v41, v4

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1, v4}, Lcom/itextpdf/text/Image;->setAbsolutePosition(FF)V

    .line 371
    const/4 v4, 0x3

    :try_start_0
    aget-object v4, p5, v4

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->addImage(Lcom/itextpdf/text/Image;)V
    :try_end_0
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    .end local v33           #left:F
    .end local v42           #vf:Z
    :cond_10
    :goto_6
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getCellEvent()Lcom/itextpdf/text/pdf/PdfPCellEvent;

    move-result-object v29

    .line 503
    .local v29, evt:Lcom/itextpdf/text/pdf/PdfPCellEvent;
    if-eqz v29, :cond_8

    .line 504
    new-instance v38, Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getLeft()F

    move-result v4

    add-float v4, v4, p3

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getTop()F

    move-result v5

    add-float v5, v5, p4

    sub-float/2addr v5, v7

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getRight()F

    move-result v6

    add-float v6, v6, p3

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getTop()F

    move-result v9

    add-float v9, v9, p4

    move-object/from16 v0, v38

    invoke-direct {v0, v4, v5, v6, v9}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    .line 507
    .local v38, rect:Lcom/itextpdf/text/Rectangle;
    move-object/from16 v0, v29

    move-object/from16 v1, v38

    move-object/from16 v2, p5

    invoke-interface {v0, v8, v1, v2}, Lcom/itextpdf/text/pdf/PdfPCellEvent;->cellLayout(Lcom/itextpdf/text/pdf/PdfPCell;Lcom/itextpdf/text/Rectangle;[Lcom/itextpdf/text/pdf/PdfContentByte;)V

    goto/16 :goto_3

    .line 320
    .end local v29           #evt:Lcom/itextpdf/text/pdf/PdfPCellEvent;
    .end local v38           #rect:Lcom/itextpdf/text/Rectangle;
    :pswitch_0
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getTop()F

    move-result v4

    add-float v4, v4, p4

    sub-float/2addr v4, v7

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingTop()F

    move-result v5

    sub-float v41, v4, v5

    .line 322
    goto/16 :goto_4

    .line 324
    :pswitch_1
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getTop()F

    move-result v4

    add-float v4, v4, p4

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getHeight()F

    move-result v5

    sub-float/2addr v5, v7

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingTop()F

    move-result v5

    sub-float v41, v4, v5

    .line 326
    goto/16 :goto_4

    .line 353
    .restart local v33       #left:F
    .restart local v42       #vf:Z
    :pswitch_2
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getLeft()F

    move-result v4

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingLeft()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getRight()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingRight()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/Image;->getScaledWidth()F

    move-result v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    add-float v33, p3, v4

    .line 358
    goto/16 :goto_5

    .line 360
    :pswitch_3
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getRight()F

    move-result v4

    add-float v4, v4, p3

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingRight()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/Image;->getScaledWidth()F

    move-result v5

    sub-float v33, v4, v5

    .line 363
    goto/16 :goto_5

    .line 372
    :catch_0
    move-exception v28

    .line 373
    .local v28, e:Lcom/itextpdf/text/DocumentException;
    new-instance v4, Lcom/itextpdf/text/ExceptionConverter;

    move-object/from16 v0, v28

    invoke-direct {v4, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v4

    .line 377
    .end local v28           #e:Lcom/itextpdf/text/DocumentException;
    .end local v33           #left:F
    .end local v42           #vf:Z
    :cond_11
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getRotation()I

    move-result v4

    const/16 v5, 0x5a

    if-eq v4, v5, :cond_12

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getRotation()I

    move-result v4

    const/16 v5, 0x10e

    if-ne v4, v5, :cond_17

    .line 378
    :cond_12
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingTop()F

    move-result v4

    sub-float v4, v7, v4

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingBottom()F

    move-result v5

    sub-float v36, v4, v5

    .line 379
    .local v36, netWidth:F
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getWidth()F

    move-result v4

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingLeft()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingRight()F

    move-result v5

    sub-float v35, v4, v5

    .line 380
    .local v35, netHeight:F
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getColumn()Lcom/itextpdf/text/pdf/ColumnText;

    move-result-object v4

    invoke-static {v4}, Lcom/itextpdf/text/pdf/ColumnText;->duplicate(Lcom/itextpdf/text/pdf/ColumnText;)Lcom/itextpdf/text/pdf/ColumnText;

    move-result-object v27

    .line 381
    .local v27, ct:Lcom/itextpdf/text/pdf/ColumnText;
    move-object/from16 v0, v27

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ColumnText;->setCanvases([Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 382
    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x3a83126f

    add-float v6, v6, v36

    move/from16 v0, v35

    neg-float v9, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5, v6, v9}, Lcom/itextpdf/text/pdf/ColumnText;->setSimpleColumn(FFFF)V

    .line 384
    const/4 v4, 0x1

    :try_start_1
    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/ColumnText;->go(Z)I
    :try_end_1
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 388
    invoke-virtual/range {v27 .. v27}, Lcom/itextpdf/text/pdf/ColumnText;->getYLine()F

    move-result v4

    neg-float v0, v4

    move/from16 v26, v0

    .line 389
    .local v26, calcHeight:F
    const/4 v4, 0x0

    cmpg-float v4, v36, v4

    if-lez v4, :cond_13

    const/4 v4, 0x0

    cmpg-float v4, v35, v4

    if-gtz v4, :cond_14

    .line 390
    :cond_13
    const/16 v26, 0x0

    .line 391
    :cond_14
    const/4 v4, 0x0

    cmpl-float v4, v26, v4

    if-lez v4, :cond_10

    .line 392
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->isUseDescender()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 393
    invoke-virtual/range {v27 .. v27}, Lcom/itextpdf/text/pdf/ColumnText;->getDescender()F

    move-result v4

    sub-float v26, v26, v4

    .line 394
    :cond_15
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getColumn()Lcom/itextpdf/text/pdf/ColumnText;

    move-result-object v4

    invoke-static {v4}, Lcom/itextpdf/text/pdf/ColumnText;->duplicate(Lcom/itextpdf/text/pdf/ColumnText;)Lcom/itextpdf/text/pdf/ColumnText;

    move-result-object v27

    .line 395
    move-object/from16 v0, v27

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ColumnText;->setCanvases([Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 396
    const v4, -0x44bb645a

    const v5, -0x457ced91

    const v6, 0x3b449ba6

    add-float v6, v6, v36

    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v4, v5, v6, v1}, Lcom/itextpdf/text/pdf/ColumnText;->setSimpleColumn(FFFF)V

    .line 399
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getRotation()I

    move-result v4

    const/16 v5, 0x5a

    if-ne v4, v5, :cond_16

    .line 400
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getTop()F

    move-result v4

    add-float v4, v4, p4

    sub-float/2addr v4, v7

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingBottom()F

    move-result v5

    add-float v16, v4, v5

    .line 401
    .local v16, pivotY:F
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getVerticalAlignment()I

    move-result v4

    packed-switch v4, :pswitch_data_2

    .line 409
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getLeft()F

    move-result v4

    add-float v4, v4, p3

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingLeft()F

    move-result v5

    add-float/2addr v4, v5

    add-float v15, v4, v26

    .line 412
    .local v15, pivotX:F
    :goto_7
    const/4 v11, 0x0

    const/high16 v12, 0x3f80

    const/high16 v13, -0x4080

    const/4 v14, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p5

    invoke-virtual/range {v9 .. v16}, Lcom/itextpdf/text/pdf/PdfPRow;->saveAndRotateCanvases([Lcom/itextpdf/text/pdf/PdfContentByte;FFFFFF)V

    .line 430
    :goto_8
    :try_start_2
    invoke-virtual/range {v27 .. v27}, Lcom/itextpdf/text/pdf/ColumnText;->go()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 434
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfPRow;->restoreCanvases([Lcom/itextpdf/text/pdf/PdfContentByte;)V

    goto/16 :goto_6

    .line 385
    .end local v15           #pivotX:F
    .end local v16           #pivotY:F
    .end local v26           #calcHeight:F
    :catch_1
    move-exception v28

    .line 386
    .restart local v28       #e:Lcom/itextpdf/text/DocumentException;
    new-instance v4, Lcom/itextpdf/text/ExceptionConverter;

    move-object/from16 v0, v28

    invoke-direct {v4, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v4

    .line 403
    .end local v28           #e:Lcom/itextpdf/text/DocumentException;
    .restart local v16       #pivotY:F
    .restart local v26       #calcHeight:F
    :pswitch_4
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getLeft()F

    move-result v4

    add-float v4, v4, p3

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getWidth()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingRight()F

    move-result v5

    sub-float v15, v4, v5

    .line 404
    .restart local v15       #pivotX:F
    goto :goto_7

    .line 406
    .end local v15           #pivotX:F
    :pswitch_5
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getLeft()F

    move-result v4

    add-float v4, v4, p3

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getWidth()F

    move-result v5

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingLeft()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingRight()F

    move-result v6

    sub-float/2addr v5, v6

    add-float v5, v5, v26

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    add-float v15, v4, v5

    .line 407
    .restart local v15       #pivotX:F
    goto :goto_7

    .line 415
    .end local v15           #pivotX:F
    .end local v16           #pivotY:F
    :cond_16
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getTop()F

    move-result v4

    add-float v4, v4, p4

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingTop()F

    move-result v5

    sub-float v16, v4, v5

    .line 416
    .restart local v16       #pivotY:F
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getVerticalAlignment()I

    move-result v4

    packed-switch v4, :pswitch_data_3

    .line 424
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getLeft()F

    move-result v4

    add-float v4, v4, p3

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getWidth()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingRight()F

    move-result v5

    sub-float/2addr v4, v5

    sub-float v15, v4, v26

    .line 427
    .restart local v15       #pivotX:F
    :goto_9
    const/4 v11, 0x0

    const/high16 v12, -0x4080

    const/high16 v13, 0x3f80

    const/4 v14, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p5

    invoke-virtual/range {v9 .. v16}, Lcom/itextpdf/text/pdf/PdfPRow;->saveAndRotateCanvases([Lcom/itextpdf/text/pdf/PdfContentByte;FFFFFF)V

    goto :goto_8

    .line 418
    .end local v15           #pivotX:F
    :pswitch_6
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getLeft()F

    move-result v4

    add-float v4, v4, p3

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingLeft()F

    move-result v5

    add-float v15, v4, v5

    .line 419
    .restart local v15       #pivotX:F
    goto :goto_9

    .line 421
    .end local v15           #pivotX:F
    :pswitch_7
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getLeft()F

    move-result v4

    add-float v4, v4, p3

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getWidth()F

    move-result v5

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingLeft()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingRight()F

    move-result v6

    sub-float/2addr v5, v6

    sub-float v5, v5, v26

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    add-float v15, v4, v5

    .line 422
    .restart local v15       #pivotX:F
    goto :goto_9

    .line 431
    :catch_2
    move-exception v28

    .line 432
    .restart local v28       #e:Lcom/itextpdf/text/DocumentException;
    :try_start_3
    new-instance v4, Lcom/itextpdf/text/ExceptionConverter;

    move-object/from16 v0, v28

    invoke-direct {v4, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 434
    .end local v28           #e:Lcom/itextpdf/text/DocumentException;
    :catchall_0
    move-exception v4

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfPRow;->restoreCanvases([Lcom/itextpdf/text/pdf/PdfContentByte;)V

    throw v4

    .line 439
    .end local v15           #pivotX:F
    .end local v16           #pivotY:F
    .end local v26           #calcHeight:F
    .end local v27           #ct:Lcom/itextpdf/text/pdf/ColumnText;
    .end local v35           #netHeight:F
    .end local v36           #netWidth:F
    :cond_17
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getFixedHeight()F

    move-result v30

    .line 440
    .local v30, fixedHeight:F
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getRight()F

    move-result v4

    add-float v4, v4, p3

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingRight()F

    move-result v5

    sub-float v39, v4, v5

    .line 442
    .local v39, rightLimit:F
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getLeft()F

    move-result v4

    add-float v4, v4, p3

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingLeft()F

    move-result v5

    add-float v34, v4, v5

    .line 444
    .local v34, leftLimit:F
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->isNoWrap()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 445
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getHorizontalAlignment()I

    move-result v4

    packed-switch v4, :pswitch_data_4

    .line 459
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getRotation()I

    move-result v4

    const/16 v5, 0xb4

    if-ne v4, v5, :cond_1d

    .line 460
    const v4, 0x469c4000

    sub-float v34, v34, v4

    .line 469
    :cond_18
    :goto_a
    if-eqz p6, :cond_1e

    .line 470
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getColumn()Lcom/itextpdf/text/pdf/ColumnText;

    move-result-object v4

    invoke-static {v4}, Lcom/itextpdf/text/pdf/ColumnText;->duplicate(Lcom/itextpdf/text/pdf/ColumnText;)Lcom/itextpdf/text/pdf/ColumnText;

    move-result-object v27

    .line 473
    .restart local v27       #ct:Lcom/itextpdf/text/pdf/ColumnText;
    :goto_b
    move-object/from16 v0, v27

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ColumnText;->setCanvases([Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 474
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingTop()F

    move-result v4

    sub-float v4, v7, v4

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingBottom()F

    move-result v5

    sub-float/2addr v4, v5

    sub-float v25, v41, v4

    .line 477
    .local v25, bry:F
    const/4 v4, 0x0

    cmpl-float v4, v30, v4

    if-lez v4, :cond_19

    .line 478
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getHeight()F

    move-result v4

    cmpl-float v4, v4, v7

    if-lez v4, :cond_19

    .line 479
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getTop()F

    move-result v4

    add-float v4, v4, p4

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingTop()F

    move-result v5

    sub-float v41, v4, v5

    .line 480
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getTop()F

    move-result v4

    add-float v4, v4, p4

    sub-float/2addr v4, v7

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingBottom()F

    move-result v5

    add-float v25, v4, v5

    .line 483
    :cond_19
    cmpl-float v4, v41, v25

    if-gtz v4, :cond_1a

    invoke-virtual/range {v27 .. v27}, Lcom/itextpdf/text/pdf/ColumnText;->zeroHeightElement()Z

    move-result v4

    if-eqz v4, :cond_10

    :cond_1a
    cmpg-float v4, v34, v39

    if-gez v4, :cond_10

    .line 484
    const v4, 0x3a83126f

    sub-float v4, v25, v4

    move-object/from16 v0, v27

    move/from16 v1, v34

    move/from16 v2, v39

    move/from16 v3, v41

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/itextpdf/text/pdf/ColumnText;->setSimpleColumn(FFFF)V

    .line 485
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getRotation()I

    move-result v4

    const/16 v5, 0xb4

    if-ne v4, v5, :cond_1b

    .line 486
    add-float v23, v34, v39

    .line 487
    .local v23, shx:F
    add-float v4, p4, p4

    sub-float/2addr v4, v7

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingBottom()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingTop()F

    move-result v5

    sub-float v24, v4, v5

    .line 488
    .local v24, shy:F
    const/high16 v19, -0x4080

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/high16 v22, -0x4080

    move-object/from16 v17, p0

    move-object/from16 v18, p5

    invoke-virtual/range {v17 .. v24}, Lcom/itextpdf/text/pdf/PdfPRow;->saveAndRotateCanvases([Lcom/itextpdf/text/pdf/PdfContentByte;FFFFFF)V

    .line 491
    .end local v23           #shx:F
    .end local v24           #shy:F
    :cond_1b
    :try_start_4
    invoke-virtual/range {v27 .. v27}, Lcom/itextpdf/text/pdf/ColumnText;->go()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_4 .. :try_end_4} :catch_3

    .line 495
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getRotation()I

    move-result v4

    const/16 v5, 0xb4

    if-ne v4, v5, :cond_10

    .line 496
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfPRow;->restoreCanvases([Lcom/itextpdf/text/pdf/PdfContentByte;)V

    goto/16 :goto_6

    .line 447
    .end local v25           #bry:F
    .end local v27           #ct:Lcom/itextpdf/text/pdf/ColumnText;
    :pswitch_8
    const v4, 0x461c4000

    add-float v39, v39, v4

    .line 448
    const v4, 0x461c4000

    sub-float v34, v34, v4

    .line 449
    goto/16 :goto_a

    .line 451
    :pswitch_9
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getRotation()I

    move-result v4

    const/16 v5, 0xb4

    if-ne v4, v5, :cond_1c

    .line 452
    const v4, 0x469c4000

    add-float v39, v39, v4

    goto/16 :goto_a

    .line 455
    :cond_1c
    const v4, 0x469c4000

    sub-float v34, v34, v4

    .line 457
    goto/16 :goto_a

    .line 463
    :cond_1d
    const v4, 0x469c4000

    add-float v39, v39, v4

    goto/16 :goto_a

    .line 472
    :cond_1e
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getColumn()Lcom/itextpdf/text/pdf/ColumnText;

    move-result-object v27

    .restart local v27       #ct:Lcom/itextpdf/text/pdf/ColumnText;
    goto/16 :goto_b

    .line 492
    .restart local v25       #bry:F
    :catch_3
    move-exception v28

    .line 493
    .restart local v28       #e:Lcom/itextpdf/text/DocumentException;
    :try_start_5
    new-instance v4, Lcom/itextpdf/text/ExceptionConverter;

    move-object/from16 v0, v28

    invoke-direct {v4, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 495
    .end local v28           #e:Lcom/itextpdf/text/DocumentException;
    :catchall_1
    move-exception v4

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getRotation()I

    move-result v5

    const/16 v6, 0xb4

    if-ne v5, v6, :cond_1f

    .line 496
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfPRow;->restoreCanvases([Lcom/itextpdf/text/pdf/PdfContentByte;)V

    :cond_1f
    throw v4

    .line 318
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 351
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 401
    :pswitch_data_2
    .packed-switch 0x5
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 416
    :pswitch_data_3
    .packed-switch 0x5
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 445
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

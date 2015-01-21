.class public Lcom/itextpdf/text/pdf/PdfPTable;
.super Ljava/lang/Object;
.source "PdfPTable.java"

# interfaces
.implements Lcom/itextpdf/text/LargeElement;
.implements Lcom/itextpdf/text/api/Spaceable;


# static fields
.field public static final BACKGROUNDCANVAS:I = 0x1

.field public static final BASECANVAS:I = 0x0

.field public static final LINECANVAS:I = 0x2

.field public static final TEXTCANVAS:I = 0x3


# instance fields
.field protected absoluteWidths:[F

.field protected complete:Z

.field protected currentColIdx:I

.field protected currentRow:[Lcom/itextpdf/text/pdf/PdfPCell;

.field protected defaultCell:Lcom/itextpdf/text/pdf/PdfPCell;

.field private extendLastRow:[Z

.field private footerRows:I

.field protected headerRows:I

.field private headersInEvent:Z

.field private horizontalAlignment:I

.field protected isColspan:Z

.field private keepTogether:Z

.field private lockedWidth:Z

.field protected relativeWidths:[F

.field protected rowCompleted:Z

.field protected rows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfPRow;",
            ">;"
        }
    .end annotation
.end field

.field protected runDirection:I

.field private skipFirstHeader:Z

.field private skipLastFooter:Z

.field protected spacingAfter:F

.field protected spacingBefore:F

.field private splitLate:Z

.field private splitRows:Z

.field protected tableEvent:Lcom/itextpdf/text/pdf/PdfPTableEvent;

.field protected totalHeight:F

.field protected totalWidth:F

.field protected widthPercentage:F


# direct methods
.method protected constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    .line 93
    iput v4, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalHeight:F

    .line 99
    iput v2, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentColIdx:I

    .line 100
    new-instance v1, Lcom/itextpdf/text/pdf/PdfPCell;

    const/4 v0, 0x0

    check-cast v0, Lcom/itextpdf/text/Phrase;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/pdf/PdfPCell;-><init>(Lcom/itextpdf/text/Phrase;)V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->defaultCell:Lcom/itextpdf/text/pdf/PdfPCell;

    .line 101
    iput v4, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalWidth:F

    .line 114
    const/high16 v0, 0x42a0

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->widthPercentage:F

    .line 119
    iput v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->horizontalAlignment:I

    .line 124
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfPTable;->skipFirstHeader:Z

    .line 129
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfPTable;->skipLastFooter:Z

    .line 131
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfPTable;->isColspan:Z

    .line 133
    iput v2, p0, Lcom/itextpdf/text/pdf/PdfPTable;->runDirection:I

    .line 138
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfPTable;->lockedWidth:Z

    .line 143
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->splitRows:Z

    .line 158
    const/4 v0, 0x2

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->extendLastRow:[Z

    .line 168
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->splitLate:Z

    .line 181
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->complete:Z

    .line 192
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rowCompleted:Z

    .line 195
    return-void

    .line 158
    :array_0
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 6
    .parameter "numColumns"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    .line 93
    iput v5, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalHeight:F

    .line 99
    iput v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentColIdx:I

    .line 100
    new-instance v2, Lcom/itextpdf/text/pdf/PdfPCell;

    const/4 v1, 0x0

    check-cast v1, Lcom/itextpdf/text/Phrase;

    invoke-direct {v2, v1}, Lcom/itextpdf/text/pdf/PdfPCell;-><init>(Lcom/itextpdf/text/Phrase;)V

    iput-object v2, p0, Lcom/itextpdf/text/pdf/PdfPTable;->defaultCell:Lcom/itextpdf/text/pdf/PdfPCell;

    .line 101
    iput v5, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalWidth:F

    .line 114
    const/high16 v1, 0x42a0

    iput v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->widthPercentage:F

    .line 119
    iput v4, p0, Lcom/itextpdf/text/pdf/PdfPTable;->horizontalAlignment:I

    .line 124
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->skipFirstHeader:Z

    .line 129
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->skipLastFooter:Z

    .line 131
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->isColspan:Z

    .line 133
    iput v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->runDirection:I

    .line 138
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->lockedWidth:Z

    .line 143
    iput-boolean v4, p0, Lcom/itextpdf/text/pdf/PdfPTable;->splitRows:Z

    .line 158
    const/4 v1, 0x2

    new-array v1, v1, [Z

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->extendLastRow:[Z

    .line 168
    iput-boolean v4, p0, Lcom/itextpdf/text/pdf/PdfPTable;->splitLate:Z

    .line 181
    iput-boolean v4, p0, Lcom/itextpdf/text/pdf/PdfPTable;->complete:Z

    .line 192
    iput-boolean v4, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rowCompleted:Z

    .line 221
    if-gtz p1, :cond_0

    .line 222
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "the.number.of.columns.in.pdfptable.constructor.must.be.greater.than.zero"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 223
    :cond_0
    new-array v1, p1, [F

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->relativeWidths:[F

    .line 224
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 225
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->relativeWidths:[F

    const/high16 v2, 0x3f80

    aput v2, v1, v0

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->relativeWidths:[F

    array-length v1, v1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->absoluteWidths:[F

    .line 227
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPTable;->calculateWidths()V

    .line 228
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->absoluteWidths:[F

    array-length v1, v1

    new-array v1, v1, [Lcom/itextpdf/text/pdf/PdfPCell;

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentRow:[Lcom/itextpdf/text/pdf/PdfPCell;

    .line 229
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->keepTogether:Z

    .line 230
    return-void

    .line 158
    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfPTable;)V
    .locals 8
    .parameter "table"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    .line 93
    iput v7, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalHeight:F

    .line 99
    iput v5, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentColIdx:I

    .line 100
    new-instance v4, Lcom/itextpdf/text/pdf/PdfPCell;

    const/4 v3, 0x0

    check-cast v3, Lcom/itextpdf/text/Phrase;

    invoke-direct {v4, v3}, Lcom/itextpdf/text/pdf/PdfPCell;-><init>(Lcom/itextpdf/text/Phrase;)V

    iput-object v4, p0, Lcom/itextpdf/text/pdf/PdfPTable;->defaultCell:Lcom/itextpdf/text/pdf/PdfPCell;

    .line 101
    iput v7, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalWidth:F

    .line 114
    const/high16 v3, 0x42a0

    iput v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->widthPercentage:F

    .line 119
    iput v6, p0, Lcom/itextpdf/text/pdf/PdfPTable;->horizontalAlignment:I

    .line 124
    iput-boolean v5, p0, Lcom/itextpdf/text/pdf/PdfPTable;->skipFirstHeader:Z

    .line 129
    iput-boolean v5, p0, Lcom/itextpdf/text/pdf/PdfPTable;->skipLastFooter:Z

    .line 131
    iput-boolean v5, p0, Lcom/itextpdf/text/pdf/PdfPTable;->isColspan:Z

    .line 133
    iput v5, p0, Lcom/itextpdf/text/pdf/PdfPTable;->runDirection:I

    .line 138
    iput-boolean v5, p0, Lcom/itextpdf/text/pdf/PdfPTable;->lockedWidth:Z

    .line 143
    iput-boolean v6, p0, Lcom/itextpdf/text/pdf/PdfPTable;->splitRows:Z

    .line 158
    const/4 v3, 0x2

    new-array v3, v3, [Z

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->extendLastRow:[Z

    .line 168
    iput-boolean v6, p0, Lcom/itextpdf/text/pdf/PdfPTable;->splitLate:Z

    .line 181
    iput-boolean v6, p0, Lcom/itextpdf/text/pdf/PdfPTable;->complete:Z

    .line 192
    iput-boolean v6, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rowCompleted:Z

    .line 238
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfPTable;->copyFormat(Lcom/itextpdf/text/pdf/PdfPTable;)V

    .line 239
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentRow:[Lcom/itextpdf/text/pdf/PdfPCell;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 240
    iget-object v3, p1, Lcom/itextpdf/text/pdf/PdfPTable;->currentRow:[Lcom/itextpdf/text/pdf/PdfPCell;

    aget-object v3, v3, v0

    if-nez v3, :cond_2

    .line 244
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p1, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 245
    iget-object v3, p1, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfPRow;

    .line 246
    .local v1, row:Lcom/itextpdf/text/pdf/PdfPRow;
    if-eqz v1, :cond_1

    .line 247
    new-instance v2, Lcom/itextpdf/text/pdf/PdfPRow;

    invoke-direct {v2, v1}, Lcom/itextpdf/text/pdf/PdfPRow;-><init>(Lcom/itextpdf/text/pdf/PdfPRow;)V

    .end local v1           #row:Lcom/itextpdf/text/pdf/PdfPRow;
    .local v2, row:Lcom/itextpdf/text/pdf/PdfPRow;
    move-object v1, v2

    .line 248
    .end local v2           #row:Lcom/itextpdf/text/pdf/PdfPRow;
    .restart local v1       #row:Lcom/itextpdf/text/pdf/PdfPRow;
    :cond_1
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 242
    .end local v1           #row:Lcom/itextpdf/text/pdf/PdfPRow;
    :cond_2
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentRow:[Lcom/itextpdf/text/pdf/PdfPCell;

    new-instance v4, Lcom/itextpdf/text/pdf/PdfPCell;

    iget-object v5, p1, Lcom/itextpdf/text/pdf/PdfPTable;->currentRow:[Lcom/itextpdf/text/pdf/PdfPCell;

    aget-object v5, v5, v0

    invoke-direct {v4, v5}, Lcom/itextpdf/text/pdf/PdfPCell;-><init>(Lcom/itextpdf/text/pdf/PdfPCell;)V

    aput-object v4, v3, v0

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    :cond_3
    return-void

    .line 158
    :array_0
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>([F)V
    .locals 5
    .parameter "relativeWidths"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    .line 93
    iput v4, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalHeight:F

    .line 99
    iput v2, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentColIdx:I

    .line 100
    new-instance v1, Lcom/itextpdf/text/pdf/PdfPCell;

    const/4 v0, 0x0

    check-cast v0, Lcom/itextpdf/text/Phrase;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/pdf/PdfPCell;-><init>(Lcom/itextpdf/text/Phrase;)V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->defaultCell:Lcom/itextpdf/text/pdf/PdfPCell;

    .line 101
    iput v4, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalWidth:F

    .line 114
    const/high16 v0, 0x42a0

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->widthPercentage:F

    .line 119
    iput v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->horizontalAlignment:I

    .line 124
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfPTable;->skipFirstHeader:Z

    .line 129
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfPTable;->skipLastFooter:Z

    .line 131
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfPTable;->isColspan:Z

    .line 133
    iput v2, p0, Lcom/itextpdf/text/pdf/PdfPTable;->runDirection:I

    .line 138
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfPTable;->lockedWidth:Z

    .line 143
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->splitRows:Z

    .line 158
    const/4 v0, 0x2

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->extendLastRow:[Z

    .line 168
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->splitLate:Z

    .line 181
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->complete:Z

    .line 192
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rowCompleted:Z

    .line 203
    if-nez p1, :cond_0

    .line 204
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the.widths.array.in.pdfptable.constructor.can.not.be.null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    .line 206
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the.widths.array.in.pdfptable.constructor.can.not.have.zero.length"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_1
    array-length v0, p1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->relativeWidths:[F

    .line 208
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->relativeWidths:[F

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    array-length v0, p1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->absoluteWidths:[F

    .line 210
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPTable;->calculateWidths()V

    .line 211
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->absoluteWidths:[F

    array-length v0, v0

    new-array v0, v0, [Lcom/itextpdf/text/pdf/PdfPCell;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentRow:[Lcom/itextpdf/text/pdf/PdfPCell;

    .line 212
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfPTable;->keepTogether:Z

    .line 213
    return-void

    .line 158
    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method public static beginWritingRows(Lcom/itextpdf/text/pdf/PdfContentByte;)[Lcom/itextpdf/text/pdf/PdfContentByte;
    .locals 3
    .parameter "canvas"

    .prologue
    .line 852
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/itextpdf/text/pdf/PdfContentByte;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getDuplicate()Lcom/itextpdf/text/pdf/PdfContentByte;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getDuplicate()Lcom/itextpdf/text/pdf/PdfContentByte;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getDuplicate()Lcom/itextpdf/text/pdf/PdfContentByte;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static endWritingRows([Lcom/itextpdf/text/pdf/PdfContentByte;)V
    .locals 3
    .parameter "canvases"

    .prologue
    const/4 v2, 0x2

    .line 866
    const/4 v1, 0x0

    aget-object v0, p0, v1

    .line 867
    .local v0, canvas:Lcom/itextpdf/text/pdf/PdfContentByte;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->saveState()V

    .line 868
    const/4 v1, 0x1

    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->add(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 869
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->restoreState()V

    .line 870
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->saveState()V

    .line 871
    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineCap(I)V

    .line 872
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->resetRGBColorStroke()V

    .line 873
    aget-object v1, p0, v2

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->add(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 874
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->restoreState()V

    .line 875
    const/4 v1, 0x3

    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->add(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 876
    return-void
.end method

.method public static shallowCopy(Lcom/itextpdf/text/pdf/PdfPTable;)Lcom/itextpdf/text/pdf/PdfPTable;
    .locals 1
    .parameter "table"

    .prologue
    .line 259
    new-instance v0, Lcom/itextpdf/text/pdf/PdfPTable;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfPTable;-><init>()V

    .line 260
    .local v0, nt:Lcom/itextpdf/text/pdf/PdfPTable;
    invoke-virtual {v0, p0}, Lcom/itextpdf/text/pdf/PdfPTable;->copyFormat(Lcom/itextpdf/text/pdf/PdfPTable;)V

    .line 261
    return-object v0
.end method

.method private skipColsWithRowspanAbove()V
    .locals 3

    .prologue
    .line 516
    const/4 v0, 0x1

    .line 517
    .local v0, direction:I
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->runDirection:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 518
    const/4 v0, -0x1

    .line 519
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentColIdx:I

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/text/pdf/PdfPTable;->rowSpanAbove(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 520
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentColIdx:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentColIdx:I

    goto :goto_0

    .line 521
    :cond_1
    return-void
.end method


# virtual methods
.method public addCell(Lcom/itextpdf/text/Image;)V
    .locals 2
    .parameter "image"

    .prologue
    .line 607
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->defaultCell:Lcom/itextpdf/text/pdf/PdfPCell;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfPCell;->setImage(Lcom/itextpdf/text/Image;)V

    .line 608
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->defaultCell:Lcom/itextpdf/text/pdf/PdfPCell;

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfPTable;->addCell(Lcom/itextpdf/text/pdf/PdfPCell;)V

    .line 609
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->defaultCell:Lcom/itextpdf/text/pdf/PdfPCell;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfPCell;->setImage(Lcom/itextpdf/text/Image;)V

    .line 610
    return-void
.end method

.method public addCell(Lcom/itextpdf/text/Phrase;)V
    .locals 2
    .parameter "phrase"

    .prologue
    .line 618
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->defaultCell:Lcom/itextpdf/text/pdf/PdfPCell;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfPCell;->setPhrase(Lcom/itextpdf/text/Phrase;)V

    .line 619
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->defaultCell:Lcom/itextpdf/text/pdf/PdfPCell;

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfPTable;->addCell(Lcom/itextpdf/text/pdf/PdfPCell;)V

    .line 620
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->defaultCell:Lcom/itextpdf/text/pdf/PdfPCell;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfPCell;->setPhrase(Lcom/itextpdf/text/Phrase;)V

    .line 621
    return-void
.end method

.method public addCell(Lcom/itextpdf/text/pdf/PdfPCell;)V
    .locals 13
    .parameter "cell"

    .prologue
    .line 453
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rowCompleted:Z

    .line 454
    new-instance v4, Lcom/itextpdf/text/pdf/PdfPCell;

    invoke-direct {v4, p1}, Lcom/itextpdf/text/pdf/PdfPCell;-><init>(Lcom/itextpdf/text/pdf/PdfPCell;)V

    .line 456
    .local v4, ncell:Lcom/itextpdf/text/pdf/PdfPCell;
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfPCell;->getColspan()I

    move-result v1

    .line 457
    .local v1, colspan:I
    const/4 v11, 0x1

    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 458
    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentRow:[Lcom/itextpdf/text/pdf/PdfPCell;

    array-length v11, v11

    iget v12, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentColIdx:I

    sub-int/2addr v11, v12

    invoke-static {v1, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 459
    invoke-virtual {v4, v1}, Lcom/itextpdf/text/pdf/PdfPCell;->setColspan(I)V

    .line 461
    const/4 v11, 0x1

    if-eq v1, v11, :cond_0

    .line 462
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/itextpdf/text/pdf/PdfPTable;->isColspan:Z

    .line 463
    :cond_0
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfPCell;->getRunDirection()I

    move-result v7

    .line 464
    .local v7, rdir:I
    if-nez v7, :cond_1

    .line 465
    iget v11, p0, Lcom/itextpdf/text/pdf/PdfPTable;->runDirection:I

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/PdfPCell;->setRunDirection(I)V

    .line 467
    :cond_1
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfPTable;->skipColsWithRowspanAbove()V

    .line 469
    const/4 v0, 0x0

    .line 470
    .local v0, cellAdded:Z
    iget v11, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentColIdx:I

    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentRow:[Lcom/itextpdf/text/pdf/PdfPCell;

    array-length v12, v12

    if-ge v11, v12, :cond_2

    .line 471
    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentRow:[Lcom/itextpdf/text/pdf/PdfPCell;

    iget v12, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentColIdx:I

    aput-object v4, v11, v12

    .line 472
    iget v11, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentColIdx:I

    add-int/2addr v11, v1

    iput v11, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentColIdx:I

    .line 473
    const/4 v0, 0x1

    .line 476
    :cond_2
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfPTable;->skipColsWithRowspanAbove()V

    .line 478
    :goto_0
    iget v11, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentColIdx:I

    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentRow:[Lcom/itextpdf/text/pdf/PdfPCell;

    array-length v12, v12

    if-lt v11, v12, :cond_6

    .line 479
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPTable;->getNumberOfColumns()I

    move-result v5

    .line 480
    .local v5, numCols:I
    iget v11, p0, Lcom/itextpdf/text/pdf/PdfPTable;->runDirection:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_4

    .line 481
    new-array v10, v5, [Lcom/itextpdf/text/pdf/PdfPCell;

    .line 482
    .local v10, rtlRow:[Lcom/itextpdf/text/pdf/PdfPCell;
    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentRow:[Lcom/itextpdf/text/pdf/PdfPCell;

    array-length v8, v11

    .line 483
    .local v8, rev:I
    const/4 v3, 0x0

    .local v3, k:I
    :goto_1
    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentRow:[Lcom/itextpdf/text/pdf/PdfPCell;

    array-length v11, v11

    if-ge v3, v11, :cond_3

    .line 484
    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentRow:[Lcom/itextpdf/text/pdf/PdfPCell;

    aget-object v6, v11, v3

    .line 485
    .local v6, rcell:Lcom/itextpdf/text/pdf/PdfPCell;
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfPCell;->getColspan()I

    move-result v2

    .line 486
    .local v2, cspan:I
    sub-int/2addr v8, v2

    .line 487
    aput-object v6, v10, v8

    .line 488
    add-int/lit8 v11, v2, -0x1

    add-int/2addr v3, v11

    .line 483
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 490
    .end local v2           #cspan:I
    .end local v6           #rcell:Lcom/itextpdf/text/pdf/PdfPCell;
    :cond_3
    iput-object v10, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentRow:[Lcom/itextpdf/text/pdf/PdfPCell;

    .line 492
    .end local v3           #k:I
    .end local v8           #rev:I
    .end local v10           #rtlRow:[Lcom/itextpdf/text/pdf/PdfPCell;
    :cond_4
    new-instance v9, Lcom/itextpdf/text/pdf/PdfPRow;

    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentRow:[Lcom/itextpdf/text/pdf/PdfPCell;

    invoke-direct {v9, v11}, Lcom/itextpdf/text/pdf/PdfPRow;-><init>([Lcom/itextpdf/text/pdf/PdfPCell;)V

    .line 493
    .local v9, row:Lcom/itextpdf/text/pdf/PdfPRow;
    iget v11, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalWidth:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_5

    .line 494
    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfPTable;->absoluteWidths:[F

    invoke-virtual {v9, v11}, Lcom/itextpdf/text/pdf/PdfPRow;->setWidths([F)Z

    .line 495
    iget v11, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalHeight:F

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfPRow;->getMaxHeights()F

    move-result v12

    add-float/2addr v11, v12

    iput v11, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalHeight:F

    .line 497
    :cond_5
    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    new-array v11, v5, [Lcom/itextpdf/text/pdf/PdfPCell;

    iput-object v11, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentRow:[Lcom/itextpdf/text/pdf/PdfPCell;

    .line 499
    const/4 v11, 0x0

    iput v11, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentColIdx:I

    .line 500
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfPTable;->skipColsWithRowspanAbove()V

    .line 501
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rowCompleted:Z

    goto :goto_0

    .line 504
    .end local v5           #numCols:I
    .end local v9           #row:Lcom/itextpdf/text/pdf/PdfPRow;
    :cond_6
    if-nez v0, :cond_7

    .line 505
    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentRow:[Lcom/itextpdf/text/pdf/PdfPCell;

    iget v12, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentColIdx:I

    aput-object v4, v11, v12

    .line 506
    iget v11, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentColIdx:I

    add-int/2addr v11, v1

    iput v11, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentColIdx:I

    .line 508
    :cond_7
    return-void
.end method

.method public addCell(Lcom/itextpdf/text/pdf/PdfPTable;)V
    .locals 2
    .parameter "table"

    .prologue
    .line 595
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->defaultCell:Lcom/itextpdf/text/pdf/PdfPCell;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfPCell;->setTable(Lcom/itextpdf/text/pdf/PdfPTable;)V

    .line 596
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->defaultCell:Lcom/itextpdf/text/pdf/PdfPCell;

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfPTable;->addCell(Lcom/itextpdf/text/pdf/PdfPCell;)V

    .line 597
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->defaultCell:Lcom/itextpdf/text/pdf/PdfPCell;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfPCell;->setTable(Lcom/itextpdf/text/pdf/PdfPTable;)V

    .line 598
    return-void
.end method

.method public addCell(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 586
    new-instance v0, Lcom/itextpdf/text/Phrase;

    invoke-direct {v0, p1}, Lcom/itextpdf/text/Phrase;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfPTable;->addCell(Lcom/itextpdf/text/Phrase;)V

    .line 587
    return-void
.end method

.method protected adjustCellsInRow(II)Lcom/itextpdf/text/pdf/PdfPRow;
    .locals 9
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1242
    new-instance v5, Lcom/itextpdf/text/pdf/PdfPRow;

    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfPTable;->getRow(I)Lcom/itextpdf/text/pdf/PdfPRow;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/itextpdf/text/pdf/PdfPRow;-><init>(Lcom/itextpdf/text/pdf/PdfPRow;)V

    .line 1244
    .local v5, row:Lcom/itextpdf/text/pdf/PdfPRow;
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfPRow;->getCells()[Lcom/itextpdf/text/pdf/PdfPCell;

    move-result-object v1

    .line 1245
    .local v1, cells:[Lcom/itextpdf/text/pdf/PdfPCell;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v7, v1

    if-ge v3, v7, :cond_3

    .line 1246
    aget-object v0, v1, v3

    .line 1247
    .local v0, cell:Lcom/itextpdf/text/pdf/PdfPCell;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfPCell;->getRowspan()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 1245
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1249
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfPCell;->getRowspan()I

    move-result v7

    add-int/2addr v7, p1

    invoke-static {p2, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1250
    .local v6, stop:I
    const/4 v2, 0x0

    .line 1251
    .local v2, extra:F
    add-int/lit8 v4, p1, 0x1

    .local v4, k:I
    :goto_2
    if-ge v4, v6, :cond_2

    .line 1252
    invoke-virtual {p0, v4}, Lcom/itextpdf/text/pdf/PdfPTable;->getRow(I)Lcom/itextpdf/text/pdf/PdfPRow;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfPRow;->getMaxHeights()F

    move-result v7

    add-float/2addr v2, v7

    .line 1251
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1254
    :cond_2
    invoke-virtual {v5, v3, v2}, Lcom/itextpdf/text/pdf/PdfPRow;->setExtraHeight(IF)V

    goto :goto_1

    .line 1256
    .end local v0           #cell:Lcom/itextpdf/text/pdf/PdfPCell;
    .end local v2           #extra:F
    .end local v4           #k:I
    .end local v6           #stop:I
    :cond_3
    return-object v5
.end method

.method public calculateHeights()F
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 410
    iget v2, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalWidth:F

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_0

    .line 416
    :goto_0
    return v1

    .line 412
    :cond_0
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalHeight:F

    .line 413
    const/4 v0, 0x0

    .local v0, k:I
    :goto_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 414
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalHeight:F

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/itextpdf/text/pdf/PdfPTable;->getRowHeight(IZ)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalHeight:F

    .line 413
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 416
    :cond_1
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalHeight:F

    goto :goto_0
.end method

.method protected calculateWidths()V
    .locals 6

    .prologue
    .line 336
    iget v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalWidth:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    .line 344
    :cond_0
    return-void

    .line 338
    :cond_1
    const/4 v2, 0x0

    .line 339
    .local v2, total:F
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPTable;->getNumberOfColumns()I

    move-result v1

    .line 340
    .local v1, numCols:I
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 341
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->relativeWidths:[F

    aget v3, v3, v0

    add-float/2addr v2, v3

    .line 340
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 342
    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_0

    .line 343
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->absoluteWidths:[F

    iget v4, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalWidth:F

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfPTable;->relativeWidths:[F

    aget v5, v5, v0

    mul-float/2addr v4, v5

    div-float/2addr v4, v2

    aput v4, v3, v0

    .line 342
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method cellAt(II)Lcom/itextpdf/text/pdf/PdfPCell;
    .locals 3
    .parameter "row"
    .parameter "col"

    .prologue
    .line 530
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/PdfPRow;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfPRow;->getCells()[Lcom/itextpdf/text/pdf/PdfPCell;

    move-result-object v0

    .line 531
    .local v0, cells:[Lcom/itextpdf/text/pdf/PdfPCell;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 532
    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    .line 533
    if-lt p2, v1, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfPCell;->getColspan()I

    move-result v2

    add-int/2addr v2, v1

    if-ge p2, v2, :cond_0

    .line 534
    aget-object v2, v0, v1

    .line 538
    :goto_1
    return-object v2

    .line 531
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 538
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public completeRow()V
    .locals 1

    .prologue
    .line 1622
    :goto_0
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rowCompleted:Z

    if-nez v0, :cond_0

    .line 1623
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->defaultCell:Lcom/itextpdf/text/pdf/PdfPCell;

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfPTable;->addCell(Lcom/itextpdf/text/pdf/PdfPCell;)V

    goto :goto_0

    .line 1625
    :cond_0
    return-void
.end method

.method protected copyFormat(Lcom/itextpdf/text/pdf/PdfPTable;)V
    .locals 4
    .parameter "sourceTable"

    .prologue
    const/4 v3, 0x0

    .line 271
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfPTable;->getNumberOfColumns()I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->relativeWidths:[F

    .line 272
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfPTable;->getNumberOfColumns()I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->absoluteWidths:[F

    .line 273
    iget-object v0, p1, Lcom/itextpdf/text/pdf/PdfPTable;->relativeWidths:[F

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->relativeWidths:[F

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPTable;->getNumberOfColumns()I

    move-result v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 274
    iget-object v0, p1, Lcom/itextpdf/text/pdf/PdfPTable;->absoluteWidths:[F

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->absoluteWidths:[F

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPTable;->getNumberOfColumns()I

    move-result v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 275
    iget v0, p1, Lcom/itextpdf/text/pdf/PdfPTable;->totalWidth:F

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalWidth:F

    .line 276
    iget v0, p1, Lcom/itextpdf/text/pdf/PdfPTable;->totalHeight:F

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalHeight:F

    .line 277
    iput v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentColIdx:I

    .line 278
    iget-object v0, p1, Lcom/itextpdf/text/pdf/PdfPTable;->tableEvent:Lcom/itextpdf/text/pdf/PdfPTableEvent;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->tableEvent:Lcom/itextpdf/text/pdf/PdfPTableEvent;

    .line 279
    iget v0, p1, Lcom/itextpdf/text/pdf/PdfPTable;->runDirection:I

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->runDirection:I

    .line 280
    new-instance v0, Lcom/itextpdf/text/pdf/PdfPCell;

    iget-object v1, p1, Lcom/itextpdf/text/pdf/PdfPTable;->defaultCell:Lcom/itextpdf/text/pdf/PdfPCell;

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfPCell;-><init>(Lcom/itextpdf/text/pdf/PdfPCell;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->defaultCell:Lcom/itextpdf/text/pdf/PdfPCell;

    .line 281
    iget-object v0, p1, Lcom/itextpdf/text/pdf/PdfPTable;->currentRow:[Lcom/itextpdf/text/pdf/PdfPCell;

    array-length v0, v0

    new-array v0, v0, [Lcom/itextpdf/text/pdf/PdfPCell;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentRow:[Lcom/itextpdf/text/pdf/PdfPCell;

    .line 282
    iget-boolean v0, p1, Lcom/itextpdf/text/pdf/PdfPTable;->isColspan:Z

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->isColspan:Z

    .line 283
    iget-boolean v0, p1, Lcom/itextpdf/text/pdf/PdfPTable;->splitRows:Z

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->splitRows:Z

    .line 284
    iget v0, p1, Lcom/itextpdf/text/pdf/PdfPTable;->spacingAfter:F

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->spacingAfter:F

    .line 285
    iget v0, p1, Lcom/itextpdf/text/pdf/PdfPTable;->spacingBefore:F

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->spacingBefore:F

    .line 286
    iget v0, p1, Lcom/itextpdf/text/pdf/PdfPTable;->headerRows:I

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->headerRows:I

    .line 287
    iget v0, p1, Lcom/itextpdf/text/pdf/PdfPTable;->footerRows:I

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->footerRows:I

    .line 288
    iget-boolean v0, p1, Lcom/itextpdf/text/pdf/PdfPTable;->lockedWidth:Z

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->lockedWidth:Z

    .line 289
    iget-object v0, p1, Lcom/itextpdf/text/pdf/PdfPTable;->extendLastRow:[Z

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->extendLastRow:[Z

    .line 290
    iget-boolean v0, p1, Lcom/itextpdf/text/pdf/PdfPTable;->headersInEvent:Z

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->headersInEvent:Z

    .line 291
    iget v0, p1, Lcom/itextpdf/text/pdf/PdfPTable;->widthPercentage:F

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->widthPercentage:F

    .line 292
    iget-boolean v0, p1, Lcom/itextpdf/text/pdf/PdfPTable;->splitLate:Z

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->splitLate:Z

    .line 293
    iget-boolean v0, p1, Lcom/itextpdf/text/pdf/PdfPTable;->skipFirstHeader:Z

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->skipFirstHeader:Z

    .line 294
    iget-boolean v0, p1, Lcom/itextpdf/text/pdf/PdfPTable;->skipLastFooter:Z

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->skipLastFooter:Z

    .line 295
    iget v0, p1, Lcom/itextpdf/text/pdf/PdfPTable;->horizontalAlignment:I

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->horizontalAlignment:I

    .line 296
    iget-boolean v0, p1, Lcom/itextpdf/text/pdf/PdfPTable;->keepTogether:Z

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->keepTogether:Z

    .line 297
    iget-boolean v0, p1, Lcom/itextpdf/text/pdf/PdfPTable;->complete:Z

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->complete:Z

    .line 298
    return-void
.end method

.method public deleteBodyRows()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1069
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1070
    .local v1, rows2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfPRow;>;"
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    iget v2, p0, Lcom/itextpdf/text/pdf/PdfPTable;->headerRows:I

    if-ge v0, v2, :cond_0

    .line 1071
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1070
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1072
    :cond_0
    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    .line 1073
    iput v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalHeight:F

    .line 1074
    iget v2, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalWidth:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 1075
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPTable;->getHeaderHeight()F

    move-result v2

    iput v2, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalHeight:F

    .line 1076
    :cond_1
    return-void
.end method

.method public deleteLastRow()Z
    .locals 1

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfPTable;->deleteRow(I)Z

    move-result v0

    return v0
.end method

.method public deleteRow(I)Z
    .locals 3
    .parameter "rowNumber"

    .prologue
    .line 1040
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 1041
    :cond_0
    const/4 v1, 0x0

    .line 1053
    :goto_0
    return v1

    .line 1042
    :cond_1
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalWidth:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 1043
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfPRow;

    .line 1044
    .local v0, row:Lcom/itextpdf/text/pdf/PdfPRow;
    if-eqz v0, :cond_2

    .line 1045
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalHeight:F

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfPRow;->getMaxHeights()F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalHeight:F

    .line 1047
    .end local v0           #row:Lcom/itextpdf/text/pdf/PdfPRow;
    :cond_2
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1048
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->headerRows:I

    if-ge p1, v1, :cond_3

    .line 1049
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->headerRows:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->headerRows:I

    .line 1050
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->headerRows:I

    iget v2, p0, Lcom/itextpdf/text/pdf/PdfPTable;->footerRows:I

    sub-int/2addr v1, v2

    if-lt p1, v1, :cond_3

    .line 1051
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->footerRows:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->footerRows:I

    .line 1053
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public flushContent()V
    .locals 1

    .prologue
    .line 1632
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPTable;->deleteBodyRows()V

    .line 1633
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfPTable;->setSkipFirstHeader(Z)V

    .line 1634
    return-void
.end method

.method public getAbsoluteWidths()[F
    .locals 1

    .prologue
    .line 1292
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->absoluteWidths:[F

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
    .line 1116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getDefaultCell()Lcom/itextpdf/text/pdf/PdfPCell;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->defaultCell:Lcom/itextpdf/text/pdf/PdfPCell;

    return-object v0
.end method

.method getEventWidths(FIIZ)[[F
    .locals 10
    .parameter "xPos"
    .parameter "firstRow"
    .parameter "lastRow"
    .parameter "includeHeaders"

    .prologue
    const/4 v8, 0x0

    .line 1296
    if-eqz p4, :cond_0

    .line 1297
    iget v7, p0, Lcom/itextpdf/text/pdf/PdfPTable;->headerRows:I

    invoke-static {p2, v7}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1298
    iget v7, p0, Lcom/itextpdf/text/pdf/PdfPTable;->headerRows:I

    invoke-static {p3, v7}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 1300
    :cond_0
    if-eqz p4, :cond_1

    iget v7, p0, Lcom/itextpdf/text/pdf/PdfPTable;->headerRows:I

    :goto_0
    add-int/2addr v7, p3

    sub-int/2addr v7, p2

    new-array v6, v7, [[F

    .line 1301
    .local v6, widths:[[F
    iget-boolean v7, p0, Lcom/itextpdf/text/pdf/PdfPTable;->isColspan:Z

    if-eqz v7, :cond_4

    .line 1302
    const/4 v1, 0x0

    .line 1303
    .local v1, n:I
    if-eqz p4, :cond_7

    .line 1304
    const/4 v0, 0x0

    .local v0, k:I
    :goto_1
    iget v7, p0, Lcom/itextpdf/text/pdf/PdfPTable;->headerRows:I

    if-ge v0, v7, :cond_7

    .line 1305
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfPRow;

    .line 1306
    .local v4, row:Lcom/itextpdf/text/pdf/PdfPRow;
    if-nez v4, :cond_2

    .line 1307
    add-int/lit8 v1, v1, 0x1

    .line 1304
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #k:I
    .end local v1           #n:I
    .end local v4           #row:Lcom/itextpdf/text/pdf/PdfPRow;
    .end local v6           #widths:[[F
    :cond_1
    move v7, v8

    .line 1300
    goto :goto_0

    .line 1309
    .restart local v0       #k:I
    .restart local v1       #n:I
    .restart local v4       #row:Lcom/itextpdf/text/pdf/PdfPRow;
    .restart local v6       #widths:[[F
    :cond_2
    add-int/lit8 v2, v1, 0x1

    .end local v1           #n:I
    .local v2, n:I
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfPTable;->absoluteWidths:[F

    invoke-virtual {v4, p1, v7}, Lcom/itextpdf/text/pdf/PdfPRow;->getEventWidth(F[F)[F

    move-result-object v7

    aput-object v7, v6, v1

    move v1, v2

    .end local v2           #n:I
    .restart local v1       #n:I
    goto :goto_2

    .line 1312
    .end local v0           #k:I
    .end local v1           #n:I
    .end local v4           #row:Lcom/itextpdf/text/pdf/PdfPRow;
    .restart local v2       #n:I
    :goto_3
    if-ge p2, p3, :cond_6

    .line 1313
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfPRow;

    .line 1314
    .restart local v4       #row:Lcom/itextpdf/text/pdf/PdfPRow;
    if-nez v4, :cond_3

    .line 1315
    add-int/lit8 v1, v2, 0x1

    .line 1312
    .end local v2           #n:I
    .restart local v1       #n:I
    :goto_4
    add-int/lit8 p2, p2, 0x1

    move v2, v1

    .end local v1           #n:I
    .restart local v2       #n:I
    goto :goto_3

    .line 1317
    :cond_3
    add-int/lit8 v1, v2, 0x1

    .end local v2           #n:I
    .restart local v1       #n:I
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfPTable;->absoluteWidths:[F

    invoke-virtual {v4, p1, v7}, Lcom/itextpdf/text/pdf/PdfPRow;->getEventWidth(F[F)[F

    move-result-object v7

    aput-object v7, v6, v2

    goto :goto_4

    .line 1321
    .end local v1           #n:I
    .end local v4           #row:Lcom/itextpdf/text/pdf/PdfPRow;
    :cond_4
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPTable;->getNumberOfColumns()I

    move-result v3

    .line 1322
    .local v3, numCols:I
    add-int/lit8 v7, v3, 0x1

    new-array v5, v7, [F

    .line 1323
    .local v5, width:[F
    aput p1, v5, v8

    .line 1324
    const/4 v0, 0x0

    .restart local v0       #k:I
    :goto_5
    if-ge v0, v3, :cond_5

    .line 1325
    add-int/lit8 v7, v0, 0x1

    aget v8, v5, v0

    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfPTable;->absoluteWidths:[F

    aget v9, v9, v0

    add-float/2addr v8, v9

    aput v8, v5, v7

    .line 1324
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1326
    :cond_5
    const/4 v0, 0x0

    :goto_6
    array-length v7, v6

    if-ge v0, v7, :cond_6

    .line 1327
    aput-object v5, v6, v0

    .line 1326
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1329
    .end local v0           #k:I
    .end local v3           #numCols:I
    .end local v5           #width:[F
    :cond_6
    return-object v6

    .restart local v1       #n:I
    :cond_7
    move v2, v1

    .end local v1           #n:I
    .restart local v2       #n:I
    goto :goto_3
.end method

.method public getFooterHeight()F
    .locals 8

    .prologue
    .line 1022
    const/4 v4, 0x0

    .line 1023
    .local v4, total:F
    const/4 v5, 0x0

    iget v6, p0, Lcom/itextpdf/text/pdf/PdfPTable;->headerRows:I

    iget v7, p0, Lcom/itextpdf/text/pdf/PdfPTable;->footerRows:I

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1024
    .local v3, start:I
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget v6, p0, Lcom/itextpdf/text/pdf/PdfPTable;->headerRows:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1025
    .local v2, size:I
    move v0, v3

    .local v0, k:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1026
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfPRow;

    .line 1027
    .local v1, row:Lcom/itextpdf/text/pdf/PdfPRow;
    if-eqz v1, :cond_0

    .line 1028
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfPRow;->getMaxHeights()F

    move-result v5

    add-float/2addr v4, v5

    .line 1025
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1030
    .end local v1           #row:Lcom/itextpdf/text/pdf/PdfPRow;
    :cond_1
    return v4
.end method

.method public getFooterRows()I
    .locals 1

    .prologue
    .line 1594
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->footerRows:I

    return v0
.end method

.method public getHeaderHeight()F
    .locals 6

    .prologue
    .line 1004
    const/4 v3, 0x0

    .line 1005
    .local v3, total:F
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v5, p0, Lcom/itextpdf/text/pdf/PdfPTable;->headerRows:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1006
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1007
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfPRow;

    .line 1008
    .local v1, row:Lcom/itextpdf/text/pdf/PdfPRow;
    if-eqz v1, :cond_0

    .line 1009
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfPRow;->getMaxHeights()F

    move-result v4

    add-float/2addr v3, v4

    .line 1006
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1011
    .end local v1           #row:Lcom/itextpdf/text/pdf/PdfPRow;
    :cond_1
    return v3
.end method

.method public getHeaderRows()I
    .locals 1

    .prologue
    .line 1094
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->headerRows:I

    return v0
.end method

.method public getHorizontalAlignment()I
    .locals 1

    .prologue
    .line 1184
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->horizontalAlignment:I

    return v0
.end method

.method public getKeepTogether()Z
    .locals 1

    .prologue
    .line 1585
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->keepTogether:Z

    return v0
.end method

.method public getNumberOfColumns()I
    .locals 1

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->relativeWidths:[F

    array-length v0, v0

    return v0
.end method

.method public getRow(I)Lcom/itextpdf/text/pdf/PdfPRow;
    .locals 1
    .parameter "idx"

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfPRow;

    return-object v0
.end method

.method public getRowHeight(I)F
    .locals 1
    .parameter "idx"

    .prologue
    .line 903
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/text/pdf/PdfPTable;->getRowHeight(IZ)F

    move-result v0

    return v0
.end method

.method protected getRowHeight(IZ)F
    .locals 9
    .parameter "idx"
    .parameter "firsttime"

    .prologue
    const/4 v1, 0x0

    .line 914
    iget v7, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalWidth:F

    cmpg-float v7, v7, v1

    if-lez v7, :cond_0

    if-ltz p1, :cond_0

    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt p1, v7, :cond_1

    .line 945
    :cond_0
    :goto_0
    return v1

    .line 916
    :cond_1
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/PdfPRow;

    .line 917
    .local v3, row:Lcom/itextpdf/text/pdf/PdfPRow;
    if-eqz v3, :cond_0

    .line 919
    if-eqz p2, :cond_2

    .line 920
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfPTable;->absoluteWidths:[F

    invoke-virtual {v3, v7}, Lcom/itextpdf/text/pdf/PdfPRow;->setWidths([F)Z

    .line 921
    :cond_2
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfPRow;->getMaxHeights()F

    move-result v1

    .line 924
    .local v1, height:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfPTable;->relativeWidths:[F

    array-length v7, v7

    if-ge v2, v7, :cond_7

    .line 925
    invoke-virtual {p0, p1, v2}, Lcom/itextpdf/text/pdf/PdfPTable;->rowSpanAbove(II)Z

    move-result v7

    if-nez v7, :cond_4

    .line 924
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 927
    :cond_4
    const/4 v4, 0x1

    .line 928
    .local v4, rs:I
    :goto_3
    sub-int v7, p1, v4

    invoke-virtual {p0, v7, v2}, Lcom/itextpdf/text/pdf/PdfPTable;->rowSpanAbove(II)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 929
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 931
    :cond_5
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    sub-int v8, p1, v4

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/text/pdf/PdfPRow;

    .line 932
    .local v6, tmprow:Lcom/itextpdf/text/pdf/PdfPRow;
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfPRow;->getCells()[Lcom/itextpdf/text/pdf/PdfPCell;

    move-result-object v7

    aget-object v0, v7, v2

    .line 933
    .local v0, cell:Lcom/itextpdf/text/pdf/PdfPCell;
    const/4 v5, 0x0

    .line 934
    .local v5, tmp:F
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfPCell;->getRowspan()I

    move-result v7

    add-int/lit8 v8, v4, 0x1

    if-ne v7, v8, :cond_6

    .line 935
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfPCell;->getMaxHeight()F

    move-result v5

    .line 936
    :goto_4
    if-lez v4, :cond_6

    .line 937
    sub-int v7, p1, v4

    invoke-virtual {p0, v7}, Lcom/itextpdf/text/pdf/PdfPTable;->getRowHeight(I)F

    move-result v7

    sub-float/2addr v5, v7

    .line 938
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 941
    :cond_6
    cmpl-float v7, v5, v1

    if-lez v7, :cond_3

    .line 942
    move v1, v5

    goto :goto_2

    .line 944
    .end local v0           #cell:Lcom/itextpdf/text/pdf/PdfPCell;
    .end local v4           #rs:I
    .end local v5           #tmp:F
    .end local v6           #tmprow:Lcom/itextpdf/text/pdf/PdfPRow;
    :cond_7
    invoke-virtual {v3, v1}, Lcom/itextpdf/text/pdf/PdfPRow;->setMaxHeights(F)V

    goto :goto_0
.end method

.method public getRows()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfPRow;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRows(II)Ljava/util/ArrayList;
    .locals 3
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfPRow;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1225
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1226
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfPRow;>;"
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPTable;->size()I

    move-result v2

    if-le p2, v2, :cond_1

    .line 1232
    :cond_0
    return-object v1

    .line 1229
    :cond_1
    move v0, p1

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 1230
    invoke-virtual {p0, v0, p2}, Lcom/itextpdf/text/pdf/PdfPTable;->adjustCellsInRow(II)Lcom/itextpdf/text/pdf/PdfPRow;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1229
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getRowspanHeight(II)F
    .locals 5
    .parameter "rowIndex"
    .parameter "cellIndex"

    .prologue
    const/4 v3, 0x0

    .line 958
    iget v4, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalWidth:F

    cmpg-float v4, v4, v3

    if-lez v4, :cond_0

    if-ltz p1, :cond_0

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt p1, v4, :cond_1

    .line 970
    :cond_0
    return v3

    .line 960
    :cond_1
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/PdfPRow;

    .line 961
    .local v2, row:Lcom/itextpdf/text/pdf/PdfPRow;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfPRow;->getCells()[Lcom/itextpdf/text/pdf/PdfPCell;

    move-result-object v4

    array-length v4, v4

    if-ge p2, v4, :cond_0

    .line 963
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfPRow;->getCells()[Lcom/itextpdf/text/pdf/PdfPCell;

    move-result-object v4

    aget-object v0, v4, p2

    .line 964
    .local v0, cell:Lcom/itextpdf/text/pdf/PdfPCell;
    if-eqz v0, :cond_0

    .line 966
    const/4 v3, 0x0

    .line 967
    .local v3, rowspanHeight:F
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfPCell;->getRowspan()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 968
    add-int v4, p1, v1

    invoke-virtual {p0, v4}, Lcom/itextpdf/text/pdf/PdfPTable;->getRowHeight(I)F

    move-result v4

    add-float/2addr v3, v4

    .line 967
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getRunDirection()I
    .locals 1

    .prologue
    .line 1404
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->runDirection:I

    return v0
.end method

.method public getSpacingAfter()F
    .locals 1

    .prologue
    .line 1663
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->spacingAfter:F

    return v0
.end method

.method public getSpacingBefore()F
    .locals 1

    .prologue
    .line 1656
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->spacingBefore:F

    return v0
.end method

.method public getTableEvent()Lcom/itextpdf/text/pdf/PdfPTableEvent;
    .locals 1

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->tableEvent:Lcom/itextpdf/text/pdf/PdfPTableEvent;

    return-object v0
.end method

.method public getTotalHeight()F
    .locals 1

    .prologue
    .line 893
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalHeight:F

    return v0
.end method

.method public getTotalWidth()F
    .locals 1

    .prologue
    .line 399
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalWidth:F

    return v0
.end method

.method public getWidthPercentage()F
    .locals 1

    .prologue
    .line 1166
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->widthPercentage:F

    return v0
.end method

.method public hasRowspan(I)Z
    .locals 3
    .parameter "rowIdx"

    .prologue
    const/4 v1, 0x1

    .line 978
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfPTable;->getRow(I)Lcom/itextpdf/text/pdf/PdfPRow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfPRow;->hasRowspan()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 985
    :cond_0
    :goto_0
    return v1

    .line 981
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPTable;->getNumberOfColumns()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 982
    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/text/pdf/PdfPTable;->rowSpanAbove(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 981
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 985
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 1641
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->complete:Z

    return v0
.end method

.method public isContent()Z
    .locals 1

    .prologue
    .line 1133
    const/4 v0, 0x1

    return v0
.end method

.method public isExtendLastRow()Z
    .locals 2

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->extendLastRow:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isExtendLastRow(Z)Z
    .locals 2
    .parameter "newPageFollows"

    .prologue
    .line 1523
    if-eqz p1, :cond_0

    .line 1524
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->extendLastRow:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    .line 1526
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->extendLastRow:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    goto :goto_0
.end method

.method public isHeadersInEvent()Z
    .locals 1

    .prologue
    .line 1535
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->headersInEvent:Z

    return v0
.end method

.method public isLockedWidth()Z
    .locals 1

    .prologue
    .line 1413
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->lockedWidth:Z

    return v0
.end method

.method public isNestable()Z
    .locals 1

    .prologue
    .line 1141
    const/4 v0, 0x1

    return v0
.end method

.method public isSkipFirstHeader()Z
    .locals 1

    .prologue
    .line 1340
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->skipFirstHeader:Z

    return v0
.end method

.method public isSkipLastFooter()Z
    .locals 1

    .prologue
    .line 1352
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->skipLastFooter:Z

    return v0
.end method

.method public isSplitLate()Z
    .locals 1

    .prologue
    .line 1553
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->splitLate:Z

    return v0
.end method

.method public isSplitRows()Z
    .locals 1

    .prologue
    .line 1431
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->splitRows:Z

    return v0
.end method

.method public normalizeHeadersFooters()V
    .locals 2

    .prologue
    .line 993
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->footerRows:I

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->headerRows:I

    if-le v0, v1, :cond_0

    .line 994
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->headerRows:I

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->footerRows:I

    .line 995
    :cond_0
    return-void
.end method

.method public process(Lcom/itextpdf/text/ElementListener;)Z
    .locals 2
    .parameter "listener"

    .prologue
    .line 1153
    :try_start_0
    invoke-interface {p1, p0}, Lcom/itextpdf/text/ElementListener;->add(Lcom/itextpdf/text/Element;)Z
    :try_end_0
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1156
    :goto_0
    return v1

    .line 1155
    :catch_0
    move-exception v0

    .line 1156
    .local v0, de:Lcom/itextpdf/text/DocumentException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resetColumnCount(I)V
    .locals 4
    .parameter "newColCount"

    .prologue
    .line 425
    if-gtz p1, :cond_0

    .line 426
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "the.number.of.columns.in.pdfptable.constructor.must.be.greater.than.zero"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 427
    :cond_0
    new-array v1, p1, [F

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->relativeWidths:[F

    .line 428
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 429
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->relativeWidths:[F

    const/high16 v2, 0x3f80

    aput v2, v1, v0

    .line 428
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 430
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->relativeWidths:[F

    array-length v1, v1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->absoluteWidths:[F

    .line 431
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPTable;->calculateWidths()V

    .line 432
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->absoluteWidths:[F

    array-length v1, v1

    new-array v1, v1, [Lcom/itextpdf/text/pdf/PdfPCell;

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentRow:[Lcom/itextpdf/text/pdf/PdfPCell;

    .line 433
    const/4 v1, 0x0

    iput v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalHeight:F

    .line 434
    return-void
.end method

.method rowSpanAbove(II)Z
    .locals 9
    .parameter "currRow"
    .parameter "currCol"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 549
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPTable;->getNumberOfColumns()I

    move-result v7

    if-ge p2, v7, :cond_0

    if-ltz p2, :cond_0

    if-ge p1, v5, :cond_1

    .line 576
    :cond_0
    :goto_0
    return v6

    .line 553
    :cond_1
    add-int/lit8 v4, p1, -0x1

    .line 554
    .local v4, row:I
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfPRow;

    .line 555
    .local v1, aboveRow:Lcom/itextpdf/text/pdf/PdfPRow;
    if-eqz v1, :cond_0

    .line 557
    invoke-virtual {p0, v4, p2}, Lcom/itextpdf/text/pdf/PdfPTable;->cellAt(II)Lcom/itextpdf/text/pdf/PdfPCell;

    move-result-object v0

    .line 558
    .local v0, aboveCell:Lcom/itextpdf/text/pdf/PdfPCell;
    :goto_1
    if-nez v0, :cond_2

    if-lez v4, :cond_2

    .line 559
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #aboveRow:Lcom/itextpdf/text/pdf/PdfPRow;
    check-cast v1, Lcom/itextpdf/text/pdf/PdfPRow;

    .line 560
    .restart local v1       #aboveRow:Lcom/itextpdf/text/pdf/PdfPRow;
    if-eqz v1, :cond_0

    .line 562
    invoke-virtual {p0, v4, p2}, Lcom/itextpdf/text/pdf/PdfPTable;->cellAt(II)Lcom/itextpdf/text/pdf/PdfPCell;

    move-result-object v0

    goto :goto_1

    .line 565
    :cond_2
    sub-int v3, p1, v4

    .line 567
    .local v3, distance:I
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfPCell;->getRowspan()I

    move-result v7

    if-ne v7, v5, :cond_3

    if-le v3, v5, :cond_3

    .line 568
    add-int/lit8 v2, p2, -0x1

    .line 569
    .local v2, col:I
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #aboveRow:Lcom/itextpdf/text/pdf/PdfPRow;
    check-cast v1, Lcom/itextpdf/text/pdf/PdfPRow;

    .line 570
    .restart local v1       #aboveRow:Lcom/itextpdf/text/pdf/PdfPRow;
    add-int/lit8 v3, v3, -0x1

    .line 571
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfPRow;->getCells()[Lcom/itextpdf/text/pdf/PdfPCell;

    move-result-object v7

    aget-object v0, v7, v2

    .line 572
    :goto_2
    if-nez v0, :cond_3

    if-lez v2, :cond_3

    .line 573
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfPRow;->getCells()[Lcom/itextpdf/text/pdf/PdfPCell;

    move-result-object v7

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v7, v2

    goto :goto_2

    .line 576
    .end local v2           #col:I
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfPCell;->getRowspan()I

    move-result v7

    if-le v7, v3, :cond_4

    :goto_3
    move v6, v5

    goto :goto_0

    :cond_4
    move v5, v6

    goto :goto_3
.end method

.method public setComplete(Z)V
    .locals 0
    .parameter "complete"

    .prologue
    .line 1649
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->complete:Z

    .line 1650
    return-void
.end method

.method public setExtendLastRow(Z)V
    .locals 2
    .parameter "extendLastRows"

    .prologue
    .line 1497
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->extendLastRow:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 1498
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->extendLastRow:[Z

    const/4 v1, 0x1

    aput-boolean p1, v0, v1

    .line 1499
    return-void
.end method

.method public setExtendLastRow(ZZ)V
    .locals 2
    .parameter "extendLastRows"
    .parameter "extendFinalRow"

    .prologue
    .line 1511
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->extendLastRow:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 1512
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->extendLastRow:[Z

    const/4 v1, 0x1

    aput-boolean p2, v0, v1

    .line 1513
    return-void
.end method

.method public setFooterRows(I)V
    .locals 0
    .parameter "footerRows"

    .prologue
    .line 1611
    if-gez p1, :cond_0

    .line 1612
    const/4 p1, 0x0

    .line 1613
    :cond_0
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->footerRows:I

    .line 1614
    return-void
.end method

.method public setHeaderRows(I)V
    .locals 0
    .parameter "headerRows"

    .prologue
    .line 1105
    if-gez p1, :cond_0

    .line 1106
    const/4 p1, 0x0

    .line 1107
    :cond_0
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->headerRows:I

    .line 1108
    return-void
.end method

.method public setHeadersInEvent(Z)V
    .locals 0
    .parameter "headersInEvent"

    .prologue
    .line 1544
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->headersInEvent:Z

    .line 1545
    return-void
.end method

.method public setHorizontalAlignment(I)V
    .locals 0
    .parameter "horizontalAlignment"

    .prologue
    .line 1195
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->horizontalAlignment:I

    .line 1196
    return-void
.end method

.method public setKeepTogether(Z)V
    .locals 0
    .parameter "keepTogether"

    .prologue
    .line 1575
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->keepTogether:Z

    .line 1576
    return-void
.end method

.method public setLockedWidth(Z)V
    .locals 0
    .parameter "lockedWidth"

    .prologue
    .line 1422
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->lockedWidth:Z

    .line 1423
    return-void
.end method

.method public setRunDirection(I)V
    .locals 2
    .parameter "runDirection"

    .prologue
    .line 1384
    packed-switch p1, :pswitch_data_0

    .line 1392
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid.run.direction.1"

    invoke-static {v1, p1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1389
    :pswitch_0
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->runDirection:I

    .line 1394
    return-void

    .line 1384
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setSkipFirstHeader(Z)V
    .locals 0
    .parameter "skipFirstHeader"

    .prologue
    .line 1362
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->skipFirstHeader:Z

    .line 1363
    return-void
.end method

.method public setSkipLastFooter(Z)V
    .locals 0
    .parameter "skipLastFooter"

    .prologue
    .line 1373
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->skipLastFooter:Z

    .line 1374
    return-void
.end method

.method public setSpacingAfter(F)V
    .locals 0
    .parameter "spacing"

    .prologue
    .line 1460
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->spacingAfter:F

    .line 1461
    return-void
.end method

.method public setSpacingBefore(F)V
    .locals 0
    .parameter "spacing"

    .prologue
    .line 1451
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->spacingBefore:F

    .line 1452
    return-void
.end method

.method public setSplitLate(Z)V
    .locals 0
    .parameter "splitLate"

    .prologue
    .line 1564
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->splitLate:Z

    .line 1565
    return-void
.end method

.method public setSplitRows(Z)V
    .locals 0
    .parameter "splitRows"

    .prologue
    .line 1442
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->splitRows:Z

    .line 1443
    return-void
.end method

.method public setTableEvent(Lcom/itextpdf/text/pdf/PdfPTableEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 1263
    if-nez p1, :cond_0

    .line 1264
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->tableEvent:Lcom/itextpdf/text/pdf/PdfPTableEvent;

    .line 1275
    :goto_0
    return-void

    .line 1265
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->tableEvent:Lcom/itextpdf/text/pdf/PdfPTableEvent;

    if-nez v1, :cond_1

    .line 1266
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->tableEvent:Lcom/itextpdf/text/pdf/PdfPTableEvent;

    goto :goto_0

    .line 1267
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->tableEvent:Lcom/itextpdf/text/pdf/PdfPTableEvent;

    instance-of v1, v1, Lcom/itextpdf/text/pdf/events/PdfPTableEventForwarder;

    if-eqz v1, :cond_2

    .line 1268
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->tableEvent:Lcom/itextpdf/text/pdf/PdfPTableEvent;

    check-cast v1, Lcom/itextpdf/text/pdf/events/PdfPTableEventForwarder;

    invoke-virtual {v1, p1}, Lcom/itextpdf/text/pdf/events/PdfPTableEventForwarder;->addTableEvent(Lcom/itextpdf/text/pdf/PdfPTableEvent;)V

    goto :goto_0

    .line 1270
    :cond_2
    new-instance v0, Lcom/itextpdf/text/pdf/events/PdfPTableEventForwarder;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/events/PdfPTableEventForwarder;-><init>()V

    .line 1271
    .local v0, forward:Lcom/itextpdf/text/pdf/events/PdfPTableEventForwarder;
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->tableEvent:Lcom/itextpdf/text/pdf/PdfPTableEvent;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/events/PdfPTableEventForwarder;->addTableEvent(Lcom/itextpdf/text/pdf/PdfPTableEvent;)V

    .line 1272
    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/events/PdfPTableEventForwarder;->addTableEvent(Lcom/itextpdf/text/pdf/PdfPTableEvent;)V

    .line 1273
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->tableEvent:Lcom/itextpdf/text/pdf/PdfPTableEvent;

    goto :goto_0
.end method

.method public setTotalWidth(F)V
    .locals 1
    .parameter "totalWidth"

    .prologue
    .line 352
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalWidth:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 358
    :goto_0
    return-void

    .line 354
    :cond_0
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalWidth:F

    .line 355
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalHeight:F

    .line 356
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPTable;->calculateWidths()V

    .line 357
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPTable;->calculateHeights()F

    goto :goto_0
.end method

.method public setTotalWidth([F)V
    .locals 4
    .parameter "columnWidth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 368
    array-length v1, p1

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPTable;->getNumberOfColumns()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 369
    new-instance v1, Lcom/itextpdf/text/DocumentException;

    const-string v2, "wrong.number.of.columns"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 370
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalWidth:F

    .line 371
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 372
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalWidth:F

    aget v2, p1, v0

    add-float/2addr v1, v2

    iput v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalWidth:F

    .line 371
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 373
    :cond_1
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfPTable;->setWidths([F)V

    .line 374
    return-void
.end method

.method public setWidthPercentage(F)V
    .locals 0
    .parameter "widthPercentage"

    .prologue
    .line 1175
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->widthPercentage:F

    .line 1176
    return-void
.end method

.method public setWidthPercentage([FLcom/itextpdf/text/Rectangle;)V
    .locals 5
    .parameter "columnWidth"
    .parameter "pageSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 384
    array-length v2, p1

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPTable;->getNumberOfColumns()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 385
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "wrong.number.of.columns"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 386
    :cond_0
    const/4 v1, 0x0

    .line 387
    .local v1, totalWidth:F
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 388
    aget v2, p1, v0

    add-float/2addr v1, v2

    .line 387
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    :cond_1
    invoke-virtual {p2}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v2

    invoke-virtual {p2}, Lcom/itextpdf/text/Rectangle;->getLeft()F

    move-result v3

    sub-float/2addr v2, v3

    div-float v2, v1, v2

    const/high16 v3, 0x42c8

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/itextpdf/text/pdf/PdfPTable;->widthPercentage:F

    .line 390
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfPTable;->setWidths([F)V

    .line 391
    return-void
.end method

.method public setWidths([F)V
    .locals 3
    .parameter "relativeWidths"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 308
    array-length v0, p1

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPTable;->getNumberOfColumns()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 309
    new-instance v0, Lcom/itextpdf/text/DocumentException;

    const-string v1, "wrong.number.of.columns"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_0
    array-length v0, p1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->relativeWidths:[F

    .line 311
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->relativeWidths:[F

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 312
    array-length v0, p1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->absoluteWidths:[F

    .line 313
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalHeight:F

    .line 314
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPTable;->calculateWidths()V

    .line 315
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPTable;->calculateHeights()F

    .line 316
    return-void
.end method

.method public setWidths([I)V
    .locals 3
    .parameter "relativeWidths"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 326
    array-length v2, p1

    new-array v1, v2, [F

    .line 327
    .local v1, tb:[F
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 328
    aget v2, p1, v0

    int-to-float v2, v2

    aput v2, v1, v0

    .line 327
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 329
    :cond_0
    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfPTable;->setWidths([F)V

    .line 330
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 884
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public spacingAfter()F
    .locals 1

    .prologue
    .line 1478
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->spacingAfter:F

    return v0
.end method

.method public spacingBefore()F
    .locals 1

    .prologue
    .line 1469
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->spacingBefore:F

    return v0
.end method

.method public type()I
    .locals 1

    .prologue
    .line 1125
    const/16 v0, 0x17

    return v0
.end method

.method public writeSelectedRows(IIFFLcom/itextpdf/text/pdf/PdfContentByte;)F
    .locals 8
    .parameter "rowStart"
    .parameter "rowEnd"
    .parameter "xPos"
    .parameter "yPos"
    .parameter "canvas"

    .prologue
    .line 750
    const/4 v1, 0x0

    const/4 v2, -0x1

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/itextpdf/text/pdf/PdfPTable;->writeSelectedRows(IIIIFFLcom/itextpdf/text/pdf/PdfContentByte;)F

    move-result v0

    return v0
.end method

.method public writeSelectedRows(IIFF[Lcom/itextpdf/text/pdf/PdfContentByte;)F
    .locals 8
    .parameter "rowStart"
    .parameter "rowEnd"
    .parameter "xPos"
    .parameter "yPos"
    .parameter "canvases"

    .prologue
    .line 638
    const/4 v1, 0x0

    const/4 v2, -0x1

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/itextpdf/text/pdf/PdfPTable;->writeSelectedRows(IIIIFF[Lcom/itextpdf/text/pdf/PdfContentByte;)F

    move-result v0

    return v0
.end method

.method public writeSelectedRows(IIIIFFLcom/itextpdf/text/pdf/PdfContentByte;)F
    .locals 9
    .parameter "colStart"
    .parameter "colEnd"
    .parameter "rowStart"
    .parameter "rowEnd"
    .parameter "xPos"
    .parameter "yPos"
    .parameter "canvas"

    .prologue
    .line 772
    const/4 v8, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/text/pdf/PdfPTable;->writeSelectedRows(IIIIFFLcom/itextpdf/text/pdf/PdfContentByte;Z)F

    move-result v0

    return v0
.end method

.method public writeSelectedRows(IIIIFFLcom/itextpdf/text/pdf/PdfContentByte;Z)F
    .locals 17
    .parameter "colStart"
    .parameter "colEnd"
    .parameter "rowStart"
    .parameter "rowEnd"
    .parameter "xPos"
    .parameter "yPos"
    .parameter "canvas"
    .parameter "reusable"

    .prologue
    .line 798
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfPTable;->getNumberOfColumns()I

    move-result v14

    .line 799
    .local v14, totalCols:I
    if-gez p1, :cond_1

    .line 800
    const/16 p1, 0x0

    .line 804
    :goto_0
    if-gez p2, :cond_2

    .line 805
    move/from16 p2, v14

    .line 809
    :goto_1
    if-nez p1, :cond_0

    move/from16 v0, p2

    if-eq v0, v14, :cond_3

    :cond_0
    const/4 v10, 0x1

    .line 811
    .local v10, clip:Z
    :goto_2
    if-eqz v10, :cond_5

    .line 812
    const/4 v15, 0x0

    .line 813
    .local v15, w:F
    move/from16 v11, p1

    .local v11, k:I
    :goto_3
    move/from16 v0, p2

    if-ge v11, v0, :cond_4

    .line 814
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfPTable;->absoluteWidths:[F

    aget v1, v1, v11

    add-float/2addr v15, v1

    .line 813
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 802
    .end local v10           #clip:Z
    .end local v11           #k:I
    .end local v15           #w:F
    :cond_1
    move/from16 v0, p1

    invoke-static {v0, v14}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    .line 807
    :cond_2
    move/from16 v0, p2

    invoke-static {v0, v14}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_1

    .line 809
    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    .line 815
    .restart local v10       #clip:Z
    .restart local v11       #k:I
    .restart local v15       #w:F
    :cond_4
    invoke-virtual/range {p7 .. p7}, Lcom/itextpdf/text/pdf/PdfContentByte;->saveState()V

    .line 816
    if-nez p1, :cond_7

    const v12, 0x461c4000

    .line 817
    .local v12, lx:F
    :goto_4
    move/from16 v0, p2

    if-ne v0, v14, :cond_8

    const v13, 0x461c4000

    .line 818
    .local v13, rx:F
    :goto_5
    sub-float v1, p5, v12

    const v2, -0x39e3c000

    add-float v3, v15, v12

    add-float/2addr v3, v13

    const v4, 0x469c4000

    move-object/from16 v0, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->rectangle(FFFF)V

    .line 819
    invoke-virtual/range {p7 .. p7}, Lcom/itextpdf/text/pdf/PdfContentByte;->clip()V

    .line 820
    invoke-virtual/range {p7 .. p7}, Lcom/itextpdf/text/pdf/PdfContentByte;->newPath()V

    .line 823
    .end local v11           #k:I
    .end local v12           #lx:F
    .end local v13           #rx:F
    .end local v15           #w:F
    :cond_5
    invoke-static/range {p7 .. p7}, Lcom/itextpdf/text/pdf/PdfPTable;->beginWritingRows(Lcom/itextpdf/text/pdf/PdfContentByte;)[Lcom/itextpdf/text/pdf/PdfContentByte;

    move-result-object v8

    .local v8, canvases:[Lcom/itextpdf/text/pdf/PdfContentByte;
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v9, p8

    .line 824
    invoke-virtual/range {v1 .. v9}, Lcom/itextpdf/text/pdf/PdfPTable;->writeSelectedRows(IIIIFF[Lcom/itextpdf/text/pdf/PdfContentByte;Z)F

    move-result v16

    .line 825
    .local v16, y:F
    invoke-static {v8}, Lcom/itextpdf/text/pdf/PdfPTable;->endWritingRows([Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 827
    if-eqz v10, :cond_6

    .line 828
    invoke-virtual/range {p7 .. p7}, Lcom/itextpdf/text/pdf/PdfContentByte;->restoreState()V

    .line 830
    :cond_6
    return v16

    .line 816
    .end local v8           #canvases:[Lcom/itextpdf/text/pdf/PdfContentByte;
    .end local v16           #y:F
    .restart local v11       #k:I
    .restart local v15       #w:F
    :cond_7
    const/4 v12, 0x0

    goto :goto_4

    .line 817
    .restart local v12       #lx:F
    :cond_8
    const/4 v13, 0x0

    goto :goto_5
.end method

.method public writeSelectedRows(IIIIFF[Lcom/itextpdf/text/pdf/PdfContentByte;)F
    .locals 9
    .parameter "colStart"
    .parameter "colEnd"
    .parameter "rowStart"
    .parameter "rowEnd"
    .parameter "xPos"
    .parameter "yPos"
    .parameter "canvases"

    .prologue
    .line 662
    const/4 v8, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/text/pdf/PdfPTable;->writeSelectedRows(IIIIFF[Lcom/itextpdf/text/pdf/PdfContentByte;Z)F

    move-result v0

    return v0
.end method

.method public writeSelectedRows(IIIIFF[Lcom/itextpdf/text/pdf/PdfContentByte;Z)F
    .locals 18
    .parameter "colStart"
    .parameter "colEnd"
    .parameter "rowStart"
    .parameter "rowEnd"
    .parameter "xPos"
    .parameter "yPos"
    .parameter "canvases"
    .parameter "reusable"

    .prologue
    .line 689
    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/PdfPTable;->totalWidth:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    .line 690
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "the.table.width.must.be.greater.than.zero"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 692
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 693
    .local v15, totalRows:I
    if-gez p3, :cond_1

    .line 694
    const/16 p3, 0x0

    .line 695
    :cond_1
    if-gez p4, :cond_2

    .line 696
    move/from16 p4, v15

    .line 699
    :goto_0
    move/from16 v0, p3

    move/from16 v1, p4

    if-lt v0, v1, :cond_3

    move/from16 v16, p6

    .line 734
    .end local p6
    .local v16, yPos:F
    :goto_1
    return v16

    .line 698
    .end local v16           #yPos:F
    .restart local p6
    :cond_2
    move/from16 v0, p4

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result p4

    goto :goto_0

    .line 702
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfPTable;->getNumberOfColumns()I

    move-result v14

    .line 703
    .local v14, totalCols:I
    if-gez p1, :cond_5

    .line 704
    const/16 p1, 0x0

    .line 707
    :goto_2
    if-gez p2, :cond_6

    .line 708
    move/from16 p2, v14

    .line 712
    :goto_3
    move/from16 v17, p6

    .line 713
    .local v17, yPosStart:F
    move/from16 v13, p3

    .local v13, k:I
    :goto_4
    move/from16 v0, p4

    if-ge v13, v0, :cond_7

    .line 714
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfPRow;

    .line 715
    .local v4, row:Lcom/itextpdf/text/pdf/PdfPRow;
    if-eqz v4, :cond_4

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    .line 716
    invoke-virtual/range {v4 .. v10}, Lcom/itextpdf/text/pdf/PdfPRow;->writeCells(IIFF[Lcom/itextpdf/text/pdf/PdfContentByte;Z)V

    .line 717
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfPRow;->getMaxHeights()F

    move-result v5

    sub-float p6, p6, v5

    .line 713
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 706
    .end local v4           #row:Lcom/itextpdf/text/pdf/PdfPRow;
    .end local v13           #k:I
    .end local v17           #yPosStart:F
    :cond_5
    move/from16 v0, p1

    invoke-static {v0, v14}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_2

    .line 710
    :cond_6
    move/from16 v0, p2

    invoke-static {v0, v14}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_3

    .line 721
    .restart local v13       #k:I
    .restart local v17       #yPosStart:F
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/PdfPTable;->tableEvent:Lcom/itextpdf/text/pdf/PdfPTableEvent;

    if-eqz v5, :cond_a

    if-nez p1, :cond_a

    move/from16 v0, p2

    if-ne v0, v14, :cond_a

    .line 722
    sub-int v5, p4, p3

    add-int/lit8 v5, v5, 0x1

    new-array v8, v5, [F

    .line 723
    .local v8, heights:[F
    const/4 v5, 0x0

    aput v17, v8, v5

    .line 724
    move/from16 v13, p3

    :goto_5
    move/from16 v0, p4

    if-ge v13, v0, :cond_9

    .line 725
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfPRow;

    .line 726
    .restart local v4       #row:Lcom/itextpdf/text/pdf/PdfPRow;
    const/4 v12, 0x0

    .line 727
    .local v12, hr:F
    if-eqz v4, :cond_8

    .line 728
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfPRow;->getMaxHeights()F

    move-result v12

    .line 729
    :cond_8
    sub-int v5, v13, p3

    add-int/lit8 v5, v5, 0x1

    sub-int v6, v13, p3

    aget v6, v8, v6

    sub-float/2addr v6, v12

    aput v6, v8, v5

    .line 724
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 731
    .end local v4           #row:Lcom/itextpdf/text/pdf/PdfPRow;
    .end local v12           #hr:F
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/PdfPTable;->tableEvent:Lcom/itextpdf/text/pdf/PdfPTableEvent;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/itextpdf/text/pdf/PdfPTable;->headersInEvent:Z

    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/itextpdf/text/pdf/PdfPTable;->getEventWidths(FIIZ)[[F

    move-result-object v7

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/itextpdf/text/pdf/PdfPTable;->headersInEvent:Z

    if-eqz v6, :cond_b

    move-object/from16 v0, p0

    iget v9, v0, Lcom/itextpdf/text/pdf/PdfPTable;->headerRows:I

    :goto_6
    move-object/from16 v6, p0

    move/from16 v10, p3

    move-object/from16 v11, p7

    invoke-interface/range {v5 .. v11}, Lcom/itextpdf/text/pdf/PdfPTableEvent;->tableLayout(Lcom/itextpdf/text/pdf/PdfPTable;[[F[FII[Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .end local v8           #heights:[F
    :cond_a
    move/from16 v16, p6

    .line 734
    .end local p6
    .restart local v16       #yPos:F
    goto/16 :goto_1

    .line 731
    .end local v16           #yPos:F
    .restart local v8       #heights:[F
    .restart local p6
    :cond_b
    const/4 v9, 0x0

    goto :goto_6
.end method

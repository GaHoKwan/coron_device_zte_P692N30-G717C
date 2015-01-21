.class public Lcom/itextpdf/text/pdf/PdfPCell;
.super Lcom/itextpdf/text/Rectangle;
.source "PdfPCell.java"


# instance fields
.field private cellEvent:Lcom/itextpdf/text/pdf/PdfPCellEvent;

.field private colspan:I

.field private column:Lcom/itextpdf/text/pdf/ColumnText;

.field private fixedHeight:F

.field private image:Lcom/itextpdf/text/Image;

.field private minimumHeight:F

.field private noWrap:Z

.field private paddingBottom:F

.field private paddingLeft:F

.field private paddingRight:F

.field private paddingTop:F

.field protected phrase:Lcom/itextpdf/text/Phrase;

.field private rotation:I

.field private rowspan:I

.field private table:Lcom/itextpdf/text/pdf/PdfPTable;

.field private useBorderPadding:Z

.field private useDescender:Z

.field private verticalAlignment:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x4000

    const/4 v2, 0x0

    .line 128
    invoke-direct {p0, v2, v2, v2, v2}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    .line 64
    new-instance v0, Lcom/itextpdf/text/pdf/ColumnText;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/ColumnText;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->column:Lcom/itextpdf/text/pdf/ColumnText;

    .line 67
    const/4 v0, 0x4

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->verticalAlignment:I

    .line 70
    iput v3, p0, Lcom/itextpdf/text/pdf/PdfPCell;->paddingLeft:F

    .line 73
    iput v3, p0, Lcom/itextpdf/text/pdf/PdfPCell;->paddingRight:F

    .line 76
    iput v3, p0, Lcom/itextpdf/text/pdf/PdfPCell;->paddingTop:F

    .line 79
    iput v3, p0, Lcom/itextpdf/text/pdf/PdfPCell;->paddingBottom:F

    .line 82
    iput v2, p0, Lcom/itextpdf/text/pdf/PdfPCell;->fixedHeight:F

    .line 88
    iput-boolean v4, p0, Lcom/itextpdf/text/pdf/PdfPCell;->noWrap:Z

    .line 94
    iput v5, p0, Lcom/itextpdf/text/pdf/PdfPCell;->colspan:I

    .line 100
    iput v5, p0, Lcom/itextpdf/text/pdf/PdfPCell;->rowspan:I

    .line 109
    iput-boolean v4, p0, Lcom/itextpdf/text/pdf/PdfPCell;->useDescender:Z

    .line 112
    iput-boolean v4, p0, Lcom/itextpdf/text/pdf/PdfPCell;->useBorderPadding:Z

    .line 129
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->borderWidth:F

    .line 130
    const/16 v0, 0xf

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->border:I

    .line 131
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->column:Lcom/itextpdf/text/pdf/ColumnText;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v2, v1}, Lcom/itextpdf/text/pdf/ColumnText;->setLeading(FF)V

    .line 132
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/Image;)V
    .locals 1
    .parameter "image"

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/text/pdf/PdfPCell;-><init>(Lcom/itextpdf/text/Image;Z)V

    .line 156
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/Image;Z)V
    .locals 6
    .parameter "image"
    .parameter "fit"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v2, 0x4000

    const/4 v3, 0x0

    .line 166
    invoke-direct {p0, v3, v3, v3, v3}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    .line 64
    new-instance v0, Lcom/itextpdf/text/pdf/ColumnText;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/ColumnText;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->column:Lcom/itextpdf/text/pdf/ColumnText;

    .line 67
    const/4 v0, 0x4

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->verticalAlignment:I

    .line 70
    iput v2, p0, Lcom/itextpdf/text/pdf/PdfPCell;->paddingLeft:F

    .line 73
    iput v2, p0, Lcom/itextpdf/text/pdf/PdfPCell;->paddingRight:F

    .line 76
    iput v2, p0, Lcom/itextpdf/text/pdf/PdfPCell;->paddingTop:F

    .line 79
    iput v2, p0, Lcom/itextpdf/text/pdf/PdfPCell;->paddingBottom:F

    .line 82
    iput v3, p0, Lcom/itextpdf/text/pdf/PdfPCell;->fixedHeight:F

    .line 88
    iput-boolean v4, p0, Lcom/itextpdf/text/pdf/PdfPCell;->noWrap:Z

    .line 94
    iput v5, p0, Lcom/itextpdf/text/pdf/PdfPCell;->colspan:I

    .line 100
    iput v5, p0, Lcom/itextpdf/text/pdf/PdfPCell;->rowspan:I

    .line 109
    iput-boolean v4, p0, Lcom/itextpdf/text/pdf/PdfPCell;->useDescender:Z

    .line 112
    iput-boolean v4, p0, Lcom/itextpdf/text/pdf/PdfPCell;->useBorderPadding:Z

    .line 167
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->borderWidth:F

    .line 168
    const/16 v0, 0xf

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->border:I

    .line 169
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->column:Lcom/itextpdf/text/pdf/ColumnText;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v3, v1}, Lcom/itextpdf/text/pdf/ColumnText;->setLeading(FF)V

    .line 170
    if-eqz p2, :cond_0

    .line 171
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfPCell;->image:Lcom/itextpdf/text/Image;

    .line 172
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->borderWidth:F

    div-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfPCell;->setPadding(F)V

    .line 178
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->column:Lcom/itextpdf/text/pdf/ColumnText;

    new-instance v1, Lcom/itextpdf/text/Phrase;

    new-instance v2, Lcom/itextpdf/text/Chunk;

    invoke-direct {v2, p1, v3, v3, v5}, Lcom/itextpdf/text/Chunk;-><init>(Lcom/itextpdf/text/Image;FFZ)V

    invoke-direct {v1, v2}, Lcom/itextpdf/text/Phrase;-><init>(Lcom/itextpdf/text/Chunk;)V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfPCell;->phrase:Lcom/itextpdf/text/Phrase;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ColumnText;->addText(Lcom/itextpdf/text/Phrase;)V

    .line 176
    invoke-virtual {p0, v3}, Lcom/itextpdf/text/pdf/PdfPCell;->setPadding(F)V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/itextpdf/text/Phrase;)V
    .locals 6
    .parameter "phrase"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x4000

    const/4 v2, 0x0

    .line 141
    invoke-direct {p0, v2, v2, v2, v2}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    .line 64
    new-instance v0, Lcom/itextpdf/text/pdf/ColumnText;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/ColumnText;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->column:Lcom/itextpdf/text/pdf/ColumnText;

    .line 67
    const/4 v0, 0x4

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->verticalAlignment:I

    .line 70
    iput v3, p0, Lcom/itextpdf/text/pdf/PdfPCell;->paddingLeft:F

    .line 73
    iput v3, p0, Lcom/itextpdf/text/pdf/PdfPCell;->paddingRight:F

    .line 76
    iput v3, p0, Lcom/itextpdf/text/pdf/PdfPCell;->paddingTop:F

    .line 79
    iput v3, p0, Lcom/itextpdf/text/pdf/PdfPCell;->paddingBottom:F

    .line 82
    iput v2, p0, Lcom/itextpdf/text/pdf/PdfPCell;->fixedHeight:F

    .line 88
    iput-boolean v4, p0, Lcom/itextpdf/text/pdf/PdfPCell;->noWrap:Z

    .line 94
    iput v5, p0, Lcom/itextpdf/text/pdf/PdfPCell;->colspan:I

    .line 100
    iput v5, p0, Lcom/itextpdf/text/pdf/PdfPCell;->rowspan:I

    .line 109
    iput-boolean v4, p0, Lcom/itextpdf/text/pdf/PdfPCell;->useDescender:Z

    .line 112
    iput-boolean v4, p0, Lcom/itextpdf/text/pdf/PdfPCell;->useBorderPadding:Z

    .line 142
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->borderWidth:F

    .line 143
    const/16 v0, 0xf

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->border:I

    .line 144
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->column:Lcom/itextpdf/text/pdf/ColumnText;

    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfPCell;->phrase:Lcom/itextpdf/text/Phrase;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ColumnText;->addText(Lcom/itextpdf/text/Phrase;)V

    .line 145
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->column:Lcom/itextpdf/text/pdf/ColumnText;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v2, v1}, Lcom/itextpdf/text/pdf/ColumnText;->setLeading(FF)V

    .line 146
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfPCell;)V
    .locals 7
    .parameter "cell"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x4000

    .line 232
    iget v0, p1, Lcom/itextpdf/text/pdf/PdfPCell;->llx:F

    iget v1, p1, Lcom/itextpdf/text/pdf/PdfPCell;->lly:F

    iget v2, p1, Lcom/itextpdf/text/pdf/PdfPCell;->urx:F

    iget v3, p1, Lcom/itextpdf/text/pdf/PdfPCell;->ury:F

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    .line 64
    new-instance v0, Lcom/itextpdf/text/pdf/ColumnText;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/ColumnText;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->column:Lcom/itextpdf/text/pdf/ColumnText;

    .line 67
    const/4 v0, 0x4

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->verticalAlignment:I

    .line 70
    iput v4, p0, Lcom/itextpdf/text/pdf/PdfPCell;->paddingLeft:F

    .line 73
    iput v4, p0, Lcom/itextpdf/text/pdf/PdfPCell;->paddingRight:F

    .line 76
    iput v4, p0, Lcom/itextpdf/text/pdf/PdfPCell;->paddingTop:F

    .line 79
    iput v4, p0, Lcom/itextpdf/text/pdf/PdfPCell;->paddingBottom:F

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->fixedHeight:F

    .line 88
    iput-boolean v5, p0, Lcom/itextpdf/text/pdf/PdfPCell;->noWrap:Z

    .line 94
    iput v6, p0, Lcom/itextpdf/text/pdf/PdfPCell;->colspan:I

    .line 100
    iput v6, p0, Lcom/itextpdf/text/pdf/PdfPCell;->rowspan:I

    .line 109
    iput-boolean v5, p0, Lcom/itextpdf/text/pdf/PdfPCell;->useDescender:Z

    .line 112
    iput-boolean v5, p0, Lcom/itextpdf/text/pdf/PdfPCell;->useBorderPadding:Z

    .line 233
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfPCell;->cloneNonPositionParameters(Lcom/itextpdf/text/Rectangle;)V

    .line 234
    iget v0, p1, Lcom/itextpdf/text/pdf/PdfPCell;->verticalAlignment:I

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->verticalAlignment:I

    .line 235
    iget v0, p1, Lcom/itextpdf/text/pdf/PdfPCell;->paddingLeft:F

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->paddingLeft:F

    .line 236
    iget v0, p1, Lcom/itextpdf/text/pdf/PdfPCell;->paddingRight:F

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->paddingRight:F

    .line 237
    iget v0, p1, Lcom/itextpdf/text/pdf/PdfPCell;->paddingTop:F

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->paddingTop:F

    .line 238
    iget v0, p1, Lcom/itextpdf/text/pdf/PdfPCell;->paddingBottom:F

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->paddingBottom:F

    .line 239
    iget-object v0, p1, Lcom/itextpdf/text/pdf/PdfPCell;->phrase:Lcom/itextpdf/text/Phrase;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->phrase:Lcom/itextpdf/text/Phrase;

    .line 240
    iget v0, p1, Lcom/itextpdf/text/pdf/PdfPCell;->fixedHeight:F

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->fixedHeight:F

    .line 241
    iget v0, p1, Lcom/itextpdf/text/pdf/PdfPCell;->minimumHeight:F

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->minimumHeight:F

    .line 242
    iget-boolean v0, p1, Lcom/itextpdf/text/pdf/PdfPCell;->noWrap:Z

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->noWrap:Z

    .line 243
    iget v0, p1, Lcom/itextpdf/text/pdf/PdfPCell;->colspan:I

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->colspan:I

    .line 244
    iget v0, p1, Lcom/itextpdf/text/pdf/PdfPCell;->rowspan:I

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->rowspan:I

    .line 245
    iget-object v0, p1, Lcom/itextpdf/text/pdf/PdfPCell;->table:Lcom/itextpdf/text/pdf/PdfPTable;

    if-eqz v0, :cond_0

    .line 246
    new-instance v0, Lcom/itextpdf/text/pdf/PdfPTable;

    iget-object v1, p1, Lcom/itextpdf/text/pdf/PdfPCell;->table:Lcom/itextpdf/text/pdf/PdfPTable;

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfPTable;-><init>(Lcom/itextpdf/text/pdf/PdfPTable;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->table:Lcom/itextpdf/text/pdf/PdfPTable;

    .line 247
    :cond_0
    iget-object v0, p1, Lcom/itextpdf/text/pdf/PdfPCell;->image:Lcom/itextpdf/text/Image;

    invoke-static {v0}, Lcom/itextpdf/text/Image;->getInstance(Lcom/itextpdf/text/Image;)Lcom/itextpdf/text/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->image:Lcom/itextpdf/text/Image;

    .line 248
    iget-object v0, p1, Lcom/itextpdf/text/pdf/PdfPCell;->cellEvent:Lcom/itextpdf/text/pdf/PdfPCellEvent;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->cellEvent:Lcom/itextpdf/text/pdf/PdfPCellEvent;

    .line 249
    iget-boolean v0, p1, Lcom/itextpdf/text/pdf/PdfPCell;->useDescender:Z

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->useDescender:Z

    .line 250
    iget-object v0, p1, Lcom/itextpdf/text/pdf/PdfPCell;->column:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-static {v0}, Lcom/itextpdf/text/pdf/ColumnText;->duplicate(Lcom/itextpdf/text/pdf/ColumnText;)Lcom/itextpdf/text/pdf/ColumnText;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->column:Lcom/itextpdf/text/pdf/ColumnText;

    .line 251
    iget-boolean v0, p1, Lcom/itextpdf/text/pdf/PdfPCell;->useBorderPadding:Z

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->useBorderPadding:Z

    .line 252
    iget v0, p1, Lcom/itextpdf/text/pdf/PdfPCell;->rotation:I

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->rotation:I

    .line 253
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfPTable;)V
    .locals 1
    .parameter "table"

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/text/pdf/PdfPCell;-><init>(Lcom/itextpdf/text/pdf/PdfPTable;Lcom/itextpdf/text/pdf/PdfPCell;)V

    .line 189
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfPTable;Lcom/itextpdf/text/pdf/PdfPCell;)V
    .locals 6
    .parameter "table"
    .parameter "style"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x4000

    const/4 v2, 0x0

    .line 200
    invoke-direct {p0, v2, v2, v2, v2}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    .line 64
    new-instance v0, Lcom/itextpdf/text/pdf/ColumnText;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/ColumnText;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->column:Lcom/itextpdf/text/pdf/ColumnText;

    .line 67
    const/4 v0, 0x4

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->verticalAlignment:I

    .line 70
    iput v3, p0, Lcom/itextpdf/text/pdf/PdfPCell;->paddingLeft:F

    .line 73
    iput v3, p0, Lcom/itextpdf/text/pdf/PdfPCell;->paddingRight:F

    .line 76
    iput v3, p0, Lcom/itextpdf/text/pdf/PdfPCell;->paddingTop:F

    .line 79
    iput v3, p0, Lcom/itextpdf/text/pdf/PdfPCell;->paddingBottom:F

    .line 82
    iput v2, p0, Lcom/itextpdf/text/pdf/PdfPCell;->fixedHeight:F

    .line 88
    iput-boolean v4, p0, Lcom/itextpdf/text/pdf/PdfPCell;->noWrap:Z

    .line 94
    iput v5, p0, Lcom/itextpdf/text/pdf/PdfPCell;->colspan:I

    .line 100
    iput v5, p0, Lcom/itextpdf/text/pdf/PdfPCell;->rowspan:I

    .line 109
    iput-boolean v4, p0, Lcom/itextpdf/text/pdf/PdfPCell;->useDescender:Z

    .line 112
    iput-boolean v4, p0, Lcom/itextpdf/text/pdf/PdfPCell;->useBorderPadding:Z

    .line 201
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->borderWidth:F

    .line 202
    const/16 v0, 0xf

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->border:I

    .line 203
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->column:Lcom/itextpdf/text/pdf/ColumnText;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v2, v1}, Lcom/itextpdf/text/pdf/ColumnText;->setLeading(FF)V

    .line 204
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfPCell;->table:Lcom/itextpdf/text/pdf/PdfPTable;

    .line 205
    const/high16 v0, 0x42c8

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/PdfPTable;->setWidthPercentage(F)V

    .line 206
    invoke-virtual {p1, v5}, Lcom/itextpdf/text/pdf/PdfPTable;->setExtendLastRow(Z)V

    .line 207
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->column:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ColumnText;->addElement(Lcom/itextpdf/text/Element;)V

    .line 208
    if-eqz p2, :cond_0

    .line 209
    invoke-virtual {p0, p2}, Lcom/itextpdf/text/pdf/PdfPCell;->cloneNonPositionParameters(Lcom/itextpdf/text/Rectangle;)V

    .line 210
    iget v0, p2, Lcom/itextpdf/text/pdf/PdfPCell;->verticalAlignment:I

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->verticalAlignment:I

    .line 211
    iget v0, p2, Lcom/itextpdf/text/pdf/PdfPCell;->paddingLeft:F

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->paddingLeft:F

    .line 212
    iget v0, p2, Lcom/itextpdf/text/pdf/PdfPCell;->paddingRight:F

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->paddingRight:F

    .line 213
    iget v0, p2, Lcom/itextpdf/text/pdf/PdfPCell;->paddingTop:F

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->paddingTop:F

    .line 214
    iget v0, p2, Lcom/itextpdf/text/pdf/PdfPCell;->paddingBottom:F

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->paddingBottom:F

    .line 215
    iget v0, p2, Lcom/itextpdf/text/pdf/PdfPCell;->colspan:I

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->colspan:I

    .line 216
    iget v0, p2, Lcom/itextpdf/text/pdf/PdfPCell;->rowspan:I

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->rowspan:I

    .line 217
    iget-object v0, p2, Lcom/itextpdf/text/pdf/PdfPCell;->cellEvent:Lcom/itextpdf/text/pdf/PdfPCellEvent;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->cellEvent:Lcom/itextpdf/text/pdf/PdfPCellEvent;

    .line 218
    iget-boolean v0, p2, Lcom/itextpdf/text/pdf/PdfPCell;->useDescender:Z

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->useDescender:Z

    .line 219
    iget-boolean v0, p2, Lcom/itextpdf/text/pdf/PdfPCell;->useBorderPadding:Z

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->useBorderPadding:Z

    .line 220
    iget v0, p2, Lcom/itextpdf/text/pdf/PdfPCell;->rotation:I

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->rotation:I

    .line 224
    :goto_0
    return-void

    .line 223
    :cond_0
    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/PdfPCell;->setPadding(F)V

    goto :goto_0
.end method


# virtual methods
.method public addElement(Lcom/itextpdf/text/Element;)V
    .locals 2
    .parameter "element"

    .prologue
    const/4 v1, 0x0

    .line 261
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->table:Lcom/itextpdf/text/pdf/PdfPTable;

    if-eqz v0, :cond_0

    .line 262
    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfPCell;->table:Lcom/itextpdf/text/pdf/PdfPTable;

    .line 263
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->column:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ColumnText;->setText(Lcom/itextpdf/text/Phrase;)V

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->column:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ColumnText;->addElement(Lcom/itextpdf/text/Element;)V

    .line 266
    return-void
.end method

.method public getArabicOptions()I
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->column:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ColumnText;->getArabicOptions()I

    move-result v0

    return v0
.end method

.method public getCellEvent()Lcom/itextpdf/text/pdf/PdfPCellEvent;
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->cellEvent:Lcom/itextpdf/text/pdf/PdfPCellEvent;

    return-object v0
.end method

.method public getColspan()I
    .locals 1

    .prologue
    .line 658
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->colspan:I

    return v0
.end method

.method public getColumn()Lcom/itextpdf/text/pdf/ColumnText;
    .locals 1

    .prologue
    .line 881
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->column:Lcom/itextpdf/text/pdf/ColumnText;

    return-object v0
.end method

.method public getCompositeElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/itextpdf/text/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 891
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPCell;->getColumn()Lcom/itextpdf/text/pdf/ColumnText;

    move-result-object v0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeElements:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getEffectivePaddingBottom()F
    .locals 3

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPCell;->isUseBorderPadding()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 432
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPCell;->getBorderWidthBottom()F

    move-result v2

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPCell;->isUseVariableBorders()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f80

    :goto_0
    div-float v0, v2, v1

    .line 433
    .local v0, border:F
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfPCell;->paddingBottom:F

    add-float/2addr v1, v0

    .line 435
    .end local v0           #border:F
    :goto_1
    return v1

    .line 432
    :cond_0
    const/high16 v1, 0x4000

    goto :goto_0

    .line 435
    :cond_1
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfPCell;->paddingBottom:F

    goto :goto_1
.end method

.method public getEffectivePaddingLeft()F
    .locals 3

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPCell;->isUseBorderPadding()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 337
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPCell;->getBorderWidthLeft()F

    move-result v2

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPCell;->isUseVariableBorders()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f80

    :goto_0
    div-float v0, v2, v1

    .line 338
    .local v0, border:F
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfPCell;->paddingLeft:F

    add-float/2addr v1, v0

    .line 340
    .end local v0           #border:F
    :goto_1
    return v1

    .line 337
    :cond_0
    const/high16 v1, 0x4000

    goto :goto_0

    .line 340
    :cond_1
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfPCell;->paddingLeft:F

    goto :goto_1
.end method

.method public getEffectivePaddingRight()F
    .locals 3

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPCell;->isUseBorderPadding()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 367
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPCell;->getBorderWidthRight()F

    move-result v2

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPCell;->isUseVariableBorders()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f80

    :goto_0
    div-float v0, v2, v1

    .line 368
    .local v0, border:F
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfPCell;->paddingRight:F

    add-float/2addr v1, v0

    .line 370
    .end local v0           #border:F
    :goto_1
    return v1

    .line 367
    :cond_0
    const/high16 v1, 0x4000

    goto :goto_0

    .line 370
    :cond_1
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfPCell;->paddingRight:F

    goto :goto_1
.end method

.method public getEffectivePaddingTop()F
    .locals 3

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPCell;->isUseBorderPadding()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 399
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPCell;->getBorderWidthTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPCell;->isUseVariableBorders()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f80

    :goto_0
    div-float v0, v2, v1

    .line 400
    .local v0, border:F
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfPCell;->paddingTop:F

    add-float/2addr v1, v0

    .line 402
    .end local v0           #border:F
    :goto_1
    return v1

    .line 399
    :cond_0
    const/high16 v1, 0x4000

    goto :goto_0

    .line 402
    :cond_1
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfPCell;->paddingTop:F

    goto :goto_1
.end method

.method public getExtraParagraphSpace()F
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->column:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ColumnText;->getExtraParagraphSpace()F

    move-result v0

    return v0
.end method

.method public getFixedHeight()F
    .locals 1

    .prologue
    .line 570
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->fixedHeight:F

    return v0
.end method

.method public getFollowingIndent()F
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->column:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ColumnText;->getFollowingIndent()F

    move-result v0

    return v0
.end method

.method public getHorizontalAlignment()I
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->column:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ColumnText;->getAlignment()I

    move-result v0

    return v0
.end method

.method public getImage()Lcom/itextpdf/text/Image;
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->image:Lcom/itextpdf/text/Image;

    return-object v0
.end method

.method public getIndent()F
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->column:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ColumnText;->getIndent()F

    move-result v0

    return v0
.end method

.method public getLeading()F
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->column:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ColumnText;->getLeading()F

    move-result v0

    return v0
.end method

.method public getMaxHeight()F
    .locals 15

    .prologue
    .line 934
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPCell;->getRotation()I

    move-result v13

    const/16 v14, 0x5a

    if-eq v13, v14, :cond_0

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPCell;->getRotation()I

    move-result v13

    const/16 v14, 0x10e

    if-ne v13, v14, :cond_2

    :cond_0
    const/4 v6, 0x1

    .line 935
    .local v6, pivoted:Z
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPCell;->getImage()Lcom/itextpdf/text/Image;

    move-result-object v4

    .line 936
    .local v4, img:Lcom/itextpdf/text/Image;
    if-eqz v4, :cond_5

    .line 937
    const/high16 v13, 0x42c8

    invoke-virtual {v4, v13}, Lcom/itextpdf/text/Image;->scalePercent(F)V

    .line 938
    if-eqz v6, :cond_3

    invoke-virtual {v4}, Lcom/itextpdf/text/Image;->getScaledHeight()F

    move-result v8

    .line 939
    .local v8, refWidth:F
    :goto_1
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPCell;->getRight()F

    move-result v13

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingRight()F

    move-result v14

    sub-float/2addr v13, v14

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingLeft()F

    move-result v14

    sub-float/2addr v13, v14

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPCell;->getLeft()F

    move-result v14

    sub-float/2addr v13, v14

    div-float v10, v13, v8

    .line 941
    .local v10, scale:F
    const/high16 v13, 0x42c8

    mul-float/2addr v13, v10

    invoke-virtual {v4, v13}, Lcom/itextpdf/text/Image;->scalePercent(F)V

    .line 942
    if-eqz v6, :cond_4

    invoke-virtual {v4}, Lcom/itextpdf/text/Image;->getScaledWidth()F

    move-result v7

    .line 943
    .local v7, refHeight:F
    :goto_2
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPCell;->getTop()F

    move-result v13

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingTop()F

    move-result v14

    sub-float/2addr v13, v14

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingBottom()F

    move-result v14

    sub-float/2addr v13, v14

    sub-float/2addr v13, v7

    invoke-virtual {p0, v13}, Lcom/itextpdf/text/pdf/PdfPCell;->setBottom(F)V

    .line 979
    .end local v7           #refHeight:F
    .end local v8           #refWidth:F
    .end local v10           #scale:F
    :goto_3
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPCell;->getHeight()F

    move-result v3

    .line 980
    .local v3, height:F
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPCell;->hasFixedHeight()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 981
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPCell;->getFixedHeight()F

    move-result v3

    .line 984
    :cond_1
    :goto_4
    return v3

    .line 934
    .end local v3           #height:F
    .end local v4           #img:Lcom/itextpdf/text/Image;
    .end local v6           #pivoted:Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 938
    .restart local v4       #img:Lcom/itextpdf/text/Image;
    .restart local v6       #pivoted:Z
    :cond_3
    invoke-virtual {v4}, Lcom/itextpdf/text/Image;->getScaledWidth()F

    move-result v8

    goto :goto_1

    .line 942
    .restart local v8       #refWidth:F
    .restart local v10       #scale:F
    :cond_4
    invoke-virtual {v4}, Lcom/itextpdf/text/Image;->getScaledHeight()F

    move-result v7

    goto :goto_2

    .line 946
    .end local v8           #refWidth:F
    .end local v10           #scale:F
    :cond_5
    if-eqz v6, :cond_6

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPCell;->hasFixedHeight()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 947
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPCell;->getTop()F

    move-result v13

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPCell;->getFixedHeight()F

    move-result v14

    sub-float/2addr v13, v14

    invoke-virtual {p0, v13}, Lcom/itextpdf/text/pdf/PdfPCell;->setBottom(F)V

    goto :goto_3

    .line 949
    :cond_6
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPCell;->getColumn()Lcom/itextpdf/text/pdf/ColumnText;

    move-result-object v13

    invoke-static {v13}, Lcom/itextpdf/text/pdf/ColumnText;->duplicate(Lcom/itextpdf/text/pdf/ColumnText;)Lcom/itextpdf/text/pdf/ColumnText;

    move-result-object v1

    .line 951
    .local v1, ct:Lcom/itextpdf/text/pdf/ColumnText;
    if-eqz v6, :cond_7

    .line 952
    const v9, 0x469c4000

    .line 953
    .local v9, right:F
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPCell;->getRight()F

    move-result v13

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingRight()F

    move-result v14

    sub-float v11, v13, v14

    .line 954
    .local v11, top:F
    const/4 v5, 0x0

    .line 955
    .local v5, left:F
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPCell;->getLeft()F

    move-result v13

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingLeft()F

    move-result v14

    add-float v0, v13, v14

    .line 963
    .local v0, bottom:F
    :goto_5
    invoke-static {v1, v5, v0, v9, v11}, Lcom/itextpdf/text/pdf/PdfPRow;->setColumn(Lcom/itextpdf/text/pdf/ColumnText;FFFF)F

    .line 965
    const/4 v13, 0x1

    :try_start_0
    invoke-virtual {v1, v13}, Lcom/itextpdf/text/pdf/ColumnText;->go(Z)I
    :try_end_0
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 969
    if-eqz v6, :cond_a

    .line 970
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPCell;->getTop()F

    move-result v13

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingTop()F

    move-result v14

    sub-float/2addr v13, v14

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingBottom()F

    move-result v14

    sub-float/2addr v13, v14

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/ColumnText;->getFilledWidth()F

    move-result v14

    sub-float/2addr v13, v14

    invoke-virtual {p0, v13}, Lcom/itextpdf/text/pdf/PdfPCell;->setBottom(F)V

    goto :goto_3

    .line 958
    .end local v0           #bottom:F
    .end local v5           #left:F
    .end local v9           #right:F
    .end local v11           #top:F
    :cond_7
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPCell;->isNoWrap()Z

    move-result v13

    if-eqz v13, :cond_8

    const v9, 0x469c4000

    .line 959
    .restart local v9       #right:F
    :goto_6
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPCell;->getTop()F

    move-result v13

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingTop()F

    move-result v14

    sub-float v11, v13, v14

    .line 960
    .restart local v11       #top:F
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPCell;->getLeft()F

    move-result v13

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingLeft()F

    move-result v14

    add-float v5, v13, v14

    .line 961
    .restart local v5       #left:F
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPCell;->hasFixedHeight()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPCell;->getTop()F

    move-result v13

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingBottom()F

    move-result v14

    add-float/2addr v13, v14

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPCell;->getFixedHeight()F

    move-result v14

    sub-float v0, v13, v14

    .restart local v0       #bottom:F
    :goto_7
    goto :goto_5

    .line 958
    .end local v0           #bottom:F
    .end local v5           #left:F
    .end local v9           #right:F
    .end local v11           #top:F
    :cond_8
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPCell;->getRight()F

    move-result v13

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingRight()F

    move-result v14

    sub-float v9, v13, v14

    goto :goto_6

    .line 961
    .restart local v5       #left:F
    .restart local v9       #right:F
    .restart local v11       #top:F
    :cond_9
    const/high16 v0, -0x3180

    goto :goto_7

    .line 966
    .restart local v0       #bottom:F
    :catch_0
    move-exception v2

    .line 967
    .local v2, e:Lcom/itextpdf/text/DocumentException;
    new-instance v13, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v13, v2}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v13

    .line 972
    .end local v2           #e:Lcom/itextpdf/text/DocumentException;
    :cond_a
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/ColumnText;->getYLine()F

    move-result v12

    .line 973
    .local v12, yLine:F
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPCell;->isUseDescender()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 974
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/ColumnText;->getDescender()F

    move-result v13

    add-float/2addr v12, v13

    .line 975
    :cond_b
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingBottom()F

    move-result v13

    sub-float v13, v12, v13

    invoke-virtual {p0, v13}, Lcom/itextpdf/text/pdf/PdfPCell;->setBottom(F)V

    goto/16 :goto_3

    .line 982
    .end local v0           #bottom:F
    .end local v1           #ct:Lcom/itextpdf/text/pdf/ColumnText;
    .end local v5           #left:F
    .end local v9           #right:F
    .end local v11           #top:F
    .end local v12           #yLine:F
    .restart local v3       #height:F
    :cond_c
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPCell;->hasMinimumHeight()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPCell;->getMinimumHeight()F

    move-result v13

    cmpg-float v13, v3, v13

    if-gez v13, :cond_1

    .line 983
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPCell;->getMinimumHeight()F

    move-result v3

    goto/16 :goto_4
.end method

.method public getMinimumHeight()F
    .locals 1

    .prologue
    .line 600
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->minimumHeight:F

    return v0
.end method

.method public getMultipliedLeading()F
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->column:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ColumnText;->getMultipliedLeading()F

    move-result v0

    return v0
.end method

.method public getPaddingBottom()F
    .locals 1

    .prologue
    .line 444
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->paddingBottom:F

    return v0
.end method

.method public getPaddingLeft()F
    .locals 1

    .prologue
    .line 347
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->paddingLeft:F

    return v0
.end method

.method public getPaddingRight()F
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->paddingRight:F

    return v0
.end method

.method public getPaddingTop()F
    .locals 1

    .prologue
    .line 411
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->paddingTop:F

    return v0
.end method

.method public getPhrase()Lcom/itextpdf/text/Phrase;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->phrase:Lcom/itextpdf/text/Phrase;

    return-object v0
.end method

.method public getRightIndent()F
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->column:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ColumnText;->getRightIndent()F

    move-result v0

    return v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 910
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->rotation:I

    return v0
.end method

.method public getRowspan()I
    .locals 1

    .prologue
    .line 677
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->rowspan:I

    return v0
.end method

.method public getRunDirection()I
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->column:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ColumnText;->getRunDirection()I

    move-result v0

    return v0
.end method

.method public getSpaceCharRatio()F
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->column:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ColumnText;->getSpaceCharRatio()F

    move-result v0

    return v0
.end method

.method public getTable()Lcom/itextpdf/text/pdf/PdfPTable;
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->table:Lcom/itextpdf/text/pdf/PdfPTable;

    return-object v0
.end method

.method public getVerticalAlignment()I
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->verticalAlignment:I

    return v0
.end method

.method public hasFixedHeight()Z
    .locals 2

    .prologue
    .line 580
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPCell;->getFixedHeight()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMinimumHeight()Z
    .locals 2

    .prologue
    .line 610
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPCell;->getMinimumHeight()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNoWrap()Z
    .locals 1

    .prologue
    .line 619
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->noWrap:Z

    return v0
.end method

.method public isUseAscender()Z
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->column:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ColumnText;->isUseAscender()Z

    move-result v0

    return v0
.end method

.method public isUseBorderPadding()Z
    .locals 1

    .prologue
    .line 474
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->useBorderPadding:Z

    return v0
.end method

.method public isUseDescender()Z
    .locals 1

    .prologue
    .line 863
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->useDescender:Z

    return v0
.end method

.method public setArabicOptions(I)V
    .locals 1
    .parameter "arabicOptions"

    .prologue
    .line 835
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->column:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ColumnText;->setArabicOptions(I)V

    .line 836
    return-void
.end method

.method public setCellEvent(Lcom/itextpdf/text/pdf/PdfPCellEvent;)V
    .locals 2
    .parameter "cellEvent"

    .prologue
    .line 805
    if-nez p1, :cond_0

    .line 806
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfPCell;->cellEvent:Lcom/itextpdf/text/pdf/PdfPCellEvent;

    .line 817
    :goto_0
    return-void

    .line 807
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPCell;->cellEvent:Lcom/itextpdf/text/pdf/PdfPCellEvent;

    if-nez v1, :cond_1

    .line 808
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfPCell;->cellEvent:Lcom/itextpdf/text/pdf/PdfPCellEvent;

    goto :goto_0

    .line 809
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPCell;->cellEvent:Lcom/itextpdf/text/pdf/PdfPCellEvent;

    instance-of v1, v1, Lcom/itextpdf/text/pdf/events/PdfPCellEventForwarder;

    if-eqz v1, :cond_2

    .line 810
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPCell;->cellEvent:Lcom/itextpdf/text/pdf/PdfPCellEvent;

    check-cast v1, Lcom/itextpdf/text/pdf/events/PdfPCellEventForwarder;

    invoke-virtual {v1, p1}, Lcom/itextpdf/text/pdf/events/PdfPCellEventForwarder;->addCellEvent(Lcom/itextpdf/text/pdf/PdfPCellEvent;)V

    goto :goto_0

    .line 812
    :cond_2
    new-instance v0, Lcom/itextpdf/text/pdf/events/PdfPCellEventForwarder;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/events/PdfPCellEventForwarder;-><init>()V

    .line 813
    .local v0, forward:Lcom/itextpdf/text/pdf/events/PdfPCellEventForwarder;
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPCell;->cellEvent:Lcom/itextpdf/text/pdf/PdfPCellEvent;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/events/PdfPCellEventForwarder;->addCellEvent(Lcom/itextpdf/text/pdf/PdfPCellEvent;)V

    .line 814
    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/events/PdfPCellEventForwarder;->addCellEvent(Lcom/itextpdf/text/pdf/PdfPCellEvent;)V

    .line 815
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->cellEvent:Lcom/itextpdf/text/pdf/PdfPCellEvent;

    goto :goto_0
.end method

.method public setColspan(I)V
    .locals 0
    .parameter "colspan"

    .prologue
    .line 667
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfPCell;->colspan:I

    .line 668
    return-void
.end method

.method public setColumn(Lcom/itextpdf/text/pdf/ColumnText;)V
    .locals 0
    .parameter "column"

    .prologue
    .line 900
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfPCell;->column:Lcom/itextpdf/text/pdf/ColumnText;

    .line 901
    return-void
.end method

.method public setExtraParagraphSpace(F)V
    .locals 1
    .parameter "extraParagraphSpace"

    .prologue
    .line 550
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->column:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ColumnText;->setExtraParagraphSpace(F)V

    .line 551
    return-void
.end method

.method public setFixedHeight(F)V
    .locals 1
    .parameter "fixedHeight"

    .prologue
    .line 560
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfPCell;->fixedHeight:F

    .line 561
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->minimumHeight:F

    .line 562
    return-void
.end method

.method public setFollowingIndent(F)V
    .locals 1
    .parameter "indent"

    .prologue
    .line 696
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->column:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ColumnText;->setFollowingIndent(F)V

    .line 697
    return-void
.end method

.method public setHorizontalAlignment(I)V
    .locals 1
    .parameter "horizontalAlignment"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->column:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ColumnText;->setAlignment(I)V

    .line 305
    return-void
.end method

.method public setImage(Lcom/itextpdf/text/Image;)V
    .locals 2
    .parameter "image"

    .prologue
    const/4 v1, 0x0

    .line 785
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->column:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ColumnText;->setText(Lcom/itextpdf/text/Phrase;)V

    .line 786
    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfPCell;->table:Lcom/itextpdf/text/pdf/PdfPTable;

    .line 787
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfPCell;->image:Lcom/itextpdf/text/Image;

    .line 788
    return-void
.end method

.method public setIndent(F)V
    .locals 1
    .parameter "indent"

    .prologue
    .line 523
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->column:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ColumnText;->setIndent(F)V

    .line 524
    return-void
.end method

.method public setLeading(FF)V
    .locals 1
    .parameter "fixedLeading"
    .parameter "multipliedLeading"

    .prologue
    .line 496
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->column:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/ColumnText;->setLeading(FF)V

    .line 497
    return-void
.end method

.method public setMinimumHeight(F)V
    .locals 1
    .parameter "minimumHeight"

    .prologue
    .line 590
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfPCell;->minimumHeight:F

    .line 591
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->fixedHeight:F

    .line 592
    return-void
.end method

.method public setNoWrap(Z)V
    .locals 0
    .parameter "noWrap"

    .prologue
    .line 628
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/PdfPCell;->noWrap:Z

    .line 629
    return-void
.end method

.method public setPadding(F)V
    .locals 0
    .parameter "padding"

    .prologue
    .line 462
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfPCell;->paddingBottom:F

    .line 463
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfPCell;->paddingTop:F

    .line 464
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfPCell;->paddingLeft:F

    .line 465
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfPCell;->paddingRight:F

    .line 466
    return-void
.end method

.method public setPaddingBottom(F)V
    .locals 0
    .parameter "paddingBottom"

    .prologue
    .line 453
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfPCell;->paddingBottom:F

    .line 454
    return-void
.end method

.method public setPaddingLeft(F)V
    .locals 0
    .parameter "paddingLeft"

    .prologue
    .line 356
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfPCell;->paddingLeft:F

    .line 357
    return-void
.end method

.method public setPaddingRight(F)V
    .locals 0
    .parameter "paddingRight"

    .prologue
    .line 388
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfPCell;->paddingRight:F

    .line 389
    return-void
.end method

.method public setPaddingTop(F)V
    .locals 0
    .parameter "paddingTop"

    .prologue
    .line 420
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfPCell;->paddingTop:F

    .line 421
    return-void
.end method

.method public setPhrase(Lcom/itextpdf/text/Phrase;)V
    .locals 1
    .parameter "phrase"

    .prologue
    const/4 v0, 0x0

    .line 283
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->table:Lcom/itextpdf/text/pdf/PdfPTable;

    .line 284
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->image:Lcom/itextpdf/text/Image;

    .line 285
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->column:Lcom/itextpdf/text/pdf/ColumnText;

    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfPCell;->phrase:Lcom/itextpdf/text/Phrase;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ColumnText;->setText(Lcom/itextpdf/text/Phrase;)V

    .line 286
    return-void
.end method

.method public setRightIndent(F)V
    .locals 1
    .parameter "indent"

    .prologue
    .line 714
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->column:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ColumnText;->setRightIndent(F)V

    .line 715
    return-void
.end method

.method public setRotation(I)V
    .locals 3
    .parameter "rotation"

    .prologue
    .line 920
    rem-int/lit16 p1, p1, 0x168

    .line 921
    if-gez p1, :cond_0

    .line 922
    add-int/lit16 p1, p1, 0x168

    .line 923
    :cond_0
    rem-int/lit8 v0, p1, 0x5a

    if-eqz v0, :cond_1

    .line 924
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rotation.must.be.a.multiple.of.90"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 925
    :cond_1
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfPCell;->rotation:I

    .line 926
    return-void
.end method

.method public setRowspan(I)V
    .locals 0
    .parameter "rowspan"

    .prologue
    .line 687
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfPCell;->rowspan:I

    .line 688
    return-void
.end method

.method public setRunDirection(I)V
    .locals 1
    .parameter "runDirection"

    .prologue
    .line 756
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->column:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ColumnText;->setRunDirection(I)V

    .line 757
    return-void
.end method

.method public setSpaceCharRatio(F)V
    .locals 1
    .parameter "spaceCharRatio"

    .prologue
    .line 745
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->column:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ColumnText;->setSpaceCharRatio(F)V

    .line 746
    return-void
.end method

.method setTable(Lcom/itextpdf/text/pdf/PdfPTable;)V
    .locals 2
    .parameter "table"

    .prologue
    const/4 v1, 0x0

    .line 642
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfPCell;->table:Lcom/itextpdf/text/pdf/PdfPTable;

    .line 643
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->column:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ColumnText;->setText(Lcom/itextpdf/text/Phrase;)V

    .line 644
    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfPCell;->image:Lcom/itextpdf/text/Image;

    .line 645
    if-eqz p1, :cond_0

    .line 646
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->verticalAlignment:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/PdfPTable;->setExtendLastRow(Z)V

    .line 647
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->column:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ColumnText;->addElement(Lcom/itextpdf/text/Element;)V

    .line 648
    const/high16 v0, 0x42c8

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/PdfPTable;->setWidthPercentage(F)V

    .line 650
    :cond_0
    return-void

    .line 646
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUseAscender(Z)V
    .locals 1
    .parameter "useAscender"

    .prologue
    .line 853
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->column:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ColumnText;->setUseAscender(Z)V

    .line 854
    return-void
.end method

.method public setUseBorderPadding(Z)V
    .locals 0
    .parameter "use"

    .prologue
    .line 483
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/PdfPCell;->useBorderPadding:Z

    .line 484
    return-void
.end method

.method public setUseDescender(Z)V
    .locals 0
    .parameter "useDescender"

    .prologue
    .line 872
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/PdfPCell;->useDescender:Z

    .line 873
    return-void
.end method

.method public setVerticalAlignment(I)V
    .locals 2
    .parameter "verticalAlignment"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPCell;->table:Lcom/itextpdf/text/pdf/PdfPTable;

    if-eqz v0, :cond_0

    .line 324
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPCell;->table:Lcom/itextpdf/text/pdf/PdfPTable;

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/itextpdf/text/pdf/PdfPTable;->setExtendLastRow(Z)V

    .line 325
    :cond_0
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfPCell;->verticalAlignment:I

    .line 326
    return-void

    .line 324
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

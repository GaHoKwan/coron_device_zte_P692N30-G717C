.class public Lcom/itextpdf/text/pdf/MultiColumnText;
.super Ljava/lang/Object;
.source "MultiColumnText.java"

# interfaces
.implements Lcom/itextpdf/text/Element;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;
    }
.end annotation


# static fields
.field public static final AUTOMATIC:F = -1.0f


# instance fields
.field private columnDefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;",
            ">;"
        }
    .end annotation
.end field

.field private columnText:Lcom/itextpdf/text/pdf/ColumnText;

.field private columnsRightToLeft:Z

.field private currentColumn:I

.field private desiredHeight:F

.field private document:Lcom/itextpdf/text/pdf/PdfDocument;

.field private nextY:F

.field private overflow:Z

.field private simple:Z

.field private top:F

.field private totalHeight:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 118
    const/high16 v0, -0x4080

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/MultiColumnText;-><init>(F)V

    .line 119
    return-void
.end method

.method public constructor <init>(F)V
    .locals 3
    .parameter "height"

    .prologue
    const/4 v2, 0x0

    const/high16 v1, -0x4080

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->simple:Z

    .line 106
    iput v2, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->currentColumn:I

    .line 108
    iput v1, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->nextY:F

    .line 110
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->columnsRightToLeft:Z

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->columnDefs:Ljava/util/ArrayList;

    .line 130
    iput p1, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->desiredHeight:F

    .line 131
    iput v1, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->top:F

    .line 133
    new-instance v0, Lcom/itextpdf/text/pdf/ColumnText;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/ColumnText;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->columnText:Lcom/itextpdf/text/pdf/ColumnText;

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->totalHeight:F

    .line 135
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 2
    .parameter "top"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->simple:Z

    .line 106
    iput v1, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->currentColumn:I

    .line 108
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->nextY:F

    .line 110
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->columnsRightToLeft:Z

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->columnDefs:Ljava/util/ArrayList;

    .line 146
    iput p2, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->desiredHeight:F

    .line 147
    iput p1, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->top:F

    .line 148
    iput p1, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->nextY:F

    .line 150
    new-instance v0, Lcom/itextpdf/text/pdf/ColumnText;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/ColumnText;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->columnText:Lcom/itextpdf/text/pdf/ColumnText;

    .line 151
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->totalHeight:F

    .line 152
    return-void
.end method

.method static synthetic access$100(Lcom/itextpdf/text/pdf/MultiColumnText;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->top:F

    return v0
.end method

.method static synthetic access$200(Lcom/itextpdf/text/pdf/MultiColumnText;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->desiredHeight:F

    return v0
.end method

.method static synthetic access$300(Lcom/itextpdf/text/pdf/MultiColumnText;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/MultiColumnText;->getColumnBottom()F

    move-result v0

    return v0
.end method

.method private getColumnBottom()F
    .locals 3

    .prologue
    .line 439
    iget v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->desiredHeight:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->document:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfDocument;->bottom()F

    move-result v0

    .line 442
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->top:F

    iget v1, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->desiredHeight:F

    iget v2, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->totalHeight:F

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->document:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfDocument;->bottom()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0
.end method

.method private getHeight([F[F)F
    .locals 4
    .parameter "left"
    .parameter "right"

    .prologue
    .line 367
    const/4 v1, 0x1

    .line 368
    .local v1, max:F
    const v2, 0x7f7fffff

    .line 369
    .local v2, min:F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 370
    add-int/lit8 v3, v0, 0x1

    aget v3, p1, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 371
    add-int/lit8 v3, v0, 0x1

    aget v3, p1, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 369
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 373
    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v3, p2

    if-ge v0, v3, :cond_1

    .line 374
    add-int/lit8 v3, v0, 0x1

    aget v3, p2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 375
    add-int/lit8 v3, v0, 0x1

    aget v3, p2, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 373
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 377
    :cond_1
    sub-float v3, v1, v2

    return v3
.end method

.method private newPage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    const/high16 v1, -0x4080

    .line 346
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/MultiColumnText;->resetCurrentColumn()V

    .line 347
    iget v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->desiredHeight:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 348
    iput v1, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->nextY:F

    iput v1, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->top:F

    .line 353
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->totalHeight:F

    .line 354
    iget-object v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->document:Lcom/itextpdf/text/pdf/PdfDocument;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->document:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfDocument;->newPage()Z

    .line 357
    :cond_0
    return-void

    .line 351
    :cond_1
    iget v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->nextY:F

    iput v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->top:F

    goto :goto_0
.end method


# virtual methods
.method public addColumn([F[F)V
    .locals 2
    .parameter "left"
    .parameter "right"

    .prologue
    .line 187
    new-instance v0, Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;

    invoke-direct {v0, p0, p1, p2}, Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;-><init>(Lcom/itextpdf/text/pdf/MultiColumnText;[F[F)V

    .line 188
    .local v0, nextDef:Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;
    #calls: Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;->isSimple()Z
    invoke-static {v0}, Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;->access$000(Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->simple:Z

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->columnDefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    return-void
.end method

.method public addElement(Lcom/itextpdf/text/Element;)V
    .locals 5
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->simple:Z

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->columnText:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ColumnText;->addElement(Lcom/itextpdf/text/Element;)V

    .line 263
    .end local p1
    :goto_0
    return-void

    .line 256
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/itextpdf/text/Phrase;

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->columnText:Lcom/itextpdf/text/pdf/ColumnText;

    check-cast p1, Lcom/itextpdf/text/Phrase;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ColumnText;->addText(Lcom/itextpdf/text/Phrase;)V

    goto :goto_0

    .line 258
    .restart local p1
    :cond_1
    instance-of v0, p1, Lcom/itextpdf/text/Chunk;

    if-eqz v0, :cond_2

    .line 259
    iget-object v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->columnText:Lcom/itextpdf/text/pdf/ColumnText;

    check-cast p1, Lcom/itextpdf/text/Chunk;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ColumnText;->addText(Lcom/itextpdf/text/Chunk;)V

    goto :goto_0

    .line 261
    .restart local p1
    :cond_2
    new-instance v0, Lcom/itextpdf/text/DocumentException;

    const-string v1, "can.t.add.1.to.multicolumntext.with.complex.columns"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addRegularColumns(FFFI)V
    .locals 6
    .parameter "left"
    .parameter "right"
    .parameter "gutterWidth"
    .parameter "numColumns"

    .prologue
    .line 214
    move v1, p1

    .line 215
    .local v1, currX:F
    sub-float v3, p2, p1

    .line 216
    .local v3, width:F
    add-int/lit8 v4, p4, -0x1

    int-to-float v4, v4

    mul-float/2addr v4, p3

    sub-float v4, v3, v4

    int-to-float v5, p4

    div-float v0, v4, v5

    .line 217
    .local v0, colWidth:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p4, :cond_0

    .line 218
    add-float v4, v1, v0

    invoke-virtual {p0, v1, v4}, Lcom/itextpdf/text/pdf/MultiColumnText;->addSimpleColumn(FF)V

    .line 219
    add-float v4, v0, p3

    add-float/2addr v1, v4

    .line 217
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 221
    :cond_0
    return-void
.end method

.method public addSimpleColumn(FF)V
    .locals 2
    .parameter "left"
    .parameter "right"

    .prologue
    .line 200
    new-instance v0, Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;

    invoke-direct {v0, p0, p1, p2}, Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;-><init>(Lcom/itextpdf/text/pdf/MultiColumnText;FF)V

    .line 201
    .local v0, newCol:Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;
    iget-object v1, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->columnDefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    return-void
.end method

.method public addText(Lcom/itextpdf/text/Chunk;)V
    .locals 1
    .parameter "chunk"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->columnText:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ColumnText;->addText(Lcom/itextpdf/text/Chunk;)V

    .line 241
    return-void
.end method

.method public addText(Lcom/itextpdf/text/Phrase;)V
    .locals 1
    .parameter "phrase"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->columnText:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ColumnText;->addText(Lcom/itextpdf/text/Phrase;)V

    .line 231
    return-void
.end method

.method public getChunks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/Chunk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 413
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getChunks()Ljava/util/List;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/MultiColumnText;->getChunks()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentColumn()I
    .locals 2

    .prologue
    .line 464
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->columnsRightToLeft:Z

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->columnDefs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->currentColumn:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 467
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->currentColumn:I

    goto :goto_0
.end method

.method public isContent()Z
    .locals 1

    .prologue
    .line 421
    const/4 v0, 0x1

    return v0
.end method

.method public isNestable()Z
    .locals 1

    .prologue
    .line 429
    const/4 v0, 0x0

    return v0
.end method

.method public isOverflow()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->overflow:Z

    return v0
.end method

.method public nextColumn()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 452
    iget v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->currentColumn:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->columnDefs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->currentColumn:I

    .line 453
    iget v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->nextY:F

    iput v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->top:F

    .line 454
    iget v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->currentColumn:I

    if-nez v0, :cond_0

    .line 455
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/MultiColumnText;->newPage()V

    .line 457
    :cond_0
    return-void
.end method

.method public process(Lcom/itextpdf/text/ElementListener;)Z
    .locals 2
    .parameter "listener"

    .prologue
    .line 390
    :try_start_0
    invoke-interface {p1, p0}, Lcom/itextpdf/text/ElementListener;->add(Lcom/itextpdf/text/Element;)Z
    :try_end_0
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 392
    :goto_0
    return v1

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, de:Lcom/itextpdf/text/DocumentException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resetCurrentColumn()V
    .locals 1

    .prologue
    .line 474
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->currentColumn:I

    .line 475
    return-void
.end method

.method public setAlignment(I)V
    .locals 1
    .parameter "alignment"

    .prologue
    .line 527
    iget-object v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->columnText:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ColumnText;->setAlignment(I)V

    .line 528
    return-void
.end method

.method public setArabicOptions(I)V
    .locals 1
    .parameter "arabicOptions"

    .prologue
    .line 520
    iget-object v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->columnText:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ColumnText;->setArabicOptions(I)V

    .line 521
    return-void
.end method

.method public setColumnsRightToLeft(Z)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 494
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->columnsRightToLeft:Z

    .line 495
    return-void
.end method

.method public setRunDirection(I)V
    .locals 1
    .parameter "runDirection"

    .prologue
    .line 512
    iget-object v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->columnText:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ColumnText;->setRunDirection(I)V

    .line 513
    return-void
.end method

.method public setSpaceCharRatio(F)V
    .locals 1
    .parameter "spaceCharRatio"

    .prologue
    .line 505
    iget-object v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->columnText:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ColumnText;->setSpaceCharRatio(F)V

    .line 506
    return-void
.end method

.method public shiftCurrentColumn()Z
    .locals 2

    .prologue
    .line 482
    iget v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->currentColumn:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->columnDefs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 483
    iget v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->currentColumn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->currentColumn:I

    .line 484
    const/4 v0, 0x1

    .line 486
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public type()I
    .locals 1

    .prologue
    .line 403
    const/16 v0, 0x28

    return v0
.end method

.method public useColumnParams(Lcom/itextpdf/text/pdf/ColumnText;)V
    .locals 1
    .parameter "sourceColumn"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->columnText:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ColumnText;->setSimpleVars(Lcom/itextpdf/text/pdf/ColumnText;)V

    .line 177
    return-void
.end method

.method public write(Lcom/itextpdf/text/pdf/PdfContentByte;Lcom/itextpdf/text/pdf/PdfDocument;F)F
    .locals 15
    .parameter "canvas"
    .parameter "document"
    .parameter "documentY"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 276
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->document:Lcom/itextpdf/text/pdf/PdfDocument;

    .line 277
    iget-object v10, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->columnText:Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/itextpdf/text/pdf/ColumnText;->setCanvas(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 278
    iget-object v10, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->columnDefs:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 279
    new-instance v10, Lcom/itextpdf/text/DocumentException;

    const-string v11, "multicolumntext.has.no.columns"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v11, v12}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 281
    :cond_0
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->overflow:Z

    .line 282
    const/4 v2, 0x0

    .line 283
    .local v2, currentHeight:F
    const/4 v4, 0x0

    .line 285
    .local v4, done:Z
    :goto_0
    if-nez v4, :cond_8

    .line 286
    :try_start_0
    iget v10, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->top:F

    const/high16 v11, -0x4080

    cmpl-float v10, v10, v11

    if-nez v10, :cond_2

    .line 287
    const/4 v10, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lcom/itextpdf/text/pdf/PdfDocument;->getVerticalPosition(Z)F

    move-result v10

    iput v10, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->top:F

    .line 292
    :cond_1
    :goto_1
    iget-object v10, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->columnDefs:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/MultiColumnText;->getCurrentColumn()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;

    .line 293
    .local v1, currentDef:Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;
    iget-object v10, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->columnText:Lcom/itextpdf/text/pdf/ColumnText;

    iget v11, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->top:F

    invoke-virtual {v10, v11}, Lcom/itextpdf/text/pdf/ColumnText;->setYLine(F)V

    .line 295
    const/4 v10, 0x4

    invoke-virtual {v1, v10}, Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;->resolvePositions(I)[F

    move-result-object v7

    .line 296
    .local v7, left:[F
    const/16 v10, 0x8

    invoke-virtual {v1, v10}, Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;->resolvePositions(I)[F

    move-result-object v9

    .line 297
    .local v9, right:[F
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/text/pdf/PdfDocument;->isMarginMirroring()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/text/pdf/PdfDocument;->getPageNumber()I

    move-result v10

    rem-int/lit8 v10, v10, 0x2

    if-nez v10, :cond_4

    .line 298
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/text/pdf/PdfDocument;->rightMargin()F

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/text/pdf/PdfDocument;->left()F

    move-result v11

    sub-float v3, v10, v11

    .line 299
    .local v3, delta:F
    invoke-virtual {v7}, [F->clone()Ljava/lang/Object;

    move-result-object v7

    .end local v7           #left:[F
    check-cast v7, [F

    .line 300
    .restart local v7       #left:[F
    invoke-virtual {v9}, [F->clone()Ljava/lang/Object;

    move-result-object v9

    .end local v9           #right:[F
    check-cast v9, [F

    .line 301
    .restart local v9       #right:[F
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    array-length v10, v7

    if-ge v6, v10, :cond_3

    .line 302
    aget v10, v7, v6

    sub-float/2addr v10, v3

    aput v10, v7, v6

    .line 301
    add-int/lit8 v6, v6, 0x2

    goto :goto_2

    .line 289
    .end local v1           #currentDef:Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;
    .end local v3           #delta:F
    .end local v6           #i:I
    .end local v7           #left:[F
    .end local v9           #right:[F
    :cond_2
    iget v10, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->nextY:F

    const/high16 v11, -0x4080

    cmpl-float v10, v10, v11

    if-nez v10, :cond_1

    .line 290
    const/4 v10, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lcom/itextpdf/text/pdf/PdfDocument;->getVerticalPosition(Z)F

    move-result v10

    iput v10, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->nextY:F
    :try_end_0
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 335
    :catch_0
    move-exception v5

    .line 336
    .local v5, ex:Lcom/itextpdf/text/DocumentException;
    invoke-virtual {v5}, Lcom/itextpdf/text/DocumentException;->printStackTrace()V

    .line 337
    throw v5

    .line 304
    .end local v5           #ex:Lcom/itextpdf/text/DocumentException;
    .restart local v1       #currentDef:Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;
    .restart local v3       #delta:F
    .restart local v6       #i:I
    .restart local v7       #left:[F
    .restart local v9       #right:[F
    :cond_3
    const/4 v6, 0x0

    :goto_3
    :try_start_1
    array-length v10, v9

    if-ge v6, v10, :cond_4

    .line 305
    aget v10, v9, v6

    sub-float/2addr v10, v3

    aput v10, v9, v6

    .line 304
    add-int/lit8 v6, v6, 0x2

    goto :goto_3

    .line 309
    .end local v3           #delta:F
    .end local v6           #i:I
    :cond_4
    invoke-direct {p0, v7, v9}, Lcom/itextpdf/text/pdf/MultiColumnText;->getHeight([F[F)F

    move-result v10

    invoke-static {v2, v10}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 311
    #calls: Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;->isSimple()Z
    invoke-static {v1}, Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;->access$000(Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 312
    iget-object v10, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->columnText:Lcom/itextpdf/text/pdf/ColumnText;

    const/4 v11, 0x2

    aget v11, v7, v11

    const/4 v12, 0x3

    aget v12, v7, v12

    const/4 v13, 0x0

    aget v13, v9, v13

    const/4 v14, 0x1

    aget v14, v9, v14

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/itextpdf/text/pdf/ColumnText;->setSimpleColumn(FFFF)V

    .line 317
    :goto_4
    iget-object v10, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->columnText:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/ColumnText;->go()I

    move-result v8

    .line 318
    .local v8, result:I
    and-int/lit8 v10, v8, 0x1

    if-eqz v10, :cond_6

    .line 319
    const/4 v4, 0x1

    .line 320
    iget-object v10, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->columnText:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/ColumnText;->getYLine()F

    move-result v10

    iput v10, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->top:F

    goto/16 :goto_0

    .line 314
    .end local v8           #result:I
    :cond_5
    iget-object v10, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->columnText:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v10, v7, v9}, Lcom/itextpdf/text/pdf/ColumnText;->setColumns([F[F)V

    goto :goto_4

    .line 321
    .restart local v8       #result:I
    :cond_6
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/MultiColumnText;->shiftCurrentColumn()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 322
    iget v10, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->nextY:F

    iput v10, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->top:F

    goto/16 :goto_0

    .line 324
    :cond_7
    iget v10, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->totalHeight:F

    add-float/2addr v10, v2

    iput v10, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->totalHeight:F

    .line 325
    iget v10, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->desiredHeight:F

    const/high16 v11, -0x4080

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_a

    iget v10, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->totalHeight:F

    iget v11, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->desiredHeight:F

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_a

    .line 326
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->overflow:Z
    :try_end_1
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 339
    .end local v1           #currentDef:Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;
    .end local v7           #left:[F
    .end local v8           #result:I
    .end local v9           #right:[F
    :cond_8
    iget v10, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->desiredHeight:F

    const/high16 v11, -0x4080

    cmpl-float v10, v10, v11

    if-nez v10, :cond_9

    iget-object v10, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->columnDefs:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9

    .line 340
    iget-object v10, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->columnText:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/ColumnText;->getYLine()F

    move-result v10

    sub-float v2, p3, v10

    .line 342
    :cond_9
    return v2

    .line 329
    .restart local v1       #currentDef:Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;
    .restart local v7       #left:[F
    .restart local v8       #result:I
    .restart local v9       #right:[F
    :cond_a
    :try_start_2
    iget v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText;->nextY:F

    move/from16 p3, v0

    .line 330
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/MultiColumnText;->newPage()V
    :try_end_2
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 331
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

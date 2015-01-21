.class public Lcom/itextpdf/text/pdf/PdfLine;
.super Ljava/lang/Object;
.source "PdfLine.java"


# instance fields
.field protected alignment:I

.field protected height:F

.field protected isRTL:Z

.field protected left:F

.field protected line:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfChunk;",
            ">;"
        }
    .end annotation
.end field

.field protected listSymbol:Lcom/itextpdf/text/Chunk;

.field protected newlineSplit:Z

.field protected originalWidth:F

.field protected symbolIndent:F

.field protected width:F


# direct methods
.method constructor <init>(FFFIZLjava/util/ArrayList;Z)V
    .locals 2
    .parameter "left"
    .parameter "originalWidth"
    .parameter "remainingWidth"
    .parameter "alignment"
    .parameter "newlineSplit"
    .parameter
    .parameter "isRTL"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFIZ",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfChunk;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p6, line:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfChunk;>;"
    const/4 v1, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->listSymbol:Lcom/itextpdf/text/Chunk;

    .line 85
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfLine;->newlineSplit:Z

    .line 90
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfLine;->isRTL:Z

    .line 123
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfLine;->left:F

    .line 124
    iput p2, p0, Lcom/itextpdf/text/pdf/PdfLine;->originalWidth:F

    .line 125
    iput p3, p0, Lcom/itextpdf/text/pdf/PdfLine;->width:F

    .line 126
    iput p4, p0, Lcom/itextpdf/text/pdf/PdfLine;->alignment:I

    .line 127
    iput-object p6, p0, Lcom/itextpdf/text/pdf/PdfLine;->line:Ljava/util/ArrayList;

    .line 128
    iput-boolean p5, p0, Lcom/itextpdf/text/pdf/PdfLine;->newlineSplit:Z

    .line 129
    iput-boolean p7, p0, Lcom/itextpdf/text/pdf/PdfLine;->isRTL:Z

    .line 130
    return-void
.end method

.method constructor <init>(FFIF)V
    .locals 2
    .parameter "left"
    .parameter "right"
    .parameter "alignment"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->listSymbol:Lcom/itextpdf/text/Chunk;

    .line 85
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfLine;->newlineSplit:Z

    .line 90
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfLine;->isRTL:Z

    .line 104
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfLine;->left:F

    .line 105
    sub-float v0, p2, p1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->width:F

    .line 106
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->width:F

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->originalWidth:F

    .line 107
    iput p3, p0, Lcom/itextpdf/text/pdf/PdfLine;->alignment:I

    .line 108
    iput p4, p0, Lcom/itextpdf/text/pdf/PdfLine;->height:F

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->line:Ljava/util/ArrayList;

    .line 110
    return-void
.end method

.method private addToLine(Lcom/itextpdf/text/pdf/PdfChunk;)V
    .locals 4
    .parameter "chunk"

    .prologue
    .line 194
    iget-boolean v2, p1, Lcom/itextpdf/text/pdf/PdfChunk;->changeLeading:Z

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfChunk;->isImage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfChunk;->getImage()Lcom/itextpdf/text/Image;

    move-result-object v1

    .line 196
    .local v1, img:Lcom/itextpdf/text/Image;
    invoke-virtual {v1}, Lcom/itextpdf/text/Image;->getScaledHeight()F

    move-result v2

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfChunk;->getImageOffsetY()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v1}, Lcom/itextpdf/text/Image;->getBorderWidthTop()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v1}, Lcom/itextpdf/text/Image;->getSpacingBefore()F

    move-result v3

    add-float v0, v2, v3

    .line 198
    .local v0, f:F
    iget v2, p0, Lcom/itextpdf/text/pdf/PdfLine;->height:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->height:F

    .line 200
    .end local v0           #f:F
    .end local v1           #img:Lcom/itextpdf/text/Image;
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfLine;->line:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    return-void
.end method


# virtual methods
.method add(Lcom/itextpdf/text/pdf/PdfChunk;)Lcom/itextpdf/text/pdf/PdfChunk;
    .locals 8
    .parameter "chunk"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 145
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfChunk;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move-object v1, v6

    .line 190
    :goto_0
    return-object v1

    .line 150
    :cond_1
    iget v4, p0, Lcom/itextpdf/text/pdf/PdfLine;->width:F

    invoke-virtual {p1, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->split(F)Lcom/itextpdf/text/pdf/PdfChunk;

    move-result-object v1

    .line 151
    .local v1, overflow:Lcom/itextpdf/text/pdf/PdfChunk;
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfChunk;->isNewlineSplit()Z

    move-result v4

    if-nez v4, :cond_2

    if-nez v1, :cond_3

    :cond_2
    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/itextpdf/text/pdf/PdfLine;->newlineSplit:Z

    .line 152
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfChunk;->isTab()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 153
    const-string v4, "TAB"

    invoke-virtual {p1, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v2, v4

    check-cast v2, [Ljava/lang/Object;

    .line 154
    .local v2, tab:[Ljava/lang/Object;
    aget-object v4, v2, v5

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 155
    .local v3, tabPosition:F
    const/4 v4, 0x2

    aget-object v4, v2, v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 156
    .local v0, newline:Z
    if-eqz v0, :cond_4

    iget v4, p0, Lcom/itextpdf/text/pdf/PdfLine;->originalWidth:F

    iget v5, p0, Lcom/itextpdf/text/pdf/PdfLine;->width:F

    sub-float/2addr v4, v5

    cmpg-float v4, v3, v4

    if-gez v4, :cond_4

    move-object v1, p1

    .line 157
    goto :goto_0

    .line 151
    .end local v0           #newline:Z
    .end local v2           #tab:[Ljava/lang/Object;
    .end local v3           #tabPosition:F
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 159
    .restart local v0       #newline:Z
    .restart local v2       #tab:[Ljava/lang/Object;
    .restart local v3       #tabPosition:F
    :cond_4
    iget v4, p0, Lcom/itextpdf/text/pdf/PdfLine;->originalWidth:F

    sub-float/2addr v4, v3

    iput v4, p0, Lcom/itextpdf/text/pdf/PdfLine;->width:F

    .line 160
    iget v4, p0, Lcom/itextpdf/text/pdf/PdfLine;->left:F

    invoke-virtual {p1, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->adjustLeft(F)V

    .line 161
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/PdfLine;->addToLine(Lcom/itextpdf/text/pdf/PdfChunk;)V

    goto :goto_0

    .line 164
    .end local v0           #newline:Z
    .end local v2           #tab:[Ljava/lang/Object;
    .end local v3           #tabPosition:F
    :cond_5
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfChunk;->length()I

    move-result v4

    if-gtz v4, :cond_6

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfChunk;->isImage()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 165
    :cond_6
    if-eqz v1, :cond_7

    .line 166
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfChunk;->trimLastSpace()F

    .line 167
    :cond_7
    iget v4, p0, Lcom/itextpdf/text/pdf/PdfLine;->width:F

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfChunk;->width()F

    move-result v5

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/itextpdf/text/pdf/PdfLine;->width:F

    .line 168
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/PdfLine;->addToLine(Lcom/itextpdf/text/pdf/PdfChunk;)V

    goto :goto_0

    .line 172
    :cond_8
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfLine;->line:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, v5, :cond_b

    .line 173
    move-object p1, v1

    .line 174
    iget v4, p0, Lcom/itextpdf/text/pdf/PdfLine;->width:F

    invoke-virtual {p1, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->truncate(F)Lcom/itextpdf/text/pdf/PdfChunk;

    move-result-object v1

    .line 175
    iget v4, p0, Lcom/itextpdf/text/pdf/PdfLine;->width:F

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfChunk;->width()F

    move-result v5

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/itextpdf/text/pdf/PdfLine;->width:F

    .line 176
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfChunk;->length()I

    move-result v4

    if-lez v4, :cond_9

    .line 177
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/PdfLine;->addToLine(Lcom/itextpdf/text/pdf/PdfChunk;)V

    goto/16 :goto_0

    .line 182
    :cond_9
    if-eqz v1, :cond_a

    .line 183
    invoke-direct {p0, v1}, Lcom/itextpdf/text/pdf/PdfLine;->addToLine(Lcom/itextpdf/text/pdf/PdfChunk;)V

    :cond_a
    move-object v1, v6

    .line 184
    goto/16 :goto_0

    .line 188
    :cond_b
    iget v5, p0, Lcom/itextpdf/text/pdf/PdfLine;->width:F

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfLine;->line:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfLine;->line:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfChunk;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfChunk;->trimLastSpace()F

    move-result v4

    add-float/2addr v4, v5

    iput v4, p0, Lcom/itextpdf/text/pdf/PdfLine;->width:F

    goto/16 :goto_0
.end method

.method public getAscender()F
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 515
    const/4 v0, 0x0

    .line 516
    .local v0, ascender:F
    const/4 v3, 0x0

    .local v3, k:I
    :goto_0
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfLine;->line:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 517
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfLine;->line:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfChunk;

    .line 518
    .local v1, ck:Lcom/itextpdf/text/pdf/PdfChunk;
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfChunk;->isImage()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 519
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfChunk;->getImage()Lcom/itextpdf/text/Image;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/text/Image;->getScaledHeight()F

    move-result v6

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfChunk;->getImageOffsetY()F

    move-result v7

    add-float/2addr v6, v7

    invoke-static {v0, v6}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 516
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 521
    :cond_0
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfChunk;->font()Lcom/itextpdf/text/pdf/PdfFont;

    move-result-object v2

    .line 522
    .local v2, font:Lcom/itextpdf/text/pdf/PdfFont;
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfChunk;->getTextRise()F

    move-result v4

    .line 523
    .local v4, textRise:F
    cmpl-float v6, v4, v5

    if-lez v6, :cond_1

    .end local v4           #textRise:F
    :goto_2
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfFont;->getFont()Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfFont;->size()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v6

    add-float/2addr v6, v4

    invoke-static {v0, v6}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_1

    .restart local v4       #textRise:F
    :cond_1
    move v4, v5

    goto :goto_2

    .line 526
    .end local v1           #ck:Lcom/itextpdf/text/pdf/PdfChunk;
    .end local v2           #font:Lcom/itextpdf/text/pdf/PdfFont;
    .end local v4           #textRise:F
    :cond_2
    return v0
.end method

.method public getChunk(I)Lcom/itextpdf/text/pdf/PdfChunk;
    .locals 1
    .parameter "idx"

    .prologue
    .line 410
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->line:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 411
    :cond_0
    const/4 v0, 0x0

    .line 412
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->line:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfChunk;

    goto :goto_0
.end method

.method public getDescender()F
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 535
    const/4 v1, 0x0

    .line 536
    .local v1, descender:F
    const/4 v3, 0x0

    .local v3, k:I
    :goto_0
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfLine;->line:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 537
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfLine;->line:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfChunk;

    .line 538
    .local v0, ck:Lcom/itextpdf/text/pdf/PdfChunk;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfChunk;->isImage()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 539
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfChunk;->getImageOffsetY()F

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 536
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 541
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfChunk;->font()Lcom/itextpdf/text/pdf/PdfFont;

    move-result-object v2

    .line 542
    .local v2, font:Lcom/itextpdf/text/pdf/PdfFont;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfChunk;->getTextRise()F

    move-result v4

    .line 543
    .local v4, textRise:F
    cmpg-float v6, v4, v5

    if-gez v6, :cond_1

    .end local v4           #textRise:F
    :goto_2
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfFont;->getFont()Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfFont;->size()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v6

    add-float/2addr v6, v4

    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_1

    .restart local v4       #textRise:F
    :cond_1
    move v4, v5

    goto :goto_2

    .line 546
    .end local v0           #ck:Lcom/itextpdf/text/pdf/PdfChunk;
    .end local v2           #font:Lcom/itextpdf/text/pdf/PdfFont;
    .end local v4           #textRise:F
    :cond_2
    return v1
.end method

.method public getLastStrokeChunk()I
    .locals 3

    .prologue
    .line 395
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfLine;->line:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 396
    .local v1, lastIdx:I
    :goto_0
    if-ltz v1, :cond_0

    .line 397
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfLine;->line:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfChunk;

    .line 398
    .local v0, chunk:Lcom/itextpdf/text/pdf/PdfChunk;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfChunk;->isStroked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 401
    .end local v0           #chunk:Lcom/itextpdf/text/pdf/PdfChunk;
    :cond_0
    return v1

    .line 396
    .restart local v0       #chunk:Lcom/itextpdf/text/pdf/PdfChunk;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public getLineLengthUtf32()I
    .locals 4

    .prologue
    .line 375
    const/4 v2, 0x0

    .line 376
    .local v2, total:I
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfLine;->line:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfChunk;

    .line 377
    .local v0, element:Lcom/itextpdf/text/pdf/PdfChunk;
    check-cast v0, Lcom/itextpdf/text/pdf/PdfChunk;

    .end local v0           #element:Lcom/itextpdf/text/pdf/PdfChunk;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfChunk;->lengthUtf32()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 379
    :cond_0
    return v2
.end method

.method getMaxSize()[F
    .locals 8

    .prologue
    .line 450
    const/4 v5, 0x0

    .line 451
    .local v5, normal_leading:F
    const v2, -0x39e3c000

    .line 453
    .local v2, image_leading:F
    const/4 v4, 0x0

    .local v4, k:I
    :goto_0
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfLine;->line:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 454
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfLine;->line:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfChunk;

    .line 455
    .local v0, chunk:Lcom/itextpdf/text/pdf/PdfChunk;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfChunk;->isImage()Z

    move-result v6

    if-nez v6, :cond_1

    .line 456
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfChunk;->font()Lcom/itextpdf/text/pdf/PdfFont;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfFont;->size()F

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 453
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 459
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfChunk;->getImage()Lcom/itextpdf/text/Image;

    move-result-object v3

    .line 460
    .local v3, img:Lcom/itextpdf/text/Image;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfChunk;->changeLeading()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 461
    invoke-virtual {v3}, Lcom/itextpdf/text/Image;->getScaledHeight()F

    move-result v6

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfChunk;->getImageOffsetY()F

    move-result v7

    add-float/2addr v6, v7

    invoke-virtual {v3}, Lcom/itextpdf/text/Image;->getSpacingBefore()F

    move-result v7

    add-float v1, v6, v7

    .line 462
    .local v1, height:F
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    goto :goto_1

    .line 466
    .end local v0           #chunk:Lcom/itextpdf/text/pdf/PdfChunk;
    .end local v1           #height:F
    .end local v3           #img:Lcom/itextpdf/text/Image;
    :cond_2
    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput v5, v6, v7

    const/4 v7, 0x1

    aput v2, v6, v7

    return-object v6
.end method

.method public getOriginalWidth()F
    .locals 1

    .prologue
    .line 420
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->originalWidth:F

    return v0
.end method

.method getSeparatorCount()I
    .locals 5

    .prologue
    .line 480
    const/4 v3, 0x0

    .line 482
    .local v3, s:I
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfLine;->line:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfChunk;

    .local v1, element:Lcom/itextpdf/text/pdf/PdfChunk;
    move-object v0, v1

    .line 483
    check-cast v0, Lcom/itextpdf/text/pdf/PdfChunk;

    .line 484
    .local v0, ck:Lcom/itextpdf/text/pdf/PdfChunk;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfChunk;->isTab()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 485
    const/4 v3, -0x1

    .line 491
    .end local v0           #ck:Lcom/itextpdf/text/pdf/PdfChunk;
    .end local v1           #element:Lcom/itextpdf/text/pdf/PdfChunk;
    .end local v3           #s:I
    :cond_1
    return v3

    .line 487
    .restart local v0       #ck:Lcom/itextpdf/text/pdf/PdfChunk;
    .restart local v1       #element:Lcom/itextpdf/text/pdf/PdfChunk;
    .restart local v3       #s:I
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfChunk;->isHorizontalSeparator()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 488
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getWidthCorrected(FF)F
    .locals 4
    .parameter "charSpacing"
    .parameter "wordSpacing"

    .prologue
    .line 501
    const/4 v2, 0x0

    .line 502
    .local v2, total:F
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfLine;->line:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 503
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfLine;->line:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfChunk;

    .line 504
    .local v0, ck:Lcom/itextpdf/text/pdf/PdfChunk;
    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfChunk;->getWidthCorrected(FF)F

    move-result v3

    add-float/2addr v2, v3

    .line 502
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 506
    .end local v0           #ck:Lcom/itextpdf/text/pdf/PdfChunk;
    :cond_0
    return v2
.end method

.method public hasToBeJustified()Z
    .locals 2

    .prologue
    .line 270
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->alignment:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->alignment:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->width:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method height()F
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->height:F

    return v0
.end method

.method indentLeft()F
    .locals 3

    .prologue
    const/high16 v2, 0x4000

    .line 242
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->isRTL:Z

    if-eqz v0, :cond_0

    .line 243
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->alignment:I

    packed-switch v0, :pswitch_data_0

    .line 249
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->left:F

    .line 260
    :goto_0
    return v0

    .line 245
    :pswitch_0
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->left:F

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfLine;->width:F

    add-float/2addr v0, v1

    goto :goto_0

    .line 247
    :pswitch_1
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->left:F

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfLine;->width:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_0

    .line 252
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfLine;->getSeparatorCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 253
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->alignment:I

    packed-switch v0, :pswitch_data_1

    .line 260
    :cond_1
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->left:F

    goto :goto_0

    .line 255
    :pswitch_2
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->left:F

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfLine;->width:F

    add-float/2addr v0, v1

    goto :goto_0

    .line 257
    :pswitch_3
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->left:F

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfLine;->width:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_0

    .line 243
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 253
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public isNewlineSplit()Z
    .locals 2

    .prologue
    .line 387
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->newlineSplit:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->alignment:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRTL()Z
    .locals 1

    .prologue
    .line 470
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->isRTL:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/itextpdf/text/pdf/PdfChunk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->line:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public listIndent()F
    .locals 1

    .prologue
    .line 351
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->symbolIndent:F

    return v0
.end method

.method public listSymbol()Lcom/itextpdf/text/Chunk;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->listSymbol:Lcom/itextpdf/text/Chunk;

    return-object v0
.end method

.method numberOfSpaces()I
    .locals 6

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfLine;->toString()Ljava/lang/String;

    move-result-object v3

    .line 311
    .local v3, string:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 312
    .local v1, length:I
    const/4 v2, 0x0

    .line 313
    .local v2, numberOfSpaces:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 314
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_0

    .line 315
    add-int/lit8 v2, v2, 0x1

    .line 313
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 318
    :cond_1
    return v2
.end method

.method public resetAlignment()V
    .locals 2

    .prologue
    .line 281
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->alignment:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 282
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->alignment:I

    .line 284
    :cond_0
    return-void
.end method

.method setExtraIndent(F)V
    .locals 1
    .parameter "extra"

    .prologue
    .line 288
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->left:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->left:F

    .line 289
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->width:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->width:F

    .line 290
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->originalWidth:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->originalWidth:F

    .line 291
    return-void
.end method

.method public setListItem(Lcom/itextpdf/text/ListItem;)V
    .locals 1
    .parameter "listItem"

    .prologue
    .line 330
    invoke-virtual {p1}, Lcom/itextpdf/text/ListItem;->getListSymbol()Lcom/itextpdf/text/Chunk;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->listSymbol:Lcom/itextpdf/text/Chunk;

    .line 331
    invoke-virtual {p1}, Lcom/itextpdf/text/ListItem;->getIndentationLeft()F

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->symbolIndent:F

    .line 332
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->line:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 362
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 363
    .local v2, tmp:Ljava/lang/StringBuffer;
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfLine;->line:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfChunk;

    .line 364
    .local v1, pdfChunk:Lcom/itextpdf/text/pdf/PdfChunk;
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfChunk;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 366
    .end local v1           #pdfChunk:Lcom/itextpdf/text/pdf/PdfChunk;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method widthLeft()F
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->width:F

    return v0
.end method

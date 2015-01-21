.class public Lcom/itextpdf/text/pdf/VerticalText;
.super Ljava/lang/Object;
.source "VerticalText.java"


# static fields
.field public static final NO_MORE_COLUMN:I = 0x2

.field public static final NO_MORE_TEXT:I = 0x1


# instance fields
.field protected alignment:I

.field protected chunks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfChunk;",
            ">;"
        }
    .end annotation
.end field

.field private curCharSpace:Ljava/lang/Float;

.field protected currentChunkMarker:I

.field protected currentStandbyChunk:Lcom/itextpdf/text/pdf/PdfChunk;

.field protected height:F

.field protected leading:F

.field protected maxLines:I

.field protected splittedChunkText:Ljava/lang/String;

.field protected startX:F

.field protected startY:F

.field protected text:Lcom/itextpdf/text/pdf/PdfContentByte;


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfContentByte;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/VerticalText;->chunks:Ljava/util/ArrayList;

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/pdf/VerticalText;->alignment:I

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/VerticalText;->currentChunkMarker:I

    .line 257
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/VerticalText;->curCharSpace:Ljava/lang/Float;

    .line 110
    iput-object p1, p0, Lcom/itextpdf/text/pdf/VerticalText;->text:Lcom/itextpdf/text/pdf/PdfContentByte;

    .line 111
    return-void
.end method


# virtual methods
.method public addText(Lcom/itextpdf/text/Chunk;)V
    .locals 3
    .parameter "chunk"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/itextpdf/text/pdf/VerticalText;->chunks:Ljava/util/ArrayList;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfChunk;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/itextpdf/text/pdf/PdfChunk;-><init>(Lcom/itextpdf/text/Chunk;Lcom/itextpdf/text/pdf/PdfAction;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    return-void
.end method

.method public addText(Lcom/itextpdf/text/Phrase;)V
    .locals 5
    .parameter "phrase"

    .prologue
    .line 118
    invoke-virtual {p1}, Lcom/itextpdf/text/Phrase;->getChunks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/Chunk;

    .line 119
    .local v0, c:Lcom/itextpdf/text/Chunk;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/VerticalText;->chunks:Ljava/util/ArrayList;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfChunk;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;-><init>(Lcom/itextpdf/text/Chunk;Lcom/itextpdf/text/pdf/PdfAction;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    .end local v0           #c:Lcom/itextpdf/text/Chunk;
    :cond_0
    return-void
.end method

.method protected createLine(F)Lcom/itextpdf/text/pdf/PdfLine;
    .locals 5
    .parameter "width"

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 166
    iget-object v3, p0, Lcom/itextpdf/text/pdf/VerticalText;->chunks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-object v0

    .line 168
    :cond_1
    iput-object v0, p0, Lcom/itextpdf/text/pdf/VerticalText;->splittedChunkText:Ljava/lang/String;

    .line 169
    iput-object v0, p0, Lcom/itextpdf/text/pdf/VerticalText;->currentStandbyChunk:Lcom/itextpdf/text/pdf/PdfChunk;

    .line 170
    new-instance v0, Lcom/itextpdf/text/pdf/PdfLine;

    iget v3, p0, Lcom/itextpdf/text/pdf/VerticalText;->alignment:I

    invoke-direct {v0, v4, p1, v3, v4}, Lcom/itextpdf/text/pdf/PdfLine;-><init>(FFIF)V

    .line 172
    .local v0, line:Lcom/itextpdf/text/pdf/PdfLine;
    const/4 v3, 0x0

    iput v3, p0, Lcom/itextpdf/text/pdf/VerticalText;->currentChunkMarker:I

    :goto_1
    iget v3, p0, Lcom/itextpdf/text/pdf/VerticalText;->currentChunkMarker:I

    iget-object v4, p0, Lcom/itextpdf/text/pdf/VerticalText;->chunks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 173
    iget-object v3, p0, Lcom/itextpdf/text/pdf/VerticalText;->chunks:Ljava/util/ArrayList;

    iget v4, p0, Lcom/itextpdf/text/pdf/VerticalText;->currentChunkMarker:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfChunk;

    .line 174
    .local v1, original:Lcom/itextpdf/text/pdf/PdfChunk;
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfChunk;->toString()Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, total:Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfLine;->add(Lcom/itextpdf/text/pdf/PdfChunk;)Lcom/itextpdf/text/pdf/PdfChunk;

    move-result-object v3

    iput-object v3, p0, Lcom/itextpdf/text/pdf/VerticalText;->currentStandbyChunk:Lcom/itextpdf/text/pdf/PdfChunk;

    .line 176
    iget-object v3, p0, Lcom/itextpdf/text/pdf/VerticalText;->currentStandbyChunk:Lcom/itextpdf/text/pdf/PdfChunk;

    if-eqz v3, :cond_2

    .line 177
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfChunk;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/itextpdf/text/pdf/VerticalText;->splittedChunkText:Ljava/lang/String;

    .line 178
    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfChunk;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_2
    iget v3, p0, Lcom/itextpdf/text/pdf/VerticalText;->currentChunkMarker:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/itextpdf/text/pdf/VerticalText;->currentChunkMarker:I

    goto :goto_1
.end method

.method public getAlignment()I
    .locals 1

    .prologue
    .line 352
    iget v0, p0, Lcom/itextpdf/text/pdf/VerticalText;->alignment:I

    return v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 329
    iget v0, p0, Lcom/itextpdf/text/pdf/VerticalText;->height:F

    return v0
.end method

.method public getLeading()F
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/itextpdf/text/pdf/VerticalText;->leading:F

    return v0
.end method

.method public getMaxLines()I
    .locals 1

    .prologue
    .line 315
    iget v0, p0, Lcom/itextpdf/text/pdf/VerticalText;->maxLines:I

    return v0
.end method

.method public getOriginX()F
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lcom/itextpdf/text/pdf/VerticalText;->startX:F

    return v0
.end method

.method public getOriginY()F
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Lcom/itextpdf/text/pdf/VerticalText;->startY:F

    return v0
.end method

.method public go()I
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/VerticalText;->go(Z)I

    move-result v0

    return v0
.end method

.method public go(Z)I
    .locals 8
    .parameter "simulate"

    .prologue
    .line 218
    const/4 v0, 0x0

    .line 219
    .local v0, dirty:Z
    const/4 v1, 0x0

    .line 220
    .local v1, graphics:Lcom/itextpdf/text/pdf/PdfContentByte;
    iget-object v4, p0, Lcom/itextpdf/text/pdf/VerticalText;->text:Lcom/itextpdf/text/pdf/PdfContentByte;

    if-eqz v4, :cond_3

    .line 221
    iget-object v4, p0, Lcom/itextpdf/text/pdf/VerticalText;->text:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->getDuplicate()Lcom/itextpdf/text/pdf/PdfContentByte;

    move-result-object v1

    .line 225
    :cond_0
    const/4 v3, 0x0

    .line 227
    .local v3, status:I
    :goto_0
    iget v4, p0, Lcom/itextpdf/text/pdf/VerticalText;->maxLines:I

    if-gtz v4, :cond_4

    .line 228
    const/4 v3, 0x2

    .line 229
    iget-object v4, p0, Lcom/itextpdf/text/pdf/VerticalText;->chunks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 230
    or-int/lit8 v3, v3, 0x1

    .line 250
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 251
    iget-object v4, p0, Lcom/itextpdf/text/pdf/VerticalText;->text:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->endText()V

    .line 252
    iget-object v4, p0, Lcom/itextpdf/text/pdf/VerticalText;->text:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v4, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->add(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 254
    :cond_2
    return v3

    .line 223
    .end local v3           #status:I
    :cond_3
    if-nez p1, :cond_0

    .line 224
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "verticaltext.go.with.simulate.eq.eq.false.and.text.eq.eq.null"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 233
    .restart local v3       #status:I
    :cond_4
    iget-object v4, p0, Lcom/itextpdf/text/pdf/VerticalText;->chunks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 234
    const/4 v3, 0x1

    .line 235
    goto :goto_1

    .line 237
    :cond_5
    iget v4, p0, Lcom/itextpdf/text/pdf/VerticalText;->height:F

    invoke-virtual {p0, v4}, Lcom/itextpdf/text/pdf/VerticalText;->createLine(F)Lcom/itextpdf/text/pdf/PdfLine;

    move-result-object v2

    .line 238
    .local v2, line:Lcom/itextpdf/text/pdf/PdfLine;
    if-nez p1, :cond_6

    if-nez v0, :cond_6

    .line 239
    iget-object v4, p0, Lcom/itextpdf/text/pdf/VerticalText;->text:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->beginText()V

    .line 240
    const/4 v0, 0x1

    .line 242
    :cond_6
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/VerticalText;->shortenChunkArray()V

    .line 243
    if-nez p1, :cond_7

    .line 244
    iget-object v4, p0, Lcom/itextpdf/text/pdf/VerticalText;->text:Lcom/itextpdf/text/pdf/PdfContentByte;

    iget v5, p0, Lcom/itextpdf/text/pdf/VerticalText;->startX:F

    iget v6, p0, Lcom/itextpdf/text/pdf/VerticalText;->startY:F

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfLine;->indentLeft()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->setTextMatrix(FF)V

    .line 245
    iget-object v4, p0, Lcom/itextpdf/text/pdf/VerticalText;->text:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {p0, v2, v4, v1}, Lcom/itextpdf/text/pdf/VerticalText;->writeLine(Lcom/itextpdf/text/pdf/PdfLine;Lcom/itextpdf/text/pdf/PdfContentByte;Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 247
    :cond_7
    iget v4, p0, Lcom/itextpdf/text/pdf/VerticalText;->maxLines:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/itextpdf/text/pdf/VerticalText;->maxLines:I

    .line 248
    iget v4, p0, Lcom/itextpdf/text/pdf/VerticalText;->startX:F

    iget v5, p0, Lcom/itextpdf/text/pdf/VerticalText;->leading:F

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/itextpdf/text/pdf/VerticalText;->startX:F

    goto :goto_0
.end method

.method public setAlignment(I)V
    .locals 0
    .parameter "alignment"

    .prologue
    .line 344
    iput p1, p0, Lcom/itextpdf/text/pdf/VerticalText;->alignment:I

    .line 345
    return-void
.end method

.method public setHeight(F)V
    .locals 0
    .parameter "height"

    .prologue
    .line 336
    iput p1, p0, Lcom/itextpdf/text/pdf/VerticalText;->height:F

    .line 337
    return-void
.end method

.method public setLeading(F)V
    .locals 0
    .parameter "leading"

    .prologue
    .line 150
    iput p1, p0, Lcom/itextpdf/text/pdf/VerticalText;->leading:F

    .line 151
    return-void
.end method

.method public setMaxLines(I)V
    .locals 0
    .parameter "maxLines"

    .prologue
    .line 322
    iput p1, p0, Lcom/itextpdf/text/pdf/VerticalText;->maxLines:I

    .line 323
    return-void
.end method

.method public setOrigin(FF)V
    .locals 0
    .parameter "startX"
    .parameter "startY"

    .prologue
    .line 291
    iput p1, p0, Lcom/itextpdf/text/pdf/VerticalText;->startX:F

    .line 292
    iput p2, p0, Lcom/itextpdf/text/pdf/VerticalText;->startY:F

    .line 293
    return-void
.end method

.method public setVerticalLayout(FFFIF)V
    .locals 0
    .parameter "startX"
    .parameter "startY"
    .parameter "height"
    .parameter "maxLines"
    .parameter "leading"

    .prologue
    .line 139
    iput p1, p0, Lcom/itextpdf/text/pdf/VerticalText;->startX:F

    .line 140
    iput p2, p0, Lcom/itextpdf/text/pdf/VerticalText;->startY:F

    .line 141
    iput p3, p0, Lcom/itextpdf/text/pdf/VerticalText;->height:F

    .line 142
    iput p4, p0, Lcom/itextpdf/text/pdf/VerticalText;->maxLines:I

    .line 143
    invoke-virtual {p0, p5}, Lcom/itextpdf/text/pdf/VerticalText;->setLeading(F)V

    .line 144
    return-void
.end method

.method protected shortenChunkArray()V
    .locals 5

    .prologue
    .line 189
    iget v2, p0, Lcom/itextpdf/text/pdf/VerticalText;->currentChunkMarker:I

    if-gez v2, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget v2, p0, Lcom/itextpdf/text/pdf/VerticalText;->currentChunkMarker:I

    iget-object v3, p0, Lcom/itextpdf/text/pdf/VerticalText;->chunks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 192
    iget-object v2, p0, Lcom/itextpdf/text/pdf/VerticalText;->chunks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 195
    :cond_2
    iget-object v2, p0, Lcom/itextpdf/text/pdf/VerticalText;->chunks:Ljava/util/ArrayList;

    iget v3, p0, Lcom/itextpdf/text/pdf/VerticalText;->currentChunkMarker:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfChunk;

    .line 196
    .local v1, split:Lcom/itextpdf/text/pdf/PdfChunk;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/VerticalText;->splittedChunkText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfChunk;->setValue(Ljava/lang/String;)V

    .line 197
    iget-object v2, p0, Lcom/itextpdf/text/pdf/VerticalText;->chunks:Ljava/util/ArrayList;

    iget v3, p0, Lcom/itextpdf/text/pdf/VerticalText;->currentChunkMarker:I

    iget-object v4, p0, Lcom/itextpdf/text/pdf/VerticalText;->currentStandbyChunk:Lcom/itextpdf/text/pdf/PdfChunk;

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget v2, p0, Lcom/itextpdf/text/pdf/VerticalText;->currentChunkMarker:I

    add-int/lit8 v0, v2, -0x1

    .local v0, j:I
    :goto_1
    if-ltz v0, :cond_0

    .line 199
    iget-object v2, p0, Lcom/itextpdf/text/pdf/VerticalText;->chunks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 198
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method writeLine(Lcom/itextpdf/text/pdf/PdfLine;Lcom/itextpdf/text/pdf/PdfContentByte;Lcom/itextpdf/text/pdf/PdfContentByte;)V
    .locals 7
    .parameter "line"
    .parameter "text"
    .parameter "graphics"

    .prologue
    .line 260
    const/4 v3, 0x0

    .line 262
    .local v3, currentFont:Lcom/itextpdf/text/pdf/PdfFont;
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfLine;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, j:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/pdf/PdfChunk;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 263
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfChunk;

    .line 265
    .local v1, chunk:Lcom/itextpdf/text/pdf/PdfChunk;
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfChunk;->font()Lcom/itextpdf/text/pdf/PdfFont;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/itextpdf/text/pdf/PdfFont;->compareTo(Lcom/itextpdf/text/pdf/PdfFont;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 266
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfChunk;->font()Lcom/itextpdf/text/pdf/PdfFont;

    move-result-object v3

    .line 267
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfFont;->getFont()Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v5

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfFont;->size()F

    move-result v6

    invoke-virtual {p2, v5, v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->setFontAndSize(Lcom/itextpdf/text/pdf/BaseFont;F)V

    .line 269
    :cond_1
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfChunk;->color()Lcom/itextpdf/text/BaseColor;

    move-result-object v2

    .line 270
    .local v2, color:Lcom/itextpdf/text/BaseColor;
    const-string v5, "CHAR_SPACING"

    invoke-virtual {v1, v5}, Lcom/itextpdf/text/pdf/PdfChunk;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 272
    .local v0, charSpace:Ljava/lang/Float;
    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/itextpdf/text/pdf/VerticalText;->curCharSpace:Ljava/lang/Float;

    invoke-virtual {v5, v0}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 273
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iput-object v5, p0, Lcom/itextpdf/text/pdf/VerticalText;->curCharSpace:Ljava/lang/Float;

    .line 274
    iget-object v5, p0, Lcom/itextpdf/text/pdf/VerticalText;->curCharSpace:Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {p2, v5}, Lcom/itextpdf/text/pdf/PdfContentByte;->setCharacterSpacing(F)V

    .line 276
    :cond_2
    if-eqz v2, :cond_3

    .line 277
    invoke-virtual {p2, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    .line 279
    :cond_3
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfChunk;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/itextpdf/text/pdf/PdfContentByte;->showText(Ljava/lang/String;)V

    .line 281
    if-eqz v2, :cond_0

    .line 282
    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/PdfContentByte;->resetRGBColorFill()V

    goto :goto_0

    .line 284
    .end local v0           #charSpace:Ljava/lang/Float;
    .end local v1           #chunk:Lcom/itextpdf/text/pdf/PdfChunk;
    .end local v2           #color:Lcom/itextpdf/text/BaseColor;
    :cond_4
    return-void
.end method

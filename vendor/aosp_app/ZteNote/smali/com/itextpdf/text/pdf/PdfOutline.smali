.class public Lcom/itextpdf/text/pdf/PdfOutline;
.super Lcom/itextpdf/text/pdf/PdfDictionary;
.source "PdfOutline.java"


# instance fields
.field private action:Lcom/itextpdf/text/pdf/PdfAction;

.field private color:Lcom/itextpdf/text/BaseColor;

.field private count:I

.field private destination:Lcom/itextpdf/text/pdf/PdfDestination;

.field protected kids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfOutline;",
            ">;"
        }
    .end annotation
.end field

.field private open:Z

.field private parent:Lcom/itextpdf/text/pdf/PdfOutline;

.field private reference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

.field private style:I

.field private tag:Ljava/lang/String;

.field protected writer:Lcom/itextpdf/text/pdf/PdfWriter;


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfOutline;Lcom/itextpdf/text/pdf/PdfAction;Lcom/itextpdf/text/Paragraph;)V
    .locals 1
    .parameter "parent"
    .parameter "action"
    .parameter "title"

    .prologue
    .line 249
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/itextpdf/text/pdf/PdfOutline;-><init>(Lcom/itextpdf/text/pdf/PdfOutline;Lcom/itextpdf/text/pdf/PdfAction;Lcom/itextpdf/text/Paragraph;Z)V

    .line 250
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfOutline;Lcom/itextpdf/text/pdf/PdfAction;Lcom/itextpdf/text/Paragraph;Z)V
    .locals 5
    .parameter "parent"
    .parameter "action"
    .parameter "title"
    .parameter "open"

    .prologue
    const/4 v4, 0x0

    .line 263
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 73
    iput v4, p0, Lcom/itextpdf/text/pdf/PdfOutline;->count:I

    .line 85
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/itextpdf/text/pdf/PdfOutline;->kids:Ljava/util/ArrayList;

    .line 99
    iput v4, p0, Lcom/itextpdf/text/pdf/PdfOutline;->style:I

    .line 264
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 265
    .local v0, buf:Ljava/lang/StringBuffer;
    invoke-virtual {p3}, Lcom/itextpdf/text/Paragraph;->getChunks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/Chunk;

    .line 266
    .local v1, chunk:Lcom/itextpdf/text/Chunk;
    invoke-virtual {v1}, Lcom/itextpdf/text/Chunk;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 268
    .end local v1           #chunk:Lcom/itextpdf/text/Chunk;
    :cond_0
    iput-object p2, p0, Lcom/itextpdf/text/pdf/PdfOutline;->action:Lcom/itextpdf/text/pdf/PdfAction;

    .line 269
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3, p4}, Lcom/itextpdf/text/pdf/PdfOutline;->initOutline(Lcom/itextpdf/text/pdf/PdfOutline;Ljava/lang/String;Z)V

    .line 270
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfOutline;Lcom/itextpdf/text/pdf/PdfAction;Lcom/itextpdf/text/pdf/PdfString;)V
    .locals 1
    .parameter "parent"
    .parameter "action"
    .parameter "title"

    .prologue
    .line 191
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/itextpdf/text/pdf/PdfOutline;-><init>(Lcom/itextpdf/text/pdf/PdfOutline;Lcom/itextpdf/text/pdf/PdfAction;Lcom/itextpdf/text/pdf/PdfString;Z)V

    .line 192
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfOutline;Lcom/itextpdf/text/pdf/PdfAction;Lcom/itextpdf/text/pdf/PdfString;Z)V
    .locals 1
    .parameter "parent"
    .parameter "action"
    .parameter "title"
    .parameter "open"

    .prologue
    .line 205
    invoke-virtual {p3}, Lcom/itextpdf/text/pdf/PdfString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/itextpdf/text/pdf/PdfOutline;-><init>(Lcom/itextpdf/text/pdf/PdfOutline;Lcom/itextpdf/text/pdf/PdfAction;Ljava/lang/String;Z)V

    .line 206
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfOutline;Lcom/itextpdf/text/pdf/PdfAction;Ljava/lang/String;)V
    .locals 1
    .parameter "parent"
    .parameter "action"
    .parameter "title"

    .prologue
    .line 130
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/itextpdf/text/pdf/PdfOutline;-><init>(Lcom/itextpdf/text/pdf/PdfOutline;Lcom/itextpdf/text/pdf/PdfAction;Ljava/lang/String;Z)V

    .line 131
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfOutline;Lcom/itextpdf/text/pdf/PdfAction;Ljava/lang/String;Z)V
    .locals 2
    .parameter "parent"
    .parameter "action"
    .parameter "title"
    .parameter "open"

    .prologue
    const/4 v1, 0x0

    .line 144
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 73
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfOutline;->count:I

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfOutline;->kids:Ljava/util/ArrayList;

    .line 99
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfOutline;->style:I

    .line 145
    iput-object p2, p0, Lcom/itextpdf/text/pdf/PdfOutline;->action:Lcom/itextpdf/text/pdf/PdfAction;

    .line 146
    invoke-virtual {p0, p1, p3, p4}, Lcom/itextpdf/text/pdf/PdfOutline;->initOutline(Lcom/itextpdf/text/pdf/PdfOutline;Ljava/lang/String;Z)V

    .line 147
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfOutline;Lcom/itextpdf/text/pdf/PdfDestination;Lcom/itextpdf/text/Paragraph;)V
    .locals 1
    .parameter "parent"
    .parameter "destination"
    .parameter "title"

    .prologue
    .line 284
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/itextpdf/text/pdf/PdfOutline;-><init>(Lcom/itextpdf/text/pdf/PdfOutline;Lcom/itextpdf/text/pdf/PdfDestination;Lcom/itextpdf/text/Paragraph;Z)V

    .line 285
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfOutline;Lcom/itextpdf/text/pdf/PdfDestination;Lcom/itextpdf/text/Paragraph;Z)V
    .locals 6
    .parameter "parent"
    .parameter "destination"
    .parameter "title"
    .parameter "open"

    .prologue
    const/4 v5, 0x0

    .line 298
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 73
    iput v5, p0, Lcom/itextpdf/text/pdf/PdfOutline;->count:I

    .line 85
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/itextpdf/text/pdf/PdfOutline;->kids:Ljava/util/ArrayList;

    .line 99
    iput v5, p0, Lcom/itextpdf/text/pdf/PdfOutline;->style:I

    .line 299
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 300
    .local v0, buf:Ljava/lang/StringBuffer;
    invoke-virtual {p3}, Lcom/itextpdf/text/Paragraph;->getChunks()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/Chunk;

    .local v2, element:Lcom/itextpdf/text/Chunk;
    move-object v1, v2

    .line 301
    check-cast v1, Lcom/itextpdf/text/Chunk;

    .line 302
    .local v1, chunk:Lcom/itextpdf/text/Chunk;
    invoke-virtual {v1}, Lcom/itextpdf/text/Chunk;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 304
    .end local v1           #chunk:Lcom/itextpdf/text/Chunk;
    .end local v2           #element:Lcom/itextpdf/text/Chunk;
    :cond_0
    iput-object p2, p0, Lcom/itextpdf/text/pdf/PdfOutline;->destination:Lcom/itextpdf/text/pdf/PdfDestination;

    .line 305
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v4, p4}, Lcom/itextpdf/text/pdf/PdfOutline;->initOutline(Lcom/itextpdf/text/pdf/PdfOutline;Ljava/lang/String;Z)V

    .line 306
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfOutline;Lcom/itextpdf/text/pdf/PdfDestination;Lcom/itextpdf/text/pdf/PdfString;)V
    .locals 1
    .parameter "parent"
    .parameter "destination"
    .parameter "title"

    .prologue
    .line 220
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/itextpdf/text/pdf/PdfOutline;-><init>(Lcom/itextpdf/text/pdf/PdfOutline;Lcom/itextpdf/text/pdf/PdfDestination;Lcom/itextpdf/text/pdf/PdfString;Z)V

    .line 221
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfOutline;Lcom/itextpdf/text/pdf/PdfDestination;Lcom/itextpdf/text/pdf/PdfString;Z)V
    .locals 2
    .parameter "parent"
    .parameter "destination"
    .parameter "title"
    .parameter "open"

    .prologue
    .line 234
    invoke-virtual {p3}, Lcom/itextpdf/text/pdf/PdfString;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/itextpdf/text/pdf/PdfOutline;-><init>(Lcom/itextpdf/text/pdf/PdfOutline;Lcom/itextpdf/text/pdf/PdfDestination;Ljava/lang/String;Z)V

    .line 235
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfOutline;Lcom/itextpdf/text/pdf/PdfDestination;Ljava/lang/String;)V
    .locals 1
    .parameter "parent"
    .parameter "destination"
    .parameter "title"

    .prologue
    .line 161
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/itextpdf/text/pdf/PdfOutline;-><init>(Lcom/itextpdf/text/pdf/PdfOutline;Lcom/itextpdf/text/pdf/PdfDestination;Ljava/lang/String;Z)V

    .line 162
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfOutline;Lcom/itextpdf/text/pdf/PdfDestination;Ljava/lang/String;Z)V
    .locals 2
    .parameter "parent"
    .parameter "destination"
    .parameter "title"
    .parameter "open"

    .prologue
    const/4 v1, 0x0

    .line 175
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 73
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfOutline;->count:I

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfOutline;->kids:Ljava/util/ArrayList;

    .line 99
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfOutline;->style:I

    .line 176
    iput-object p2, p0, Lcom/itextpdf/text/pdf/PdfOutline;->destination:Lcom/itextpdf/text/pdf/PdfDestination;

    .line 177
    invoke-virtual {p0, p1, p3, p4}, Lcom/itextpdf/text/pdf/PdfOutline;->initOutline(Lcom/itextpdf/text/pdf/PdfOutline;Ljava/lang/String;Z)V

    .line 178
    return-void
.end method

.method constructor <init>(Lcom/itextpdf/text/pdf/PdfWriter;)V
    .locals 2
    .parameter "writer"

    .prologue
    const/4 v1, 0x0

    .line 112
    sget-object v0, Lcom/itextpdf/text/pdf/PdfOutline;->OUTLINES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 73
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfOutline;->count:I

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfOutline;->kids:Ljava/util/ArrayList;

    .line 99
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfOutline;->style:I

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfOutline;->open:Z

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfOutline;->parent:Lcom/itextpdf/text/pdf/PdfOutline;

    .line 115
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfOutline;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    .line 116
    return-void
.end method


# virtual methods
.method public addKid(Lcom/itextpdf/text/pdf/PdfOutline;)V
    .locals 1
    .parameter "outline"

    .prologue
    .line 438
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfOutline;->kids:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    return-void
.end method

.method public getColor()Lcom/itextpdf/text/BaseColor;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfOutline;->color:Lcom/itextpdf/text/BaseColor;

    return-object v0
.end method

.method getCount()I
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfOutline;->count:I

    return v0
.end method

.method public getKids()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfOutline;",
            ">;"
        }
    .end annotation

    .prologue
    .line 446
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfOutline;->kids:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPdfDestination()Lcom/itextpdf/text/pdf/PdfDestination;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfOutline;->destination:Lcom/itextpdf/text/pdf/PdfDestination;

    return-object v0
.end method

.method public getStyle()I
    .locals 1

    .prologue
    .line 523
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfOutline;->style:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfOutline;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 476
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->TITLE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfOutline;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfString;

    .line 477
    .local v0, title:Lcom/itextpdf/text/pdf/PdfString;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfString;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public indirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfOutline;->reference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    return-object v0
.end method

.method initOutline(Lcom/itextpdf/text/pdf/PdfOutline;Ljava/lang/String;Z)V
    .locals 3
    .parameter "parent"
    .parameter "title"
    .parameter "open"

    .prologue
    .line 317
    iput-boolean p3, p0, Lcom/itextpdf/text/pdf/PdfOutline;->open:Z

    .line 318
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfOutline;->parent:Lcom/itextpdf/text/pdf/PdfOutline;

    .line 319
    iget-object v0, p1, Lcom/itextpdf/text/pdf/PdfOutline;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfOutline;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    .line 320
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->TITLE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfString;

    const-string v2, "UnicodeBig"

    invoke-direct {v1, p2, v2}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfOutline;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 321
    invoke-virtual {p1, p0}, Lcom/itextpdf/text/pdf/PdfOutline;->addKid(Lcom/itextpdf/text/pdf/PdfOutline;)V

    .line 322
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfOutline;->destination:Lcom/itextpdf/text/pdf/PdfDestination;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfOutline;->destination:Lcom/itextpdf/text/pdf/PdfDestination;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfDestination;->hasPage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfOutline;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfWriter;->getCurrentPage()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfOutline;->setDestinationPage(Lcom/itextpdf/text/pdf/PdfIndirectReference;)Z

    .line 324
    :cond_0
    return-void
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 492
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfOutline;->open:Z

    return v0
.end method

.method public level()I
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfOutline;->parent:Lcom/itextpdf/text/pdf/PdfOutline;

    if-nez v0, :cond_0

    .line 394
    const/4 v0, 0x0

    .line 396
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfOutline;->parent:Lcom/itextpdf/text/pdf/PdfOutline;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfOutline;->level()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public parent()Lcom/itextpdf/text/pdf/PdfOutline;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfOutline;->parent:Lcom/itextpdf/text/pdf/PdfOutline;

    return-object v0
.end method

.method public setColor(Lcom/itextpdf/text/BaseColor;)V
    .locals 0
    .parameter "color"

    .prologue
    .line 515
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfOutline;->color:Lcom/itextpdf/text/BaseColor;

    .line 516
    return-void
.end method

.method setCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 383
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfOutline;->count:I

    .line 384
    return-void
.end method

.method public setDestinationPage(Lcom/itextpdf/text/pdf/PdfIndirectReference;)Z
    .locals 1
    .parameter "pageReference"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfOutline;->destination:Lcom/itextpdf/text/pdf/PdfDestination;

    if-nez v0, :cond_0

    .line 365
    const/4 v0, 0x0

    .line 367
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfOutline;->destination:Lcom/itextpdf/text/pdf/PdfDestination;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfDestination;->addPage(Lcom/itextpdf/text/pdf/PdfIndirectReference;)Z

    move-result v0

    goto :goto_0
.end method

.method public setIndirectReference(Lcom/itextpdf/text/pdf/PdfIndirectReference;)V
    .locals 0
    .parameter "reference"

    .prologue
    .line 333
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfOutline;->reference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 334
    return-void
.end method

.method public setKids(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfOutline;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 454
    .local p1, kids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfOutline;>;"
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfOutline;->kids:Ljava/util/ArrayList;

    .line 455
    return-void
.end method

.method public setOpen(Z)V
    .locals 0
    .parameter "open"

    .prologue
    .line 499
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/PdfOutline;->open:Z

    .line 500
    return-void
.end method

.method public setStyle(I)V
    .locals 0
    .parameter "style"

    .prologue
    .line 531
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfOutline;->style:I

    .line 532
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 468
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfOutline;->tag:Ljava/lang/String;

    .line 469
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 3
    .parameter "title"

    .prologue
    .line 485
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->TITLE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfString;

    const-string v2, "UnicodeBig"

    invoke-direct {v1, p1, v2}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfOutline;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 486
    return-void
.end method

.method public toPdf(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/io/OutputStream;)V
    .locals 7
    .parameter "writer"
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v6, 0x437f

    .line 409
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfOutline;->color:Lcom/itextpdf/text/BaseColor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfOutline;->color:Lcom/itextpdf/text/BaseColor;

    sget-object v2, Lcom/itextpdf/text/BaseColor;->BLACK:Lcom/itextpdf/text/BaseColor;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/BaseColor;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 410
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->C:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfArray;

    const/4 v3, 0x3

    new-array v3, v3, [F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfOutline;->color:Lcom/itextpdf/text/BaseColor;

    invoke-virtual {v5}, Lcom/itextpdf/text/BaseColor;->getRed()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    aput v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfOutline;->color:Lcom/itextpdf/text/BaseColor;

    invoke-virtual {v5}, Lcom/itextpdf/text/BaseColor;->getGreen()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    aput v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfOutline;->color:Lcom/itextpdf/text/BaseColor;

    invoke-virtual {v5}, Lcom/itextpdf/text/BaseColor;->getBlue()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    aput v5, v3, v4

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfArray;-><init>([F)V

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/text/pdf/PdfOutline;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 412
    :cond_0
    const/4 v0, 0x0

    .line 413
    .local v0, flag:I
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfOutline;->style:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 414
    or-int/lit8 v0, v0, 0x2

    .line 415
    :cond_1
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfOutline;->style:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 416
    or-int/lit8 v0, v0, 0x1

    .line 417
    :cond_2
    if-eqz v0, :cond_3

    .line 418
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v2, v0}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/text/pdf/PdfOutline;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 419
    :cond_3
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfOutline;->parent:Lcom/itextpdf/text/pdf/PdfOutline;

    if-eqz v1, :cond_4

    .line 420
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->PARENT:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfOutline;->parent:Lcom/itextpdf/text/pdf/PdfOutline;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfOutline;->indirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/text/pdf/PdfOutline;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 422
    :cond_4
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfOutline;->destination:Lcom/itextpdf/text/pdf/PdfDestination;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfOutline;->destination:Lcom/itextpdf/text/pdf/PdfDestination;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfDestination;->hasPage()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 423
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->DEST:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfOutline;->destination:Lcom/itextpdf/text/pdf/PdfDestination;

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/text/pdf/PdfOutline;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 425
    :cond_5
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfOutline;->action:Lcom/itextpdf/text/pdf/PdfAction;

    if-eqz v1, :cond_6

    .line 426
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->A:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfOutline;->action:Lcom/itextpdf/text/pdf/PdfAction;

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/text/pdf/PdfOutline;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 427
    :cond_6
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfOutline;->count:I

    if-eqz v1, :cond_7

    .line 428
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->COUNT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfNumber;

    iget v3, p0, Lcom/itextpdf/text/pdf/PdfOutline;->count:I

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/text/pdf/PdfOutline;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 430
    :cond_7
    invoke-super {p0, p1, p2}, Lcom/itextpdf/text/pdf/PdfDictionary;->toPdf(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/io/OutputStream;)V

    .line 431
    return-void
.end method

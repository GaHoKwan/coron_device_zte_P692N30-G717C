.class public Lcom/itextpdf/text/Section;
.super Ljava/util/ArrayList;
.source "Section.java"

# interfaces
.implements Lcom/itextpdf/text/TextElementArray;
.implements Lcom/itextpdf/text/LargeElement;
.implements Lcom/itextpdf/text/api/Indentable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/itextpdf/text/Element;",
        ">;",
        "Lcom/itextpdf/text/TextElementArray;",
        "Lcom/itextpdf/text/LargeElement;",
        "Lcom/itextpdf/text/api/Indentable;"
    }
.end annotation


# static fields
.field public static final NUMBERSTYLE_DOTTED:I = 0x0

.field public static final NUMBERSTYLE_DOTTED_WITHOUT_FINAL_DOT:I = 0x1

.field private static final serialVersionUID:J = 0x2e21d558d8a63c0bL


# instance fields
.field protected addedCompletely:Z

.field protected bookmarkOpen:Z

.field protected bookmarkTitle:Ljava/lang/String;

.field protected complete:Z

.field protected indentation:F

.field protected indentationLeft:F

.field protected indentationRight:F

.field protected notAddedYet:Z

.field protected numberDepth:I

.field protected numberStyle:I

.field protected numbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected subsections:I

.field protected title:Lcom/itextpdf/text/Paragraph;

.field protected triggerNewPage:Z


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 157
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    iput v1, p0, Lcom/itextpdf/text/Section;->numberStyle:I

    .line 123
    iput-boolean v2, p0, Lcom/itextpdf/text/Section;->bookmarkOpen:Z

    .line 126
    iput-boolean v1, p0, Lcom/itextpdf/text/Section;->triggerNewPage:Z

    .line 129
    iput v1, p0, Lcom/itextpdf/text/Section;->subsections:I

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/Section;->numbers:Ljava/util/ArrayList;

    .line 138
    iput-boolean v2, p0, Lcom/itextpdf/text/Section;->complete:Z

    .line 144
    iput-boolean v1, p0, Lcom/itextpdf/text/Section;->addedCompletely:Z

    .line 150
    iput-boolean v2, p0, Lcom/itextpdf/text/Section;->notAddedYet:Z

    .line 158
    new-instance v0, Lcom/itextpdf/text/Paragraph;

    invoke-direct {v0}, Lcom/itextpdf/text/Paragraph;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/Section;->title:Lcom/itextpdf/text/Paragraph;

    .line 159
    iput v2, p0, Lcom/itextpdf/text/Section;->numberDepth:I

    .line 160
    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/text/Paragraph;I)V
    .locals 3
    .parameter "title"
    .parameter "numberDepth"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 168
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    iput v1, p0, Lcom/itextpdf/text/Section;->numberStyle:I

    .line 123
    iput-boolean v2, p0, Lcom/itextpdf/text/Section;->bookmarkOpen:Z

    .line 126
    iput-boolean v1, p0, Lcom/itextpdf/text/Section;->triggerNewPage:Z

    .line 129
    iput v1, p0, Lcom/itextpdf/text/Section;->subsections:I

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/Section;->numbers:Ljava/util/ArrayList;

    .line 138
    iput-boolean v2, p0, Lcom/itextpdf/text/Section;->complete:Z

    .line 144
    iput-boolean v1, p0, Lcom/itextpdf/text/Section;->addedCompletely:Z

    .line 150
    iput-boolean v2, p0, Lcom/itextpdf/text/Section;->notAddedYet:Z

    .line 169
    iput p2, p0, Lcom/itextpdf/text/Section;->numberDepth:I

    .line 170
    iput-object p1, p0, Lcom/itextpdf/text/Section;->title:Lcom/itextpdf/text/Paragraph;

    .line 171
    return-void
.end method

.method public static constructTitle(Lcom/itextpdf/text/Paragraph;Ljava/util/ArrayList;II)Lcom/itextpdf/text/Paragraph;
    .locals 8
    .parameter "title"
    .parameter
    .parameter "numberDepth"
    .parameter "numberStyle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/text/Paragraph;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;II)",
            "Lcom/itextpdf/text/Paragraph;"
        }
    .end annotation

    .prologue
    .local p1, numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 473
    if-nez p0, :cond_1

    .line 474
    const/4 p0, 0x0

    .line 491
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 477
    .restart local p0
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 478
    .local v1, depth:I
    if-lt v1, v5, :cond_0

    .line 481
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v4, " "

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 482
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 483
    const-string v4, "."

    invoke-virtual {v0, v7, v4}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 484
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v7, v4}, Ljava/lang/StringBuffer;->insert(II)Ljava/lang/StringBuffer;

    .line 482
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 486
    :cond_2
    if-ne p3, v5, :cond_3

    .line 487
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 489
    :cond_3
    new-instance v3, Lcom/itextpdf/text/Paragraph;

    invoke-direct {v3, p0}, Lcom/itextpdf/text/Paragraph;-><init>(Lcom/itextpdf/text/Phrase;)V

    .line 490
    .local v3, result:Lcom/itextpdf/text/Paragraph;
    new-instance v4, Lcom/itextpdf/text/Chunk;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/itextpdf/text/Paragraph;->getFont()Lcom/itextpdf/text/Font;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/text/Chunk;-><init>(Ljava/lang/String;Lcom/itextpdf/text/Font;)V

    invoke-virtual {v3, v7, v4}, Lcom/itextpdf/text/Paragraph;->add(ILcom/itextpdf/text/Element;)V

    move-object p0, v3

    .line 491
    goto :goto_0
.end method

.method private setNumbers(ILjava/util/ArrayList;)V
    .locals 2
    .parameter "number"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 675
    .local p2, numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/Section;->numbers:Ljava/util/ArrayList;

    .line 676
    iget-object v0, p0, Lcom/itextpdf/text/Section;->numbers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    iget-object v0, p0, Lcom/itextpdf/text/Section;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 678
    return-void
.end method


# virtual methods
.method public add(ILcom/itextpdf/text/Element;)V
    .locals 8
    .parameter "index"
    .parameter "element"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 267
    invoke-virtual {p0}, Lcom/itextpdf/text/Section;->isAddedCompletely()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "this.largeelement.has.already.been.added.to.the.document"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 271
    :cond_0
    :try_start_0
    invoke-interface {p2}, Lcom/itextpdf/text/Element;->isNestable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 272
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 281
    return-void

    .line 275
    :cond_1
    new-instance v1, Ljava/lang/ClassCastException;

    const-string v2, "you.can.t.add.a.1.to.a.section"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, cce:Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/ClassCastException;

    const-string v2, "insertion.of.illegal.element.1"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    check-cast p2, Lcom/itextpdf/text/Element;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/text/Section;->add(ILcom/itextpdf/text/Element;)V

    return-void
.end method

.method public add(Lcom/itextpdf/text/Element;)Z
    .locals 11
    .parameter "element"

    .prologue
    const/16 v5, 0xd

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 294
    invoke-virtual {p0}, Lcom/itextpdf/text/Section;->isAddedCompletely()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 295
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "this.largeelement.has.already.been.added.to.the.document"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 298
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/itextpdf/text/Element;->type()I

    move-result v4

    if-ne v4, v5, :cond_1

    .line 299
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/text/Section;

    move-object v3, v0

    .line 300
    .local v3, section:Lcom/itextpdf/text/Section;
    iget v4, p0, Lcom/itextpdf/text/Section;->subsections:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/itextpdf/text/Section;->subsections:I

    iget-object v5, p0, Lcom/itextpdf/text/Section;->numbers:Ljava/util/ArrayList;

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/text/Section;->setNumbers(ILjava/util/ArrayList;)V

    .line 301
    invoke-super {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 310
    .end local v3           #section:Lcom/itextpdf/text/Section;
    :goto_0
    return v4

    .line 303
    :cond_1
    instance-of v4, p1, Lcom/itextpdf/text/MarkedSection;

    if-eqz v4, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/itextpdf/text/MarkedObject;

    move-object v4, v0

    iget-object v4, v4, Lcom/itextpdf/text/MarkedObject;->element:Lcom/itextpdf/text/Element;

    invoke-interface {v4}, Lcom/itextpdf/text/Element;->type()I

    move-result v4

    if-ne v4, v5, :cond_2

    .line 304
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/text/MarkedSection;

    move-object v2, v0

    .line 305
    .local v2, mo:Lcom/itextpdf/text/MarkedSection;
    iget-object v3, v2, Lcom/itextpdf/text/MarkedSection;->element:Lcom/itextpdf/text/Element;

    check-cast v3, Lcom/itextpdf/text/Section;

    .line 306
    .restart local v3       #section:Lcom/itextpdf/text/Section;
    iget v4, p0, Lcom/itextpdf/text/Section;->subsections:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/itextpdf/text/Section;->subsections:I

    iget-object v5, p0, Lcom/itextpdf/text/Section;->numbers:Ljava/util/ArrayList;

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/text/Section;->setNumbers(ILjava/util/ArrayList;)V

    .line 307
    invoke-super {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0

    .line 309
    .end local v2           #mo:Lcom/itextpdf/text/MarkedSection;
    .end local v3           #section:Lcom/itextpdf/text/Section;
    :cond_2
    invoke-interface {p1}, Lcom/itextpdf/text/Element;->isNestable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 310
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0

    .line 313
    :cond_3
    new-instance v4, Ljava/lang/ClassCastException;

    const-string v5, "you.can.t.add.a.1.to.a.section"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :catch_0
    move-exception v1

    .line 317
    .local v1, cce:Ljava/lang/ClassCastException;
    new-instance v4, Ljava/lang/ClassCastException;

    const-string v5, "insertion.of.illegal.element.1"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    check-cast p1, Lcom/itextpdf/text/Element;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/Section;->add(Lcom/itextpdf/text/Element;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/itextpdf/text/Element;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 331
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+Lcom/itextpdf/text/Element;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/Element;

    .line 332
    .local v0, element:Lcom/itextpdf/text/Element;
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/Section;->add(Lcom/itextpdf/text/Element;)Z

    goto :goto_0

    .line 334
    .end local v0           #element:Lcom/itextpdf/text/Element;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method protected addMarkedSection()Lcom/itextpdf/text/MarkedSection;
    .locals 4

    .prologue
    .line 384
    new-instance v0, Lcom/itextpdf/text/MarkedSection;

    new-instance v1, Lcom/itextpdf/text/Section;

    const/4 v2, 0x0

    iget v3, p0, Lcom/itextpdf/text/Section;->numberDepth:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/text/Section;-><init>(Lcom/itextpdf/text/Paragraph;I)V

    invoke-direct {v0, v1}, Lcom/itextpdf/text/MarkedSection;-><init>(Lcom/itextpdf/text/Section;)V

    .line 385
    .local v0, section:Lcom/itextpdf/text/MarkedSection;
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/Section;->add(Lcom/itextpdf/text/Element;)Z

    .line 386
    return-object v0
.end method

.method public addSection(FLcom/itextpdf/text/Paragraph;)Lcom/itextpdf/text/Section;
    .locals 1
    .parameter "indentation"
    .parameter "title"

    .prologue
    .line 365
    iget v0, p0, Lcom/itextpdf/text/Section;->numberDepth:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/text/Section;->addSection(FLcom/itextpdf/text/Paragraph;I)Lcom/itextpdf/text/Section;

    move-result-object v0

    return-object v0
.end method

.method public addSection(FLcom/itextpdf/text/Paragraph;I)Lcom/itextpdf/text/Section;
    .locals 4
    .parameter "indentation"
    .parameter "title"
    .parameter "numberDepth"

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/itextpdf/text/Section;->isAddedCompletely()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "this.largeelement.has.already.been.added.to.the.document"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 351
    :cond_0
    new-instance v0, Lcom/itextpdf/text/Section;

    invoke-direct {v0, p2, p3}, Lcom/itextpdf/text/Section;-><init>(Lcom/itextpdf/text/Paragraph;I)V

    .line 352
    .local v0, section:Lcom/itextpdf/text/Section;
    invoke-virtual {v0, p1}, Lcom/itextpdf/text/Section;->setIndentation(F)V

    .line 353
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/Section;->add(Lcom/itextpdf/text/Element;)Z

    .line 354
    return-object v0
.end method

.method public addSection(FLjava/lang/String;)Lcom/itextpdf/text/Section;
    .locals 1
    .parameter "indentation"
    .parameter "title"

    .prologue
    .line 430
    new-instance v0, Lcom/itextpdf/text/Paragraph;

    invoke-direct {v0, p2}, Lcom/itextpdf/text/Paragraph;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/text/Section;->addSection(FLcom/itextpdf/text/Paragraph;)Lcom/itextpdf/text/Section;

    move-result-object v0

    return-object v0
.end method

.method public addSection(FLjava/lang/String;I)Lcom/itextpdf/text/Section;
    .locals 1
    .parameter "indentation"
    .parameter "title"
    .parameter "numberDepth"

    .prologue
    .line 408
    new-instance v0, Lcom/itextpdf/text/Paragraph;

    invoke-direct {v0, p2}, Lcom/itextpdf/text/Paragraph;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, p3}, Lcom/itextpdf/text/Section;->addSection(FLcom/itextpdf/text/Paragraph;I)Lcom/itextpdf/text/Section;

    move-result-object v0

    return-object v0
.end method

.method public addSection(Lcom/itextpdf/text/Paragraph;)Lcom/itextpdf/text/Section;
    .locals 2
    .parameter "title"

    .prologue
    .line 396
    const/4 v0, 0x0

    iget v1, p0, Lcom/itextpdf/text/Section;->numberDepth:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/itextpdf/text/Section;->addSection(FLcom/itextpdf/text/Paragraph;I)Lcom/itextpdf/text/Section;

    move-result-object v0

    return-object v0
.end method

.method public addSection(Lcom/itextpdf/text/Paragraph;I)Lcom/itextpdf/text/Section;
    .locals 1
    .parameter "title"
    .parameter "numberDepth"

    .prologue
    .line 376
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/itextpdf/text/Section;->addSection(FLcom/itextpdf/text/Paragraph;I)Lcom/itextpdf/text/Section;

    move-result-object v0

    return-object v0
.end method

.method public addSection(Ljava/lang/String;)Lcom/itextpdf/text/Section;
    .locals 1
    .parameter "title"

    .prologue
    .line 440
    new-instance v0, Lcom/itextpdf/text/Paragraph;

    invoke-direct {v0, p1}, Lcom/itextpdf/text/Paragraph;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/Section;->addSection(Lcom/itextpdf/text/Paragraph;)Lcom/itextpdf/text/Section;

    move-result-object v0

    return-object v0
.end method

.method public addSection(Ljava/lang/String;I)Lcom/itextpdf/text/Section;
    .locals 1
    .parameter "title"
    .parameter "numberDepth"

    .prologue
    .line 419
    new-instance v0, Lcom/itextpdf/text/Paragraph;

    invoke-direct {v0, p1}, Lcom/itextpdf/text/Paragraph;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/itextpdf/text/Section;->addSection(Lcom/itextpdf/text/Paragraph;I)Lcom/itextpdf/text/Section;

    move-result-object v0

    return-object v0
.end method

.method public flushContent()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 720
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/itextpdf/text/Section;->setNotAddedYet(Z)V

    .line 721
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/itextpdf/text/Section;->title:Lcom/itextpdf/text/Paragraph;

    .line 723
    invoke-virtual {p0}, Lcom/itextpdf/text/Section;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/Element;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 724
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/Element;

    .line 725
    .local v0, element:Lcom/itextpdf/text/Element;
    instance-of v3, v0, Lcom/itextpdf/text/Section;

    if-eqz v3, :cond_2

    move-object v2, v0

    .line 726
    check-cast v2, Lcom/itextpdf/text/Section;

    .line 727
    .local v2, s:Lcom/itextpdf/text/Section;
    invoke-virtual {v2}, Lcom/itextpdf/text/Section;->isComplete()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/itextpdf/text/Section;->size()I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 728
    invoke-virtual {v2}, Lcom/itextpdf/text/Section;->flushContent()V

    .line 737
    .end local v0           #element:Lcom/itextpdf/text/Element;
    .end local v2           #s:Lcom/itextpdf/text/Section;
    :cond_0
    return-void

    .line 732
    .restart local v0       #element:Lcom/itextpdf/text/Element;
    .restart local v2       #s:Lcom/itextpdf/text/Section;
    :cond_1
    invoke-virtual {v2, v4}, Lcom/itextpdf/text/Section;->setAddedCompletely(Z)V

    .line 735
    .end local v2           #s:Lcom/itextpdf/text/Section;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public getBookmarkTitle()Lcom/itextpdf/text/Paragraph;
    .locals 2

    .prologue
    .line 636
    iget-object v0, p0, Lcom/itextpdf/text/Section;->bookmarkTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 637
    invoke-virtual {p0}, Lcom/itextpdf/text/Section;->getTitle()Lcom/itextpdf/text/Paragraph;

    move-result-object v0

    .line 639
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/itextpdf/text/Paragraph;

    iget-object v1, p0, Lcom/itextpdf/text/Section;->bookmarkTitle:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/itextpdf/text/Paragraph;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getChunks()Ljava/util/List;
    .locals 4
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
    .line 231
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v2, tmp:Ljava/util/List;,"Ljava/util/List<Lcom/itextpdf/text/Chunk;>;"
    invoke-virtual {p0}, Lcom/itextpdf/text/Section;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/Element;

    .line 233
    .local v0, element:Lcom/itextpdf/text/Element;
    check-cast v0, Lcom/itextpdf/text/Element;

    .end local v0           #element:Lcom/itextpdf/text/Element;
    invoke-interface {v0}, Lcom/itextpdf/text/Element;->getChunks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 235
    :cond_0
    return-object v2
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/itextpdf/text/Section;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getIndentation()F
    .locals 1

    .prologue
    .line 587
    iget v0, p0, Lcom/itextpdf/text/Section;->indentation:F

    return v0
.end method

.method public getIndentationLeft()F
    .locals 1

    .prologue
    .line 551
    iget v0, p0, Lcom/itextpdf/text/Section;->indentationLeft:F

    return v0
.end method

.method public getIndentationRight()F
    .locals 1

    .prologue
    .line 569
    iget v0, p0, Lcom/itextpdf/text/Section;->indentationRight:F

    return v0
.end method

.method public getNumberDepth()I
    .locals 1

    .prologue
    .line 513
    iget v0, p0, Lcom/itextpdf/text/Section;->numberDepth:I

    return v0
.end method

.method public getNumberStyle()I
    .locals 1

    .prologue
    .line 533
    iget v0, p0, Lcom/itextpdf/text/Section;->numberStyle:I

    return v0
.end method

.method public getTitle()Lcom/itextpdf/text/Paragraph;
    .locals 4

    .prologue
    .line 460
    iget-object v0, p0, Lcom/itextpdf/text/Section;->title:Lcom/itextpdf/text/Paragraph;

    iget-object v1, p0, Lcom/itextpdf/text/Section;->numbers:Ljava/util/ArrayList;

    iget v2, p0, Lcom/itextpdf/text/Section;->numberDepth:I

    iget v3, p0, Lcom/itextpdf/text/Section;->numberStyle:I

    invoke-static {v0, v1, v2, v3}, Lcom/itextpdf/text/Section;->constructTitle(Lcom/itextpdf/text/Paragraph;Ljava/util/ArrayList;II)Lcom/itextpdf/text/Paragraph;

    move-result-object v0

    return-object v0
.end method

.method protected isAddedCompletely()Z
    .locals 1

    .prologue
    .line 704
    iget-boolean v0, p0, Lcom/itextpdf/text/Section;->addedCompletely:Z

    return v0
.end method

.method public isBookmarkOpen()Z
    .locals 1

    .prologue
    .line 603
    iget-boolean v0, p0, Lcom/itextpdf/text/Section;->bookmarkOpen:Z

    return v0
.end method

.method public isChapter()Z
    .locals 2

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/itextpdf/text/Section;->type()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 744
    iget-boolean v0, p0, Lcom/itextpdf/text/Section;->complete:Z

    return v0
.end method

.method public isContent()Z
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x1

    return v0
.end method

.method public isNestable()Z
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public isNotAddedYet()Z
    .locals 1

    .prologue
    .line 686
    iget-boolean v0, p0, Lcom/itextpdf/text/Section;->notAddedYet:Z

    return v0
.end method

.method public isSection()Z
    .locals 2

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/itextpdf/text/Section;->type()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTriggerNewPage()Z
    .locals 1

    .prologue
    .line 619
    iget-boolean v0, p0, Lcom/itextpdf/text/Section;->triggerNewPage:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/itextpdf/text/Section;->notAddedYet:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newPage()V
    .locals 1

    .prologue
    .line 760
    sget-object v0, Lcom/itextpdf/text/Chunk;->NEXTPAGE:Lcom/itextpdf/text/Chunk;

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/Section;->add(Lcom/itextpdf/text/Element;)Z

    .line 761
    return-void
.end method

.method public process(Lcom/itextpdf/text/ElementListener;)Z
    .locals 6
    .parameter "listener"

    .prologue
    .line 185
    :try_start_0
    invoke-virtual {p0}, Lcom/itextpdf/text/Section;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/Element;

    .line 186
    .local v3, element2:Lcom/itextpdf/text/Element;
    move-object v0, v3

    check-cast v0, Lcom/itextpdf/text/Element;

    move-object v2, v0

    .line 187
    .local v2, element:Lcom/itextpdf/text/Element;
    invoke-interface {p1, v2}, Lcom/itextpdf/text/ElementListener;->add(Lcom/itextpdf/text/Element;)Z
    :try_end_0
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 191
    .end local v2           #element:Lcom/itextpdf/text/Element;
    .end local v3           #element2:Lcom/itextpdf/text/Element;
    .end local v4           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 192
    .local v1, de:Lcom/itextpdf/text/DocumentException;
    const/4 v5, 0x0

    .end local v1           #de:Lcom/itextpdf/text/DocumentException;
    :goto_1
    return v5

    .line 189
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_0
    const/4 v5, 0x1

    goto :goto_1
.end method

.method protected setAddedCompletely(Z)V
    .locals 0
    .parameter "addedCompletely"

    .prologue
    .line 712
    iput-boolean p1, p0, Lcom/itextpdf/text/Section;->addedCompletely:Z

    .line 713
    return-void
.end method

.method public setBookmarkOpen(Z)V
    .locals 0
    .parameter "bookmarkOpen"

    .prologue
    .line 595
    iput-boolean p1, p0, Lcom/itextpdf/text/Section;->bookmarkOpen:Z

    .line 596
    return-void
.end method

.method public setBookmarkTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "bookmarkTitle"

    .prologue
    .line 628
    iput-object p1, p0, Lcom/itextpdf/text/Section;->bookmarkTitle:Ljava/lang/String;

    .line 629
    return-void
.end method

.method public setChapterNumber(I)V
    .locals 5
    .parameter "number"

    .prologue
    .line 647
    iget-object v2, p0, Lcom/itextpdf/text/Section;->numbers:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/itextpdf/text/Section;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 649
    invoke-virtual {p0}, Lcom/itextpdf/text/Section;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/Element;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 650
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 651
    .local v1, s:Ljava/lang/Object;
    instance-of v2, v1, Lcom/itextpdf/text/Section;

    if-eqz v2, :cond_0

    .line 652
    check-cast v1, Lcom/itextpdf/text/Section;

    .end local v1           #s:Ljava/lang/Object;
    invoke-virtual {v1, p1}, Lcom/itextpdf/text/Section;->setChapterNumber(I)V

    goto :goto_0

    .line 655
    :cond_1
    return-void
.end method

.method public setComplete(Z)V
    .locals 0
    .parameter "complete"

    .prologue
    .line 752
    iput-boolean p1, p0, Lcom/itextpdf/text/Section;->complete:Z

    .line 753
    return-void
.end method

.method public setIndentation(F)V
    .locals 0
    .parameter "indentation"

    .prologue
    .line 578
    iput p1, p0, Lcom/itextpdf/text/Section;->indentation:F

    .line 579
    return-void
.end method

.method public setIndentationLeft(F)V
    .locals 0
    .parameter "indentation"

    .prologue
    .line 542
    iput p1, p0, Lcom/itextpdf/text/Section;->indentationLeft:F

    .line 543
    return-void
.end method

.method public setIndentationRight(F)V
    .locals 0
    .parameter "indentation"

    .prologue
    .line 560
    iput p1, p0, Lcom/itextpdf/text/Section;->indentationRight:F

    .line 561
    return-void
.end method

.method public setNotAddedYet(Z)V
    .locals 0
    .parameter "notAddedYet"

    .prologue
    .line 696
    iput-boolean p1, p0, Lcom/itextpdf/text/Section;->notAddedYet:Z

    .line 697
    return-void
.end method

.method public setNumberDepth(I)V
    .locals 0
    .parameter "numberDepth"

    .prologue
    .line 504
    iput p1, p0, Lcom/itextpdf/text/Section;->numberDepth:I

    .line 505
    return-void
.end method

.method public setNumberStyle(I)V
    .locals 0
    .parameter "numberStyle"

    .prologue
    .line 524
    iput p1, p0, Lcom/itextpdf/text/Section;->numberStyle:I

    .line 525
    return-void
.end method

.method public setTitle(Lcom/itextpdf/text/Paragraph;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 451
    iput-object p1, p0, Lcom/itextpdf/text/Section;->title:Lcom/itextpdf/text/Paragraph;

    .line 452
    return-void
.end method

.method public setTriggerNewPage(Z)V
    .locals 0
    .parameter "triggerNewPage"

    .prologue
    .line 611
    iput-boolean p1, p0, Lcom/itextpdf/text/Section;->triggerNewPage:Z

    .line 612
    return-void
.end method

.method public type()I
    .locals 1

    .prologue
    .line 202
    const/16 v0, 0xd

    return v0
.end method

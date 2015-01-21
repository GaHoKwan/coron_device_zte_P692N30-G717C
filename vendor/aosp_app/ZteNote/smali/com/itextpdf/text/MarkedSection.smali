.class public Lcom/itextpdf/text/MarkedSection;
.super Lcom/itextpdf/text/MarkedObject;
.source "MarkedSection.java"

# interfaces
.implements Lcom/itextpdf/text/api/Indentable;


# instance fields
.field protected title:Lcom/itextpdf/text/MarkedObject;


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/Section;)V
    .locals 3
    .parameter "section"

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Lcom/itextpdf/text/MarkedObject;-><init>()V

    .line 62
    iput-object v2, p0, Lcom/itextpdf/text/MarkedSection;->title:Lcom/itextpdf/text/MarkedObject;

    .line 70
    iget-object v0, p1, Lcom/itextpdf/text/Section;->title:Lcom/itextpdf/text/Paragraph;

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Lcom/itextpdf/text/MarkedObject;

    iget-object v1, p1, Lcom/itextpdf/text/Section;->title:Lcom/itextpdf/text/Paragraph;

    invoke-direct {v0, v1}, Lcom/itextpdf/text/MarkedObject;-><init>(Lcom/itextpdf/text/Element;)V

    iput-object v0, p0, Lcom/itextpdf/text/MarkedSection;->title:Lcom/itextpdf/text/MarkedObject;

    .line 72
    invoke-virtual {p1, v2}, Lcom/itextpdf/text/Section;->setTitle(Lcom/itextpdf/text/Paragraph;)V

    .line 74
    :cond_0
    iput-object p1, p0, Lcom/itextpdf/text/MarkedSection;->element:Lcom/itextpdf/text/Element;

    .line 75
    return-void
.end method


# virtual methods
.method public add(ILcom/itextpdf/text/Element;)V
    .locals 1
    .parameter "index"
    .parameter "o"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/itextpdf/text/MarkedSection;->element:Lcom/itextpdf/text/Element;

    check-cast v0, Lcom/itextpdf/text/Section;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/Section;->add(ILcom/itextpdf/text/Element;)V

    .line 88
    return-void
.end method

.method public add(Lcom/itextpdf/text/Element;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/itextpdf/text/MarkedSection;->element:Lcom/itextpdf/text/Element;

    check-cast v0, Lcom/itextpdf/text/Section;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/Section;->add(Lcom/itextpdf/text/Element;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
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
    .line 134
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+Lcom/itextpdf/text/Element;>;"
    iget-object v0, p0, Lcom/itextpdf/text/MarkedSection;->element:Lcom/itextpdf/text/Element;

    check-cast v0, Lcom/itextpdf/text/Section;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/Section;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public addSection()Lcom/itextpdf/text/MarkedSection;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/itextpdf/text/MarkedSection;->element:Lcom/itextpdf/text/Element;

    check-cast v0, Lcom/itextpdf/text/Section;

    invoke-virtual {v0}, Lcom/itextpdf/text/Section;->addMarkedSection()Lcom/itextpdf/text/MarkedSection;

    move-result-object v0

    return-object v0
.end method

.method public addSection(F)Lcom/itextpdf/text/MarkedSection;
    .locals 2
    .parameter "indentation"

    .prologue
    .line 158
    iget-object v1, p0, Lcom/itextpdf/text/MarkedSection;->element:Lcom/itextpdf/text/Element;

    check-cast v1, Lcom/itextpdf/text/Section;

    invoke-virtual {v1}, Lcom/itextpdf/text/Section;->addMarkedSection()Lcom/itextpdf/text/MarkedSection;

    move-result-object v0

    .line 159
    .local v0, section:Lcom/itextpdf/text/MarkedSection;
    invoke-virtual {v0, p1}, Lcom/itextpdf/text/MarkedSection;->setIndentation(F)V

    .line 160
    return-object v0
.end method

.method public addSection(FI)Lcom/itextpdf/text/MarkedSection;
    .locals 2
    .parameter "indentation"
    .parameter "numberDepth"

    .prologue
    .line 145
    iget-object v1, p0, Lcom/itextpdf/text/MarkedSection;->element:Lcom/itextpdf/text/Element;

    check-cast v1, Lcom/itextpdf/text/Section;

    invoke-virtual {v1}, Lcom/itextpdf/text/Section;->addMarkedSection()Lcom/itextpdf/text/MarkedSection;

    move-result-object v0

    .line 146
    .local v0, section:Lcom/itextpdf/text/MarkedSection;
    invoke-virtual {v0, p1}, Lcom/itextpdf/text/MarkedSection;->setIndentation(F)V

    .line 147
    invoke-virtual {v0, p2}, Lcom/itextpdf/text/MarkedSection;->setNumberDepth(I)V

    .line 148
    return-object v0
.end method

.method public addSection(I)Lcom/itextpdf/text/MarkedSection;
    .locals 2
    .parameter "numberDepth"

    .prologue
    .line 170
    iget-object v1, p0, Lcom/itextpdf/text/MarkedSection;->element:Lcom/itextpdf/text/Element;

    check-cast v1, Lcom/itextpdf/text/Section;

    invoke-virtual {v1}, Lcom/itextpdf/text/Section;->addMarkedSection()Lcom/itextpdf/text/MarkedSection;

    move-result-object v0

    .line 171
    .local v0, section:Lcom/itextpdf/text/MarkedSection;
    invoke-virtual {v0, p1}, Lcom/itextpdf/text/MarkedSection;->setNumberDepth(I)V

    .line 172
    return-object v0
.end method

.method public getIndentationLeft()F
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/itextpdf/text/MarkedSection;->element:Lcom/itextpdf/text/Element;

    check-cast v0, Lcom/itextpdf/text/Section;

    invoke-virtual {v0}, Lcom/itextpdf/text/Section;->getIndentationLeft()F

    move-result v0

    return v0
.end method

.method public getIndentationRight()F
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/itextpdf/text/MarkedSection;->element:Lcom/itextpdf/text/Element;

    check-cast v0, Lcom/itextpdf/text/Section;

    invoke-virtual {v0}, Lcom/itextpdf/text/Section;->getIndentationRight()F

    move-result v0

    return v0
.end method

.method public getTitle()Lcom/itextpdf/text/MarkedObject;
    .locals 6

    .prologue
    .line 202
    iget-object v2, p0, Lcom/itextpdf/text/MarkedSection;->title:Lcom/itextpdf/text/MarkedObject;

    iget-object v2, v2, Lcom/itextpdf/text/MarkedObject;->element:Lcom/itextpdf/text/Element;

    check-cast v2, Lcom/itextpdf/text/Paragraph;

    iget-object v3, p0, Lcom/itextpdf/text/MarkedSection;->element:Lcom/itextpdf/text/Element;

    check-cast v3, Lcom/itextpdf/text/Section;

    iget-object v4, v3, Lcom/itextpdf/text/Section;->numbers:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/itextpdf/text/MarkedSection;->element:Lcom/itextpdf/text/Element;

    check-cast v3, Lcom/itextpdf/text/Section;

    iget v5, v3, Lcom/itextpdf/text/Section;->numberDepth:I

    iget-object v3, p0, Lcom/itextpdf/text/MarkedSection;->element:Lcom/itextpdf/text/Element;

    check-cast v3, Lcom/itextpdf/text/Section;

    iget v3, v3, Lcom/itextpdf/text/Section;->numberStyle:I

    invoke-static {v2, v4, v5, v3}, Lcom/itextpdf/text/Section;->constructTitle(Lcom/itextpdf/text/Paragraph;Ljava/util/ArrayList;II)Lcom/itextpdf/text/Paragraph;

    move-result-object v1

    .line 203
    .local v1, result:Lcom/itextpdf/text/Paragraph;
    new-instance v0, Lcom/itextpdf/text/MarkedObject;

    invoke-direct {v0, v1}, Lcom/itextpdf/text/MarkedObject;-><init>(Lcom/itextpdf/text/Element;)V

    .line 204
    .local v0, mo:Lcom/itextpdf/text/MarkedObject;
    iget-object v2, p0, Lcom/itextpdf/text/MarkedSection;->title:Lcom/itextpdf/text/MarkedObject;

    iget-object v2, v2, Lcom/itextpdf/text/MarkedObject;->markupAttributes:Ljava/util/Properties;

    iput-object v2, v0, Lcom/itextpdf/text/MarkedObject;->markupAttributes:Ljava/util/Properties;

    .line 205
    return-object v0
.end method

.method public newPage()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/itextpdf/text/MarkedSection;->element:Lcom/itextpdf/text/Element;

    check-cast v0, Lcom/itextpdf/text/Section;

    invoke-virtual {v0}, Lcom/itextpdf/text/Section;->newPage()V

    .line 279
    return-void
.end method

.method public process(Lcom/itextpdf/text/ElementListener;)Z
    .locals 4
    .parameter "listener"

    .prologue
    .line 114
    :try_start_0
    iget-object v3, p0, Lcom/itextpdf/text/MarkedSection;->element:Lcom/itextpdf/text/Element;

    check-cast v3, Lcom/itextpdf/text/Section;

    invoke-virtual {v3}, Lcom/itextpdf/text/Section;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/Element;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 115
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/Element;

    .line 116
    .local v1, element:Lcom/itextpdf/text/Element;
    invoke-interface {p1, v1}, Lcom/itextpdf/text/ElementListener;->add(Lcom/itextpdf/text/Element;)Z
    :try_end_0
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    .end local v1           #element:Lcom/itextpdf/text/Element;
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/Element;>;"
    :catch_0
    move-exception v0

    .line 121
    .local v0, de:Lcom/itextpdf/text/DocumentException;
    const/4 v3, 0x0

    .end local v0           #de:Lcom/itextpdf/text/DocumentException;
    :goto_1
    return v3

    .line 118
    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/Element;>;"
    :cond_0
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public setBookmarkOpen(Z)V
    .locals 1
    .parameter "bookmarkOpen"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/itextpdf/text/MarkedSection;->element:Lcom/itextpdf/text/Element;

    check-cast v0, Lcom/itextpdf/text/Section;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/Section;->setBookmarkOpen(Z)V

    .line 254
    return-void
.end method

.method public setBookmarkTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "bookmarkTitle"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/itextpdf/text/MarkedSection;->element:Lcom/itextpdf/text/Element;

    check-cast v0, Lcom/itextpdf/text/Section;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/Section;->setBookmarkTitle(Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public setIndentation(F)V
    .locals 1
    .parameter "indentation"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/itextpdf/text/MarkedSection;->element:Lcom/itextpdf/text/Element;

    check-cast v0, Lcom/itextpdf/text/Section;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/Section;->setIndentation(F)V

    .line 246
    return-void
.end method

.method public setIndentationLeft(F)V
    .locals 1
    .parameter "indentation"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/itextpdf/text/MarkedSection;->element:Lcom/itextpdf/text/Element;

    check-cast v0, Lcom/itextpdf/text/Section;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/Section;->setIndentationLeft(F)V

    .line 228
    return-void
.end method

.method public setIndentationRight(F)V
    .locals 1
    .parameter "indentation"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/itextpdf/text/MarkedSection;->element:Lcom/itextpdf/text/Element;

    check-cast v0, Lcom/itextpdf/text/Section;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/Section;->setIndentationRight(F)V

    .line 237
    return-void
.end method

.method public setNumberDepth(I)V
    .locals 1
    .parameter "numberDepth"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/itextpdf/text/MarkedSection;->element:Lcom/itextpdf/text/Element;

    check-cast v0, Lcom/itextpdf/text/Section;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/Section;->setNumberDepth(I)V

    .line 219
    return-void
.end method

.method public setTitle(Lcom/itextpdf/text/MarkedObject;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 192
    iget-object v0, p1, Lcom/itextpdf/text/MarkedObject;->element:Lcom/itextpdf/text/Element;

    instance-of v0, v0, Lcom/itextpdf/text/Paragraph;

    if-eqz v0, :cond_0

    .line 193
    iput-object p1, p0, Lcom/itextpdf/text/MarkedSection;->title:Lcom/itextpdf/text/MarkedObject;

    .line 194
    :cond_0
    return-void
.end method

.method public setTriggerNewPage(Z)V
    .locals 1
    .parameter "triggerNewPage"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/itextpdf/text/MarkedSection;->element:Lcom/itextpdf/text/Element;

    check-cast v0, Lcom/itextpdf/text/Section;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/Section;->setTriggerNewPage(Z)V

    .line 262
    return-void
.end method

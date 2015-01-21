.class public Lcom/itextpdf/text/pdf/events/PdfPageEventForwarder;
.super Ljava/lang/Object;
.source "PdfPageEventForwarder.java"

# interfaces
.implements Lcom/itextpdf/text/pdf/PdfPageEvent;


# instance fields
.field protected events:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfPageEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/events/PdfPageEventForwarder;->events:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addPageEvent(Lcom/itextpdf/text/pdf/PdfPageEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/itextpdf/text/pdf/events/PdfPageEventForwarder;->events:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method public onChapter(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;FLcom/itextpdf/text/Paragraph;)V
    .locals 3
    .parameter "writer"
    .parameter "document"
    .parameter "paragraphPosition"
    .parameter "title"

    .prologue
    .line 195
    iget-object v2, p0, Lcom/itextpdf/text/pdf/events/PdfPageEventForwarder;->events:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfPageEvent;

    .line 196
    .local v0, event:Lcom/itextpdf/text/pdf/PdfPageEvent;
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/itextpdf/text/pdf/PdfPageEvent;->onChapter(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;FLcom/itextpdf/text/Paragraph;)V

    goto :goto_0

    .line 198
    .end local v0           #event:Lcom/itextpdf/text/pdf/PdfPageEvent;
    :cond_0
    return-void
.end method

.method public onChapterEnd(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;F)V
    .locals 3
    .parameter "writer"
    .parameter "document"
    .parameter "position"

    .prologue
    .line 213
    iget-object v2, p0, Lcom/itextpdf/text/pdf/events/PdfPageEventForwarder;->events:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfPageEvent;

    .line 214
    .local v0, event:Lcom/itextpdf/text/pdf/PdfPageEvent;
    invoke-interface {v0, p1, p2, p3}, Lcom/itextpdf/text/pdf/PdfPageEvent;->onChapterEnd(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;F)V

    goto :goto_0

    .line 216
    .end local v0           #event:Lcom/itextpdf/text/pdf/PdfPageEvent;
    :cond_0
    return-void
.end method

.method public onCloseDocument(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;)V
    .locals 3
    .parameter "writer"
    .parameter "document"

    .prologue
    .line 132
    iget-object v2, p0, Lcom/itextpdf/text/pdf/events/PdfPageEventForwarder;->events:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfPageEvent;

    .line 133
    .local v0, event:Lcom/itextpdf/text/pdf/PdfPageEvent;
    invoke-interface {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfPageEvent;->onCloseDocument(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;)V

    goto :goto_0

    .line 135
    .end local v0           #event:Lcom/itextpdf/text/pdf/PdfPageEvent;
    :cond_0
    return-void
.end method

.method public onEndPage(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;)V
    .locals 3
    .parameter "writer"
    .parameter "document"

    .prologue
    .line 115
    iget-object v2, p0, Lcom/itextpdf/text/pdf/events/PdfPageEventForwarder;->events:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfPageEvent;

    .line 116
    .local v0, event:Lcom/itextpdf/text/pdf/PdfPageEvent;
    invoke-interface {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfPageEvent;->onEndPage(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;)V

    goto :goto_0

    .line 118
    .end local v0           #event:Lcom/itextpdf/text/pdf/PdfPageEvent;
    :cond_0
    return-void
.end method

.method public onGenericTag(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;Lcom/itextpdf/text/Rectangle;Ljava/lang/String;)V
    .locals 4
    .parameter "writer"
    .parameter "document"
    .parameter "rect"
    .parameter "text"

    .prologue
    .line 279
    iget-object v3, p0, Lcom/itextpdf/text/pdf/events/PdfPageEventForwarder;->events:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfPageEvent;

    .local v0, element:Lcom/itextpdf/text/pdf/PdfPageEvent;
    move-object v1, v0

    .line 280
    check-cast v1, Lcom/itextpdf/text/pdf/PdfPageEvent;

    .line 281
    .local v1, event:Lcom/itextpdf/text/pdf/PdfPageEvent;
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/itextpdf/text/pdf/PdfPageEvent;->onGenericTag(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;Lcom/itextpdf/text/Rectangle;Ljava/lang/String;)V

    goto :goto_0

    .line 283
    .end local v0           #element:Lcom/itextpdf/text/pdf/PdfPageEvent;
    .end local v1           #event:Lcom/itextpdf/text/pdf/PdfPageEvent;
    :cond_0
    return-void
.end method

.method public onOpenDocument(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;)V
    .locals 3
    .parameter "writer"
    .parameter "document"

    .prologue
    .line 83
    iget-object v2, p0, Lcom/itextpdf/text/pdf/events/PdfPageEventForwarder;->events:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfPageEvent;

    .line 84
    .local v0, event:Lcom/itextpdf/text/pdf/PdfPageEvent;
    invoke-interface {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfPageEvent;->onOpenDocument(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;)V

    goto :goto_0

    .line 86
    .end local v0           #event:Lcom/itextpdf/text/pdf/PdfPageEvent;
    :cond_0
    return-void
.end method

.method public onParagraph(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;F)V
    .locals 3
    .parameter "writer"
    .parameter "document"
    .parameter "paragraphPosition"

    .prologue
    .line 153
    iget-object v2, p0, Lcom/itextpdf/text/pdf/events/PdfPageEventForwarder;->events:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfPageEvent;

    .line 154
    .local v0, event:Lcom/itextpdf/text/pdf/PdfPageEvent;
    invoke-interface {v0, p1, p2, p3}, Lcom/itextpdf/text/pdf/PdfPageEvent;->onParagraph(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;F)V

    goto :goto_0

    .line 156
    .end local v0           #event:Lcom/itextpdf/text/pdf/PdfPageEvent;
    :cond_0
    return-void
.end method

.method public onParagraphEnd(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;F)V
    .locals 3
    .parameter "writer"
    .parameter "document"
    .parameter "paragraphPosition"

    .prologue
    .line 173
    iget-object v2, p0, Lcom/itextpdf/text/pdf/events/PdfPageEventForwarder;->events:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfPageEvent;

    .line 174
    .local v0, event:Lcom/itextpdf/text/pdf/PdfPageEvent;
    invoke-interface {v0, p1, p2, p3}, Lcom/itextpdf/text/pdf/PdfPageEvent;->onParagraphEnd(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;F)V

    goto :goto_0

    .line 176
    .end local v0           #event:Lcom/itextpdf/text/pdf/PdfPageEvent;
    :cond_0
    return-void
.end method

.method public onSection(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;FILcom/itextpdf/text/Paragraph;)V
    .locals 7
    .parameter "writer"
    .parameter "document"
    .parameter "paragraphPosition"
    .parameter "depth"
    .parameter "title"

    .prologue
    .line 237
    iget-object v1, p0, Lcom/itextpdf/text/pdf/events/PdfPageEventForwarder;->events:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfPageEvent;

    .local v0, event:Lcom/itextpdf/text/pdf/PdfPageEvent;
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 238
    invoke-interface/range {v0 .. v5}, Lcom/itextpdf/text/pdf/PdfPageEvent;->onSection(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;FILcom/itextpdf/text/Paragraph;)V

    goto :goto_0

    .line 240
    .end local v0           #event:Lcom/itextpdf/text/pdf/PdfPageEvent;
    :cond_0
    return-void
.end method

.method public onSectionEnd(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;F)V
    .locals 3
    .parameter "writer"
    .parameter "document"
    .parameter "position"

    .prologue
    .line 255
    iget-object v2, p0, Lcom/itextpdf/text/pdf/events/PdfPageEventForwarder;->events:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfPageEvent;

    .line 256
    .local v0, event:Lcom/itextpdf/text/pdf/PdfPageEvent;
    invoke-interface {v0, p1, p2, p3}, Lcom/itextpdf/text/pdf/PdfPageEvent;->onSectionEnd(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;F)V

    goto :goto_0

    .line 258
    .end local v0           #event:Lcom/itextpdf/text/pdf/PdfPageEvent;
    :cond_0
    return-void
.end method

.method public onStartPage(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;)V
    .locals 3
    .parameter "writer"
    .parameter "document"

    .prologue
    .line 100
    iget-object v2, p0, Lcom/itextpdf/text/pdf/events/PdfPageEventForwarder;->events:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfPageEvent;

    .line 101
    .local v0, event:Lcom/itextpdf/text/pdf/PdfPageEvent;
    invoke-interface {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfPageEvent;->onStartPage(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;)V

    goto :goto_0

    .line 103
    .end local v0           #event:Lcom/itextpdf/text/pdf/PdfPageEvent;
    :cond_0
    return-void
.end method

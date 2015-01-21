.class public Lcom/itextpdf/text/pdf/events/PdfPCellEventForwarder;
.super Ljava/lang/Object;
.source "PdfPCellEventForwarder.java"

# interfaces
.implements Lcom/itextpdf/text/pdf/PdfPCellEvent;


# instance fields
.field protected events:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfPCellEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/events/PdfPCellEventForwarder;->events:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addCellEvent(Lcom/itextpdf/text/pdf/PdfPCellEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/itextpdf/text/pdf/events/PdfPCellEventForwarder;->events:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method public cellLayout(Lcom/itextpdf/text/pdf/PdfPCell;Lcom/itextpdf/text/Rectangle;[Lcom/itextpdf/text/pdf/PdfContentByte;)V
    .locals 3
    .parameter "cell"
    .parameter "position"
    .parameter "canvases"

    .prologue
    .line 77
    iget-object v2, p0, Lcom/itextpdf/text/pdf/events/PdfPCellEventForwarder;->events:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfPCellEvent;

    .line 78
    .local v0, event:Lcom/itextpdf/text/pdf/PdfPCellEvent;
    invoke-interface {v0, p1, p2, p3}, Lcom/itextpdf/text/pdf/PdfPCellEvent;->cellLayout(Lcom/itextpdf/text/pdf/PdfPCell;Lcom/itextpdf/text/Rectangle;[Lcom/itextpdf/text/pdf/PdfContentByte;)V

    goto :goto_0

    .line 80
    .end local v0           #event:Lcom/itextpdf/text/pdf/PdfPCellEvent;
    :cond_0
    return-void
.end method

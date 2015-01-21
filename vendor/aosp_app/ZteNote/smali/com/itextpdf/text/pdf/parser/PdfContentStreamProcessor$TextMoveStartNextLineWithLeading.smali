.class Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$TextMoveStartNextLineWithLeading;
.super Ljava/lang/Object;
.source "PdfContentStreamProcessor.java"

# interfaces
.implements Lcom/itextpdf/text/pdf/parser/ContentOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextMoveStartNextLineWithLeading"
.end annotation


# instance fields
.field private final moveStartNextLine:Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$TextMoveStartNextLine;

.field private final setTextLeading:Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextLeading;


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$TextMoveStartNextLine;Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextLeading;)V
    .locals 0
    .parameter "moveStartNextLine"
    .parameter "setTextLeading"

    .prologue
    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 547
    iput-object p1, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$TextMoveStartNextLineWithLeading;->moveStartNextLine:Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$TextMoveStartNextLine;

    .line 548
    iput-object p2, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$TextMoveStartNextLineWithLeading;->setTextLeading:Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextLeading;

    .line 549
    return-void
.end method


# virtual methods
.method public invoke(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;Lcom/itextpdf/text/pdf/PdfLiteral;Ljava/util/ArrayList;)V
    .locals 6
    .parameter "processor"
    .parameter "operator"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;",
            "Lcom/itextpdf/text/pdf/PdfLiteral;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, operands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 551
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v1

    .line 553
    .local v1, ty:F
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 554
    .local v0, tlOperands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    const/4 v2, 0x0

    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    neg-float v4, v1

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 555
    iget-object v2, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$TextMoveStartNextLineWithLeading;->setTextLeading:Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextLeading;

    invoke-virtual {v2, p1, v5, v0}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextLeading;->invoke(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;Lcom/itextpdf/text/pdf/PdfLiteral;Ljava/util/ArrayList;)V

    .line 556
    iget-object v2, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$TextMoveStartNextLineWithLeading;->moveStartNextLine:Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$TextMoveStartNextLine;

    invoke-virtual {v2, p1, v5, p3}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$TextMoveStartNextLine;->invoke(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;Lcom/itextpdf/text/pdf/PdfLiteral;Ljava/util/ArrayList;)V

    .line 557
    return-void
.end method

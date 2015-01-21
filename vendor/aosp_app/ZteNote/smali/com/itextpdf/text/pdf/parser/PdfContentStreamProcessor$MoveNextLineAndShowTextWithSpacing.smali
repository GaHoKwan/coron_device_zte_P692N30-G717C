.class Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$MoveNextLineAndShowTextWithSpacing;
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
    name = "MoveNextLineAndShowTextWithSpacing"
.end annotation


# instance fields
.field private final moveNextLineAndShowText:Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$MoveNextLineAndShowText;

.field private final setTextCharacterSpacing:Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextCharacterSpacing;

.field private final setTextWordSpacing:Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextWordSpacing;


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextWordSpacing;Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextCharacterSpacing;Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$MoveNextLineAndShowText;)V
    .locals 0
    .parameter "setTextWordSpacing"
    .parameter "setTextCharacterSpacing"
    .parameter "moveNextLineAndShowText"

    .prologue
    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    iput-object p1, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$MoveNextLineAndShowTextWithSpacing;->setTextWordSpacing:Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextWordSpacing;

    .line 454
    iput-object p2, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$MoveNextLineAndShowTextWithSpacing;->setTextCharacterSpacing:Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextCharacterSpacing;

    .line 455
    iput-object p3, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$MoveNextLineAndShowTextWithSpacing;->moveNextLineAndShowText:Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$MoveNextLineAndShowText;

    .line 456
    return-void
.end method


# virtual methods
.method public invoke(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;Lcom/itextpdf/text/pdf/PdfLiteral;Ljava/util/ArrayList;)V
    .locals 10
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
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 459
    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfNumber;

    .line 460
    .local v1, aw:Lcom/itextpdf/text/pdf/PdfNumber;
    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfNumber;

    .line 461
    .local v0, ac:Lcom/itextpdf/text/pdf/PdfNumber;
    const/4 v6, 0x2

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/PdfString;

    .line 463
    .local v2, string:Lcom/itextpdf/text/pdf/PdfString;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 464
    .local v5, twOperands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    invoke-virtual {v5, v7, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 465
    iget-object v6, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$MoveNextLineAndShowTextWithSpacing;->setTextWordSpacing:Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextWordSpacing;

    invoke-virtual {v6, p1, v9, v5}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextWordSpacing;->invoke(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;Lcom/itextpdf/text/pdf/PdfLiteral;Ljava/util/ArrayList;)V

    .line 467
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 468
    .local v3, tcOperands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    invoke-virtual {v3, v7, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 469
    iget-object v6, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$MoveNextLineAndShowTextWithSpacing;->setTextCharacterSpacing:Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextCharacterSpacing;

    invoke-virtual {v6, p1, v9, v3}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextCharacterSpacing;->invoke(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;Lcom/itextpdf/text/pdf/PdfLiteral;Ljava/util/ArrayList;)V

    .line 471
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 472
    .local v4, tickOperands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    invoke-virtual {v4, v7, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 473
    iget-object v6, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$MoveNextLineAndShowTextWithSpacing;->moveNextLineAndShowText:Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$MoveNextLineAndShowText;

    invoke-virtual {v6, p1, v9, v4}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$MoveNextLineAndShowText;->invoke(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;Lcom/itextpdf/text/pdf/PdfLiteral;Ljava/util/ArrayList;)V

    .line 474
    return-void
.end method

.class Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$MoveNextLineAndShowText;
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
    name = "MoveNextLineAndShowText"
.end annotation


# instance fields
.field private final showText:Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ShowText;

.field private final textMoveNextLine:Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$TextMoveNextLine;


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$TextMoveNextLine;Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ShowText;)V
    .locals 0
    .parameter "textMoveNextLine"
    .parameter "showText"

    .prologue
    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 484
    iput-object p1, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$MoveNextLineAndShowText;->textMoveNextLine:Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$TextMoveNextLine;

    .line 485
    iput-object p2, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$MoveNextLineAndShowText;->showText:Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ShowText;

    .line 486
    return-void
.end method


# virtual methods
.method public invoke(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;Lcom/itextpdf/text/pdf/PdfLiteral;Ljava/util/ArrayList;)V
    .locals 4
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
    const/4 v3, 0x0

    .line 489
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$MoveNextLineAndShowText;->textMoveNextLine:Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$TextMoveNextLine;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p1, v3, v1}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$TextMoveNextLine;->invoke(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;Lcom/itextpdf/text/pdf/PdfLiteral;Ljava/util/ArrayList;)V

    .line 490
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$MoveNextLineAndShowText;->showText:Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ShowText;

    invoke-virtual {v0, p1, v3, p3}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ShowText;->invoke(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;Lcom/itextpdf/text/pdf/PdfLiteral;Ljava/util/ArrayList;)V

    .line 491
    return-void
.end method

.class Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$TextMoveStartNextLine;
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
    name = "TextMoveStartNextLine"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 563
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$TextMoveStartNextLine;-><init>()V

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
    .line 565
    .local p3, operands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v1

    .line 566
    .local v1, tx:F
    const/4 v3, 0x1

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v2

    .line 568
    .local v2, ty:F
    new-instance v0, Lcom/itextpdf/text/pdf/parser/Matrix;

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/pdf/parser/Matrix;-><init>(FF)V

    .line 569
    .local v0, translationMatrix:Lcom/itextpdf/text/pdf/parser/Matrix;
    #getter for: Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->textLineMatrix:Lcom/itextpdf/text/pdf/parser/Matrix;
    invoke-static {p1}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->access$2800(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;)Lcom/itextpdf/text/pdf/parser/Matrix;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/parser/Matrix;->multiply(Lcom/itextpdf/text/pdf/parser/Matrix;)Lcom/itextpdf/text/pdf/parser/Matrix;

    move-result-object v3

    #setter for: Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->textMatrix:Lcom/itextpdf/text/pdf/parser/Matrix;
    invoke-static {p1, v3}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->access$2902(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;Lcom/itextpdf/text/pdf/parser/Matrix;)Lcom/itextpdf/text/pdf/parser/Matrix;

    .line 570
    #getter for: Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->textMatrix:Lcom/itextpdf/text/pdf/parser/Matrix;
    invoke-static {p1}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->access$2900(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;)Lcom/itextpdf/text/pdf/parser/Matrix;

    move-result-object v3

    #setter for: Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->textLineMatrix:Lcom/itextpdf/text/pdf/parser/Matrix;
    invoke-static {p1, v3}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->access$2802(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;Lcom/itextpdf/text/pdf/parser/Matrix;)Lcom/itextpdf/text/pdf/parser/Matrix;

    .line 571
    return-void
.end method

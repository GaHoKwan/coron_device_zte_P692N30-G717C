.class Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$EndText;
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
    name = "EndText"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 733
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 733
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$EndText;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;Lcom/itextpdf/text/pdf/PdfLiteral;Ljava/util/ArrayList;)V
    .locals 1
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
    const/4 v0, 0x0

    .line 735
    #setter for: Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->textMatrix:Lcom/itextpdf/text/pdf/parser/Matrix;
    invoke-static {p1, v0}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->access$2902(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;Lcom/itextpdf/text/pdf/parser/Matrix;)Lcom/itextpdf/text/pdf/parser/Matrix;

    .line 736
    #setter for: Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->textLineMatrix:Lcom/itextpdf/text/pdf/parser/Matrix;
    invoke-static {p1, v0}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->access$2802(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;Lcom/itextpdf/text/pdf/parser/Matrix;)Lcom/itextpdf/text/pdf/parser/Matrix;

    .line 737
    #calls: Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->endText()V
    invoke-static {p1}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->access$3500(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;)V

    .line 738
    return-void
.end method

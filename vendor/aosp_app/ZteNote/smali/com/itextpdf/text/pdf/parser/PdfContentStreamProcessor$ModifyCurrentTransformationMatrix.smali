.class Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ModifyCurrentTransformationMatrix;
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
    name = "ModifyCurrentTransformationMatrix"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 696
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ModifyCurrentTransformationMatrix;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;Lcom/itextpdf/text/pdf/PdfLiteral;Ljava/util/ArrayList;)V
    .locals 9
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
    .line 698
    .local p3, operands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    const/4 v8, 0x0

    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v1

    .line 699
    .local v1, a:F
    const/4 v8, 0x1

    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v2

    .line 700
    .local v2, b:F
    const/4 v8, 0x2

    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v3

    .line 701
    .local v3, c:F
    const/4 v8, 0x3

    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v4

    .line 702
    .local v4, d:F
    const/4 v8, 0x4

    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v5

    .line 703
    .local v5, e:F
    const/4 v8, 0x5

    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v6

    .line 704
    .local v6, f:F
    new-instance v0, Lcom/itextpdf/text/pdf/parser/Matrix;

    invoke-direct/range {v0 .. v6}, Lcom/itextpdf/text/pdf/parser/Matrix;-><init>(FFFFFF)V

    .line 705
    .local v0, matrix:Lcom/itextpdf/text/pdf/parser/Matrix;
    #getter for: Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->gsStack:Ljava/util/Stack;
    invoke-static {p1}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->access$3300(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;)Ljava/util/Stack;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/text/pdf/parser/GraphicsState;

    .line 706
    .local v7, gs:Lcom/itextpdf/text/pdf/parser/GraphicsState;
    iget-object v8, v7, Lcom/itextpdf/text/pdf/parser/GraphicsState;->ctm:Lcom/itextpdf/text/pdf/parser/Matrix;

    invoke-virtual {v0, v8}, Lcom/itextpdf/text/pdf/parser/Matrix;->multiply(Lcom/itextpdf/text/pdf/parser/Matrix;)Lcom/itextpdf/text/pdf/parser/Matrix;

    move-result-object v8

    iput-object v8, v7, Lcom/itextpdf/text/pdf/parser/GraphicsState;->ctm:Lcom/itextpdf/text/pdf/parser/Matrix;

    .line 707
    return-void
.end method

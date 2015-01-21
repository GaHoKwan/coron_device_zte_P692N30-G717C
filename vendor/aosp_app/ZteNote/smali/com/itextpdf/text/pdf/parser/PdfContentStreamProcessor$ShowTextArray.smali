.class Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ShowTextArray;
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
    name = "ShowTextArray"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 426
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ShowTextArray;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;Lcom/itextpdf/text/pdf/PdfLiteral;Ljava/util/ArrayList;)V
    .locals 5
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
    .line 428
    .local p3, operands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    .line 429
    .local v0, array:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v3, 0x0

    .line 430
    .local v3, tj:F
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfArray;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/pdf/PdfObject;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 431
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfObject;

    .line 432
    .local v1, entryObj:Lcom/itextpdf/text/pdf/PdfObject;
    instance-of v4, v1, Lcom/itextpdf/text/pdf/PdfString;

    if-eqz v4, :cond_0

    .line 433
    check-cast v1, Lcom/itextpdf/text/pdf/PdfString;

    .end local v1           #entryObj:Lcom/itextpdf/text/pdf/PdfObject;
    #calls: Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->displayPdfString(Lcom/itextpdf/text/pdf/PdfString;)V
    invoke-static {p1, v1}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->access$2500(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;Lcom/itextpdf/text/pdf/PdfString;)V

    .line 434
    const/4 v3, 0x0

    goto :goto_0

    .line 436
    .restart local v1       #entryObj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_0
    check-cast v1, Lcom/itextpdf/text/pdf/PdfNumber;

    .end local v1           #entryObj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v3

    .line 437
    #calls: Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->applyTextAdjust(F)V
    invoke-static {p1, v3}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->access$2600(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;F)V

    goto :goto_0

    .line 441
    :cond_1
    return-void
.end method

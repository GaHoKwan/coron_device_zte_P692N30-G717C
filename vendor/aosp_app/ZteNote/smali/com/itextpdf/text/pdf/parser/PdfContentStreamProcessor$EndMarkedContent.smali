.class Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$EndMarkedContent;
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
    name = "EndMarkedContent"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 783
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 783
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$EndMarkedContent;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;Lcom/itextpdf/text/pdf/PdfLiteral;Ljava/util/ArrayList;)V
    .locals 0
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 787
    .local p3, operands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    #calls: Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->endMarkedContent()V
    invoke-static {p1}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->access$3700(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;)V

    .line 788
    return-void
.end method

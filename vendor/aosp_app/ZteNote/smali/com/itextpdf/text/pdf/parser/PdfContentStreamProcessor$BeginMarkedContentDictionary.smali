.class Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$BeginMarkedContentDictionary;
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
    name = "BeginMarkedContentDictionary"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 759
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 759
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$BeginMarkedContentDictionary;-><init>()V

    return-void
.end method

.method private getPropertiesDictionary(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ResourceDictionary;)Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 2
    .parameter "operand1"
    .parameter "resources"

    .prologue
    .line 771
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfObject;->isDictionary()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 772
    check-cast p1, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 775
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    move-object v0, p1

    .line 774
    check-cast v0, Lcom/itextpdf/text/pdf/PdfName;

    .line 775
    .local v0, dictionaryName:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {p2, v0}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ResourceDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public invoke(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;Lcom/itextpdf/text/pdf/PdfLiteral;Ljava/util/ArrayList;)V
    .locals 3
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
    .line 765
    .local p3, operands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfObject;

    .line 767
    .local v0, properties:Lcom/itextpdf/text/pdf/PdfObject;
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfName;

    #getter for: Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->resources:Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ResourceDictionary;
    invoke-static {p1}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->access$3000(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;)Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ResourceDictionary;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$BeginMarkedContentDictionary;->getPropertiesDictionary(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ResourceDictionary;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v2

    #calls: Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->beginMarkedContent(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfDictionary;)V
    invoke-static {p1, v1, v2}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->access$3600(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 768
    return-void
.end method

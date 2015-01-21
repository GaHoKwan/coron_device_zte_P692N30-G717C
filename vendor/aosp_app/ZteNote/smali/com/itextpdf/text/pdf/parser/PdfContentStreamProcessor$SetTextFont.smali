.class Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextFont;
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
    name = "SetTextFont"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 577
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextFont;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;Lcom/itextpdf/text/pdf/PdfLiteral;Ljava/util/ArrayList;)V
    .locals 7
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
    .line 579
    .local p3, operands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    const/4 v5, 0x0

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/PdfName;

    .line 580
    .local v2, fontResourceName:Lcom/itextpdf/text/pdf/PdfName;
    const/4 v5, 0x1

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v4

    .line 582
    .local v4, size:F
    #getter for: Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->resources:Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ResourceDictionary;
    invoke-static {p1}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->access$3000(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;)Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ResourceDictionary;

    move-result-object v5

    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->FONT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v5, v6}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ResourceDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v3

    .line 584
    .local v3, fontsDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-virtual {v3, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    .line 585
    .local v1, fontObject:Lcom/itextpdf/text/pdf/PdfObject;
    instance-of v5, v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    if-eqz v5, :cond_0

    .line 586
    check-cast v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local v1           #fontObject:Lcom/itextpdf/text/pdf/PdfObject;
    #calls: Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->getFont(Lcom/itextpdf/text/pdf/PdfDictionary;)Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;
    invoke-static {p1, v1}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->access$3100(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;Lcom/itextpdf/text/pdf/PdfDictionary;)Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;

    move-result-object v0

    .line 590
    .local v0, font:Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;
    :goto_0
    #calls: Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->gs()Lcom/itextpdf/text/pdf/parser/GraphicsState;
    invoke-static {p1}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->access$2700(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;)Lcom/itextpdf/text/pdf/parser/GraphicsState;

    move-result-object v5

    iput-object v0, v5, Lcom/itextpdf/text/pdf/parser/GraphicsState;->font:Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;

    .line 591
    #calls: Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->gs()Lcom/itextpdf/text/pdf/parser/GraphicsState;
    invoke-static {p1}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->access$2700(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;)Lcom/itextpdf/text/pdf/parser/GraphicsState;

    move-result-object v5

    iput v4, v5, Lcom/itextpdf/text/pdf/parser/GraphicsState;->fontSize:F

    .line 593
    return-void

    .line 588
    .end local v0           #font:Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;
    .restart local v1       #fontObject:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_0
    check-cast v1, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .end local v1           #fontObject:Lcom/itextpdf/text/pdf/PdfObject;
    #calls: Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->getFont(Lcom/itextpdf/text/pdf/PRIndirectReference;)Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;
    invoke-static {p1, v1}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->access$3200(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;Lcom/itextpdf/text/pdf/PRIndirectReference;)Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;

    move-result-object v0

    .restart local v0       #font:Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;
    goto :goto_0
.end method

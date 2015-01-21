.class Lcom/itextpdf/text/pdf/ColorDetails;
.super Ljava/lang/Object;
.source "ColorDetails.java"


# instance fields
.field colorName:Lcom/itextpdf/text/pdf/PdfName;

.field indirectReference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

.field spotcolor:Lcom/itextpdf/text/pdf/PdfSpotColor;


# direct methods
.method constructor <init>(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;Lcom/itextpdf/text/pdf/PdfSpotColor;)V
    .locals 0
    .parameter "colorName"
    .parameter "indirectReference"
    .parameter "scolor"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/itextpdf/text/pdf/ColorDetails;->colorName:Lcom/itextpdf/text/pdf/PdfName;

    .line 69
    iput-object p2, p0, Lcom/itextpdf/text/pdf/ColorDetails;->indirectReference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 70
    iput-object p3, p0, Lcom/itextpdf/text/pdf/ColorDetails;->spotcolor:Lcom/itextpdf/text/pdf/PdfSpotColor;

    .line 71
    return-void
.end method


# virtual methods
.method getColorName()Lcom/itextpdf/text/pdf/PdfName;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/itextpdf/text/pdf/ColorDetails;->colorName:Lcom/itextpdf/text/pdf/PdfName;

    return-object v0
.end method

.method getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/itextpdf/text/pdf/ColorDetails;->indirectReference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    return-object v0
.end method

.method getSpotColor(Lcom/itextpdf/text/pdf/PdfWriter;)Lcom/itextpdf/text/pdf/PdfObject;
    .locals 1
    .parameter "writer"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/itextpdf/text/pdf/ColorDetails;->spotcolor:Lcom/itextpdf/text/pdf/PdfSpotColor;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfSpotColor;->getSpotObject(Lcom/itextpdf/text/pdf/PdfWriter;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    return-object v0
.end method

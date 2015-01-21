.class Lcom/itextpdf/text/pdf/PdfColor;
.super Lcom/itextpdf/text/pdf/PdfArray;
.source "PdfColor.java"


# direct methods
.method constructor <init>(III)V
    .locals 5
    .parameter "red"
    .parameter "green"
    .parameter "blue"

    .prologue
    const-wide v3, 0x406fe00000000000L

    .line 67
    new-instance v0, Lcom/itextpdf/text/pdf/PdfNumber;

    and-int/lit16 v1, p1, 0xff

    int-to-double v1, v1

    div-double/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(D)V

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 68
    new-instance v0, Lcom/itextpdf/text/pdf/PdfNumber;

    and-int/lit16 v1, p2, 0xff

    int-to-double v1, v1

    div-double/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfColor;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 69
    new-instance v0, Lcom/itextpdf/text/pdf/PdfNumber;

    and-int/lit16 v1, p3, 0xff

    int-to-double v1, v1

    div-double/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfColor;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 70
    return-void
.end method

.method constructor <init>(Lcom/itextpdf/text/BaseColor;)V
    .locals 3
    .parameter "color"

    .prologue
    .line 73
    invoke-virtual {p1}, Lcom/itextpdf/text/BaseColor;->getRed()I

    move-result v0

    invoke-virtual {p1}, Lcom/itextpdf/text/BaseColor;->getGreen()I

    move-result v1

    invoke-virtual {p1}, Lcom/itextpdf/text/BaseColor;->getBlue()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfColor;-><init>(III)V

    .line 74
    return-void
.end method

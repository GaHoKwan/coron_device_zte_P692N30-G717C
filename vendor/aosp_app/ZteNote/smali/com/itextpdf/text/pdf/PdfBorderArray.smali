.class public Lcom/itextpdf/text/pdf/PdfBorderArray;
.super Lcom/itextpdf/text/pdf/PdfArray;
.source "PdfBorderArray.java"


# direct methods
.method public constructor <init>(FFF)V
    .locals 1
    .parameter "hRadius"
    .parameter "vRadius"
    .parameter "width"

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/itextpdf/text/pdf/PdfBorderArray;-><init>(FFFLcom/itextpdf/text/pdf/PdfDashPattern;)V

    .line 62
    return-void
.end method

.method public constructor <init>(FFFLcom/itextpdf/text/pdf/PdfDashPattern;)V
    .locals 1
    .parameter "hRadius"
    .parameter "vRadius"
    .parameter "width"
    .parameter "dash"

    .prologue
    .line 69
    new-instance v0, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v0, p1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 70
    new-instance v0, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v0, p2}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfBorderArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 71
    new-instance v0, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v0, p3}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfBorderArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 72
    if-eqz p4, :cond_0

    .line 73
    invoke-virtual {p0, p4}, Lcom/itextpdf/text/pdf/PdfBorderArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 74
    :cond_0
    return-void
.end method

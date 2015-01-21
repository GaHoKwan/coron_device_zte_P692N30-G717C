.class public Lcom/itextpdf/text/pdf/PdfTransparencyGroup;
.super Lcom/itextpdf/text/pdf/PdfDictionary;
.source "PdfTransparencyGroup.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 57
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->TRANSPARENCY:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfTransparencyGroup;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 58
    return-void
.end method


# virtual methods
.method public setIsolated(Z)V
    .locals 2
    .parameter "isolated"

    .prologue
    .line 65
    if-eqz p1, :cond_0

    .line 66
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->I:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfBoolean;->PDFTRUE:Lcom/itextpdf/text/pdf/PdfBoolean;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfTransparencyGroup;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 69
    :goto_0
    return-void

    .line 68
    :cond_0
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->I:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfTransparencyGroup;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    goto :goto_0
.end method

.method public setKnockout(Z)V
    .locals 2
    .parameter "knockout"

    .prologue
    .line 76
    if-eqz p1, :cond_0

    .line 77
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->K:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfBoolean;->PDFTRUE:Lcom/itextpdf/text/pdf/PdfBoolean;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfTransparencyGroup;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 80
    :goto_0
    return-void

    .line 79
    :cond_0
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->K:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfTransparencyGroup;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    goto :goto_0
.end method

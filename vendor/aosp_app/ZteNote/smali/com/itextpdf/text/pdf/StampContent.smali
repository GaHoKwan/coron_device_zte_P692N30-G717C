.class public Lcom/itextpdf/text/pdf/StampContent;
.super Lcom/itextpdf/text/pdf/PdfContentByte;
.source "StampContent.java"


# instance fields
.field pageResources:Lcom/itextpdf/text/pdf/PageResources;

.field ps:Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;


# direct methods
.method constructor <init>(Lcom/itextpdf/text/pdf/PdfStamperImp;Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;)V
    .locals 1
    .parameter "stamper"
    .parameter "ps"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/PdfContentByte;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 53
    iput-object p2, p0, Lcom/itextpdf/text/pdf/StampContent;->ps:Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;

    .line 54
    iget-object v0, p2, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;->pageResources:Lcom/itextpdf/text/pdf/PageResources;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/StampContent;->pageResources:Lcom/itextpdf/text/pdf/PageResources;

    .line 55
    return-void
.end method


# virtual methods
.method addAnnotation(Lcom/itextpdf/text/pdf/PdfAnnotation;)V
    .locals 2
    .parameter "annot"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/itextpdf/text/pdf/StampContent;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    check-cast v0, Lcom/itextpdf/text/pdf/PdfStamperImp;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/StampContent;->ps:Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;

    iget-object v1, v1, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;->pageN:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v0, p1, v1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addAnnotation(Lcom/itextpdf/text/pdf/PdfAnnotation;Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 77
    return-void
.end method

.method public getDuplicate()Lcom/itextpdf/text/pdf/PdfContentByte;
    .locals 3

    .prologue
    .line 68
    new-instance v1, Lcom/itextpdf/text/pdf/StampContent;

    iget-object v0, p0, Lcom/itextpdf/text/pdf/StampContent;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    check-cast v0, Lcom/itextpdf/text/pdf/PdfStamperImp;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/StampContent;->ps:Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;

    invoke-direct {v1, v0, v2}, Lcom/itextpdf/text/pdf/StampContent;-><init>(Lcom/itextpdf/text/pdf/PdfStamperImp;Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;)V

    return-object v1
.end method

.method getPageResources()Lcom/itextpdf/text/pdf/PageResources;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/itextpdf/text/pdf/StampContent;->pageResources:Lcom/itextpdf/text/pdf/PageResources;

    return-object v0
.end method

.method public setAction(Lcom/itextpdf/text/pdf/PdfAction;FFFF)V
    .locals 8
    .parameter "action"
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/itextpdf/text/pdf/StampContent;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move-object v7, v0

    check-cast v7, Lcom/itextpdf/text/pdf/PdfStamperImp;

    new-instance v0, Lcom/itextpdf/text/pdf/PdfAnnotation;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/StampContent;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfAnnotation;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;FFFFLcom/itextpdf/text/pdf/PdfAction;)V

    iget-object v1, p0, Lcom/itextpdf/text/pdf/StampContent;->ps:Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;

    iget-object v1, v1, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;->pageN:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v7, v0, v1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addAnnotation(Lcom/itextpdf/text/pdf/PdfAnnotation;Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 59
    return-void
.end method

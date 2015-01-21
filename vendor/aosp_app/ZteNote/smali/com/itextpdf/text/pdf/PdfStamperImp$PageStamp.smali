.class Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;
.super Ljava/lang/Object;
.source "PdfStamperImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/PdfStamperImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PageStamp"
.end annotation


# instance fields
.field over:Lcom/itextpdf/text/pdf/StampContent;

.field pageN:Lcom/itextpdf/text/pdf/PdfDictionary;

.field pageResources:Lcom/itextpdf/text/pdf/PageResources;

.field replacePoint:I

.field under:Lcom/itextpdf/text/pdf/StampContent;


# direct methods
.method constructor <init>(Lcom/itextpdf/text/pdf/PdfStamperImp;Lcom/itextpdf/text/pdf/PdfReader;Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 3
    .parameter "stamper"
    .parameter "reader"
    .parameter "pageN"

    .prologue
    .line 1727
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1725
    const/4 v1, 0x0

    iput v1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;->replacePoint:I

    .line 1728
    iput-object p3, p0, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;->pageN:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 1729
    new-instance v1, Lcom/itextpdf/text/pdf/PageResources;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/PageResources;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;->pageResources:Lcom/itextpdf/text/pdf/PageResources;

    .line 1730
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->RESOURCES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p3, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 1731
    .local v0, resources:Lcom/itextpdf/text/pdf/PdfDictionary;
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;->pageResources:Lcom/itextpdf/text/pdf/PageResources;

    iget-object v2, p1, Lcom/itextpdf/text/pdf/PdfStamperImp;->namePtr:[I

    invoke-virtual {v1, v0, v2}, Lcom/itextpdf/text/pdf/PageResources;->setOriginalResources(Lcom/itextpdf/text/pdf/PdfDictionary;[I)V

    .line 1732
    return-void
.end method

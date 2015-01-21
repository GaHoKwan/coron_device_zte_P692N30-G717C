.class Lcom/itextpdf/text/pdf/PdfResources;
.super Lcom/itextpdf/text/pdf/PdfDictionary;
.source "PdfResources.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 71
    return-void
.end method


# virtual methods
.method add(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 2
    .parameter "key"
    .parameter "resource"

    .prologue
    .line 76
    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/PdfDictionary;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 83
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfResources;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 79
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v0, :cond_1

    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/text/pdf/PdfResources;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/PdfDictionary;->putAll(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    goto :goto_0
.end method

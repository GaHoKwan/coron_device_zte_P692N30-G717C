.class public Lcom/itextpdf/text/pdf/parser/MarkedContentInfo;
.super Ljava/lang/Object;
.source "MarkedContentInfo.java"


# instance fields
.field private final dictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

.field private final tag:Lcom/itextpdf/text/pdf/PdfName;


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 0
    .parameter "tag"
    .parameter "dictionary"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/itextpdf/text/pdf/parser/MarkedContentInfo;->tag:Lcom/itextpdf/text/pdf/PdfName;

    .line 60
    if-eqz p2, :cond_0

    .end local p2
    :goto_0
    iput-object p2, p0, Lcom/itextpdf/text/pdf/parser/MarkedContentInfo;->dictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 61
    return-void

    .line 60
    .restart local p2
    :cond_0
    new-instance p2, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local p2
    invoke-direct {p2}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public getMcid()I
    .locals 3

    .prologue
    .line 86
    iget-object v1, p0, Lcom/itextpdf/text/pdf/parser/MarkedContentInfo;->dictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->MCID:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v0

    .line 87
    .local v0, id:Lcom/itextpdf/text/pdf/PdfNumber;
    if-nez v0, :cond_0

    .line 88
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "MarkedContentInfo does not contain MCID"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v1

    return v1
.end method

.method public getTag()Lcom/itextpdf/text/pdf/PdfName;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/MarkedContentInfo;->tag:Lcom/itextpdf/text/pdf/PdfName;

    return-object v0
.end method

.method public hasMcid()Z
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/MarkedContentInfo;->dictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->MCID:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->contains(Lcom/itextpdf/text/pdf/PdfName;)Z

    move-result v0

    return v0
.end method

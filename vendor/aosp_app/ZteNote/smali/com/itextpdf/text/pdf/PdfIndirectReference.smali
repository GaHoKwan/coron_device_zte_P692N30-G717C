.class public Lcom/itextpdf/text/pdf/PdfIndirectReference;
.super Lcom/itextpdf/text/pdf/PdfObject;
.source "PdfIndirectReference.java"


# instance fields
.field protected generation:I

.field protected number:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfObject;-><init>(I)V

    .line 68
    iput v0, p0, Lcom/itextpdf/text/pdf/PdfIndirectReference;->generation:I

    .line 74
    return-void
.end method

.method constructor <init>(II)V
    .locals 1
    .parameter "type"
    .parameter "number"

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/itextpdf/text/pdf/PdfIndirectReference;-><init>(III)V

    .line 99
    return-void
.end method

.method constructor <init>(III)V
    .locals 3
    .parameter "type"
    .parameter "number"
    .parameter "generation"

    .prologue
    const/4 v2, 0x0

    .line 85
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " R"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/itextpdf/text/pdf/PdfObject;-><init>(ILjava/lang/String;)V

    .line 68
    iput v2, p0, Lcom/itextpdf/text/pdf/PdfIndirectReference;->generation:I

    .line 86
    iput p2, p0, Lcom/itextpdf/text/pdf/PdfIndirectReference;->number:I

    .line 87
    iput p3, p0, Lcom/itextpdf/text/pdf/PdfIndirectReference;->generation:I

    .line 88
    return-void
.end method


# virtual methods
.method public getGeneration()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfIndirectReference;->generation:I

    return v0
.end method

.method public getNumber()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfIndirectReference;->number:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfIndirectReference;->number:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfIndirectReference;->generation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " R"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

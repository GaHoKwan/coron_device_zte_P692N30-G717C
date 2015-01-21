.class public Lcom/itextpdf/text/pdf/PRIndirectReference;
.super Lcom/itextpdf/text/pdf/PdfIndirectReference;
.source "PRIndirectReference.java"


# instance fields
.field protected reader:Lcom/itextpdf/text/pdf/PdfReader;


# direct methods
.method constructor <init>(Lcom/itextpdf/text/pdf/PdfReader;I)V
    .locals 1
    .parameter "reader"
    .parameter "number"

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/itextpdf/text/pdf/PRIndirectReference;-><init>(Lcom/itextpdf/text/pdf/PdfReader;II)V

    .line 79
    return-void
.end method

.method constructor <init>(Lcom/itextpdf/text/pdf/PdfReader;II)V
    .locals 1
    .parameter "reader"
    .parameter "number"
    .parameter "generation"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfIndirectReference;-><init>()V

    .line 64
    const/16 v0, 0xa

    iput v0, p0, Lcom/itextpdf/text/pdf/PRIndirectReference;->type:I

    .line 65
    iput p2, p0, Lcom/itextpdf/text/pdf/PRIndirectReference;->number:I

    .line 66
    iput p3, p0, Lcom/itextpdf/text/pdf/PRIndirectReference;->generation:I

    .line 67
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PRIndirectReference;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    .line 68
    return-void
.end method


# virtual methods
.method public getReader()Lcom/itextpdf/text/pdf/PdfReader;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PRIndirectReference;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    return-object v0
.end method

.method public setNumber(II)V
    .locals 0
    .parameter "number"
    .parameter "generation"

    .prologue
    .line 93
    iput p1, p0, Lcom/itextpdf/text/pdf/PRIndirectReference;->number:I

    .line 94
    iput p2, p0, Lcom/itextpdf/text/pdf/PRIndirectReference;->generation:I

    .line 95
    return-void
.end method

.method public toPdf(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/io/OutputStream;)V
    .locals 4
    .parameter "writer"
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PRIndirectReference;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    iget v2, p0, Lcom/itextpdf/text/pdf/PRIndirectReference;->number:I

    iget v3, p0, Lcom/itextpdf/text/pdf/PRIndirectReference;->generation:I

    invoke-virtual {p1, v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfWriter;->getNewObjectNumber(Lcom/itextpdf/text/pdf/PdfReader;II)I

    move-result v0

    .line 85
    .local v0, n:I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " 0 R"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/itextpdf/text/pdf/PdfEncodings;->convertToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 86
    return-void
.end method

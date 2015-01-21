.class public Lcom/itextpdf/text/pdf/PdfConcatenate;
.super Ljava/lang/Object;
.source "PdfConcatenate.java"


# instance fields
.field protected copy:Lcom/itextpdf/text/pdf/PdfCopy;

.field protected document:Lcom/itextpdf/text/Document;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/text/pdf/PdfConcatenate;-><init>(Ljava/io/OutputStream;Z)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 2
    .parameter "os"
    .parameter "smart"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lcom/itextpdf/text/Document;

    invoke-direct {v0}, Lcom/itextpdf/text/Document;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfConcatenate;->document:Lcom/itextpdf/text/Document;

    .line 77
    if-eqz p2, :cond_0

    .line 78
    new-instance v0, Lcom/itextpdf/text/pdf/PdfSmartCopy;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfConcatenate;->document:Lcom/itextpdf/text/Document;

    invoke-direct {v0, v1, p1}, Lcom/itextpdf/text/pdf/PdfSmartCopy;-><init>(Lcom/itextpdf/text/Document;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfConcatenate;->copy:Lcom/itextpdf/text/pdf/PdfCopy;

    .line 81
    :goto_0
    return-void

    .line 80
    :cond_0
    new-instance v0, Lcom/itextpdf/text/pdf/PdfCopy;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfConcatenate;->document:Lcom/itextpdf/text/Document;

    invoke-direct {v0, v1, p1}, Lcom/itextpdf/text/pdf/PdfCopy;-><init>(Lcom/itextpdf/text/Document;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfConcatenate;->copy:Lcom/itextpdf/text/pdf/PdfCopy;

    goto :goto_0
.end method


# virtual methods
.method public addPages(Lcom/itextpdf/text/pdf/PdfReader;)I
    .locals 4
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfConcatenate;->open()V

    .line 92
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getNumberOfPages()I

    move-result v1

    .line 93
    .local v1, n:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    if-gt v0, v1, :cond_0

    .line 94
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfConcatenate;->copy:Lcom/itextpdf/text/pdf/PdfCopy;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfConcatenate;->copy:Lcom/itextpdf/text/pdf/PdfCopy;

    invoke-virtual {v3, p1, v0}, Lcom/itextpdf/text/pdf/PdfCopy;->getImportedPage(Lcom/itextpdf/text/pdf/PdfReader;I)Lcom/itextpdf/text/pdf/PdfImportedPage;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/PdfCopy;->addPage(Lcom/itextpdf/text/pdf/PdfImportedPage;)V

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfConcatenate;->copy:Lcom/itextpdf/text/pdf/PdfCopy;

    invoke-virtual {v2, p1}, Lcom/itextpdf/text/pdf/PdfCopy;->freeReader(Lcom/itextpdf/text/pdf/PdfReader;)V

    .line 97
    return v1
.end method

.method public close()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfConcatenate;->document:Lcom/itextpdf/text/Document;

    invoke-virtual {v0}, Lcom/itextpdf/text/Document;->close()V

    .line 122
    return-void
.end method

.method public getWriter()Lcom/itextpdf/text/pdf/PdfCopy;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfConcatenate;->copy:Lcom/itextpdf/text/pdf/PdfCopy;

    return-object v0
.end method

.method public open()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfConcatenate;->document:Lcom/itextpdf/text/Document;

    invoke-virtual {v0}, Lcom/itextpdf/text/Document;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfConcatenate;->document:Lcom/itextpdf/text/Document;

    invoke-virtual {v0}, Lcom/itextpdf/text/Document;->open()V

    .line 115
    :cond_0
    return-void
.end method

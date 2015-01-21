.class public Lcom/itextpdf/text/pdf/PdfPSXObject;
.super Lcom/itextpdf/text/pdf/PdfTemplate;
.source "PdfPSXObject.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfTemplate;-><init>()V

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfWriter;)V
    .locals 0
    .parameter "wr"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/PdfTemplate;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 64
    return-void
.end method


# virtual methods
.method public getDuplicate()Lcom/itextpdf/text/pdf/PdfContentByte;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Lcom/itextpdf/text/pdf/PdfPSXObject;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfPSXObject;-><init>()V

    .line 91
    .local v0, tpl:Lcom/itextpdf/text/pdf/PdfPSXObject;
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPSXObject;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    iput-object v1, v0, Lcom/itextpdf/text/pdf/PdfPSXObject;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    .line 92
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPSXObject;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    iput-object v1, v0, Lcom/itextpdf/text/pdf/PdfPSXObject;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    .line 93
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPSXObject;->thisReference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    iput-object v1, v0, Lcom/itextpdf/text/pdf/PdfPSXObject;->thisReference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 94
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPSXObject;->pageResources:Lcom/itextpdf/text/pdf/PageResources;

    iput-object v1, v0, Lcom/itextpdf/text/pdf/PdfPSXObject;->pageResources:Lcom/itextpdf/text/pdf/PageResources;

    .line 95
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfPSXObject;->separator:I

    iput v1, v0, Lcom/itextpdf/text/pdf/PdfPSXObject;->separator:I

    .line 96
    return-object v0
.end method

.method getFormXObject(I)Lcom/itextpdf/text/pdf/PdfStream;
    .locals 3
    .parameter "compressionLevel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Lcom/itextpdf/text/pdf/PdfStream;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPSXObject;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfStream;-><init>([B)V

    .line 77
    .local v0, s:Lcom/itextpdf/text/pdf/PdfStream;
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->TYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->XOBJECT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfStream;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 78
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->PS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfStream;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 79
    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfStream;->flateCompress(I)V

    .line 80
    return-object v0
.end method

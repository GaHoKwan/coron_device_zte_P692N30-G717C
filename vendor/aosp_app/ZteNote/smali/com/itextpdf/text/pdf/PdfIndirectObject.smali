.class public Lcom/itextpdf/text/pdf/PdfIndirectObject;
.super Ljava/lang/Object;
.source "PdfIndirectObject.java"


# static fields
.field static final ENDOBJ:[B

.field static final SIZEOBJ:I

.field static final STARTOBJ:[B


# instance fields
.field protected generation:I

.field protected number:I

.field object:Lcom/itextpdf/text/pdf/PdfObject;

.field writer:Lcom/itextpdf/text/pdf/PdfWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 76
    const-string v0, " obj\n"

    invoke-static {v0}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/text/pdf/PdfIndirectObject;->STARTOBJ:[B

    .line 77
    const-string v0, "\nendobj\n"

    invoke-static {v0}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/text/pdf/PdfIndirectObject;->ENDOBJ:[B

    .line 78
    sget-object v0, Lcom/itextpdf/text/pdf/PdfIndirectObject;->STARTOBJ:[B

    array-length v0, v0

    sget-object v1, Lcom/itextpdf/text/pdf/PdfIndirectObject;->ENDOBJ:[B

    array-length v1, v1

    add-int/2addr v0, v1

    sput v0, Lcom/itextpdf/text/pdf/PdfIndirectObject;->SIZEOBJ:I

    return-void
.end method

.method constructor <init>(IILcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfWriter;)V
    .locals 2
    .parameter "number"
    .parameter "generation"
    .parameter "object"
    .parameter "writer"

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v1, 0x0

    iput v1, p0, Lcom/itextpdf/text/pdf/PdfIndirectObject;->generation:I

    .line 107
    iput-object p4, p0, Lcom/itextpdf/text/pdf/PdfIndirectObject;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    .line 108
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfIndirectObject;->number:I

    .line 109
    iput p2, p0, Lcom/itextpdf/text/pdf/PdfIndirectObject;->generation:I

    .line 110
    iput-object p3, p0, Lcom/itextpdf/text/pdf/PdfIndirectObject;->object:Lcom/itextpdf/text/pdf/PdfObject;

    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, crypto:Lcom/itextpdf/text/pdf/PdfEncryption;
    if-eqz p4, :cond_0

    .line 113
    invoke-virtual {p4}, Lcom/itextpdf/text/pdf/PdfWriter;->getEncryption()Lcom/itextpdf/text/pdf/PdfEncryption;

    move-result-object v0

    .line 114
    :cond_0
    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfEncryption;->setHashKey(II)V

    .line 117
    :cond_1
    return-void
.end method

.method constructor <init>(ILcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfWriter;)V
    .locals 1
    .parameter "number"
    .parameter "object"
    .parameter "writer"

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/itextpdf/text/pdf/PdfIndirectObject;-><init>(IILcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 93
    return-void
.end method

.method constructor <init>(Lcom/itextpdf/text/pdf/PdfIndirectReference;Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfWriter;)V
    .locals 2
    .parameter "ref"
    .parameter "object"
    .parameter "writer"

    .prologue
    .line 96
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfIndirectReference;->getNumber()I

    move-result v0

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfIndirectReference;->getGeneration()I

    move-result v1

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/itextpdf/text/pdf/PdfIndirectObject;-><init>(IILcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 97
    return-void
.end method


# virtual methods
.method public getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .locals 4

    .prologue
    .line 142
    new-instance v0, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfIndirectObject;->object:Lcom/itextpdf/text/pdf/PdfObject;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfObject;->type()I

    move-result v1

    iget v2, p0, Lcom/itextpdf/text/pdf/PdfIndirectObject;->number:I

    iget v3, p0, Lcom/itextpdf/text/pdf/PdfIndirectObject;->generation:I

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfIndirectReference;-><init>(III)V

    return-object v0
.end method

.method writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfIndirectObject;->number:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 154
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 155
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfIndirectObject;->generation:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 156
    sget-object v0, Lcom/itextpdf/text/pdf/PdfIndirectObject;->STARTOBJ:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 157
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfIndirectObject;->object:Lcom/itextpdf/text/pdf/PdfObject;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfIndirectObject;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v0, v1, p1}, Lcom/itextpdf/text/pdf/PdfObject;->toPdf(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/io/OutputStream;)V

    .line 158
    sget-object v0, Lcom/itextpdf/text/pdf/PdfIndirectObject;->ENDOBJ:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 159
    return-void
.end method

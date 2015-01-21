.class public Lcom/itextpdf/text/pdf/PdfLiteral;
.super Lcom/itextpdf/text/pdf/PdfObject;
.source "PdfLiteral.java"


# instance fields
.field private position:J


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter "size"

    .prologue
    .line 66
    const/4 v1, 0x0

    const/4 v0, 0x0

    check-cast v0, [B

    invoke-direct {p0, v1, v0}, Lcom/itextpdf/text/pdf/PdfObject;-><init>(I[B)V

    .line 67
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfLiteral;->bytes:[B

    .line 68
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfLiteral;->bytes:[B

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 69
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "type"
    .parameter "text"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/text/pdf/PdfObject;-><init>(ILjava/lang/String;)V

    .line 73
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0
    .parameter "type"
    .parameter "b"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/text/pdf/PdfObject;-><init>(I[B)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/text/pdf/PdfObject;-><init>(ILjava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "b"

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/text/pdf/PdfObject;-><init>(I[B)V

    .line 63
    return-void
.end method


# virtual methods
.method public getPosLength()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfLiteral;->bytes:[B

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfLiteral;->bytes:[B

    array-length v0, v0

    .line 101
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPosition()J
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/itextpdf/text/pdf/PdfLiteral;->position:J

    return-wide v0
.end method

.method public toPdf(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/io/OutputStream;)V
    .locals 2
    .parameter "writer"
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    instance-of v0, p2, Lcom/itextpdf/text/pdf/OutputStreamCounter;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 81
    check-cast v0, Lcom/itextpdf/text/pdf/OutputStreamCounter;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/OutputStreamCounter;->getCounter()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/itextpdf/text/pdf/PdfLiteral;->position:J

    .line 82
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/itextpdf/text/pdf/PdfObject;->toPdf(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/io/OutputStream;)V

    .line 83
    return-void
.end method

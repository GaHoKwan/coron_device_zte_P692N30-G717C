.class public Lcom/itextpdf/text/pdf/PdfDashPattern;
.super Lcom/itextpdf/text/pdf/PdfArray;
.source "PdfDashPattern.java"


# instance fields
.field private dash:F

.field private gap:F

.field private phase:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, -0x4080

    .line 76
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 61
    iput v0, p0, Lcom/itextpdf/text/pdf/PdfDashPattern;->dash:F

    .line 64
    iput v0, p0, Lcom/itextpdf/text/pdf/PdfDashPattern;->gap:F

    .line 67
    iput v0, p0, Lcom/itextpdf/text/pdf/PdfDashPattern;->phase:F

    .line 77
    return-void
.end method

.method public constructor <init>(F)V
    .locals 2
    .parameter "dash"

    .prologue
    const/high16 v1, -0x4080

    .line 84
    new-instance v0, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v0, p1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 61
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfDashPattern;->dash:F

    .line 64
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfDashPattern;->gap:F

    .line 67
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfDashPattern;->phase:F

    .line 85
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfDashPattern;->dash:F

    .line 86
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 2
    .parameter "dash"
    .parameter "gap"

    .prologue
    const/high16 v1, -0x4080

    .line 93
    new-instance v0, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v0, p1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 61
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfDashPattern;->dash:F

    .line 64
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfDashPattern;->gap:F

    .line 67
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfDashPattern;->phase:F

    .line 94
    new-instance v0, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v0, p2}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfDashPattern;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 95
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfDashPattern;->dash:F

    .line 96
    iput p2, p0, Lcom/itextpdf/text/pdf/PdfDashPattern;->gap:F

    .line 97
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 2
    .parameter "dash"
    .parameter "gap"
    .parameter "phase"

    .prologue
    const/high16 v1, -0x4080

    .line 104
    new-instance v0, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v0, p1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 61
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfDashPattern;->dash:F

    .line 64
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfDashPattern;->gap:F

    .line 67
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfDashPattern;->phase:F

    .line 105
    new-instance v0, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v0, p2}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfDashPattern;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 106
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfDashPattern;->dash:F

    .line 107
    iput p2, p0, Lcom/itextpdf/text/pdf/PdfDashPattern;->gap:F

    .line 108
    iput p3, p0, Lcom/itextpdf/text/pdf/PdfDashPattern;->phase:F

    .line 109
    return-void
.end method


# virtual methods
.method public add(F)V
    .locals 1
    .parameter "n"

    .prologue
    .line 112
    new-instance v0, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v0, p1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfDashPattern;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 113
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
    const/16 v3, 0x20

    const/4 v2, 0x0

    .line 120
    const/16 v0, 0x5b

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 122
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDashPattern;->dash:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    .line 123
    new-instance v0, Lcom/itextpdf/text/pdf/PdfNumber;

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfDashPattern;->dash:F

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfNumber;->toPdf(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/io/OutputStream;)V

    .line 124
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDashPattern;->gap:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    .line 125
    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 126
    new-instance v0, Lcom/itextpdf/text/pdf/PdfNumber;

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfDashPattern;->gap:F

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfNumber;->toPdf(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/io/OutputStream;)V

    .line 129
    :cond_0
    const/16 v0, 0x5d

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 130
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDashPattern;->phase:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    .line 131
    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 132
    new-instance v0, Lcom/itextpdf/text/pdf/PdfNumber;

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfDashPattern;->phase:F

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfNumber;->toPdf(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/io/OutputStream;)V

    .line 134
    :cond_1
    return-void
.end method

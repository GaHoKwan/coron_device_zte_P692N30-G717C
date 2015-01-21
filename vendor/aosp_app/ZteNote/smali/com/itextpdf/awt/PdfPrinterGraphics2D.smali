.class public Lcom/itextpdf/awt/PdfPrinterGraphics2D;
.super Lcom/itextpdf/awt/PdfGraphics2D;
.source "PdfPrinterGraphics2D.java"

# interfaces
.implements Ljava/awt/print/PrinterGraphics;


# instance fields
.field private printerJob:Ljava/awt/print/PrinterJob;


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfContentByte;FFLcom/itextpdf/awt/FontMapper;Ljava/awt/print/PrinterJob;)V
    .locals 8
    .parameter "cb"
    .parameter "width"
    .parameter "height"
    .parameter "fontMapper"
    .parameter "printerJob"

    .prologue
    const/4 v5, 0x0

    .line 69
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v6, v5

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/awt/PdfGraphics2D;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;FFLcom/itextpdf/awt/FontMapper;ZZF)V

    .line 70
    iput-object p5, p0, Lcom/itextpdf/awt/PdfPrinterGraphics2D;->printerJob:Ljava/awt/print/PrinterJob;

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfContentByte;FFLcom/itextpdf/awt/FontMapper;ZZFLjava/awt/print/PrinterJob;)V
    .locals 0
    .parameter "cb"
    .parameter "width"
    .parameter "height"
    .parameter "fontMapper"
    .parameter "onlyShapes"
    .parameter "convertImagesToJPEG"
    .parameter "quality"
    .parameter "printerJob"

    .prologue
    .line 74
    invoke-direct/range {p0 .. p7}, Lcom/itextpdf/awt/PdfGraphics2D;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;FFLcom/itextpdf/awt/FontMapper;ZZF)V

    .line 75
    iput-object p8, p0, Lcom/itextpdf/awt/PdfPrinterGraphics2D;->printerJob:Ljava/awt/print/PrinterJob;

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfContentByte;FFLjava/awt/print/PrinterJob;)V
    .locals 0
    .parameter "cb"
    .parameter "width"
    .parameter "height"
    .parameter "printerJob"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/awt/PdfGraphics2D;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;FF)V

    .line 61
    iput-object p4, p0, Lcom/itextpdf/awt/PdfPrinterGraphics2D;->printerJob:Ljava/awt/print/PrinterJob;

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfContentByte;FFZLjava/awt/print/PrinterJob;)V
    .locals 0
    .parameter "cb"
    .parameter "width"
    .parameter "height"
    .parameter "onlyShapes"
    .parameter "printerJob"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/itextpdf/awt/PdfGraphics2D;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;FFZ)V

    .line 66
    iput-object p5, p0, Lcom/itextpdf/awt/PdfPrinterGraphics2D;->printerJob:Ljava/awt/print/PrinterJob;

    .line 67
    return-void
.end method


# virtual methods
.method public getPrinterJob()Ljava/awt/print/PrinterJob;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/itextpdf/awt/PdfPrinterGraphics2D;->printerJob:Ljava/awt/print/PrinterJob;

    return-object v0
.end method

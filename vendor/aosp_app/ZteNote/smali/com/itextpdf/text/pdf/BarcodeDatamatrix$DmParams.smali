.class Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;
.super Ljava/lang/Object;
.source "BarcodeDatamatrix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/BarcodeDatamatrix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DmParams"
.end annotation


# instance fields
.field dataBlock:I

.field dataSize:I

.field errorBlock:I

.field height:I

.field heightSection:I

.field width:I

.field widthSection:I


# direct methods
.method constructor <init>(IIIIIII)V
    .locals 0
    .parameter "height"
    .parameter "width"
    .parameter "heightSection"
    .parameter "widthSection"
    .parameter "dataSize"
    .parameter "dataBlock"
    .parameter "errorBlock"

    .prologue
    .line 756
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 757
    iput p1, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;->height:I

    .line 758
    iput p2, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;->width:I

    .line 759
    iput p3, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;->heightSection:I

    .line 760
    iput p4, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;->widthSection:I

    .line 761
    iput p5, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;->dataSize:I

    .line 762
    iput p6, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;->dataBlock:I

    .line 763
    iput p7, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;->errorBlock:I

    .line 764
    return-void
.end method

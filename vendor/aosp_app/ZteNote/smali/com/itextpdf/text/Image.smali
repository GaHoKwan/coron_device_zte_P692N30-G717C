.class public abstract Lcom/itextpdf/text/Image;
.super Lcom/itextpdf/text/Rectangle;
.source "Image.java"

# interfaces
.implements Lcom/itextpdf/text/api/Indentable;
.implements Lcom/itextpdf/text/api/Spaceable;


# static fields
.field public static final AX:I = 0x0

.field public static final AY:I = 0x1

.field public static final BX:I = 0x2

.field public static final BY:I = 0x3

.field public static final CX:I = 0x4

.field public static final CY:I = 0x5

.field public static final DEFAULT:I = 0x0

.field public static final DX:I = 0x6

.field public static final DY:I = 0x7

.field public static final LEFT:I = 0x0

.field public static final MIDDLE:I = 0x1

.field public static final ORIGINAL_BMP:I = 0x4

.field public static final ORIGINAL_GIF:I = 0x3

.field public static final ORIGINAL_JBIG2:I = 0x9

.field public static final ORIGINAL_JPEG:I = 0x1

.field public static final ORIGINAL_JPEG2000:I = 0x8

.field public static final ORIGINAL_NONE:I = 0x0

.field public static final ORIGINAL_PNG:I = 0x2

.field public static final ORIGINAL_PS:I = 0x7

.field public static final ORIGINAL_TIFF:I = 0x5

.field public static final ORIGINAL_WMF:I = 0x6

.field public static final RIGHT:I = 0x2

.field public static final TEXTWRAP:I = 0x4

.field public static final UNDERLYING:I = 0x8

.field static serialId:J


# instance fields
.field private XYRatio:F

.field protected absoluteX:F

.field protected absoluteY:F

.field private additional:Lcom/itextpdf/text/pdf/PdfDictionary;

.field protected alignment:I

.field protected alt:Ljava/lang/String;

.field protected annotation:Lcom/itextpdf/text/Annotation;

.field protected bpc:I

.field protected colorspace:I

.field protected compressionLevel:I

.field protected deflated:Z

.field private directReference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

.field protected dpiX:I

.field protected dpiY:I

.field protected imageMask:Lcom/itextpdf/text/Image;

.field protected indentationLeft:F

.field protected indentationRight:F

.field private initialRotation:F

.field protected interpolation:Z

.field protected invert:Z

.field protected layer:Lcom/itextpdf/text/pdf/PdfOCG;

.field protected mask:Z

.field protected mySerialId:Ljava/lang/Long;

.field protected originalData:[B

.field protected originalType:I

.field protected plainHeight:F

.field protected plainWidth:F

.field protected profile:Lcom/itextpdf/text/pdf/ICC_Profile;

.field protected rawData:[B

.field protected rotationRadians:F

.field protected scaleToFitLineWhenOverflow:Z

.field protected scaledHeight:F

.field protected scaledWidth:F

.field private smask:Z

.field protected spacingAfter:F

.field protected spacingBefore:F

.field protected template:[Lcom/itextpdf/text/pdf/PdfTemplate;

.field protected transparency:[I

.field protected type:I

.field protected url:Ljava/net/URL;

.field private widthPercentage:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1110
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/itextpdf/text/Image;->serialId:J

    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/text/Image;)V
    .locals 6
    .parameter "image"

    .prologue
    const/high16 v5, 0x7fc0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 660
    invoke-direct {p0, p1}, Lcom/itextpdf/text/Rectangle;-><init>(Lcom/itextpdf/text/Rectangle;)V

    .line 177
    iput v3, p0, Lcom/itextpdf/text/Image;->bpc:I

    .line 180
    new-array v0, v3, [Lcom/itextpdf/text/pdf/PdfTemplate;

    iput-object v0, p0, Lcom/itextpdf/text/Image;->template:[Lcom/itextpdf/text/pdf/PdfTemplate;

    .line 189
    iput v5, p0, Lcom/itextpdf/text/Image;->absoluteX:F

    .line 192
    iput v5, p0, Lcom/itextpdf/text/Image;->absoluteY:F

    .line 210
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/Image;->compressionLevel:I

    .line 213
    invoke-static {}, Lcom/itextpdf/text/Image;->getSerialId()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/Image;->mySerialId:Ljava/lang/Long;

    .line 1199
    iput v2, p0, Lcom/itextpdf/text/Image;->indentationLeft:F

    .line 1202
    iput v2, p0, Lcom/itextpdf/text/Image;->indentationRight:F

    .line 1291
    const/high16 v0, 0x42c8

    iput v0, p0, Lcom/itextpdf/text/Image;->widthPercentage:F

    .line 1319
    iput-boolean v3, p0, Lcom/itextpdf/text/Image;->scaleToFitLineWhenOverflow:Z

    .line 1342
    iput-object v4, p0, Lcom/itextpdf/text/Image;->annotation:Lcom/itextpdf/text/Annotation;

    .line 1416
    iput v1, p0, Lcom/itextpdf/text/Image;->originalType:I

    .line 1466
    iput-boolean v1, p0, Lcom/itextpdf/text/Image;->deflated:Z

    .line 1491
    iput v1, p0, Lcom/itextpdf/text/Image;->dpiX:I

    .line 1494
    iput v1, p0, Lcom/itextpdf/text/Image;->dpiY:I

    .line 1530
    iput v2, p0, Lcom/itextpdf/text/Image;->XYRatio:F

    .line 1554
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/Image;->colorspace:I

    .line 1568
    iput-boolean v1, p0, Lcom/itextpdf/text/Image;->invert:Z

    .line 1590
    iput-object v4, p0, Lcom/itextpdf/text/Image;->profile:Lcom/itextpdf/text/pdf/ICC_Profile;

    .line 1621
    iput-object v4, p0, Lcom/itextpdf/text/Image;->additional:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 1686
    iput-boolean v1, p0, Lcom/itextpdf/text/Image;->mask:Z

    .line 661
    iget v0, p1, Lcom/itextpdf/text/Image;->type:I

    iput v0, p0, Lcom/itextpdf/text/Image;->type:I

    .line 662
    iget-object v0, p1, Lcom/itextpdf/text/Image;->url:Ljava/net/URL;

    iput-object v0, p0, Lcom/itextpdf/text/Image;->url:Ljava/net/URL;

    .line 663
    iget-object v0, p1, Lcom/itextpdf/text/Image;->rawData:[B

    iput-object v0, p0, Lcom/itextpdf/text/Image;->rawData:[B

    .line 664
    iget v0, p1, Lcom/itextpdf/text/Image;->bpc:I

    iput v0, p0, Lcom/itextpdf/text/Image;->bpc:I

    .line 665
    iget-object v0, p1, Lcom/itextpdf/text/Image;->template:[Lcom/itextpdf/text/pdf/PdfTemplate;

    iput-object v0, p0, Lcom/itextpdf/text/Image;->template:[Lcom/itextpdf/text/pdf/PdfTemplate;

    .line 666
    iget v0, p1, Lcom/itextpdf/text/Image;->alignment:I

    iput v0, p0, Lcom/itextpdf/text/Image;->alignment:I

    .line 667
    iget-object v0, p1, Lcom/itextpdf/text/Image;->alt:Ljava/lang/String;

    iput-object v0, p0, Lcom/itextpdf/text/Image;->alt:Ljava/lang/String;

    .line 668
    iget v0, p1, Lcom/itextpdf/text/Image;->absoluteX:F

    iput v0, p0, Lcom/itextpdf/text/Image;->absoluteX:F

    .line 669
    iget v0, p1, Lcom/itextpdf/text/Image;->absoluteY:F

    iput v0, p0, Lcom/itextpdf/text/Image;->absoluteY:F

    .line 670
    iget v0, p1, Lcom/itextpdf/text/Image;->plainWidth:F

    iput v0, p0, Lcom/itextpdf/text/Image;->plainWidth:F

    .line 671
    iget v0, p1, Lcom/itextpdf/text/Image;->plainHeight:F

    iput v0, p0, Lcom/itextpdf/text/Image;->plainHeight:F

    .line 672
    iget v0, p1, Lcom/itextpdf/text/Image;->scaledWidth:F

    iput v0, p0, Lcom/itextpdf/text/Image;->scaledWidth:F

    .line 673
    iget v0, p1, Lcom/itextpdf/text/Image;->scaledHeight:F

    iput v0, p0, Lcom/itextpdf/text/Image;->scaledHeight:F

    .line 674
    iget-object v0, p1, Lcom/itextpdf/text/Image;->mySerialId:Ljava/lang/Long;

    iput-object v0, p0, Lcom/itextpdf/text/Image;->mySerialId:Ljava/lang/Long;

    .line 676
    iget-object v0, p1, Lcom/itextpdf/text/Image;->directReference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    iput-object v0, p0, Lcom/itextpdf/text/Image;->directReference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 678
    iget v0, p1, Lcom/itextpdf/text/Image;->rotationRadians:F

    iput v0, p0, Lcom/itextpdf/text/Image;->rotationRadians:F

    .line 679
    iget v0, p1, Lcom/itextpdf/text/Image;->initialRotation:F

    iput v0, p0, Lcom/itextpdf/text/Image;->initialRotation:F

    .line 680
    iget v0, p1, Lcom/itextpdf/text/Image;->indentationLeft:F

    iput v0, p0, Lcom/itextpdf/text/Image;->indentationLeft:F

    .line 681
    iget v0, p1, Lcom/itextpdf/text/Image;->indentationRight:F

    iput v0, p0, Lcom/itextpdf/text/Image;->indentationRight:F

    .line 682
    iget v0, p1, Lcom/itextpdf/text/Image;->spacingBefore:F

    iput v0, p0, Lcom/itextpdf/text/Image;->spacingBefore:F

    .line 683
    iget v0, p1, Lcom/itextpdf/text/Image;->spacingAfter:F

    iput v0, p0, Lcom/itextpdf/text/Image;->spacingAfter:F

    .line 685
    iget v0, p1, Lcom/itextpdf/text/Image;->widthPercentage:F

    iput v0, p0, Lcom/itextpdf/text/Image;->widthPercentage:F

    .line 686
    iget-boolean v0, p1, Lcom/itextpdf/text/Image;->scaleToFitLineWhenOverflow:Z

    iput-boolean v0, p0, Lcom/itextpdf/text/Image;->scaleToFitLineWhenOverflow:Z

    .line 687
    iget-object v0, p1, Lcom/itextpdf/text/Image;->annotation:Lcom/itextpdf/text/Annotation;

    iput-object v0, p0, Lcom/itextpdf/text/Image;->annotation:Lcom/itextpdf/text/Annotation;

    .line 688
    iget-object v0, p1, Lcom/itextpdf/text/Image;->layer:Lcom/itextpdf/text/pdf/PdfOCG;

    iput-object v0, p0, Lcom/itextpdf/text/Image;->layer:Lcom/itextpdf/text/pdf/PdfOCG;

    .line 689
    iget-boolean v0, p1, Lcom/itextpdf/text/Image;->interpolation:Z

    iput-boolean v0, p0, Lcom/itextpdf/text/Image;->interpolation:Z

    .line 690
    iget v0, p1, Lcom/itextpdf/text/Image;->originalType:I

    iput v0, p0, Lcom/itextpdf/text/Image;->originalType:I

    .line 691
    iget-object v0, p1, Lcom/itextpdf/text/Image;->originalData:[B

    iput-object v0, p0, Lcom/itextpdf/text/Image;->originalData:[B

    .line 692
    iget-boolean v0, p1, Lcom/itextpdf/text/Image;->deflated:Z

    iput-boolean v0, p0, Lcom/itextpdf/text/Image;->deflated:Z

    .line 693
    iget v0, p1, Lcom/itextpdf/text/Image;->dpiX:I

    iput v0, p0, Lcom/itextpdf/text/Image;->dpiX:I

    .line 694
    iget v0, p1, Lcom/itextpdf/text/Image;->dpiY:I

    iput v0, p0, Lcom/itextpdf/text/Image;->dpiY:I

    .line 695
    iget v0, p1, Lcom/itextpdf/text/Image;->XYRatio:F

    iput v0, p0, Lcom/itextpdf/text/Image;->XYRatio:F

    .line 697
    iget v0, p1, Lcom/itextpdf/text/Image;->colorspace:I

    iput v0, p0, Lcom/itextpdf/text/Image;->colorspace:I

    .line 698
    iget-boolean v0, p1, Lcom/itextpdf/text/Image;->invert:Z

    iput-boolean v0, p0, Lcom/itextpdf/text/Image;->invert:Z

    .line 699
    iget-object v0, p1, Lcom/itextpdf/text/Image;->profile:Lcom/itextpdf/text/pdf/ICC_Profile;

    iput-object v0, p0, Lcom/itextpdf/text/Image;->profile:Lcom/itextpdf/text/pdf/ICC_Profile;

    .line 700
    iget-object v0, p1, Lcom/itextpdf/text/Image;->additional:Lcom/itextpdf/text/pdf/PdfDictionary;

    iput-object v0, p0, Lcom/itextpdf/text/Image;->additional:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 701
    iget-boolean v0, p1, Lcom/itextpdf/text/Image;->mask:Z

    iput-boolean v0, p0, Lcom/itextpdf/text/Image;->mask:Z

    .line 702
    iget-object v0, p1, Lcom/itextpdf/text/Image;->imageMask:Lcom/itextpdf/text/Image;

    iput-object v0, p0, Lcom/itextpdf/text/Image;->imageMask:Lcom/itextpdf/text/Image;

    .line 703
    iget-boolean v0, p1, Lcom/itextpdf/text/Image;->smask:Z

    iput-boolean v0, p0, Lcom/itextpdf/text/Image;->smask:Z

    .line 704
    iget-object v0, p1, Lcom/itextpdf/text/Image;->transparency:[I

    iput-object v0, p0, Lcom/itextpdf/text/Image;->transparency:[I

    .line 705
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 6
    .parameter "url"

    .prologue
    const/high16 v5, 0x7fc0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 224
    invoke-direct {p0, v2, v2}, Lcom/itextpdf/text/Rectangle;-><init>(FF)V

    .line 177
    iput v3, p0, Lcom/itextpdf/text/Image;->bpc:I

    .line 180
    new-array v0, v3, [Lcom/itextpdf/text/pdf/PdfTemplate;

    iput-object v0, p0, Lcom/itextpdf/text/Image;->template:[Lcom/itextpdf/text/pdf/PdfTemplate;

    .line 189
    iput v5, p0, Lcom/itextpdf/text/Image;->absoluteX:F

    .line 192
    iput v5, p0, Lcom/itextpdf/text/Image;->absoluteY:F

    .line 210
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/Image;->compressionLevel:I

    .line 213
    invoke-static {}, Lcom/itextpdf/text/Image;->getSerialId()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/Image;->mySerialId:Ljava/lang/Long;

    .line 1199
    iput v2, p0, Lcom/itextpdf/text/Image;->indentationLeft:F

    .line 1202
    iput v2, p0, Lcom/itextpdf/text/Image;->indentationRight:F

    .line 1291
    const/high16 v0, 0x42c8

    iput v0, p0, Lcom/itextpdf/text/Image;->widthPercentage:F

    .line 1319
    iput-boolean v3, p0, Lcom/itextpdf/text/Image;->scaleToFitLineWhenOverflow:Z

    .line 1342
    iput-object v4, p0, Lcom/itextpdf/text/Image;->annotation:Lcom/itextpdf/text/Annotation;

    .line 1416
    iput v1, p0, Lcom/itextpdf/text/Image;->originalType:I

    .line 1466
    iput-boolean v1, p0, Lcom/itextpdf/text/Image;->deflated:Z

    .line 1491
    iput v1, p0, Lcom/itextpdf/text/Image;->dpiX:I

    .line 1494
    iput v1, p0, Lcom/itextpdf/text/Image;->dpiY:I

    .line 1530
    iput v2, p0, Lcom/itextpdf/text/Image;->XYRatio:F

    .line 1554
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/Image;->colorspace:I

    .line 1568
    iput-boolean v1, p0, Lcom/itextpdf/text/Image;->invert:Z

    .line 1590
    iput-object v4, p0, Lcom/itextpdf/text/Image;->profile:Lcom/itextpdf/text/pdf/ICC_Profile;

    .line 1621
    iput-object v4, p0, Lcom/itextpdf/text/Image;->additional:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 1686
    iput-boolean v1, p0, Lcom/itextpdf/text/Image;->mask:Z

    .line 225
    iput-object p1, p0, Lcom/itextpdf/text/Image;->url:Ljava/net/URL;

    .line 226
    iput v1, p0, Lcom/itextpdf/text/Image;->alignment:I

    .line 227
    iput v2, p0, Lcom/itextpdf/text/Image;->rotationRadians:F

    .line 228
    return-void
.end method

.method public static getInstance(IIII[B)Lcom/itextpdf/text/Image;
    .locals 6
    .parameter "width"
    .parameter "height"
    .parameter "components"
    .parameter "bpc"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/BadElementException;
        }
    .end annotation

    .prologue
    .line 461
    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/text/Image;->getInstance(IIII[B[I)Lcom/itextpdf/text/Image;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(IIII[B[I)Lcom/itextpdf/text/Image;
    .locals 13
    .parameter "width"
    .parameter "height"
    .parameter "components"
    .parameter "bpc"
    .parameter "data"
    .parameter "transparency"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/BadElementException;
        }
    .end annotation

    .prologue
    .line 570
    if-eqz p5, :cond_0

    move-object/from16 v0, p5

    array-length v1, v0

    mul-int/lit8 v2, p2, 0x2

    if-eq v1, v2, :cond_0

    .line 571
    new-instance v1, Lcom/itextpdf/text/BadElementException;

    const-string v2, "transparency.length.must.be.equal.to.componentes.2"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/text/BadElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 572
    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    const/4 v1, 0x1

    move/from16 v0, p3

    if-ne v0, v1, :cond_1

    .line 573
    move-object/from16 v0, p4

    invoke-static {v0, p0, p1}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->compress([BII)[B

    move-result-object v6

    .line 574
    .local v6, g4:[B
    const/4 v3, 0x0

    const/16 v4, 0x100

    const/4 v5, 0x1

    move v1, p0

    move v2, p1

    move-object/from16 v7, p5

    invoke-static/range {v1 .. v7}, Lcom/itextpdf/text/Image;->getInstance(IIZII[B[I)Lcom/itextpdf/text/Image;

    move-result-object v7

    .line 579
    .end local v6           #g4:[B
    :goto_0
    return-object v7

    .line 577
    :cond_1
    new-instance v7, Lcom/itextpdf/text/ImgRaw;

    move v8, p0

    move v9, p1

    move v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p4

    invoke-direct/range {v7 .. v12}, Lcom/itextpdf/text/ImgRaw;-><init>(IIII[B)V

    .line 578
    .local v7, img:Lcom/itextpdf/text/Image;
    move-object/from16 v0, p5

    iput-object v0, v7, Lcom/itextpdf/text/Image;->transparency:[I

    goto :goto_0
.end method

.method public static getInstance(IIZII[B)Lcom/itextpdf/text/Image;
    .locals 7
    .parameter "width"
    .parameter "height"
    .parameter "reverseBits"
    .parameter "typeCCITT"
    .parameter "parameters"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/BadElementException;
        }
    .end annotation

    .prologue
    .line 505
    const/4 v6, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/text/Image;->getInstance(IIZII[B[I)Lcom/itextpdf/text/Image;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(IIZII[B[I)Lcom/itextpdf/text/Image;
    .locals 7
    .parameter "width"
    .parameter "height"
    .parameter "reverseBits"
    .parameter "typeCCITT"
    .parameter "parameters"
    .parameter "data"
    .parameter "transparency"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/BadElementException;
        }
    .end annotation

    .prologue
    .line 539
    if-eqz p6, :cond_0

    array-length v1, p6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 540
    new-instance v1, Lcom/itextpdf/text/BadElementException;

    const-string v2, "transparency.length.must.be.equal.to.2.with.ccitt.images"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/text/BadElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 541
    :cond_0
    new-instance v0, Lcom/itextpdf/text/ImgCCITT;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/itextpdf/text/ImgCCITT;-><init>(IIZII[B)V

    .line 543
    .local v0, img:Lcom/itextpdf/text/Image;
    iput-object p6, v0, Lcom/itextpdf/text/Image;->transparency:[I

    .line 544
    return-object v0
.end method

.method public static getInstance(II[B[B)Lcom/itextpdf/text/Image;
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "data"
    .parameter "globals"

    .prologue
    .line 474
    new-instance v0, Lcom/itextpdf/text/ImgJBIG2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/itextpdf/text/ImgJBIG2;-><init>(II[B[B)V

    .line 475
    .local v0, img:Lcom/itextpdf/text/Image;
    return-object v0
.end method

.method public static getInstance(Lcom/itextpdf/text/Image;)Lcom/itextpdf/text/Image;
    .locals 6
    .parameter "image"

    .prologue
    .line 715
    if-nez p0, :cond_0

    .line 716
    const/4 v3, 0x0

    .line 721
    :goto_0
    return-object v3

    .line 718
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 719
    .local v1, cs:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/itextpdf/text/Image;>;"
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/itextpdf/text/Image;

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 721
    .local v0, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Lcom/itextpdf/text/Image;>;"
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/Image;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 722
    .end local v0           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Lcom/itextpdf/text/Image;>;"
    .end local v1           #cs:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/itextpdf/text/Image;>;"
    :catch_0
    move-exception v2

    .line 723
    .local v2, e:Ljava/lang/Exception;
    new-instance v3, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v3, v2}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method public static getInstance(Lcom/itextpdf/text/pdf/PRIndirectReference;)Lcom/itextpdf/text/Image;
    .locals 10
    .parameter "ref"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/BadElementException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 629
    invoke-static {p0}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 630
    .local v6, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->WIDTH:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    invoke-static {v4}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v1

    .line 631
    .local v1, width:I
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->HEIGHT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    invoke-static {v4}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v2

    .line 632
    .local v2, height:I
    const/4 v7, 0x0

    .line 633
    .local v7, imask:Lcom/itextpdf/text/Image;
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->SMASK:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    .line 634
    .local v8, obj:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v8

    .line 635
    check-cast v4, Lcom/itextpdf/text/pdf/PRIndirectReference;

    invoke-static {v4}, Lcom/itextpdf/text/Image;->getInstance(Lcom/itextpdf/text/pdf/PRIndirectReference;)Lcom/itextpdf/text/Image;

    move-result-object v7

    .line 645
    :cond_0
    :goto_0
    new-instance v0, Lcom/itextpdf/text/ImgRaw;

    const/4 v5, 0x0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/text/ImgRaw;-><init>(IIII[B)V

    .line 646
    .local v0, img:Lcom/itextpdf/text/Image;
    iput-object v7, v0, Lcom/itextpdf/text/Image;->imageMask:Lcom/itextpdf/text/Image;

    .line 647
    iput-object p0, v0, Lcom/itextpdf/text/Image;->directReference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 648
    return-object v0

    .line 638
    .end local v0           #img:Lcom/itextpdf/text/Image;
    :cond_1
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->MASK:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    .line 639
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 640
    invoke-static {v8}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    .line 641
    .local v9, obj2:Lcom/itextpdf/text/pdf/PdfObject;
    instance-of v4, v9, Lcom/itextpdf/text/pdf/PdfDictionary;

    if-eqz v4, :cond_0

    move-object v4, v8

    .line 642
    check-cast v4, Lcom/itextpdf/text/pdf/PRIndirectReference;

    invoke-static {v4}, Lcom/itextpdf/text/Image;->getInstance(Lcom/itextpdf/text/pdf/PRIndirectReference;)Lcom/itextpdf/text/Image;

    move-result-object v7

    goto :goto_0
.end method

.method public static getInstance(Lcom/itextpdf/text/pdf/PdfContentByte;Ljava/awt/Image;F)Lcom/itextpdf/text/Image;
    .locals 12
    .parameter "cb"
    .parameter "awtImage"
    .parameter "quality"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/BadElementException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2048
    new-instance v0, Ljava/awt/image/PixelGrabber;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x1

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Ljava/awt/image/PixelGrabber;-><init>(Ljava/awt/Image;IIIIZ)V

    .line 2051
    .local v0, pg:Ljava/awt/image/PixelGrabber;
    :try_start_0
    invoke-virtual {v0}, Ljava/awt/image/PixelGrabber;->grabPixels()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2055
    invoke-virtual {v0}, Ljava/awt/image/PixelGrabber;->getStatus()I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_0

    .line 2056
    new-instance v3, Ljava/io/IOException;

    const-string v4, "java.awt.image.fetch.aborted.or.errored"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2052
    :catch_0
    move-exception v9

    .line 2053
    .local v9, e:Ljava/lang/InterruptedException;
    new-instance v3, Ljava/io/IOException;

    const-string v4, "java.awt.image.interrupted.waiting.for.pixels"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2058
    .end local v9           #e:Ljava/lang/InterruptedException;
    :cond_0
    invoke-virtual {v0}, Ljava/awt/image/PixelGrabber;->getWidth()I

    move-result v11

    .line 2059
    .local v11, w:I
    invoke-virtual {v0}, Ljava/awt/image/PixelGrabber;->getHeight()I

    move-result v10

    .line 2060
    .local v10, h:I
    int-to-float v3, v11

    int-to-float v4, v10

    invoke-virtual {p0, v3, v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->createTemplate(FF)Lcom/itextpdf/text/pdf/PdfTemplate;

    move-result-object v2

    .line 2061
    .local v2, tp:Lcom/itextpdf/text/pdf/PdfTemplate;
    new-instance v1, Lcom/itextpdf/awt/PdfGraphics2D;

    int-to-float v3, v11

    int-to-float v4, v10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/itextpdf/awt/PdfGraphics2D;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;FFLcom/itextpdf/awt/FontMapper;ZZF)V

    .line 2062
    .local v1, g2d:Lcom/itextpdf/awt/PdfGraphics2D;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, p1, v3, v4, v5}, Lcom/itextpdf/awt/PdfGraphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    .line 2063
    invoke-virtual {v1}, Lcom/itextpdf/awt/PdfGraphics2D;->dispose()V

    .line 2064
    invoke-static {v2}, Lcom/itextpdf/text/Image;->getInstance(Lcom/itextpdf/text/pdf/PdfTemplate;)Lcom/itextpdf/text/Image;

    move-result-object v3

    return-object v3
.end method

.method public static getInstance(Lcom/itextpdf/text/pdf/PdfTemplate;)Lcom/itextpdf/text/Image;
    .locals 1
    .parameter "template"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/BadElementException;
        }
    .end annotation

    .prologue
    .line 594
    new-instance v0, Lcom/itextpdf/text/ImgTemplate;

    invoke-direct {v0, p0}, Lcom/itextpdf/text/ImgTemplate;-><init>(Lcom/itextpdf/text/pdf/PdfTemplate;)V

    return-object v0
.end method

.method public static getInstance(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/awt/Image;F)Lcom/itextpdf/text/Image;
    .locals 1
    .parameter "writer"
    .parameter "awtImage"
    .parameter "quality"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/BadElementException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2029
    new-instance v0, Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-direct {v0, p0}, Lcom/itextpdf/text/pdf/PdfContentByte;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    invoke-static {v0, p1, p2}, Lcom/itextpdf/text/Image;->getInstance(Lcom/itextpdf/text/pdf/PdfContentByte;Ljava/awt/Image;F)Lcom/itextpdf/text/Image;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/awt/Image;Ljava/awt/Color;)Lcom/itextpdf/text/Image;
    .locals 1
    .parameter "image"
    .parameter "color"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/BadElementException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2010
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/itextpdf/text/Image;->getInstance(Ljava/awt/Image;Ljava/awt/Color;Z)Lcom/itextpdf/text/Image;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/awt/Image;Ljava/awt/Color;Z)Lcom/itextpdf/text/Image;
    .locals 32
    .parameter "image"
    .parameter "color"
    .parameter "forceBW"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/BadElementException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1841
    move-object/from16 v0, p0

    instance-of v5, v0, Ljava/awt/image/BufferedImage;

    if-eqz v5, :cond_0

    move-object/from16 v10, p0

    .line 1842
    check-cast v10, Ljava/awt/image/BufferedImage;

    .line 1843
    .local v10, bi:Ljava/awt/image/BufferedImage;
    invoke-virtual {v10}, Ljava/awt/image/BufferedImage;->getType()I

    move-result v5

    const/16 v6, 0xc

    if-ne v5, v6, :cond_0

    invoke-virtual {v10}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v5

    invoke-virtual {v5}, Ljava/awt/image/ColorModel;->getPixelSize()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 1845
    const/16 p2, 0x1

    .line 1849
    .end local v10           #bi:Ljava/awt/image/BufferedImage;
    :cond_0
    new-instance v2, Ljava/awt/image/PixelGrabber;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Ljava/awt/image/PixelGrabber;-><init>(Ljava/awt/Image;IIIIZ)V

    .line 1852
    .local v2, pg:Ljava/awt/image/PixelGrabber;
    :try_start_0
    invoke-virtual {v2}, Ljava/awt/image/PixelGrabber;->grabPixels()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1856
    invoke-virtual {v2}, Ljava/awt/image/PixelGrabber;->getStatus()I

    move-result v5

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_1

    .line 1857
    new-instance v5, Ljava/io/IOException;

    const-string v6, "java.awt.image.fetch.aborted.or.errored"

    const/16 v31, 0x0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-static {v6, v0}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1853
    :catch_0
    move-exception v16

    .line 1854
    .local v16, e:Ljava/lang/InterruptedException;
    new-instance v5, Ljava/io/IOException;

    const-string v6, "java.awt.image.interrupted.waiting.for.pixels"

    const/16 v31, 0x0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-static {v6, v0}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1859
    .end local v16           #e:Ljava/lang/InterruptedException;
    :cond_1
    invoke-virtual {v2}, Ljava/awt/image/PixelGrabber;->getWidth()I

    move-result v3

    .line 1860
    .local v3, w:I
    invoke-virtual {v2}, Ljava/awt/image/PixelGrabber;->getHeight()I

    move-result v4

    .line 1861
    .local v4, h:I
    invoke-virtual {v2}, Ljava/awt/image/PixelGrabber;->getPixels()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    move-object/from16 v22, v5

    check-cast v22, [I

    .line 1862
    .local v22, pixels:[I
    if-eqz p2, :cond_11

    .line 1863
    div-int/lit8 v6, v3, 0x8

    and-int/lit8 v5, v3, 0x7

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    :goto_0
    add-int v12, v6, v5

    .line 1864
    .local v12, byteWidth:I
    mul-int v5, v12, v4

    new-array v7, v5, [B

    .line 1866
    .local v7, pixelsByte:[B
    const/16 v19, 0x0

    .line 1867
    .local v19, index:I
    mul-int v25, v4, v3

    .line 1868
    .local v25, size:I
    const/16 v28, 0x1

    .line 1869
    .local v28, transColor:I
    if-eqz p1, :cond_2

    .line 1870
    invoke-virtual/range {p1 .. p1}, Ljava/awt/Color;->getRed()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Ljava/awt/Color;->getGreen()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual/range {p1 .. p1}, Ljava/awt/Color;->getBlue()I

    move-result v6

    add-int/2addr v5, v6

    const/16 v6, 0x180

    if-ge v5, v6, :cond_7

    const/16 v28, 0x0

    .line 1873
    :cond_2
    :goto_1
    const/4 v8, 0x0

    .line 1874
    .local v8, transparency:[I
    const/16 v13, 0x80

    .line 1875
    .local v13, cbyte:I
    const/16 v30, 0x0

    .line 1876
    .local v30, wMarker:I
    const/4 v14, 0x0

    .line 1877
    .local v14, currByte:I
    if-eqz p1, :cond_b

    .line 1878
    const/16 v21, 0x0

    .local v21, j:I
    move/from16 v20, v19

    .end local v19           #index:I
    .local v20, index:I
    :goto_2
    move/from16 v0, v21

    move/from16 v1, v25

    if-ge v0, v1, :cond_9

    .line 1879
    aget v5, v22, v21

    shr-int/lit8 v5, v5, 0x18

    and-int/lit16 v9, v5, 0xff

    .line 1880
    .local v9, alpha:I
    const/16 v5, 0xfa

    if-ge v9, v5, :cond_8

    .line 1881
    const/4 v5, 0x1

    move/from16 v0, v28

    if-ne v0, v5, :cond_3

    .line 1882
    or-int/2addr v14, v13

    .line 1887
    :cond_3
    :goto_3
    shr-int/lit8 v13, v13, 0x1

    .line 1888
    if-eqz v13, :cond_4

    add-int/lit8 v5, v30, 0x1

    if-lt v5, v3, :cond_1d

    .line 1889
    :cond_4
    add-int/lit8 v19, v20, 0x1

    .end local v20           #index:I
    .restart local v19       #index:I
    int-to-byte v5, v14

    aput-byte v5, v7, v20

    .line 1890
    const/16 v13, 0x80

    .line 1891
    const/4 v14, 0x0

    .line 1893
    :goto_4
    add-int/lit8 v30, v30, 0x1

    .line 1894
    move/from16 v0, v30

    if-lt v0, v3, :cond_5

    .line 1895
    const/16 v30, 0x0

    .line 1878
    :cond_5
    add-int/lit8 v21, v21, 0x1

    move/from16 v20, v19

    .end local v19           #index:I
    .restart local v20       #index:I
    goto :goto_2

    .line 1863
    .end local v7           #pixelsByte:[B
    .end local v8           #transparency:[I
    .end local v9           #alpha:I
    .end local v12           #byteWidth:I
    .end local v13           #cbyte:I
    .end local v14           #currByte:I
    .end local v20           #index:I
    .end local v21           #j:I
    .end local v25           #size:I
    .end local v28           #transColor:I
    .end local v30           #wMarker:I
    :cond_6
    const/4 v5, 0x0

    goto :goto_0

    .line 1870
    .restart local v7       #pixelsByte:[B
    .restart local v12       #byteWidth:I
    .restart local v19       #index:I
    .restart local v25       #size:I
    .restart local v28       #transColor:I
    :cond_7
    const/16 v28, 0x1

    goto :goto_1

    .line 1884
    .end local v19           #index:I
    .restart local v8       #transparency:[I
    .restart local v9       #alpha:I
    .restart local v13       #cbyte:I
    .restart local v14       #currByte:I
    .restart local v20       #index:I
    .restart local v21       #j:I
    .restart local v30       #wMarker:I
    :cond_8
    aget v5, v22, v21

    and-int/lit16 v5, v5, 0x888

    if-eqz v5, :cond_3

    .line 1885
    or-int/2addr v14, v13

    goto :goto_3

    .end local v9           #alpha:I
    :cond_9
    move/from16 v19, v20

    .line 1920
    .end local v20           #index:I
    .restart local v19       #index:I
    :goto_5
    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static/range {v3 .. v8}, Lcom/itextpdf/text/Image;->getInstance(IIII[B[I)Lcom/itextpdf/text/Image;

    move-result-object v18

    .line 1990
    .end local v12           #byteWidth:I
    .end local v13           #cbyte:I
    .end local v14           #currByte:I
    .end local v28           #transColor:I
    .end local v30           #wMarker:I
    :cond_a
    :goto_6
    return-object v18

    .line 1898
    .end local v21           #j:I
    .restart local v12       #byteWidth:I
    .restart local v13       #cbyte:I
    .restart local v14       #currByte:I
    .restart local v28       #transColor:I
    .restart local v30       #wMarker:I
    :cond_b
    const/16 v21, 0x0

    .restart local v21       #j:I
    move/from16 v20, v19

    .end local v19           #index:I
    .restart local v20       #index:I
    :goto_7
    move/from16 v0, v21

    move/from16 v1, v25

    if-ge v0, v1, :cond_1c

    .line 1899
    if-nez v8, :cond_c

    .line 1900
    aget v5, v22, v21

    shr-int/lit8 v5, v5, 0x18

    and-int/lit16 v9, v5, 0xff

    .line 1901
    .restart local v9       #alpha:I
    if-nez v9, :cond_c

    .line 1902
    const/4 v5, 0x2

    new-array v8, v5, [I

    .line 1904
    const/4 v6, 0x0

    const/16 v31, 0x1

    aget v5, v22, v21

    and-int/lit16 v5, v5, 0x888

    if-eqz v5, :cond_10

    const/16 v5, 0xff

    :goto_8
    aput v5, v8, v31

    aput v5, v8, v6

    .line 1907
    .end local v9           #alpha:I
    :cond_c
    aget v5, v22, v21

    and-int/lit16 v5, v5, 0x888

    if-eqz v5, :cond_d

    .line 1908
    or-int/2addr v14, v13

    .line 1909
    :cond_d
    shr-int/lit8 v13, v13, 0x1

    .line 1910
    if-eqz v13, :cond_e

    add-int/lit8 v5, v30, 0x1

    if-lt v5, v3, :cond_1b

    .line 1911
    :cond_e
    add-int/lit8 v19, v20, 0x1

    .end local v20           #index:I
    .restart local v19       #index:I
    int-to-byte v5, v14

    aput-byte v5, v7, v20

    .line 1912
    const/16 v13, 0x80

    .line 1913
    const/4 v14, 0x0

    .line 1915
    :goto_9
    add-int/lit8 v30, v30, 0x1

    .line 1916
    move/from16 v0, v30

    if-lt v0, v3, :cond_f

    .line 1917
    const/16 v30, 0x0

    .line 1898
    :cond_f
    add-int/lit8 v21, v21, 0x1

    move/from16 v20, v19

    .end local v19           #index:I
    .restart local v20       #index:I
    goto :goto_7

    .line 1904
    .restart local v9       #alpha:I
    :cond_10
    const/4 v5, 0x0

    goto :goto_8

    .line 1922
    .end local v7           #pixelsByte:[B
    .end local v8           #transparency:[I
    .end local v9           #alpha:I
    .end local v12           #byteWidth:I
    .end local v13           #cbyte:I
    .end local v14           #currByte:I
    .end local v20           #index:I
    .end local v21           #j:I
    .end local v25           #size:I
    .end local v28           #transColor:I
    .end local v30           #wMarker:I
    :cond_11
    mul-int v5, v3, v4

    mul-int/lit8 v5, v5, 0x3

    new-array v7, v5, [B

    .line 1923
    .restart local v7       #pixelsByte:[B
    const/16 v27, 0x0

    .line 1925
    .local v27, smask:[B
    const/16 v19, 0x0

    .line 1926
    .restart local v19       #index:I
    mul-int v25, v4, v3

    .line 1927
    .restart local v25       #size:I
    const/16 v23, 0xff

    .line 1928
    .local v23, red:I
    const/16 v17, 0xff

    .line 1929
    .local v17, green:I
    const/16 v11, 0xff

    .line 1930
    .local v11, blue:I
    if-eqz p1, :cond_12

    .line 1931
    invoke-virtual/range {p1 .. p1}, Ljava/awt/Color;->getRed()I

    move-result v23

    .line 1932
    invoke-virtual/range {p1 .. p1}, Ljava/awt/Color;->getGreen()I

    move-result v17

    .line 1933
    invoke-virtual/range {p1 .. p1}, Ljava/awt/Color;->getBlue()I

    move-result v11

    .line 1935
    :cond_12
    const/4 v8, 0x0

    .line 1936
    .restart local v8       #transparency:[I
    if-eqz p1, :cond_15

    .line 1937
    const/16 v21, 0x0

    .restart local v21       #j:I
    move/from16 v20, v19

    .end local v19           #index:I
    .restart local v20       #index:I
    :goto_a
    move/from16 v0, v21

    move/from16 v1, v25

    if-ge v0, v1, :cond_14

    .line 1938
    aget v5, v22, v21

    shr-int/lit8 v5, v5, 0x18

    and-int/lit16 v9, v5, 0xff

    .line 1939
    .restart local v9       #alpha:I
    const/16 v5, 0xfa

    if-ge v9, v5, :cond_13

    .line 1940
    add-int/lit8 v19, v20, 0x1

    .end local v20           #index:I
    .restart local v19       #index:I
    move/from16 v0, v23

    int-to-byte v5, v0

    aput-byte v5, v7, v20

    .line 1941
    add-int/lit8 v20, v19, 0x1

    .end local v19           #index:I
    .restart local v20       #index:I
    move/from16 v0, v17

    int-to-byte v5, v0

    aput-byte v5, v7, v19

    .line 1942
    add-int/lit8 v19, v20, 0x1

    .end local v20           #index:I
    .restart local v19       #index:I
    int-to-byte v5, v11

    aput-byte v5, v7, v20

    .line 1937
    :goto_b
    add-int/lit8 v21, v21, 0x1

    move/from16 v20, v19

    .end local v19           #index:I
    .restart local v20       #index:I
    goto :goto_a

    .line 1944
    :cond_13
    add-int/lit8 v19, v20, 0x1

    .end local v20           #index:I
    .restart local v19       #index:I
    aget v5, v22, v21

    shr-int/lit8 v5, v5, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v7, v20

    .line 1945
    add-int/lit8 v20, v19, 0x1

    .end local v19           #index:I
    .restart local v20       #index:I
    aget v5, v22, v21

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v7, v19

    .line 1946
    add-int/lit8 v19, v20, 0x1

    .end local v20           #index:I
    .restart local v19       #index:I
    aget v5, v22, v21

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v7, v20

    goto :goto_b

    .end local v9           #alpha:I
    .end local v19           #index:I
    .restart local v20       #index:I
    :cond_14
    move/from16 v19, v20

    .line 1980
    .end local v20           #index:I
    .restart local v19       #index:I
    :goto_c
    const/4 v5, 0x3

    const/16 v6, 0x8

    invoke-static/range {v3 .. v8}, Lcom/itextpdf/text/Image;->getInstance(IIII[B[I)Lcom/itextpdf/text/Image;

    move-result-object v18

    .line 1981
    .local v18, img:Lcom/itextpdf/text/Image;
    if-eqz v27, :cond_a

    .line 1982
    const/4 v5, 0x1

    const/16 v6, 0x8

    move-object/from16 v0, v27

    invoke-static {v3, v4, v5, v6, v0}, Lcom/itextpdf/text/Image;->getInstance(IIII[B)Lcom/itextpdf/text/Image;

    move-result-object v26

    .line 1984
    .local v26, sm:Lcom/itextpdf/text/Image;
    :try_start_1
    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/Image;->makeMask()V

    .line 1985
    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Image;->setImageMask(Lcom/itextpdf/text/Image;)V
    :try_end_1
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_6

    .line 1986
    :catch_1
    move-exception v15

    .line 1987
    .local v15, de:Lcom/itextpdf/text/DocumentException;
    new-instance v5, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v5, v15}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v5

    .line 1950
    .end local v15           #de:Lcom/itextpdf/text/DocumentException;
    .end local v18           #img:Lcom/itextpdf/text/Image;
    .end local v21           #j:I
    .end local v26           #sm:Lcom/itextpdf/text/Image;
    :cond_15
    const/16 v29, 0x0

    .line 1951
    .local v29, transparentPixel:I
    mul-int v5, v3, v4

    new-array v0, v5, [B

    move-object/from16 v27, v0

    .line 1952
    const/16 v24, 0x0

    .line 1953
    .local v24, shades:Z
    const/16 v21, 0x0

    .restart local v21       #j:I
    move/from16 v20, v19

    .end local v19           #index:I
    .restart local v20       #index:I
    :goto_d
    move/from16 v0, v21

    move/from16 v1, v25

    if-ge v0, v1, :cond_19

    .line 1954
    aget v5, v22, v21

    shr-int/lit8 v5, v5, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v9, v5

    aput-byte v9, v27, v21

    .line 1956
    .local v9, alpha:B
    if-nez v24, :cond_16

    .line 1957
    if-eqz v9, :cond_17

    const/4 v5, -0x1

    if-eq v9, v5, :cond_17

    .line 1958
    const/16 v24, 0x1

    .line 1971
    :cond_16
    :goto_e
    add-int/lit8 v19, v20, 0x1

    .end local v20           #index:I
    .restart local v19       #index:I
    aget v5, v22, v21

    shr-int/lit8 v5, v5, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v7, v20

    .line 1972
    add-int/lit8 v20, v19, 0x1

    .end local v19           #index:I
    .restart local v20       #index:I
    aget v5, v22, v21

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v7, v19

    .line 1973
    add-int/lit8 v19, v20, 0x1

    .end local v20           #index:I
    .restart local v19       #index:I
    aget v5, v22, v21

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v7, v20

    .line 1953
    add-int/lit8 v21, v21, 0x1

    move/from16 v20, v19

    .end local v19           #index:I
    .restart local v20       #index:I
    goto :goto_d

    .line 1959
    :cond_17
    if-nez v8, :cond_18

    .line 1960
    if-nez v9, :cond_16

    .line 1961
    aget v5, v22, v21

    const v6, 0xffffff

    and-int v29, v5, v6

    .line 1962
    const/4 v5, 0x6

    new-array v8, v5, [I

    .line 1963
    const/4 v5, 0x0

    const/4 v6, 0x1

    shr-int/lit8 v31, v29, 0x10

    move/from16 v0, v31

    and-int/lit16 v0, v0, 0xff

    move/from16 v31, v0

    aput v31, v8, v6

    aput v31, v8, v5

    .line 1964
    const/4 v5, 0x2

    const/4 v6, 0x3

    shr-int/lit8 v31, v29, 0x8

    move/from16 v0, v31

    and-int/lit16 v0, v0, 0xff

    move/from16 v31, v0

    aput v31, v8, v6

    aput v31, v8, v5

    .line 1965
    const/4 v5, 0x4

    const/4 v6, 0x5

    move/from16 v0, v29

    and-int/lit16 v0, v0, 0xff

    move/from16 v31, v0

    aput v31, v8, v6

    aput v31, v8, v5

    goto :goto_e

    .line 1967
    :cond_18
    aget v5, v22, v21

    const v6, 0xffffff

    and-int/2addr v5, v6

    move/from16 v0, v29

    if-eq v5, v0, :cond_16

    .line 1968
    const/16 v24, 0x1

    goto :goto_e

    .line 1975
    .end local v9           #alpha:B
    :cond_19
    if-eqz v24, :cond_1a

    .line 1976
    const/4 v8, 0x0

    move/from16 v19, v20

    .end local v20           #index:I
    .restart local v19       #index:I
    goto/16 :goto_c

    .line 1978
    .end local v19           #index:I
    .restart local v20       #index:I
    :cond_1a
    const/16 v27, 0x0

    move/from16 v19, v20

    .end local v20           #index:I
    .restart local v19       #index:I
    goto/16 :goto_c

    .end local v11           #blue:I
    .end local v17           #green:I
    .end local v19           #index:I
    .end local v23           #red:I
    .end local v24           #shades:Z
    .end local v27           #smask:[B
    .end local v29           #transparentPixel:I
    .restart local v12       #byteWidth:I
    .restart local v13       #cbyte:I
    .restart local v14       #currByte:I
    .restart local v20       #index:I
    .restart local v28       #transColor:I
    .restart local v30       #wMarker:I
    :cond_1b
    move/from16 v19, v20

    .end local v20           #index:I
    .restart local v19       #index:I
    goto/16 :goto_9

    .end local v19           #index:I
    .restart local v20       #index:I
    :cond_1c
    move/from16 v19, v20

    .end local v20           #index:I
    .restart local v19       #index:I
    goto/16 :goto_5

    .end local v19           #index:I
    .local v9, alpha:I
    .restart local v20       #index:I
    :cond_1d
    move/from16 v19, v20

    .end local v20           #index:I
    .restart local v19       #index:I
    goto/16 :goto_4
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/itextpdf/text/Image;
    .locals 1
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/BadElementException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 340
    invoke-static {p0}, Lcom/itextpdf/text/Utilities;->toURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/text/Image;->getInstance(Ljava/net/URL;)Lcom/itextpdf/text/Image;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/net/URL;)Lcom/itextpdf/text/Image;
    .locals 18
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/BadElementException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    const/4 v12, 0x0

    .line 244
    .local v12, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v12

    .line 245
    invoke-virtual {v12}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 246
    .local v1, c1:I
    invoke-virtual {v12}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 247
    .local v2, c2:I
    invoke-virtual {v12}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 248
    .local v3, c3:I
    invoke-virtual {v12}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 250
    .local v4, c4:I
    invoke-virtual {v12}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 251
    .local v5, c5:I
    invoke-virtual {v12}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 252
    .local v6, c6:I
    invoke-virtual {v12}, Ljava/io/InputStream;->read()I

    move-result v7

    .line 253
    .local v7, c7:I
    invoke-virtual {v12}, Ljava/io/InputStream;->read()I

    move-result v8

    .line 254
    .local v8, c8:I
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 256
    const/4 v12, 0x0

    .line 257
    const/16 v15, 0x47

    if-ne v1, v15, :cond_1

    const/16 v15, 0x49

    if-ne v2, v15, :cond_1

    const/16 v15, 0x46

    if-ne v3, v15, :cond_1

    .line 258
    new-instance v10, Lcom/itextpdf/text/pdf/codec/GifImage;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/itextpdf/text/pdf/codec/GifImage;-><init>(Ljava/net/URL;)V

    .line 259
    .local v10, gif:Lcom/itextpdf/text/pdf/codec/GifImage;
    const/4 v15, 0x1

    invoke-virtual {v10, v15}, Lcom/itextpdf/text/pdf/codec/GifImage;->getImage(I)Lcom/itextpdf/text/Image;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v11

    .line 321
    .local v11, img:Lcom/itextpdf/text/Image;
    if-eqz v12, :cond_0

    .line 322
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .end local v10           #gif:Lcom/itextpdf/text/pdf/codec/GifImage;
    .end local v11           #img:Lcom/itextpdf/text/Image;
    :cond_0
    :goto_0
    return-object v11

    .line 262
    :cond_1
    const/16 v15, 0xff

    if-ne v1, v15, :cond_2

    const/16 v15, 0xd8

    if-ne v2, v15, :cond_2

    .line 263
    :try_start_1
    new-instance v11, Lcom/itextpdf/text/Jpeg;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/itextpdf/text/Jpeg;-><init>(Ljava/net/URL;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 321
    if-eqz v12, :cond_0

    .line 322
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 265
    :cond_2
    if-nez v1, :cond_3

    if-nez v2, :cond_3

    if-nez v3, :cond_3

    const/16 v15, 0xc

    if-ne v4, v15, :cond_3

    .line 266
    :try_start_2
    new-instance v11, Lcom/itextpdf/text/Jpeg2000;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/itextpdf/text/Jpeg2000;-><init>(Ljava/net/URL;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 321
    if-eqz v12, :cond_0

    .line 322
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 268
    :cond_3
    const/16 v15, 0xff

    if-ne v1, v15, :cond_4

    const/16 v15, 0x4f

    if-ne v2, v15, :cond_4

    const/16 v15, 0xff

    if-ne v3, v15, :cond_4

    const/16 v15, 0x51

    if-ne v4, v15, :cond_4

    .line 269
    :try_start_3
    new-instance v11, Lcom/itextpdf/text/Jpeg2000;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/itextpdf/text/Jpeg2000;-><init>(Ljava/net/URL;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 321
    if-eqz v12, :cond_0

    .line 322
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 271
    :cond_4
    :try_start_4
    sget-object v15, Lcom/itextpdf/text/pdf/codec/PngImage;->PNGID:[I

    const/16 v16, 0x0

    aget v15, v15, v16

    if-ne v1, v15, :cond_5

    sget-object v15, Lcom/itextpdf/text/pdf/codec/PngImage;->PNGID:[I

    const/16 v16, 0x1

    aget v15, v15, v16

    if-ne v2, v15, :cond_5

    sget-object v15, Lcom/itextpdf/text/pdf/codec/PngImage;->PNGID:[I

    const/16 v16, 0x2

    aget v15, v15, v16

    if-ne v3, v15, :cond_5

    sget-object v15, Lcom/itextpdf/text/pdf/codec/PngImage;->PNGID:[I

    const/16 v16, 0x3

    aget v15, v15, v16

    if-ne v4, v15, :cond_5

    .line 273
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/text/pdf/codec/PngImage;->getImage(Ljava/net/URL;)Lcom/itextpdf/text/Image;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v11

    .line 321
    if-eqz v12, :cond_0

    .line 322
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 275
    :cond_5
    const/16 v15, 0xd7

    if-ne v1, v15, :cond_6

    const/16 v15, 0xcd

    if-ne v2, v15, :cond_6

    .line 276
    :try_start_5
    new-instance v11, Lcom/itextpdf/text/ImgWMF;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/itextpdf/text/ImgWMF;-><init>(Ljava/net/URL;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 321
    if-eqz v12, :cond_0

    .line 322
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    goto/16 :goto_0

    .line 278
    :cond_6
    const/16 v15, 0x42

    if-ne v1, v15, :cond_7

    const/16 v15, 0x4d

    if-ne v2, v15, :cond_7

    .line 279
    :try_start_6
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/text/pdf/codec/BmpImage;->getImage(Ljava/net/URL;)Lcom/itextpdf/text/Image;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v11

    .line 321
    if-eqz v12, :cond_0

    .line 322
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    goto/16 :goto_0

    .line 281
    :cond_7
    const/16 v15, 0x4d

    if-ne v1, v15, :cond_8

    const/16 v15, 0x4d

    if-ne v2, v15, :cond_8

    if-nez v3, :cond_8

    const/16 v15, 0x2a

    if-eq v4, v15, :cond_9

    :cond_8
    const/16 v15, 0x49

    if-ne v1, v15, :cond_e

    const/16 v15, 0x49

    if-ne v2, v15, :cond_e

    const/16 v15, 0x2a

    if-ne v3, v15, :cond_e

    if-nez v4, :cond_e

    .line 283
    :cond_9
    const/4 v13, 0x0

    .line 285
    .local v13, ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v15

    const-string v16, "file"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 286
    invoke-virtual/range {p0 .. p0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v9

    .line 287
    .local v9, file:Ljava/lang/String;
    invoke-static {v9}, Lcom/itextpdf/text/Utilities;->unEscapeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 288
    new-instance v14, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-direct {v14, v9}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;-><init>(Ljava/lang/String;)V

    .end local v13           #ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    .local v14, ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    move-object v13, v14

    .line 291
    .end local v9           #file:Ljava/lang/String;
    .end local v14           #ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    .restart local v13       #ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    :goto_1
    const/4 v15, 0x1

    invoke-static {v13, v15}, Lcom/itextpdf/text/pdf/codec/TiffImage;->getTiffImage(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;I)Lcom/itextpdf/text/Image;

    move-result-object v11

    .line 292
    .restart local v11       #img:Lcom/itextpdf/text/Image;
    move-object/from16 v0, p0

    iput-object v0, v11, Lcom/itextpdf/text/Image;->url:Ljava/net/URL;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 295
    if-eqz v13, :cond_a

    .line 296
    :try_start_8
    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 321
    :cond_a
    if-eqz v12, :cond_0

    .line 322
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    goto/16 :goto_0

    .line 290
    .end local v11           #img:Lcom/itextpdf/text/Image;
    :cond_b
    :try_start_9
    new-instance v14, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;-><init>(Ljava/net/URL;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .end local v13           #ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    .restart local v14       #ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    move-object v13, v14

    .end local v14           #ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    .restart local v13       #ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    goto :goto_1

    .line 295
    :catchall_0
    move-exception v15

    if-eqz v13, :cond_c

    .line 296
    :try_start_a
    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V

    :cond_c
    throw v15
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 321
    .end local v1           #c1:I
    .end local v2           #c2:I
    .end local v3           #c3:I
    .end local v4           #c4:I
    .end local v5           #c5:I
    .end local v6           #c6:I
    .end local v7           #c7:I
    .end local v8           #c8:I
    .end local v13           #ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    :catchall_1
    move-exception v15

    if-eqz v12, :cond_d

    .line 322
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    :cond_d
    throw v15

    .line 300
    .restart local v1       #c1:I
    .restart local v2       #c2:I
    .restart local v3       #c3:I
    .restart local v4       #c4:I
    .restart local v5       #c5:I
    .restart local v6       #c6:I
    .restart local v7       #c7:I
    .restart local v8       #c8:I
    :cond_e
    const/16 v15, 0x97

    if-ne v1, v15, :cond_12

    const/16 v15, 0x4a

    if-ne v2, v15, :cond_12

    const/16 v15, 0x42

    if-ne v3, v15, :cond_12

    const/16 v15, 0x32

    if-ne v4, v15, :cond_12

    const/16 v15, 0xd

    if-ne v5, v15, :cond_12

    const/16 v15, 0xa

    if-ne v6, v15, :cond_12

    const/16 v15, 0x1a

    if-ne v7, v15, :cond_12

    const/16 v15, 0xa

    if-ne v8, v15, :cond_12

    .line 302
    const/4 v13, 0x0

    .line 304
    .restart local v13       #ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v15

    const-string v16, "file"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 305
    invoke-virtual/range {p0 .. p0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v9

    .line 306
    .restart local v9       #file:Ljava/lang/String;
    invoke-static {v9}, Lcom/itextpdf/text/Utilities;->unEscapeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 307
    new-instance v14, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-direct {v14, v9}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;-><init>(Ljava/lang/String;)V

    .end local v13           #ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    .restart local v14       #ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    move-object v13, v14

    .line 310
    .end local v9           #file:Ljava/lang/String;
    .end local v14           #ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    .restart local v13       #ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    :goto_2
    const/4 v15, 0x1

    invoke-static {v13, v15}, Lcom/itextpdf/text/pdf/codec/JBIG2Image;->getJbig2Image(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;I)Lcom/itextpdf/text/Image;

    move-result-object v11

    .line 311
    .restart local v11       #img:Lcom/itextpdf/text/Image;
    move-object/from16 v0, p0

    iput-object v0, v11, Lcom/itextpdf/text/Image;->url:Ljava/net/URL;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 314
    if-eqz v13, :cond_f

    .line 315
    :try_start_c
    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 321
    :cond_f
    if-eqz v12, :cond_0

    .line 322
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    goto/16 :goto_0

    .line 309
    .end local v11           #img:Lcom/itextpdf/text/Image;
    :cond_10
    :try_start_d
    new-instance v14, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;-><init>(Ljava/net/URL;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .end local v13           #ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    .restart local v14       #ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    move-object v13, v14

    .end local v14           #ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    .restart local v13       #ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    goto :goto_2

    .line 314
    :catchall_2
    move-exception v15

    if-eqz v13, :cond_11

    .line 315
    :try_start_e
    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V

    :cond_11
    throw v15

    .line 318
    .end local v13           #ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    :cond_12
    new-instance v15, Ljava/io/IOException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " is not a recognized imageformat."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
.end method

.method public static getInstance([B)Lcom/itextpdf/text/Image;
    .locals 21
    .parameter "imgb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/BadElementException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 355
    const/4 v13, 0x0

    .line 357
    .local v13, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v14, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 358
    .end local v13           #is:Ljava/io/InputStream;
    .local v14, is:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v14}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 359
    .local v2, c1:I
    invoke-virtual {v14}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 360
    .local v3, c2:I
    invoke-virtual {v14}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 361
    .local v4, c3:I
    invoke-virtual {v14}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 362
    .local v5, c4:I
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 364
    const/4 v13, 0x0

    .line 365
    .end local v14           #is:Ljava/io/InputStream;
    .restart local v13       #is:Ljava/io/InputStream;
    const/16 v18, 0x47

    move/from16 v0, v18

    if-ne v2, v0, :cond_1

    const/16 v18, 0x49

    move/from16 v0, v18

    if-ne v3, v0, :cond_1

    const/16 v18, 0x46

    move/from16 v0, v18

    if-ne v4, v0, :cond_1

    .line 366
    :try_start_2
    new-instance v11, Lcom/itextpdf/text/pdf/codec/GifImage;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/itextpdf/text/pdf/codec/GifImage;-><init>([B)V

    .line 367
    .local v11, gif:Lcom/itextpdf/text/pdf/codec/GifImage;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/itextpdf/text/pdf/codec/GifImage;->getImage(I)Lcom/itextpdf/text/Image;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v12

    .line 436
    if-eqz v13, :cond_0

    .line 437
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .end local v11           #gif:Lcom/itextpdf/text/pdf/codec/GifImage;
    :cond_0
    :goto_0
    return-object v12

    .line 369
    :cond_1
    const/16 v18, 0xff

    move/from16 v0, v18

    if-ne v2, v0, :cond_2

    const/16 v18, 0xd8

    move/from16 v0, v18

    if-ne v3, v0, :cond_2

    .line 370
    :try_start_3
    new-instance v12, Lcom/itextpdf/text/Jpeg;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/itextpdf/text/Jpeg;-><init>([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 436
    if-eqz v13, :cond_0

    .line 437
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 372
    :cond_2
    if-nez v2, :cond_3

    if-nez v3, :cond_3

    if-nez v4, :cond_3

    const/16 v18, 0xc

    move/from16 v0, v18

    if-ne v5, v0, :cond_3

    .line 373
    :try_start_4
    new-instance v12, Lcom/itextpdf/text/Jpeg2000;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/itextpdf/text/Jpeg2000;-><init>([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 436
    if-eqz v13, :cond_0

    .line 437
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 375
    :cond_3
    const/16 v18, 0xff

    move/from16 v0, v18

    if-ne v2, v0, :cond_4

    const/16 v18, 0x4f

    move/from16 v0, v18

    if-ne v3, v0, :cond_4

    const/16 v18, 0xff

    move/from16 v0, v18

    if-ne v4, v0, :cond_4

    const/16 v18, 0x51

    move/from16 v0, v18

    if-ne v5, v0, :cond_4

    .line 376
    :try_start_5
    new-instance v12, Lcom/itextpdf/text/Jpeg2000;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/itextpdf/text/Jpeg2000;-><init>([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 436
    if-eqz v13, :cond_0

    .line 437
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 378
    :cond_4
    :try_start_6
    sget-object v18, Lcom/itextpdf/text/pdf/codec/PngImage;->PNGID:[I

    const/16 v19, 0x0

    aget v18, v18, v19

    move/from16 v0, v18

    if-ne v2, v0, :cond_5

    sget-object v18, Lcom/itextpdf/text/pdf/codec/PngImage;->PNGID:[I

    const/16 v19, 0x1

    aget v18, v18, v19

    move/from16 v0, v18

    if-ne v3, v0, :cond_5

    sget-object v18, Lcom/itextpdf/text/pdf/codec/PngImage;->PNGID:[I

    const/16 v19, 0x2

    aget v18, v18, v19

    move/from16 v0, v18

    if-ne v4, v0, :cond_5

    sget-object v18, Lcom/itextpdf/text/pdf/codec/PngImage;->PNGID:[I

    const/16 v19, 0x3

    aget v18, v18, v19

    move/from16 v0, v18

    if-ne v5, v0, :cond_5

    .line 380
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/text/pdf/codec/PngImage;->getImage([B)Lcom/itextpdf/text/Image;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v12

    .line 436
    if-eqz v13, :cond_0

    .line 437
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    goto/16 :goto_0

    .line 382
    :cond_5
    const/16 v18, 0xd7

    move/from16 v0, v18

    if-ne v2, v0, :cond_6

    const/16 v18, 0xcd

    move/from16 v0, v18

    if-ne v3, v0, :cond_6

    .line 383
    :try_start_7
    new-instance v12, Lcom/itextpdf/text/ImgWMF;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/itextpdf/text/ImgWMF;-><init>([B)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 436
    if-eqz v13, :cond_0

    .line 437
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    goto/16 :goto_0

    .line 385
    :cond_6
    const/16 v18, 0x42

    move/from16 v0, v18

    if-ne v2, v0, :cond_7

    const/16 v18, 0x4d

    move/from16 v0, v18

    if-ne v3, v0, :cond_7

    .line 386
    :try_start_8
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/text/pdf/codec/BmpImage;->getImage([B)Lcom/itextpdf/text/Image;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v12

    .line 436
    if-eqz v13, :cond_0

    .line 437
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    goto/16 :goto_0

    .line 388
    :cond_7
    const/16 v18, 0x4d

    move/from16 v0, v18

    if-ne v2, v0, :cond_8

    const/16 v18, 0x4d

    move/from16 v0, v18

    if-ne v3, v0, :cond_8

    if-nez v4, :cond_8

    const/16 v18, 0x2a

    move/from16 v0, v18

    if-eq v5, v0, :cond_9

    :cond_8
    const/16 v18, 0x49

    move/from16 v0, v18

    if-ne v2, v0, :cond_e

    const/16 v18, 0x49

    move/from16 v0, v18

    if-ne v3, v0, :cond_e

    const/16 v18, 0x2a

    move/from16 v0, v18

    if-ne v4, v0, :cond_e

    if-nez v5, :cond_e

    .line 390
    :cond_9
    const/16 v16, 0x0

    .line 392
    .local v16, ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    :try_start_9
    new-instance v17, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;-><init>([B)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 393
    .end local v16           #ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    .local v17, ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    const/16 v18, 0x1

    :try_start_a
    invoke-static/range {v17 .. v18}, Lcom/itextpdf/text/pdf/codec/TiffImage;->getTiffImage(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;I)Lcom/itextpdf/text/Image;

    move-result-object v12

    .line 394
    .local v12, img:Lcom/itextpdf/text/Image;
    invoke-virtual {v12}, Lcom/itextpdf/text/Image;->getOriginalData()[B

    move-result-object v18

    if-nez v18, :cond_a

    .line 395
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Lcom/itextpdf/text/Image;->setOriginalData([B)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 398
    :cond_a
    if-eqz v17, :cond_b

    .line 399
    :try_start_b
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 436
    :cond_b
    if-eqz v13, :cond_0

    .line 437
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    goto/16 :goto_0

    .line 398
    .end local v12           #img:Lcom/itextpdf/text/Image;
    .end local v17           #ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    .restart local v16       #ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    :catchall_0
    move-exception v18

    :goto_1
    if-eqz v16, :cond_c

    .line 399
    :try_start_c
    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V

    :cond_c
    throw v18
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 436
    .end local v2           #c1:I
    .end local v3           #c2:I
    .end local v4           #c3:I
    .end local v5           #c4:I
    .end local v16           #ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    :catchall_1
    move-exception v18

    :goto_2
    if-eqz v13, :cond_d

    .line 437
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    :cond_d
    throw v18

    .line 403
    .restart local v2       #c1:I
    .restart local v3       #c2:I
    .restart local v4       #c3:I
    .restart local v5       #c4:I
    :cond_e
    const/16 v18, 0x97

    move/from16 v0, v18

    if-ne v2, v0, :cond_15

    const/16 v18, 0x4a

    move/from16 v0, v18

    if-ne v3, v0, :cond_15

    const/16 v18, 0x42

    move/from16 v0, v18

    if-ne v4, v0, :cond_15

    const/16 v18, 0x32

    move/from16 v0, v18

    if-ne v5, v0, :cond_15

    .line 404
    :try_start_d
    new-instance v14, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 405
    .end local v13           #is:Ljava/io/InputStream;
    .restart local v14       #is:Ljava/io/InputStream;
    const-wide/16 v18, 0x4

    :try_start_e
    move-wide/from16 v0, v18

    invoke-virtual {v14, v0, v1}, Ljava/io/InputStream;->skip(J)J

    .line 406
    invoke-virtual {v14}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 407
    .local v6, c5:I
    invoke-virtual {v14}, Ljava/io/InputStream;->read()I

    move-result v7

    .line 408
    .local v7, c6:I
    invoke-virtual {v14}, Ljava/io/InputStream;->read()I

    move-result v8

    .line 409
    .local v8, c7:I
    invoke-virtual {v14}, Ljava/io/InputStream;->read()I

    move-result v9

    .line 410
    .local v9, c8:I
    const/16 v18, 0xd

    move/from16 v0, v18

    if-ne v6, v0, :cond_14

    const/16 v18, 0xa

    move/from16 v0, v18

    if-ne v7, v0, :cond_14

    const/16 v18, 0x1a

    move/from16 v0, v18

    if-ne v8, v0, :cond_14

    const/16 v18, 0xa

    move/from16 v0, v18

    if-ne v9, v0, :cond_14

    .line 411
    invoke-virtual {v14}, Ljava/io/InputStream;->read()I

    move-result v10

    .line 413
    .local v10, file_header_flags:I
    const/4 v15, -0x1

    .line 414
    .local v15, number_of_pages:I
    and-int/lit8 v18, v10, 0x2

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    .line 415
    invoke-virtual {v14}, Ljava/io/InputStream;->read()I

    move-result v18

    shl-int/lit8 v18, v18, 0x18

    invoke-virtual {v14}, Ljava/io/InputStream;->read()I

    move-result v19

    shl-int/lit8 v19, v19, 0x10

    or-int v18, v18, v19

    invoke-virtual {v14}, Ljava/io/InputStream;->read()I

    move-result v19

    shl-int/lit8 v19, v19, 0x8

    or-int v18, v18, v19

    invoke-virtual {v14}, Ljava/io/InputStream;->read()I

    move-result v19

    or-int v15, v18, v19

    .line 417
    :cond_f
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 421
    const/16 v16, 0x0

    .line 423
    .restart local v16       #ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    :try_start_f
    new-instance v17, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;-><init>([B)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 424
    .end local v16           #ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    .restart local v17       #ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    const/16 v18, 0x1

    :try_start_10
    invoke-static/range {v17 .. v18}, Lcom/itextpdf/text/pdf/codec/JBIG2Image;->getJbig2Image(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;I)Lcom/itextpdf/text/Image;

    move-result-object v12

    .line 425
    .restart local v12       #img:Lcom/itextpdf/text/Image;
    invoke-virtual {v12}, Lcom/itextpdf/text/Image;->getOriginalData()[B

    move-result-object v18

    if-nez v18, :cond_10

    .line 426
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Lcom/itextpdf/text/Image;->setOriginalData([B)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 429
    :cond_10
    if-eqz v17, :cond_11

    .line 430
    :try_start_11
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 436
    :cond_11
    if-eqz v14, :cond_12

    .line 437
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    :cond_12
    move-object v13, v14

    .end local v14           #is:Ljava/io/InputStream;
    .restart local v13       #is:Ljava/io/InputStream;
    goto/16 :goto_0

    .line 429
    .end local v12           #img:Lcom/itextpdf/text/Image;
    .end local v13           #is:Ljava/io/InputStream;
    .end local v17           #ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    .restart local v14       #is:Ljava/io/InputStream;
    .restart local v16       #ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    :catchall_2
    move-exception v18

    :goto_3
    if-eqz v16, :cond_13

    .line 430
    :try_start_12
    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V

    :cond_13
    throw v18
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 436
    .end local v2           #c1:I
    .end local v3           #c2:I
    .end local v4           #c3:I
    .end local v5           #c4:I
    .end local v6           #c5:I
    .end local v7           #c6:I
    .end local v8           #c7:I
    .end local v9           #c8:I
    .end local v10           #file_header_flags:I
    .end local v15           #number_of_pages:I
    .end local v16           #ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    :catchall_3
    move-exception v18

    move-object v13, v14

    .end local v14           #is:Ljava/io/InputStream;
    .restart local v13       #is:Ljava/io/InputStream;
    goto/16 :goto_2

    .end local v13           #is:Ljava/io/InputStream;
    .restart local v2       #c1:I
    .restart local v3       #c2:I
    .restart local v4       #c3:I
    .restart local v5       #c4:I
    .restart local v6       #c5:I
    .restart local v7       #c6:I
    .restart local v8       #c7:I
    .restart local v9       #c8:I
    .restart local v14       #is:Ljava/io/InputStream;
    :cond_14
    move-object v13, v14

    .line 434
    .end local v6           #c5:I
    .end local v7           #c6:I
    .end local v8           #c7:I
    .end local v9           #c8:I
    .end local v14           #is:Ljava/io/InputStream;
    .restart local v13       #is:Ljava/io/InputStream;
    :cond_15
    :try_start_13
    new-instance v18, Ljava/io/IOException;

    const-string v19, "the.byte.array.is.not.a.recognized.imageformat"

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 429
    .end local v13           #is:Ljava/io/InputStream;
    .restart local v6       #c5:I
    .restart local v7       #c6:I
    .restart local v8       #c7:I
    .restart local v9       #c8:I
    .restart local v10       #file_header_flags:I
    .restart local v14       #is:Ljava/io/InputStream;
    .restart local v15       #number_of_pages:I
    .restart local v17       #ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    :catchall_4
    move-exception v18

    move-object/from16 v16, v17

    .end local v17           #ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    .restart local v16       #ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    goto :goto_3

    .line 398
    .end local v6           #c5:I
    .end local v7           #c6:I
    .end local v8           #c7:I
    .end local v9           #c8:I
    .end local v10           #file_header_flags:I
    .end local v14           #is:Ljava/io/InputStream;
    .end local v15           #number_of_pages:I
    .end local v16           #ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    .restart local v13       #is:Ljava/io/InputStream;
    .restart local v17       #ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    :catchall_5
    move-exception v18

    move-object/from16 v16, v17

    .end local v17           #ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    .restart local v16       #ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    goto/16 :goto_1
.end method

.method protected static declared-synchronized getSerialId()Ljava/lang/Long;
    .locals 6

    .prologue
    .line 1115
    const-class v1, Lcom/itextpdf/text/Image;

    monitor-enter v1

    :try_start_0
    sget-wide v2, Lcom/itextpdf/text/Image;->serialId:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lcom/itextpdf/text/Image;->serialId:J

    .line 1116
    sget-wide v2, Lcom/itextpdf/text/Image;->serialId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1115
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private simplifyColorspace(Lcom/itextpdf/text/pdf/PdfArray;)Lcom/itextpdf/text/pdf/PdfObject;
    .locals 2
    .parameter "obj"

    .prologue
    .line 1674
    if-nez p1, :cond_1

    .line 1682
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 1676
    .restart local p1
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/itextpdf/text/pdf/PdfArray;->getAsName(I)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v0

    .line 1677
    .local v0, first:Lcom/itextpdf/text/pdf/PdfName;
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->CALGRAY:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1678
    sget-object p1, Lcom/itextpdf/text/pdf/PdfName;->DEVICEGRAY:Lcom/itextpdf/text/pdf/PdfName;

    goto :goto_0

    .line 1679
    :cond_2
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->CALRGB:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1680
    sget-object p1, Lcom/itextpdf/text/pdf/PdfName;->DEVICERGB:Lcom/itextpdf/text/pdf/PdfName;

    goto :goto_0
.end method


# virtual methods
.method public getAbsoluteX()F
    .locals 1

    .prologue
    .line 922
    iget v0, p0, Lcom/itextpdf/text/Image;->absoluteX:F

    return v0
.end method

.method public getAbsoluteY()F
    .locals 1

    .prologue
    .line 941
    iget v0, p0, Lcom/itextpdf/text/Image;->absoluteY:F

    return v0
.end method

.method public getAdditional()Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 1

    .prologue
    .line 1629
    iget-object v0, p0, Lcom/itextpdf/text/Image;->additional:Lcom/itextpdf/text/pdf/PdfDictionary;

    return-object v0
.end method

.method public getAlignment()I
    .locals 1

    .prologue
    .line 859
    iget v0, p0, Lcom/itextpdf/text/Image;->alignment:I

    return v0
.end method

.method public getAlt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 880
    iget-object v0, p0, Lcom/itextpdf/text/Image;->alt:Ljava/lang/String;

    return-object v0
.end method

.method public getAnnotation()Lcom/itextpdf/text/Annotation;
    .locals 1

    .prologue
    .line 1360
    iget-object v0, p0, Lcom/itextpdf/text/Image;->annotation:Lcom/itextpdf/text/Annotation;

    return-object v0
.end method

.method public getBpc()I
    .locals 1

    .prologue
    .line 828
    iget v0, p0, Lcom/itextpdf/text/Image;->bpc:I

    return v0
.end method

.method public getColorspace()I
    .locals 1

    .prologue
    .line 1564
    iget v0, p0, Lcom/itextpdf/text/Image;->colorspace:I

    return v0
.end method

.method public getCompressionLevel()I
    .locals 1

    .prologue
    .line 1805
    iget v0, p0, Lcom/itextpdf/text/Image;->compressionLevel:I

    return v0
.end method

.method public getDirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/itextpdf/text/Image;->directReference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    return-object v0
.end method

.method public getDpiX()I
    .locals 1

    .prologue
    .line 1502
    iget v0, p0, Lcom/itextpdf/text/Image;->dpiX:I

    return v0
.end method

.method public getDpiY()I
    .locals 1

    .prologue
    .line 1511
    iget v0, p0, Lcom/itextpdf/text/Image;->dpiY:I

    return v0
.end method

.method public getICCProfile()Lcom/itextpdf/text/pdf/ICC_Profile;
    .locals 1

    .prologue
    .line 1617
    iget-object v0, p0, Lcom/itextpdf/text/Image;->profile:Lcom/itextpdf/text/pdf/ICC_Profile;

    return-object v0
.end method

.method public getImageMask()Lcom/itextpdf/text/Image;
    .locals 1

    .prologue
    .line 1735
    iget-object v0, p0, Lcom/itextpdf/text/Image;->imageMask:Lcom/itextpdf/text/Image;

    return-object v0
.end method

.method public getImageRotation()F
    .locals 5

    .prologue
    .line 1141
    const-wide v0, 0x401921fb54442d18L

    .line 1142
    .local v0, d:D
    iget v3, p0, Lcom/itextpdf/text/Image;->rotationRadians:F

    iget v4, p0, Lcom/itextpdf/text/Image;->initialRotation:F

    sub-float/2addr v3, v4

    float-to-double v3, v3

    rem-double/2addr v3, v0

    double-to-float v2, v3

    .line 1143
    .local v2, rot:F
    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gez v3, :cond_0

    .line 1144
    float-to-double v3, v2

    add-double/2addr v3, v0

    double-to-float v2, v3

    .line 1146
    :cond_0
    return v2
.end method

.method public getIndentationLeft()F
    .locals 1

    .prologue
    .line 1216
    iget v0, p0, Lcom/itextpdf/text/Image;->indentationLeft:F

    return v0
.end method

.method public getIndentationRight()F
    .locals 1

    .prologue
    .line 1234
    iget v0, p0, Lcom/itextpdf/text/Image;->indentationRight:F

    return v0
.end method

.method public getInitialRotation()F
    .locals 1

    .prologue
    .line 1182
    iget v0, p0, Lcom/itextpdf/text/Image;->initialRotation:F

    return v0
.end method

.method public getLayer()Lcom/itextpdf/text/pdf/PdfOCG;
    .locals 1

    .prologue
    .line 1375
    iget-object v0, p0, Lcom/itextpdf/text/Image;->layer:Lcom/itextpdf/text/pdf/PdfOCG;

    return-object v0
.end method

.method public getMySerialId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/itextpdf/text/Image;->mySerialId:Ljava/lang/Long;

    return-object v0
.end method

.method public getOriginalData()[B
    .locals 1

    .prologue
    .line 1449
    iget-object v0, p0, Lcom/itextpdf/text/Image;->originalData:[B

    return-object v0
.end method

.method public getOriginalType()I
    .locals 1

    .prologue
    .line 1428
    iget v0, p0, Lcom/itextpdf/text/Image;->originalType:I

    return v0
.end method

.method public getPlainHeight()F
    .locals 1

    .prologue
    .line 979
    iget v0, p0, Lcom/itextpdf/text/Image;->plainHeight:F

    return v0
.end method

.method public getPlainWidth()F
    .locals 1

    .prologue
    .line 970
    iget v0, p0, Lcom/itextpdf/text/Image;->plainWidth:F

    return v0
.end method

.method public getRawData()[B
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lcom/itextpdf/text/Image;->rawData:[B

    return-object v0
.end method

.method public getScaledHeight()F
    .locals 1

    .prologue
    .line 961
    iget v0, p0, Lcom/itextpdf/text/Image;->scaledHeight:F

    return v0
.end method

.method public getScaledWidth()F
    .locals 1

    .prologue
    .line 952
    iget v0, p0, Lcom/itextpdf/text/Image;->scaledWidth:F

    return v0
.end method

.method public getSpacingAfter()F
    .locals 1

    .prologue
    .line 1272
    iget v0, p0, Lcom/itextpdf/text/Image;->spacingAfter:F

    return v0
.end method

.method public getSpacingBefore()F
    .locals 1

    .prologue
    .line 1252
    iget v0, p0, Lcom/itextpdf/text/Image;->spacingBefore:F

    return v0
.end method

.method public getTemplateData()Lcom/itextpdf/text/pdf/PdfTemplate;
    .locals 2

    .prologue
    .line 840
    iget-object v0, p0, Lcom/itextpdf/text/Image;->template:[Lcom/itextpdf/text/pdf/PdfTemplate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTransparency()[I
    .locals 1

    .prologue
    .line 1785
    iget-object v0, p0, Lcom/itextpdf/text/Image;->transparency:[I

    return-object v0
.end method

.method public getUrl()Ljava/net/URL;
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Lcom/itextpdf/text/Image;->url:Ljava/net/URL;

    return-object v0
.end method

.method public getWidthPercentage()F
    .locals 1

    .prologue
    .line 1299
    iget v0, p0, Lcom/itextpdf/text/Image;->widthPercentage:F

    return v0
.end method

.method public getXYRatio()F
    .locals 1

    .prologue
    .line 1538
    iget v0, p0, Lcom/itextpdf/text/Image;->XYRatio:F

    return v0
.end method

.method public hasAbsoluteX()Z
    .locals 1

    .prologue
    .line 913
    iget v0, p0, Lcom/itextpdf/text/Image;->absoluteX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAbsoluteY()Z
    .locals 1

    .prologue
    .line 932
    iget v0, p0, Lcom/itextpdf/text/Image;->absoluteY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasICCProfile()Z
    .locals 1

    .prologue
    .line 1608
    iget-object v0, p0, Lcom/itextpdf/text/Image;->profile:Lcom/itextpdf/text/pdf/ICC_Profile;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeflated()Z
    .locals 1

    .prologue
    .line 1475
    iget-boolean v0, p0, Lcom/itextpdf/text/Image;->deflated:Z

    return v0
.end method

.method public isImgRaw()Z
    .locals 2

    .prologue
    .line 770
    iget v0, p0, Lcom/itextpdf/text/Image;->type:I

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isImgTemplate()Z
    .locals 2

    .prologue
    .line 781
    iget v0, p0, Lcom/itextpdf/text/Image;->type:I

    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInterpolation()Z
    .locals 1

    .prologue
    .line 1399
    iget-boolean v0, p0, Lcom/itextpdf/text/Image;->interpolation:Z

    return v0
.end method

.method public isInverted()Z
    .locals 1

    .prologue
    .line 1576
    iget-boolean v0, p0, Lcom/itextpdf/text/Image;->invert:Z

    return v0
.end method

.method public isJpeg()Z
    .locals 2

    .prologue
    .line 759
    iget v0, p0, Lcom/itextpdf/text/Image;->type:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMask()Z
    .locals 1

    .prologue
    .line 1700
    iget-boolean v0, p0, Lcom/itextpdf/text/Image;->mask:Z

    return v0
.end method

.method public isMaskCandidate()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1722
    iget v1, p0, Lcom/itextpdf/text/Image;->type:I

    const/16 v2, 0x22

    if-ne v1, v2, :cond_1

    .line 1723
    iget v1, p0, Lcom/itextpdf/text/Image;->bpc:I

    const/16 v2, 0xff

    if-le v1, v2, :cond_1

    .line 1726
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/itextpdf/text/Image;->colorspace:I

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNestable()Z
    .locals 1

    .prologue
    .line 746
    const/4 v0, 0x1

    return v0
.end method

.method public isScaleToFitLineWhenOverflow()Z
    .locals 1

    .prologue
    .line 1327
    iget-boolean v0, p0, Lcom/itextpdf/text/Image;->scaleToFitLineWhenOverflow:Z

    return v0
.end method

.method public isSmask()Z
    .locals 1

    .prologue
    .line 1762
    iget-boolean v0, p0, Lcom/itextpdf/text/Image;->smask:Z

    return v0
.end method

.method public makeMask()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 1710
    invoke-virtual {p0}, Lcom/itextpdf/text/Image;->isMaskCandidate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1711
    new-instance v0, Lcom/itextpdf/text/DocumentException;

    const-string v1, "this.image.can.not.be.an.image.mask"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1712
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/Image;->mask:Z

    .line 1713
    return-void
.end method

.method public matrix()[F
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1076
    const/16 v3, 0x8

    new-array v1, v3, [F

    .line 1077
    .local v1, matrix:[F
    iget v3, p0, Lcom/itextpdf/text/Image;->rotationRadians:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v0, v3

    .line 1078
    .local v0, cosX:F
    iget v3, p0, Lcom/itextpdf/text/Image;->rotationRadians:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v2, v3

    .line 1079
    .local v2, sinX:F
    iget v3, p0, Lcom/itextpdf/text/Image;->plainWidth:F

    mul-float/2addr v3, v0

    aput v3, v1, v7

    .line 1080
    iget v3, p0, Lcom/itextpdf/text/Image;->plainWidth:F

    mul-float/2addr v3, v2

    aput v3, v1, v8

    .line 1081
    iget v3, p0, Lcom/itextpdf/text/Image;->plainHeight:F

    neg-float v3, v3

    mul-float/2addr v3, v2

    aput v3, v1, v9

    .line 1082
    iget v3, p0, Lcom/itextpdf/text/Image;->plainHeight:F

    mul-float/2addr v3, v0

    aput v3, v1, v10

    .line 1083
    iget v3, p0, Lcom/itextpdf/text/Image;->rotationRadians:F

    float-to-double v3, v3

    const-wide v5, 0x3ff921fb54442d18L

    cmpg-double v3, v3, v5

    if-gez v3, :cond_0

    .line 1084
    const/4 v3, 0x4

    aget v4, v1, v9

    aput v4, v1, v3

    .line 1085
    const/4 v3, 0x5

    aput v11, v1, v3

    .line 1086
    const/4 v3, 0x6

    aget v4, v1, v7

    aput v4, v1, v3

    .line 1087
    const/4 v3, 0x7

    aget v4, v1, v8

    aget v5, v1, v10

    add-float/2addr v4, v5

    aput v4, v1, v3

    .line 1104
    :goto_0
    return-object v1

    .line 1088
    :cond_0
    iget v3, p0, Lcom/itextpdf/text/Image;->rotationRadians:F

    float-to-double v3, v3

    const-wide v5, 0x400921fb54442d18L

    cmpg-double v3, v3, v5

    if-gez v3, :cond_1

    .line 1089
    const/4 v3, 0x4

    aget v4, v1, v7

    aget v5, v1, v9

    add-float/2addr v4, v5

    aput v4, v1, v3

    .line 1090
    const/4 v3, 0x5

    aget v4, v1, v10

    aput v4, v1, v3

    .line 1091
    const/4 v3, 0x6

    aput v11, v1, v3

    .line 1092
    const/4 v3, 0x7

    aget v4, v1, v8

    aput v4, v1, v3

    goto :goto_0

    .line 1093
    :cond_1
    iget v3, p0, Lcom/itextpdf/text/Image;->rotationRadians:F

    float-to-double v3, v3

    const-wide v5, 0x4012d97c7f3321d2L

    cmpg-double v3, v3, v5

    if-gez v3, :cond_2

    .line 1094
    const/4 v3, 0x4

    aget v4, v1, v7

    aput v4, v1, v3

    .line 1095
    const/4 v3, 0x5

    aget v4, v1, v8

    aget v5, v1, v10

    add-float/2addr v4, v5

    aput v4, v1, v3

    .line 1096
    const/4 v3, 0x6

    aget v4, v1, v9

    aput v4, v1, v3

    .line 1097
    const/4 v3, 0x7

    aput v11, v1, v3

    goto :goto_0

    .line 1099
    :cond_2
    const/4 v3, 0x4

    aput v11, v1, v3

    .line 1100
    const/4 v3, 0x5

    aget v4, v1, v8

    aput v4, v1, v3

    .line 1101
    const/4 v3, 0x6

    aget v4, v1, v7

    aget v5, v1, v9

    add-float/2addr v4, v5

    aput v4, v1, v3

    .line 1102
    const/4 v3, 0x7

    aget v4, v1, v10

    aput v4, v1, v3

    goto :goto_0
.end method

.method public scaleAbsolute(FF)V
    .locals 3
    .parameter "newWidth"
    .parameter "newHeight"

    .prologue
    .line 991
    iput p1, p0, Lcom/itextpdf/text/Image;->plainWidth:F

    .line 992
    iput p2, p0, Lcom/itextpdf/text/Image;->plainHeight:F

    .line 993
    invoke-virtual {p0}, Lcom/itextpdf/text/Image;->matrix()[F

    move-result-object v0

    .line 994
    .local v0, matrix:[F
    const/4 v1, 0x6

    aget v1, v0, v1

    const/4 v2, 0x4

    aget v2, v0, v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/itextpdf/text/Image;->scaledWidth:F

    .line 995
    const/4 v1, 0x7

    aget v1, v0, v1

    const/4 v2, 0x5

    aget v2, v0, v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/itextpdf/text/Image;->scaledHeight:F

    .line 996
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/Image;->setWidthPercentage(F)V

    .line 997
    return-void
.end method

.method public scaleAbsoluteHeight(F)V
    .locals 3
    .parameter "newHeight"

    .prologue
    .line 1020
    iput p1, p0, Lcom/itextpdf/text/Image;->plainHeight:F

    .line 1021
    invoke-virtual {p0}, Lcom/itextpdf/text/Image;->matrix()[F

    move-result-object v0

    .line 1022
    .local v0, matrix:[F
    const/4 v1, 0x6

    aget v1, v0, v1

    const/4 v2, 0x4

    aget v2, v0, v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/itextpdf/text/Image;->scaledWidth:F

    .line 1023
    const/4 v1, 0x7

    aget v1, v0, v1

    const/4 v2, 0x5

    aget v2, v0, v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/itextpdf/text/Image;->scaledHeight:F

    .line 1024
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/Image;->setWidthPercentage(F)V

    .line 1025
    return-void
.end method

.method public scaleAbsoluteWidth(F)V
    .locals 3
    .parameter "newWidth"

    .prologue
    .line 1006
    iput p1, p0, Lcom/itextpdf/text/Image;->plainWidth:F

    .line 1007
    invoke-virtual {p0}, Lcom/itextpdf/text/Image;->matrix()[F

    move-result-object v0

    .line 1008
    .local v0, matrix:[F
    const/4 v1, 0x6

    aget v1, v0, v1

    const/4 v2, 0x4

    aget v2, v0, v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/itextpdf/text/Image;->scaledWidth:F

    .line 1009
    const/4 v1, 0x7

    aget v1, v0, v1

    const/4 v2, 0x5

    aget v2, v0, v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/itextpdf/text/Image;->scaledHeight:F

    .line 1010
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/Image;->setWidthPercentage(F)V

    .line 1011
    return-void
.end method

.method public scalePercent(F)V
    .locals 0
    .parameter "percent"

    .prologue
    .line 1034
    invoke-virtual {p0, p1, p1}, Lcom/itextpdf/text/Image;->scalePercent(FF)V

    .line 1035
    return-void
.end method

.method public scalePercent(FF)V
    .locals 3
    .parameter "percentX"
    .parameter "percentY"

    .prologue
    const/high16 v2, 0x42c8

    .line 1046
    invoke-virtual {p0}, Lcom/itextpdf/text/Image;->getWidth()F

    move-result v1

    mul-float/2addr v1, p1

    div-float/2addr v1, v2

    iput v1, p0, Lcom/itextpdf/text/Image;->plainWidth:F

    .line 1047
    invoke-virtual {p0}, Lcom/itextpdf/text/Image;->getHeight()F

    move-result v1

    mul-float/2addr v1, p2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/itextpdf/text/Image;->plainHeight:F

    .line 1048
    invoke-virtual {p0}, Lcom/itextpdf/text/Image;->matrix()[F

    move-result-object v0

    .line 1049
    .local v0, matrix:[F
    const/4 v1, 0x6

    aget v1, v0, v1

    const/4 v2, 0x4

    aget v2, v0, v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/itextpdf/text/Image;->scaledWidth:F

    .line 1050
    const/4 v1, 0x7

    aget v1, v0, v1

    const/4 v2, 0x5

    aget v2, v0, v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/itextpdf/text/Image;->scaledHeight:F

    .line 1051
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/Image;->setWidthPercentage(F)V

    .line 1052
    return-void
.end method

.method public scaleToFit(FF)V
    .locals 5
    .parameter "fitWidth"
    .parameter "fitHeight"

    .prologue
    const/high16 v4, 0x42c8

    .line 1063
    invoke-virtual {p0, v4}, Lcom/itextpdf/text/Image;->scalePercent(F)V

    .line 1064
    mul-float v2, p1, v4

    invoke-virtual {p0}, Lcom/itextpdf/text/Image;->getScaledWidth()F

    move-result v3

    div-float v0, v2, v3

    .line 1065
    .local v0, percentX:F
    mul-float v2, p2, v4

    invoke-virtual {p0}, Lcom/itextpdf/text/Image;->getScaledHeight()F

    move-result v3

    div-float v1, v2, v3

    .line 1066
    .local v1, percentY:F
    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    .end local v0           #percentX:F
    :goto_0
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/Image;->scalePercent(F)V

    .line 1067
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/itextpdf/text/Image;->setWidthPercentage(F)V

    .line 1068
    return-void

    .restart local v0       #percentX:F
    :cond_0
    move v0, v1

    .line 1066
    goto :goto_0
.end method

.method public setAbsolutePosition(FF)V
    .locals 0
    .parameter "absoluteX"
    .parameter "absoluteY"

    .prologue
    .line 902
    iput p1, p0, Lcom/itextpdf/text/Image;->absoluteX:F

    .line 903
    iput p2, p0, Lcom/itextpdf/text/Image;->absoluteY:F

    .line 904
    return-void
.end method

.method public setAdditional(Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 0
    .parameter "additional"

    .prologue
    .line 1639
    iput-object p1, p0, Lcom/itextpdf/text/Image;->additional:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 1640
    return-void
.end method

.method public setAlignment(I)V
    .locals 0
    .parameter "alignment"

    .prologue
    .line 870
    iput p1, p0, Lcom/itextpdf/text/Image;->alignment:I

    .line 871
    return-void
.end method

.method public setAlt(Ljava/lang/String;)V
    .locals 0
    .parameter "alt"

    .prologue
    .line 891
    iput-object p1, p0, Lcom/itextpdf/text/Image;->alt:Ljava/lang/String;

    .line 892
    return-void
.end method

.method public setAnnotation(Lcom/itextpdf/text/Annotation;)V
    .locals 0
    .parameter "annotation"

    .prologue
    .line 1351
    iput-object p1, p0, Lcom/itextpdf/text/Image;->annotation:Lcom/itextpdf/text/Annotation;

    .line 1352
    return-void
.end method

.method public setCompressionLevel(I)V
    .locals 1
    .parameter "compressionLevel"

    .prologue
    .line 1814
    if-ltz p1, :cond_0

    const/16 v0, 0x9

    if-le p1, v0, :cond_1

    .line 1815
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/Image;->compressionLevel:I

    .line 1818
    :goto_0
    return-void

    .line 1817
    :cond_1
    iput p1, p0, Lcom/itextpdf/text/Image;->compressionLevel:I

    goto :goto_0
.end method

.method public setDeflated(Z)V
    .locals 0
    .parameter "deflated"

    .prologue
    .line 1485
    iput-boolean p1, p0, Lcom/itextpdf/text/Image;->deflated:Z

    .line 1486
    return-void
.end method

.method public setDirectReference(Lcom/itextpdf/text/pdf/PdfIndirectReference;)V
    .locals 0
    .parameter "directReference"

    .prologue
    .line 619
    iput-object p1, p0, Lcom/itextpdf/text/Image;->directReference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 620
    return-void
.end method

.method public setDpi(II)V
    .locals 0
    .parameter "dpiX"
    .parameter "dpiY"

    .prologue
    .line 1523
    iput p1, p0, Lcom/itextpdf/text/Image;->dpiX:I

    .line 1524
    iput p2, p0, Lcom/itextpdf/text/Image;->dpiY:I

    .line 1525
    return-void
.end method

.method public setImageMask(Lcom/itextpdf/text/Image;)V
    .locals 4
    .parameter "mask"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1747
    iget-boolean v2, p0, Lcom/itextpdf/text/Image;->mask:Z

    if-eqz v2, :cond_0

    .line 1748
    new-instance v0, Lcom/itextpdf/text/DocumentException;

    const-string v2, "an.image.mask.cannot.contain.another.image.mask"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1749
    :cond_0
    iget-boolean v2, p1, Lcom/itextpdf/text/Image;->mask:Z

    if-nez v2, :cond_1

    .line 1750
    new-instance v0, Lcom/itextpdf/text/DocumentException;

    const-string v2, "the.image.mask.is.not.a.mask.did.you.do.makemask"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1751
    :cond_1
    iput-object p1, p0, Lcom/itextpdf/text/Image;->imageMask:Lcom/itextpdf/text/Image;

    .line 1752
    iget v2, p1, Lcom/itextpdf/text/Image;->bpc:I

    if-le v2, v0, :cond_2

    iget v2, p1, Lcom/itextpdf/text/Image;->bpc:I

    const/16 v3, 0x8

    if-gt v2, v3, :cond_2

    :goto_0
    iput-boolean v0, p0, Lcom/itextpdf/text/Image;->smask:Z

    .line 1753
    return-void

    :cond_2
    move v0, v1

    .line 1752
    goto :goto_0
.end method

.method public setIndentationLeft(F)V
    .locals 0
    .parameter "f"

    .prologue
    .line 1225
    iput p1, p0, Lcom/itextpdf/text/Image;->indentationLeft:F

    .line 1226
    return-void
.end method

.method public setIndentationRight(F)V
    .locals 0
    .parameter "f"

    .prologue
    .line 1243
    iput p1, p0, Lcom/itextpdf/text/Image;->indentationRight:F

    .line 1244
    return-void
.end method

.method public setInitialRotation(F)V
    .locals 3
    .parameter "initialRotation"

    .prologue
    .line 1191
    iget v1, p0, Lcom/itextpdf/text/Image;->rotationRadians:F

    iget v2, p0, Lcom/itextpdf/text/Image;->initialRotation:F

    sub-float v0, v1, v2

    .line 1192
    .local v0, old_rot:F
    iput p1, p0, Lcom/itextpdf/text/Image;->initialRotation:F

    .line 1193
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/Image;->setRotation(F)V

    .line 1194
    return-void
.end method

.method public setInterpolation(Z)V
    .locals 0
    .parameter "interpolation"

    .prologue
    .line 1410
    iput-boolean p1, p0, Lcom/itextpdf/text/Image;->interpolation:Z

    .line 1411
    return-void
.end method

.method public setInverted(Z)V
    .locals 0
    .parameter "invert"

    .prologue
    .line 1586
    iput-boolean p1, p0, Lcom/itextpdf/text/Image;->invert:Z

    .line 1587
    return-void
.end method

.method public setLayer(Lcom/itextpdf/text/pdf/PdfOCG;)V
    .locals 0
    .parameter "layer"

    .prologue
    .line 1385
    iput-object p1, p0, Lcom/itextpdf/text/Image;->layer:Lcom/itextpdf/text/pdf/PdfOCG;

    .line 1386
    return-void
.end method

.method public setOriginalData([B)V
    .locals 0
    .parameter "originalData"

    .prologue
    .line 1460
    iput-object p1, p0, Lcom/itextpdf/text/Image;->originalData:[B

    .line 1461
    return-void
.end method

.method public setOriginalType(I)V
    .locals 0
    .parameter "originalType"

    .prologue
    .line 1439
    iput p1, p0, Lcom/itextpdf/text/Image;->originalType:I

    .line 1440
    return-void
.end method

.method public setRotation(F)V
    .locals 5
    .parameter "r"

    .prologue
    .line 1156
    const-wide v0, 0x401921fb54442d18L

    .line 1157
    .local v0, d:D
    iget v3, p0, Lcom/itextpdf/text/Image;->initialRotation:F

    add-float/2addr v3, p1

    float-to-double v3, v3

    rem-double/2addr v3, v0

    double-to-float v3, v3

    iput v3, p0, Lcom/itextpdf/text/Image;->rotationRadians:F

    .line 1158
    iget v3, p0, Lcom/itextpdf/text/Image;->rotationRadians:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 1159
    iget v3, p0, Lcom/itextpdf/text/Image;->rotationRadians:F

    float-to-double v3, v3

    add-double/2addr v3, v0

    double-to-float v3, v3

    iput v3, p0, Lcom/itextpdf/text/Image;->rotationRadians:F

    .line 1161
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/Image;->matrix()[F

    move-result-object v2

    .line 1162
    .local v2, matrix:[F
    const/4 v3, 0x6

    aget v3, v2, v3

    const/4 v4, 0x4

    aget v4, v2, v4

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/itextpdf/text/Image;->scaledWidth:F

    .line 1163
    const/4 v3, 0x7

    aget v3, v2, v3

    const/4 v4, 0x5

    aget v4, v2, v4

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/itextpdf/text/Image;->scaledHeight:F

    .line 1164
    return-void
.end method

.method public setRotationDegrees(F)V
    .locals 4
    .parameter "deg"

    .prologue
    .line 1173
    const-wide v0, 0x400921fb54442d18L

    .line 1174
    .local v0, d:D
    const/high16 v2, 0x4334

    div-float v2, p1, v2

    double-to-float v3, v0

    mul-float/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/itextpdf/text/Image;->setRotation(F)V

    .line 1175
    return-void
.end method

.method public setScaleToFitLineWhenOverflow(Z)V
    .locals 0
    .parameter "scaleToFitLineWhenOverflow"

    .prologue
    .line 1336
    iput-boolean p1, p0, Lcom/itextpdf/text/Image;->scaleToFitLineWhenOverflow:Z

    .line 1337
    return-void
.end method

.method public setSmask(Z)V
    .locals 0
    .parameter "smask"

    .prologue
    .line 1772
    iput-boolean p1, p0, Lcom/itextpdf/text/Image;->smask:Z

    .line 1773
    return-void
.end method

.method public setSpacingAfter(F)V
    .locals 0
    .parameter "spacing"

    .prologue
    .line 1283
    iput p1, p0, Lcom/itextpdf/text/Image;->spacingAfter:F

    .line 1284
    return-void
.end method

.method public setSpacingBefore(F)V
    .locals 0
    .parameter "spacing"

    .prologue
    .line 1263
    iput p1, p0, Lcom/itextpdf/text/Image;->spacingBefore:F

    .line 1264
    return-void
.end method

.method public setTemplateData(Lcom/itextpdf/text/pdf/PdfTemplate;)V
    .locals 2
    .parameter "template"

    .prologue
    .line 850
    iget-object v0, p0, Lcom/itextpdf/text/Image;->template:[Lcom/itextpdf/text/pdf/PdfTemplate;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 851
    return-void
.end method

.method public setTransparency([I)V
    .locals 0
    .parameter "transparency"

    .prologue
    .line 1795
    iput-object p1, p0, Lcom/itextpdf/text/Image;->transparency:[I

    .line 1796
    return-void
.end method

.method public setUrl(Ljava/net/URL;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 804
    iput-object p1, p0, Lcom/itextpdf/text/Image;->url:Ljava/net/URL;

    .line 805
    return-void
.end method

.method public setWidthPercentage(F)V
    .locals 0
    .parameter "widthPercentage"

    .prologue
    .line 1309
    iput p1, p0, Lcom/itextpdf/text/Image;->widthPercentage:F

    .line 1310
    return-void
.end method

.method public setXYRatio(F)V
    .locals 0
    .parameter "XYRatio"

    .prologue
    .line 1548
    iput p1, p0, Lcom/itextpdf/text/Image;->XYRatio:F

    .line 1549
    return-void
.end method

.method public simplifyColorspace()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1646
    iget-object v5, p0, Lcom/itextpdf/text/Image;->additional:Lcom/itextpdf/text/pdf/PdfDictionary;

    if-nez v5, :cond_1

    .line 1668
    :cond_0
    :goto_0
    return-void

    .line 1648
    :cond_1
    iget-object v5, p0, Lcom/itextpdf/text/Image;->additional:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->COLORSPACE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v5, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v4

    .line 1649
    .local v4, value:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v4, :cond_0

    .line 1651
    invoke-direct {p0, v4}, Lcom/itextpdf/text/Image;->simplifyColorspace(Lcom/itextpdf/text/pdf/PdfArray;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    .line 1653
    .local v0, cs:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfObject;->isName()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1654
    move-object v2, v0

    .line 1667
    .local v2, newValue:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/itextpdf/text/Image;->additional:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->COLORSPACE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v5, v6, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .line 1656
    .end local v2           #newValue:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_3
    move-object v2, v4

    .line 1657
    .restart local v2       #newValue:Lcom/itextpdf/text/pdf/PdfObject;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/PdfArray;->getAsName(I)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v1

    .line 1658
    .local v1, first:Lcom/itextpdf/text/pdf/PdfName;
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->INDEXED:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v5, v1}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1659
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_2

    .line 1660
    invoke-virtual {v4, v7}, Lcom/itextpdf/text/pdf/PdfArray;->getAsArray(I)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v3

    .line 1661
    .local v3, second:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v3, :cond_2

    .line 1662
    invoke-direct {p0, v3}, Lcom/itextpdf/text/Image;->simplifyColorspace(Lcom/itextpdf/text/pdf/PdfArray;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Lcom/itextpdf/text/pdf/PdfArray;->set(ILcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    goto :goto_1
.end method

.method public tagICC(Lcom/itextpdf/text/pdf/ICC_Profile;)V
    .locals 0
    .parameter "profile"

    .prologue
    .line 1599
    iput-object p1, p0, Lcom/itextpdf/text/Image;->profile:Lcom/itextpdf/text/pdf/ICC_Profile;

    .line 1600
    return-void
.end method

.method public type()I
    .locals 1

    .prologue
    .line 737
    iget v0, p0, Lcom/itextpdf/text/Image;->type:I

    return v0
.end method

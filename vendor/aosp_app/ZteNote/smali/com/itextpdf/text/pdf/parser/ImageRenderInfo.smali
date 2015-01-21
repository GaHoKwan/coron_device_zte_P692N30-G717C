.class public Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;
.super Ljava/lang/Object;
.source "ImageRenderInfo.java"


# instance fields
.field private final colorSpaceDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

.field private final ctm:Lcom/itextpdf/text/pdf/parser/Matrix;

.field private imageObject:Lcom/itextpdf/text/pdf/parser/PdfImageObject;

.field private final inlineImageInfo:Lcom/itextpdf/text/pdf/parser/InlineImageInfo;

.field private final ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;


# direct methods
.method private constructor <init>(Lcom/itextpdf/text/pdf/parser/Matrix;Lcom/itextpdf/text/pdf/PdfIndirectReference;Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 1
    .parameter "ctm"
    .parameter "ref"
    .parameter "colorSpaceDictionary"

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object v0, p0, Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;->imageObject:Lcom/itextpdf/text/pdf/parser/PdfImageObject;

    .line 70
    iput-object p1, p0, Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;->ctm:Lcom/itextpdf/text/pdf/parser/Matrix;

    .line 71
    iput-object p2, p0, Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;->ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 72
    iput-object v0, p0, Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;->inlineImageInfo:Lcom/itextpdf/text/pdf/parser/InlineImageInfo;

    .line 73
    iput-object p3, p0, Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;->colorSpaceDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 74
    return-void
.end method

.method private constructor <init>(Lcom/itextpdf/text/pdf/parser/Matrix;Lcom/itextpdf/text/pdf/parser/InlineImageInfo;Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 1
    .parameter "ctm"
    .parameter "inlineImageInfo"
    .parameter "colorSpaceDictionary"

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object v0, p0, Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;->imageObject:Lcom/itextpdf/text/pdf/parser/PdfImageObject;

    .line 77
    iput-object p1, p0, Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;->ctm:Lcom/itextpdf/text/pdf/parser/Matrix;

    .line 78
    iput-object v0, p0, Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;->ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 79
    iput-object p2, p0, Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;->inlineImageInfo:Lcom/itextpdf/text/pdf/parser/InlineImageInfo;

    .line 80
    iput-object p3, p0, Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;->colorSpaceDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 81
    return-void
.end method

.method protected static createForEmbeddedImage(Lcom/itextpdf/text/pdf/parser/Matrix;Lcom/itextpdf/text/pdf/parser/InlineImageInfo;Lcom/itextpdf/text/pdf/PdfDictionary;)Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;
    .locals 1
    .parameter "ctm"
    .parameter "inlineImageInfo"
    .parameter "colorSpaceDictionary"

    .prologue
    .line 103
    new-instance v0, Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;-><init>(Lcom/itextpdf/text/pdf/parser/Matrix;Lcom/itextpdf/text/pdf/parser/InlineImageInfo;Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 104
    .local v0, renderInfo:Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;
    return-object v0
.end method

.method public static createForXObject(Lcom/itextpdf/text/pdf/parser/Matrix;Lcom/itextpdf/text/pdf/PdfIndirectReference;Lcom/itextpdf/text/pdf/PdfDictionary;)Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;
    .locals 1
    .parameter "ctm"
    .parameter "ref"
    .parameter "colorSpaceDictionary"

    .prologue
    .line 91
    new-instance v0, Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;-><init>(Lcom/itextpdf/text/pdf/parser/Matrix;Lcom/itextpdf/text/pdf/PdfIndirectReference;Lcom/itextpdf/text/pdf/PdfDictionary;)V

    return-object v0
.end method

.method private prepareImageObject()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    iget-object v1, p0, Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;->imageObject:Lcom/itextpdf/text/pdf/parser/PdfImageObject;

    if-eqz v1, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;->ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    if-eqz v1, :cond_2

    .line 122
    iget-object v1, p0, Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;->ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    invoke-static {v1}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PRStream;

    .line 123
    .local v0, stream:Lcom/itextpdf/text/pdf/PRStream;
    new-instance v1, Lcom/itextpdf/text/pdf/parser/PdfImageObject;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;->colorSpaceDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v1, v0, v2}, Lcom/itextpdf/text/pdf/parser/PdfImageObject;-><init>(Lcom/itextpdf/text/pdf/PRStream;Lcom/itextpdf/text/pdf/PdfDictionary;)V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;->imageObject:Lcom/itextpdf/text/pdf/parser/PdfImageObject;

    goto :goto_0

    .line 124
    .end local v0           #stream:Lcom/itextpdf/text/pdf/PRStream;
    :cond_2
    iget-object v1, p0, Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;->inlineImageInfo:Lcom/itextpdf/text/pdf/parser/InlineImageInfo;

    if-eqz v1, :cond_0

    .line 125
    new-instance v1, Lcom/itextpdf/text/pdf/parser/PdfImageObject;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;->inlineImageInfo:Lcom/itextpdf/text/pdf/parser/InlineImageInfo;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/parser/InlineImageInfo;->getImageDictionary()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v2

    iget-object v3, p0, Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;->inlineImageInfo:Lcom/itextpdf/text/pdf/parser/InlineImageInfo;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/parser/InlineImageInfo;->getSamples()[B

    move-result-object v3

    iget-object v4, p0, Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;->colorSpaceDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v1, v2, v3, v4}, Lcom/itextpdf/text/pdf/parser/PdfImageObject;-><init>(Lcom/itextpdf/text/pdf/PdfDictionary;[BLcom/itextpdf/text/pdf/PdfDictionary;)V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;->imageObject:Lcom/itextpdf/text/pdf/parser/PdfImageObject;

    goto :goto_0
.end method


# virtual methods
.method public getArea()F
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;->ctm:Lcom/itextpdf/text/pdf/parser/Matrix;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/parser/Matrix;->getDeterminant()F

    move-result v0

    return v0
.end method

.method public getImage()Lcom/itextpdf/text/pdf/parser/PdfImageObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;->prepareImageObject()V

    .line 114
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;->imageObject:Lcom/itextpdf/text/pdf/parser/PdfImageObject;

    return-object v0
.end method

.method public getImageCTM()Lcom/itextpdf/text/pdf/parser/Matrix;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;->ctm:Lcom/itextpdf/text/pdf/parser/Matrix;

    return-object v0
.end method

.method public getRef()Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;->ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    return-object v0
.end method

.method public getStartPoint()Lcom/itextpdf/text/pdf/parser/Vector;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 133
    new-instance v0, Lcom/itextpdf/text/pdf/parser/Vector;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v2, v1}, Lcom/itextpdf/text/pdf/parser/Vector;-><init>(FFF)V

    iget-object v1, p0, Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;->ctm:Lcom/itextpdf/text/pdf/parser/Matrix;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/parser/Vector;->cross(Lcom/itextpdf/text/pdf/parser/Matrix;)Lcom/itextpdf/text/pdf/parser/Vector;

    move-result-object v0

    return-object v0
.end method

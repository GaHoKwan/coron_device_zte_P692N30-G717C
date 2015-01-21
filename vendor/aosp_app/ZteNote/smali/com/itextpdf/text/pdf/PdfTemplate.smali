.class public Lcom/itextpdf/text/pdf/PdfTemplate;
.super Lcom/itextpdf/text/pdf/PdfContentByte;
.source "PdfTemplate.java"


# static fields
.field public static final TYPE_IMPORTED:I = 0x2

.field public static final TYPE_PATTERN:I = 0x3

.field public static final TYPE_TEMPLATE:I = 0x1


# instance fields
.field private additional:Lcom/itextpdf/text/pdf/PdfDictionary;

.field protected bBox:Lcom/itextpdf/text/Rectangle;

.field protected group:Lcom/itextpdf/text/pdf/PdfTransparencyGroup;

.field protected layer:Lcom/itextpdf/text/pdf/PdfOCG;

.field protected matrix:Lcom/itextpdf/text/pdf/PdfArray;

.field protected pageResources:Lcom/itextpdf/text/pdf/PageResources;

.field protected thisReference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

.field protected type:I


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 66
    new-instance v0, Lcom/itextpdf/text/Rectangle;

    invoke-direct {v0, v1, v1}, Lcom/itextpdf/text/Rectangle;-><init>(FF)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfTemplate;->bBox:Lcom/itextpdf/text/Rectangle;

    .line 78
    iput-object v2, p0, Lcom/itextpdf/text/pdf/PdfTemplate;->additional:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 86
    const/4 v0, 0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfTemplate;->type:I

    .line 87
    return-void
.end method

.method constructor <init>(Lcom/itextpdf/text/pdf/PdfWriter;)V
    .locals 2
    .parameter "wr"

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/PdfContentByte;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 66
    new-instance v0, Lcom/itextpdf/text/Rectangle;

    invoke-direct {v0, v1, v1}, Lcom/itextpdf/text/Rectangle;-><init>(FF)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfTemplate;->bBox:Lcom/itextpdf/text/Rectangle;

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfTemplate;->additional:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 97
    const/4 v0, 0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfTemplate;->type:I

    .line 98
    new-instance v0, Lcom/itextpdf/text/pdf/PageResources;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PageResources;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfTemplate;->pageResources:Lcom/itextpdf/text/pdf/PageResources;

    .line 99
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfTemplate;->pageResources:Lcom/itextpdf/text/pdf/PageResources;

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfWriter;->getDefaultColorspace()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PageResources;->addDefaultColor(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 100
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfTemplate;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfWriter;->getPdfIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfTemplate;->thisReference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 101
    return-void
.end method

.method public static createTemplate(Lcom/itextpdf/text/pdf/PdfWriter;FF)Lcom/itextpdf/text/pdf/PdfTemplate;
    .locals 1
    .parameter "writer"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/itextpdf/text/pdf/PdfTemplate;->createTemplate(Lcom/itextpdf/text/pdf/PdfWriter;FFLcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfTemplate;

    move-result-object v0

    return-object v0
.end method

.method static createTemplate(Lcom/itextpdf/text/pdf/PdfWriter;FFLcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfTemplate;
    .locals 1
    .parameter "writer"
    .parameter "width"
    .parameter "height"
    .parameter "forcedName"

    .prologue
    .line 121
    new-instance v0, Lcom/itextpdf/text/pdf/PdfTemplate;

    invoke-direct {v0, p0}, Lcom/itextpdf/text/pdf/PdfTemplate;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 122
    .local v0, template:Lcom/itextpdf/text/pdf/PdfTemplate;
    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfTemplate;->setWidth(F)V

    .line 123
    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/PdfTemplate;->setHeight(F)V

    .line 124
    invoke-virtual {p0, v0, p3}, Lcom/itextpdf/text/pdf/PdfWriter;->addDirectTemplateSimple(Lcom/itextpdf/text/pdf/PdfTemplate;Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    .line 125
    return-object v0
.end method


# virtual methods
.method public beginVariableText()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfTemplate;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string v1, "/Tx BMC "

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 223
    return-void
.end method

.method public endVariableText()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfTemplate;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string v1, "EMC "

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 227
    return-void
.end method

.method public getAdditional()Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfTemplate;->additional:Lcom/itextpdf/text/pdf/PdfDictionary;

    return-object v0
.end method

.method public getBoundingBox()Lcom/itextpdf/text/Rectangle;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfTemplate;->bBox:Lcom/itextpdf/text/Rectangle;

    return-object v0
.end method

.method public getDuplicate()Lcom/itextpdf/text/pdf/PdfContentByte;
    .locals 3

    .prologue
    .line 257
    new-instance v0, Lcom/itextpdf/text/pdf/PdfTemplate;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfTemplate;-><init>()V

    .line 258
    .local v0, tpl:Lcom/itextpdf/text/pdf/PdfTemplate;
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfTemplate;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    iput-object v1, v0, Lcom/itextpdf/text/pdf/PdfTemplate;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    .line 259
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfTemplate;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    iput-object v1, v0, Lcom/itextpdf/text/pdf/PdfTemplate;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    .line 260
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfTemplate;->thisReference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    iput-object v1, v0, Lcom/itextpdf/text/pdf/PdfTemplate;->thisReference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 261
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfTemplate;->pageResources:Lcom/itextpdf/text/pdf/PageResources;

    iput-object v1, v0, Lcom/itextpdf/text/pdf/PdfTemplate;->pageResources:Lcom/itextpdf/text/pdf/PageResources;

    .line 262
    new-instance v1, Lcom/itextpdf/text/Rectangle;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfTemplate;->bBox:Lcom/itextpdf/text/Rectangle;

    invoke-direct {v1, v2}, Lcom/itextpdf/text/Rectangle;-><init>(Lcom/itextpdf/text/Rectangle;)V

    iput-object v1, v0, Lcom/itextpdf/text/pdf/PdfTemplate;->bBox:Lcom/itextpdf/text/Rectangle;

    .line 263
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfTemplate;->group:Lcom/itextpdf/text/pdf/PdfTransparencyGroup;

    iput-object v1, v0, Lcom/itextpdf/text/pdf/PdfTemplate;->group:Lcom/itextpdf/text/pdf/PdfTransparencyGroup;

    .line 264
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfTemplate;->layer:Lcom/itextpdf/text/pdf/PdfOCG;

    iput-object v1, v0, Lcom/itextpdf/text/pdf/PdfTemplate;->layer:Lcom/itextpdf/text/pdf/PdfOCG;

    .line 265
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfTemplate;->matrix:Lcom/itextpdf/text/pdf/PdfArray;

    if-eqz v1, :cond_0

    .line 266
    new-instance v1, Lcom/itextpdf/text/pdf/PdfArray;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfTemplate;->matrix:Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfArray;-><init>(Lcom/itextpdf/text/pdf/PdfArray;)V

    iput-object v1, v0, Lcom/itextpdf/text/pdf/PdfTemplate;->matrix:Lcom/itextpdf/text/pdf/PdfArray;

    .line 268
    :cond_0
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfTemplate;->separator:I

    iput v1, v0, Lcom/itextpdf/text/pdf/PdfTemplate;->separator:I

    .line 269
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfTemplate;->additional:Lcom/itextpdf/text/pdf/PdfDictionary;

    iput-object v1, v0, Lcom/itextpdf/text/pdf/PdfTemplate;->additional:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 270
    return-object v0
.end method

.method getFormXObject(I)Lcom/itextpdf/text/pdf/PdfStream;
    .locals 1
    .parameter "compressionLevel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    new-instance v0, Lcom/itextpdf/text/pdf/PdfFormXObject;

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/text/pdf/PdfFormXObject;-><init>(Lcom/itextpdf/text/pdf/PdfTemplate;I)V

    return-object v0
.end method

.method public getGroup()Lcom/itextpdf/text/pdf/PdfTransparencyGroup;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfTemplate;->group:Lcom/itextpdf/text/pdf/PdfTransparencyGroup;

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfTemplate;->bBox:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v0}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v0

    return v0
.end method

.method public getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfTemplate;->thisReference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfTemplate;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfWriter;->getPdfIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfTemplate;->thisReference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfTemplate;->thisReference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    return-object v0
.end method

.method public getLayer()Lcom/itextpdf/text/pdf/PdfOCG;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfTemplate;->layer:Lcom/itextpdf/text/pdf/PdfOCG;

    return-object v0
.end method

.method getMatrix()Lcom/itextpdf/text/pdf/PdfArray;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfTemplate;->matrix:Lcom/itextpdf/text/pdf/PdfArray;

    return-object v0
.end method

.method getPageResources()Lcom/itextpdf/text/pdf/PageResources;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfTemplate;->pageResources:Lcom/itextpdf/text/pdf/PageResources;

    return-object v0
.end method

.method getResources()Lcom/itextpdf/text/pdf/PdfObject;
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfTemplate;->getPageResources()Lcom/itextpdf/text/pdf/PageResources;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PageResources;->getResources()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfTemplate;->type:I

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfTemplate;->bBox:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v0}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v0

    return v0
.end method

.method public setAdditional(Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 0
    .parameter "additional"

    .prologue
    .line 316
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfTemplate;->additional:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 317
    return-void
.end method

.method public setBoundingBox(Lcom/itextpdf/text/Rectangle;)V
    .locals 0
    .parameter "bBox"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfTemplate;->bBox:Lcom/itextpdf/text/Rectangle;

    .line 175
    return-void
.end method

.method public setGroup(Lcom/itextpdf/text/pdf/PdfTransparencyGroup;)V
    .locals 0
    .parameter "group"

    .prologue
    .line 294
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfTemplate;->group:Lcom/itextpdf/text/pdf/PdfTransparencyGroup;

    .line 295
    return-void
.end method

.method public setHeight(F)V
    .locals 2
    .parameter "height"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfTemplate;->bBox:Lcom/itextpdf/text/Rectangle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Rectangle;->setBottom(F)V

    .line 147
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfTemplate;->bBox:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/Rectangle;->setTop(F)V

    .line 148
    return-void
.end method

.method public setLayer(Lcom/itextpdf/text/pdf/PdfOCG;)V
    .locals 0
    .parameter "layer"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfTemplate;->layer:Lcom/itextpdf/text/pdf/PdfOCG;

    .line 183
    return-void
.end method

.method public setMatrix(FFFFFF)V
    .locals 2
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"
    .parameter "e"
    .parameter "f"

    .prologue
    .line 194
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfTemplate;->matrix:Lcom/itextpdf/text/pdf/PdfArray;

    .line 195
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfTemplate;->matrix:Lcom/itextpdf/text/pdf/PdfArray;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v1, p1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 196
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfTemplate;->matrix:Lcom/itextpdf/text/pdf/PdfArray;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v1, p2}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 197
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfTemplate;->matrix:Lcom/itextpdf/text/pdf/PdfArray;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v1, p3}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 198
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfTemplate;->matrix:Lcom/itextpdf/text/pdf/PdfArray;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v1, p4}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 199
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfTemplate;->matrix:Lcom/itextpdf/text/pdf/PdfArray;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v1, p5}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 200
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfTemplate;->matrix:Lcom/itextpdf/text/pdf/PdfArray;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v1, p6}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 201
    return-void
.end method

.method public setWidth(F)V
    .locals 2
    .parameter "width"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfTemplate;->bBox:Lcom/itextpdf/text/Rectangle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Rectangle;->setLeft(F)V

    .line 136
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfTemplate;->bBox:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/Rectangle;->setRight(F)V

    .line 137
    return-void
.end method

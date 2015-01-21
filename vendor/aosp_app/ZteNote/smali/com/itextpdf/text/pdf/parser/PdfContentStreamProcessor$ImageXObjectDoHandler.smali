.class Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ImageXObjectDoHandler;
.super Ljava/lang/Object;
.source "PdfContentStreamProcessor.java"

# interfaces
.implements Lcom/itextpdf/text/pdf/parser/XObjectDoHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageXObjectDoHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 846
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 846
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ImageXObjectDoHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleXObject(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;Lcom/itextpdf/text/pdf/PdfStream;Lcom/itextpdf/text/pdf/PdfIndirectReference;)V
    .locals 4
    .parameter "processor"
    .parameter "xobjectStream"
    .parameter "ref"

    .prologue
    .line 849
    #getter for: Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->resources:Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ResourceDictionary;
    invoke-static {p1}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->access$3000(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;)Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ResourceDictionary;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->COLORSPACE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ResourceDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 850
    .local v0, colorSpaceDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    #calls: Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->gs()Lcom/itextpdf/text/pdf/parser/GraphicsState;
    invoke-static {p1}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->access$2700(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;)Lcom/itextpdf/text/pdf/parser/GraphicsState;

    move-result-object v2

    iget-object v2, v2, Lcom/itextpdf/text/pdf/parser/GraphicsState;->ctm:Lcom/itextpdf/text/pdf/parser/Matrix;

    invoke-static {v2, p3, v0}, Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;->createForXObject(Lcom/itextpdf/text/pdf/parser/Matrix;Lcom/itextpdf/text/pdf/PdfIndirectReference;Lcom/itextpdf/text/pdf/PdfDictionary;)Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;

    move-result-object v1

    .line 851
    .local v1, renderInfo:Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;
    #getter for: Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->renderListener:Lcom/itextpdf/text/pdf/parser/RenderListener;
    invoke-static {p1}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->access$3900(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;)Lcom/itextpdf/text/pdf/parser/RenderListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/itextpdf/text/pdf/parser/RenderListener;->renderImage(Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;)V

    .line 852
    return-void
.end method

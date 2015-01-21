.class Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$FormXObjectDoHandler;
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
    name = "FormXObjectDoHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 804
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 804
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$FormXObjectDoHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleXObject(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;Lcom/itextpdf/text/pdf/PdfStream;Lcom/itextpdf/text/pdf/PdfIndirectReference;)V
    .locals 15
    .parameter "processor"
    .parameter "stream"
    .parameter "ref"

    .prologue
    .line 808
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->RESOURCES:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/itextpdf/text/pdf/PdfStream;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v11

    .line 815
    .local v11, resources:Lcom/itextpdf/text/pdf/PdfDictionary;
    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/itextpdf/text/pdf/parser/ContentByteUtils;->getContentBytesFromContentObject(Lcom/itextpdf/text/pdf/PdfObject;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 819
    .local v8, contentBytes:[B
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->MATRIX:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/itextpdf/text/pdf/PdfStream;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v10

    .line 821
    .local v10, matrix:Lcom/itextpdf/text/pdf/PdfArray;
    new-instance v12, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$PushGraphicsState;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$PushGraphicsState;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13, v14}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$PushGraphicsState;->invoke(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;Lcom/itextpdf/text/pdf/PdfLiteral;Ljava/util/ArrayList;)V

    .line 823
    if-eqz v10, :cond_0

    .line 824
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v2

    .line 825
    .local v2, a:F
    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v3

    .line 826
    .local v3, b:F
    const/4 v12, 0x2

    invoke-virtual {v10, v12}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v4

    .line 827
    .local v4, c:F
    const/4 v12, 0x3

    invoke-virtual {v10, v12}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v5

    .line 828
    .local v5, d:F
    const/4 v12, 0x4

    invoke-virtual {v10, v12}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v6

    .line 829
    .local v6, e:F
    const/4 v12, 0x5

    invoke-virtual {v10, v12}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v7

    .line 830
    .local v7, f:F
    new-instance v1, Lcom/itextpdf/text/pdf/parser/Matrix;

    invoke-direct/range {v1 .. v7}, Lcom/itextpdf/text/pdf/parser/Matrix;-><init>(FFFFFF)V

    .line 832
    .local v1, formMatrix:Lcom/itextpdf/text/pdf/parser/Matrix;
    #calls: Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->gs()Lcom/itextpdf/text/pdf/parser/GraphicsState;
    invoke-static/range {p1 .. p1}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->access$2700(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;)Lcom/itextpdf/text/pdf/parser/GraphicsState;

    move-result-object v12

    #calls: Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->gs()Lcom/itextpdf/text/pdf/parser/GraphicsState;
    invoke-static/range {p1 .. p1}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->access$2700(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;)Lcom/itextpdf/text/pdf/parser/GraphicsState;

    move-result-object v13

    iget-object v13, v13, Lcom/itextpdf/text/pdf/parser/GraphicsState;->ctm:Lcom/itextpdf/text/pdf/parser/Matrix;

    invoke-virtual {v1, v13}, Lcom/itextpdf/text/pdf/parser/Matrix;->multiply(Lcom/itextpdf/text/pdf/parser/Matrix;)Lcom/itextpdf/text/pdf/parser/Matrix;

    move-result-object v13

    iput-object v13, v12, Lcom/itextpdf/text/pdf/parser/GraphicsState;->ctm:Lcom/itextpdf/text/pdf/parser/Matrix;

    .line 835
    .end local v1           #formMatrix:Lcom/itextpdf/text/pdf/parser/Matrix;
    .end local v2           #a:F
    .end local v3           #b:F
    .end local v4           #c:F
    .end local v5           #d:F
    .end local v6           #e:F
    .end local v7           #f:F
    :cond_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v11}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->processContent([BLcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 837
    new-instance v12, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$PopGraphicsState;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$PopGraphicsState;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13, v14}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$PopGraphicsState;->invoke(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;Lcom/itextpdf/text/pdf/PdfLiteral;Ljava/util/ArrayList;)V

    .line 839
    return-void

    .line 816
    .end local v8           #contentBytes:[B
    .end local v10           #matrix:Lcom/itextpdf/text/pdf/PdfArray;
    :catch_0
    move-exception v9

    .line 817
    .local v9, e1:Ljava/io/IOException;
    new-instance v12, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v12, v9}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v12
.end method

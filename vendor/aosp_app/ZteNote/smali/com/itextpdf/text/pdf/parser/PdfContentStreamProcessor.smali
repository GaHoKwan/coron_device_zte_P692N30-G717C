.class public Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;
.super Ljava/lang/Object;
.source "PdfContentStreamProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$IgnoreXObjectDoHandler;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ImageXObjectDoHandler;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$FormXObjectDoHandler;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$Do;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$EndMarkedContent;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$BeginMarkedContentDictionary;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$BeginMarkedContent;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$EndText;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$BeginText;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$PopGraphicsState;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ModifyCurrentTransformationMatrix;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$PushGraphicsState;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ProcessGraphicsStateResource;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextWordSpacing;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextCharacterSpacing;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextHorizontalScaling;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextLeading;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextRise;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextRenderMode;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextFont;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$TextMoveStartNextLine;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$TextMoveStartNextLineWithLeading;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$TextSetTextMatrix;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$TextMoveNextLine;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ShowText;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$MoveNextLineAndShowText;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$MoveNextLineAndShowTextWithSpacing;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ShowTextArray;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$IgnoreOperatorContentOperator;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ResourceDictionary;
    }
.end annotation


# static fields
.field public static final DEFAULTOPERATOR:Ljava/lang/String; = "DefaultOperator"


# instance fields
.field private final cachedFonts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;",
            ">;"
        }
    .end annotation
.end field

.field private final gsStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/itextpdf/text/pdf/parser/GraphicsState;",
            ">;"
        }
    .end annotation
.end field

.field private final markedContentStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/itextpdf/text/pdf/parser/MarkedContentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final operators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/parser/ContentOperator;",
            ">;"
        }
    .end annotation
.end field

.field private final renderListener:Lcom/itextpdf/text/pdf/parser/RenderListener;

.field private resources:Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ResourceDictionary;

.field private textLineMatrix:Lcom/itextpdf/text/pdf/parser/Matrix;

.field private textMatrix:Lcom/itextpdf/text/pdf/parser/Matrix;

.field private final xobjectDoHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/itextpdf/text/pdf/PdfName;",
            "Lcom/itextpdf/text/pdf/parser/XObjectDoHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/parser/RenderListener;)V
    .locals 1
    .parameter "renderListener"

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->gsStack:Ljava/util/Stack;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->cachedFonts:Ljava/util/Map;

    .line 105
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->markedContentStack:Ljava/util/Stack;

    .line 114
    iput-object p1, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->renderListener:Lcom/itextpdf/text/pdf/parser/RenderListener;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->operators:Ljava/util/Map;

    .line 116
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->populateOperators()V

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->xobjectDoHandlers:Ljava/util/Map;

    .line 118
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->populateXObjectDoHandlers()V

    .line 119
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->reset()V

    .line 120
    return-void
.end method

.method static synthetic access$2500(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;Lcom/itextpdf/text/pdf/PdfString;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->displayPdfString(Lcom/itextpdf/text/pdf/PdfString;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->applyTextAdjust(F)V

    return-void
.end method

.method static synthetic access$2700(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;)Lcom/itextpdf/text/pdf/parser/GraphicsState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->gs()Lcom/itextpdf/text/pdf/parser/GraphicsState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;)Lcom/itextpdf/text/pdf/parser/Matrix;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->textLineMatrix:Lcom/itextpdf/text/pdf/parser/Matrix;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;Lcom/itextpdf/text/pdf/parser/Matrix;)Lcom/itextpdf/text/pdf/parser/Matrix;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->textLineMatrix:Lcom/itextpdf/text/pdf/parser/Matrix;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;)Lcom/itextpdf/text/pdf/parser/Matrix;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->textMatrix:Lcom/itextpdf/text/pdf/parser/Matrix;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;Lcom/itextpdf/text/pdf/parser/Matrix;)Lcom/itextpdf/text/pdf/parser/Matrix;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->textMatrix:Lcom/itextpdf/text/pdf/parser/Matrix;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;)Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ResourceDictionary;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->resources:Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ResourceDictionary;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;Lcom/itextpdf/text/pdf/PdfDictionary;)Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->getFont(Lcom/itextpdf/text/pdf/PdfDictionary;)Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;Lcom/itextpdf/text/pdf/PRIndirectReference;)Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->getFont(Lcom/itextpdf/text/pdf/PRIndirectReference;)Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;)Ljava/util/Stack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->gsStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->beginText()V

    return-void
.end method

.method static synthetic access$3500(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->endText()V

    return-void
.end method

.method static synthetic access$3600(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->beginMarkedContent(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfDictionary;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->endMarkedContent()V

    return-void
.end method

.method static synthetic access$3800(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;Lcom/itextpdf/text/pdf/PdfName;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->displayXObject(Lcom/itextpdf/text/pdf/PdfName;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;)Lcom/itextpdf/text/pdf/parser/RenderListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->renderListener:Lcom/itextpdf/text/pdf/parser/RenderListener;

    return-object v0
.end method

.method private applyTextAdjust(F)V
    .locals 3
    .parameter "tj"

    .prologue
    .line 342
    neg-float v1, p1

    const/high16 v2, 0x447a

    div-float/2addr v1, v2

    invoke-direct {p0}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->gs()Lcom/itextpdf/text/pdf/parser/GraphicsState;

    move-result-object v2

    iget v2, v2, Lcom/itextpdf/text/pdf/parser/GraphicsState;->fontSize:F

    mul-float/2addr v1, v2

    invoke-direct {p0}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->gs()Lcom/itextpdf/text/pdf/parser/GraphicsState;

    move-result-object v2

    iget v2, v2, Lcom/itextpdf/text/pdf/parser/GraphicsState;->horizontalScaling:F

    mul-float v0, v1, v2

    .line 344
    .local v0, adjustBy:F
    new-instance v1, Lcom/itextpdf/text/pdf/parser/Matrix;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/itextpdf/text/pdf/parser/Matrix;-><init>(FF)V

    iget-object v2, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->textMatrix:Lcom/itextpdf/text/pdf/parser/Matrix;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/parser/Matrix;->multiply(Lcom/itextpdf/text/pdf/parser/Matrix;)Lcom/itextpdf/text/pdf/parser/Matrix;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->textMatrix:Lcom/itextpdf/text/pdf/parser/Matrix;

    .line 345
    return-void
.end method

.method private beginMarkedContent(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 2
    .parameter "tag"
    .parameter "dict"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->markedContentStack:Ljava/util/Stack;

    new-instance v1, Lcom/itextpdf/text/pdf/parser/MarkedContentInfo;

    invoke-direct {v1, p1, p2}, Lcom/itextpdf/text/pdf/parser/MarkedContentInfo;-><init>(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfDictionary;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    return-void
.end method

.method private beginText()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->renderListener:Lcom/itextpdf/text/pdf/parser/RenderListener;

    invoke-interface {v0}, Lcom/itextpdf/text/pdf/parser/RenderListener;->beginTextBlock()V

    .line 288
    return-void
.end method

.method private decode(Lcom/itextpdf/text/pdf/PdfString;)Ljava/lang/String;
    .locals 4
    .parameter "in"

    .prologue
    .line 279
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfString;->getBytes()[B

    move-result-object v0

    .line 280
    .local v0, bytes:[B
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->gs()Lcom/itextpdf/text/pdf/parser/GraphicsState;

    move-result-object v1

    iget-object v1, v1, Lcom/itextpdf/text/pdf/parser/GraphicsState;->font:Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->decode([BII)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private displayPdfString(Lcom/itextpdf/text/pdf/PdfString;)V
    .locals 5
    .parameter "string"

    .prologue
    .line 303
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->decode(Lcom/itextpdf/text/pdf/PdfString;)Ljava/lang/String;

    move-result-object v1

    .line 305
    .local v1, unicode:Ljava/lang/String;
    new-instance v0, Lcom/itextpdf/text/pdf/parser/TextRenderInfo;

    invoke-direct {p0}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->gs()Lcom/itextpdf/text/pdf/parser/GraphicsState;

    move-result-object v2

    iget-object v3, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->textMatrix:Lcom/itextpdf/text/pdf/parser/Matrix;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->markedContentStack:Ljava/util/Stack;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/text/pdf/parser/TextRenderInfo;-><init>(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/GraphicsState;Lcom/itextpdf/text/pdf/parser/Matrix;Ljava/util/Collection;)V

    .line 307
    .local v0, renderInfo:Lcom/itextpdf/text/pdf/parser/TextRenderInfo;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->renderListener:Lcom/itextpdf/text/pdf/parser/RenderListener;

    invoke-interface {v2, v0}, Lcom/itextpdf/text/pdf/parser/RenderListener;->renderText(Lcom/itextpdf/text/pdf/parser/TextRenderInfo;)V

    .line 309
    new-instance v2, Lcom/itextpdf/text/pdf/parser/Matrix;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/parser/TextRenderInfo;->getUnscaledWidth()F

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/text/pdf/parser/Matrix;-><init>(FF)V

    iget-object v3, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->textMatrix:Lcom/itextpdf/text/pdf/parser/Matrix;

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/parser/Matrix;->multiply(Lcom/itextpdf/text/pdf/parser/Matrix;)Lcom/itextpdf/text/pdf/parser/Matrix;

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->textMatrix:Lcom/itextpdf/text/pdf/parser/Matrix;

    .line 310
    return-void
.end method

.method private displayXObject(Lcom/itextpdf/text/pdf/PdfName;)V
    .locals 9
    .parameter "xobjectName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 321
    iget-object v5, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->resources:Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ResourceDictionary;

    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->XOBJECT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v5, v6}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ResourceDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v4

    .line 322
    .local v4, xobjects:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-virtual {v4, p1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getDirectObject(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    .local v2, xobject:Lcom/itextpdf/text/pdf/PdfObject;
    move-object v3, v2

    .line 323
    check-cast v3, Lcom/itextpdf/text/pdf/PdfStream;

    .line 325
    .local v3, xobjectStream:Lcom/itextpdf/text/pdf/PdfStream;
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v5}, Lcom/itextpdf/text/pdf/PdfStream;->getAsName(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v1

    .line 326
    .local v1, subType:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfObject;->isStream()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 327
    iget-object v5, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->xobjectDoHandlers:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/parser/XObjectDoHandler;

    .line 328
    .local v0, handler:Lcom/itextpdf/text/pdf/parser/XObjectDoHandler;
    if-nez v0, :cond_0

    .line 329
    iget-object v5, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->xobjectDoHandlers:Ljava/util/Map;

    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->DEFAULT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #handler:Lcom/itextpdf/text/pdf/parser/XObjectDoHandler;
    check-cast v0, Lcom/itextpdf/text/pdf/parser/XObjectDoHandler;

    .line 330
    .restart local v0       #handler:Lcom/itextpdf/text/pdf/parser/XObjectDoHandler;
    :cond_0
    invoke-virtual {v4, p1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsIndirectObject(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v5

    invoke-interface {v0, p0, v3, v5}, Lcom/itextpdf/text/pdf/parser/XObjectDoHandler;->handleXObject(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;Lcom/itextpdf/text/pdf/PdfStream;Lcom/itextpdf/text/pdf/PdfIndirectReference;)V

    .line 335
    return-void

    .line 332
    .end local v0           #handler:Lcom/itextpdf/text/pdf/parser/XObjectDoHandler;
    :cond_1
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "XObject.1.is.not.a.stream"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-static {v6, v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private endMarkedContent()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->markedContentStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 269
    return-void
.end method

.method private endText()V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->renderListener:Lcom/itextpdf/text/pdf/parser/RenderListener;

    invoke-interface {v0}, Lcom/itextpdf/text/pdf/parser/RenderListener;->endTextBlock()V

    .line 295
    return-void
.end method

.method private getFont(Lcom/itextpdf/text/pdf/PRIndirectReference;)Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;
    .locals 3
    .parameter "ind"

    .prologue
    .line 149
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 150
    .local v1, n:Ljava/lang/Integer;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->cachedFonts:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;

    .line 151
    .local v0, font:Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;
    if-nez v0, :cond_0

    .line 152
    new-instance v0, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;

    .end local v0           #font:Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;
    invoke-direct {v0, p1}, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;-><init>(Lcom/itextpdf/text/pdf/PRIndirectReference;)V

    .line 153
    .restart local v0       #font:Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->cachedFonts:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_0
    return-object v0
.end method

.method private getFont(Lcom/itextpdf/text/pdf/PdfDictionary;)Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;
    .locals 1
    .parameter "fontResource"

    .prologue
    .line 159
    new-instance v0, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;

    invoke-direct {v0, p1}, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;-><init>(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    return-object v0
.end method

.method private gs()Lcom/itextpdf/text/pdf/parser/GraphicsState;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->gsStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/parser/GraphicsState;

    return-object v0
.end method

.method private invokeOperator(Lcom/itextpdf/text/pdf/PdfLiteral;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "operator"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/text/pdf/PdfLiteral;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 247
    .local p2, operands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    iget-object v1, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->operators:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfLiteral;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 248
    .local v0, op:Lcom/itextpdf/text/pdf/parser/ContentOperator;
    if-nez v0, :cond_0

    .line 249
    iget-object v1, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->operators:Ljava/util/Map;

    const-string v2, "DefaultOperator"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #op:Lcom/itextpdf/text/pdf/parser/ContentOperator;
    check-cast v0, Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 250
    .restart local v0       #op:Lcom/itextpdf/text/pdf/parser/ContentOperator;
    :cond_0
    invoke-interface {v0, p0, p1, p2}, Lcom/itextpdf/text/pdf/parser/ContentOperator;->invoke(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;Lcom/itextpdf/text/pdf/PdfLiteral;Ljava/util/ArrayList;)V

    .line 251
    return-void
.end method

.method private populateOperators()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 167
    const-string v7, "DefaultOperator"

    new-instance v8, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$IgnoreOperatorContentOperator;

    invoke-direct {v8, v9}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$IgnoreOperatorContentOperator;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V

    invoke-virtual {p0, v7, v8}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/ContentOperator;)Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 169
    const-string v7, "q"

    new-instance v8, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$PushGraphicsState;

    invoke-direct {v8, v9}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$PushGraphicsState;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V

    invoke-virtual {p0, v7, v8}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/ContentOperator;)Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 170
    const-string v7, "Q"

    new-instance v8, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$PopGraphicsState;

    invoke-direct {v8, v9}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$PopGraphicsState;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V

    invoke-virtual {p0, v7, v8}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/ContentOperator;)Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 171
    const-string v7, "cm"

    new-instance v8, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ModifyCurrentTransformationMatrix;

    invoke-direct {v8, v9}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ModifyCurrentTransformationMatrix;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V

    invoke-virtual {p0, v7, v8}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/ContentOperator;)Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 172
    const-string v7, "gs"

    new-instance v8, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ProcessGraphicsStateResource;

    invoke-direct {v8, v9}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ProcessGraphicsStateResource;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V

    invoke-virtual {p0, v7, v8}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/ContentOperator;)Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 174
    new-instance v0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextCharacterSpacing;

    invoke-direct {v0, v9}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextCharacterSpacing;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V

    .line 175
    .local v0, tcOperator:Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextCharacterSpacing;
    const-string v7, "Tc"

    invoke-virtual {p0, v7, v0}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/ContentOperator;)Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 176
    new-instance v6, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextWordSpacing;

    invoke-direct {v6, v9}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextWordSpacing;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V

    .line 177
    .local v6, twOperator:Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextWordSpacing;
    const-string v7, "Tw"

    invoke-virtual {p0, v7, v6}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/ContentOperator;)Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 178
    const-string v7, "Tz"

    new-instance v8, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextHorizontalScaling;

    invoke-direct {v8, v9}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextHorizontalScaling;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V

    invoke-virtual {p0, v7, v8}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/ContentOperator;)Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 179
    new-instance v4, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextLeading;

    invoke-direct {v4, v9}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextLeading;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V

    .line 180
    .local v4, tlOperator:Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextLeading;
    const-string v7, "TL"

    invoke-virtual {p0, v7, v4}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/ContentOperator;)Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 181
    const-string v7, "Tf"

    new-instance v8, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextFont;

    invoke-direct {v8, v9}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextFont;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V

    invoke-virtual {p0, v7, v8}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/ContentOperator;)Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 182
    const-string v7, "Tr"

    new-instance v8, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextRenderMode;

    invoke-direct {v8, v9}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextRenderMode;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V

    invoke-virtual {p0, v7, v8}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/ContentOperator;)Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 183
    const-string v7, "Ts"

    new-instance v8, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextRise;

    invoke-direct {v8, v9}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextRise;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V

    invoke-virtual {p0, v7, v8}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/ContentOperator;)Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 185
    const-string v7, "BT"

    new-instance v8, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$BeginText;

    invoke-direct {v8, v9}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$BeginText;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V

    invoke-virtual {p0, v7, v8}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/ContentOperator;)Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 186
    const-string v7, "ET"

    new-instance v8, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$EndText;

    invoke-direct {v8, v9}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$EndText;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V

    invoke-virtual {p0, v7, v8}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/ContentOperator;)Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 187
    const-string v7, "BMC"

    new-instance v8, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$BeginMarkedContent;

    invoke-direct {v8, v9}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$BeginMarkedContent;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V

    invoke-virtual {p0, v7, v8}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/ContentOperator;)Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 188
    const-string v7, "BDC"

    new-instance v8, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$BeginMarkedContentDictionary;

    invoke-direct {v8, v9}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$BeginMarkedContentDictionary;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V

    invoke-virtual {p0, v7, v8}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/ContentOperator;)Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 189
    const-string v7, "EMC"

    new-instance v8, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$EndMarkedContent;

    invoke-direct {v8, v9}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$EndMarkedContent;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V

    invoke-virtual {p0, v7, v8}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/ContentOperator;)Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 191
    new-instance v1, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$TextMoveStartNextLine;

    invoke-direct {v1, v9}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$TextMoveStartNextLine;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V

    .line 192
    .local v1, tdOperator:Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$TextMoveStartNextLine;
    const-string v7, "Td"

    invoke-virtual {p0, v7, v1}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/ContentOperator;)Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 193
    const-string v7, "TD"

    new-instance v8, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$TextMoveStartNextLineWithLeading;

    invoke-direct {v8, v1, v4}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$TextMoveStartNextLineWithLeading;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$TextMoveStartNextLine;Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextLeading;)V

    invoke-virtual {p0, v7, v8}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/ContentOperator;)Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 194
    const-string v7, "Tm"

    new-instance v8, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$TextSetTextMatrix;

    invoke-direct {v8, v9}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$TextSetTextMatrix;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V

    invoke-virtual {p0, v7, v8}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/ContentOperator;)Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 195
    new-instance v5, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$TextMoveNextLine;

    invoke-direct {v5, v1}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$TextMoveNextLine;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$TextMoveStartNextLine;)V

    .line 196
    .local v5, tstarOperator:Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$TextMoveNextLine;
    const-string v7, "T*"

    invoke-virtual {p0, v7, v5}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/ContentOperator;)Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 198
    new-instance v3, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ShowText;

    invoke-direct {v3, v9}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ShowText;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V

    .line 199
    .local v3, tjOperator:Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ShowText;
    const-string v7, "Tj"

    new-instance v8, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ShowText;

    invoke-direct {v8, v9}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ShowText;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V

    invoke-virtual {p0, v7, v8}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/ContentOperator;)Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 200
    new-instance v2, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$MoveNextLineAndShowText;

    invoke-direct {v2, v5, v3}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$MoveNextLineAndShowText;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$TextMoveNextLine;Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ShowText;)V

    .line 201
    .local v2, tickOperator:Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$MoveNextLineAndShowText;
    const-string v7, "\'"

    invoke-virtual {p0, v7, v2}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/ContentOperator;)Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 202
    const-string v7, "\""

    new-instance v8, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$MoveNextLineAndShowTextWithSpacing;

    invoke-direct {v8, v6, v0, v2}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$MoveNextLineAndShowTextWithSpacing;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextWordSpacing;Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextCharacterSpacing;Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$MoveNextLineAndShowText;)V

    invoke-virtual {p0, v7, v8}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/ContentOperator;)Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 203
    const-string v7, "TJ"

    new-instance v8, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ShowTextArray;

    invoke-direct {v8, v9}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ShowTextArray;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V

    invoke-virtual {p0, v7, v8}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/ContentOperator;)Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 205
    const-string v7, "Do"

    new-instance v8, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$Do;

    invoke-direct {v8, v9}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$Do;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V

    invoke-virtual {p0, v7, v8}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/ContentOperator;)Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 206
    return-void
.end method

.method private populateXObjectDoHandlers()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 123
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->DEFAULT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$IgnoreXObjectDoHandler;

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$IgnoreXObjectDoHandler;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerXObjectDoHandler(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/parser/XObjectDoHandler;)Lcom/itextpdf/text/pdf/parser/XObjectDoHandler;

    .line 124
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->FORM:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$FormXObjectDoHandler;

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$FormXObjectDoHandler;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerXObjectDoHandler(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/parser/XObjectDoHandler;)Lcom/itextpdf/text/pdf/parser/XObjectDoHandler;

    .line 125
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->IMAGE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ImageXObjectDoHandler;

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ImageXObjectDoHandler;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerXObjectDoHandler(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/parser/XObjectDoHandler;)Lcom/itextpdf/text/pdf/parser/XObjectDoHandler;

    .line 126
    return-void
.end method


# virtual methods
.method public processContent([BLcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 9
    .parameter "contentBytes"
    .parameter "resources"

    .prologue
    .line 358
    iget-object v7, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->resources:Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ResourceDictionary;

    invoke-virtual {v7, p2}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ResourceDictionary;->push(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 360
    :try_start_0
    new-instance v6, Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-direct {v6, p1}, Lcom/itextpdf/text/pdf/PRTokeniser;-><init>([B)V

    .line 361
    .local v6, tokeniser:Lcom/itextpdf/text/pdf/PRTokeniser;
    new-instance v4, Lcom/itextpdf/text/pdf/PdfContentParser;

    invoke-direct {v4, v6}, Lcom/itextpdf/text/pdf/PdfContentParser;-><init>(Lcom/itextpdf/text/pdf/PRTokeniser;)V

    .line 362
    .local v4, ps:Lcom/itextpdf/text/pdf/PdfContentParser;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 363
    .local v2, operands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    :goto_0
    invoke-virtual {v4, v2}, Lcom/itextpdf/text/pdf/PdfContentParser;->parse(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 364
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/PdfLiteral;

    .line 365
    .local v3, operator:Lcom/itextpdf/text/pdf/PdfLiteral;
    const-string v7, "BI"

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfLiteral;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 367
    if-eqz p2, :cond_0

    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->COLORSPACE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p2, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 368
    .local v0, colorSpaceDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    :goto_1
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->gs()Lcom/itextpdf/text/pdf/parser/GraphicsState;

    move-result-object v7

    iget-object v7, v7, Lcom/itextpdf/text/pdf/parser/GraphicsState;->ctm:Lcom/itextpdf/text/pdf/parser/Matrix;

    invoke-static {v4, v0}, Lcom/itextpdf/text/pdf/parser/InlineImageUtils;->parseInlineImage(Lcom/itextpdf/text/pdf/PdfContentParser;Lcom/itextpdf/text/pdf/PdfDictionary;)Lcom/itextpdf/text/pdf/parser/InlineImageInfo;

    move-result-object v8

    invoke-static {v7, v8, v0}, Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;->createForEmbeddedImage(Lcom/itextpdf/text/pdf/parser/Matrix;Lcom/itextpdf/text/pdf/parser/InlineImageInfo;Lcom/itextpdf/text/pdf/PdfDictionary;)Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;

    move-result-object v5

    .line 369
    .local v5, renderInfo:Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;
    iget-object v7, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->renderListener:Lcom/itextpdf/text/pdf/parser/RenderListener;

    invoke-interface {v7, v5}, Lcom/itextpdf/text/pdf/parser/RenderListener;->renderImage(Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 376
    .end local v0           #colorSpaceDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v2           #operands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    .end local v3           #operator:Lcom/itextpdf/text/pdf/PdfLiteral;
    .end local v4           #ps:Lcom/itextpdf/text/pdf/PdfContentParser;
    .end local v5           #renderInfo:Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;
    .end local v6           #tokeniser:Lcom/itextpdf/text/pdf/PRTokeniser;
    :catch_0
    move-exception v1

    .line 377
    .local v1, e:Ljava/lang/Exception;
    new-instance v7, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v7, v1}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v7

    .line 367
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #operands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    .restart local v3       #operator:Lcom/itextpdf/text/pdf/PdfLiteral;
    .restart local v4       #ps:Lcom/itextpdf/text/pdf/PdfContentParser;
    .restart local v6       #tokeniser:Lcom/itextpdf/text/pdf/PRTokeniser;
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 371
    :cond_1
    :try_start_1
    invoke-direct {p0, v3, v2}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->invokeOperator(Lcom/itextpdf/text/pdf/PdfLiteral;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 379
    .end local v3           #operator:Lcom/itextpdf/text/pdf/PdfLiteral;
    :cond_2
    iget-object v7, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->resources:Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ResourceDictionary;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ResourceDictionary;->pop()V

    .line 381
    return-void
.end method

.method public registerContentOperator(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/ContentOperator;)Lcom/itextpdf/text/pdf/parser/ContentOperator;
    .locals 1
    .parameter "operatorString"
    .parameter "operator"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->operators:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/parser/ContentOperator;

    return-object v0
.end method

.method public registerXObjectDoHandler(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/parser/XObjectDoHandler;)Lcom/itextpdf/text/pdf/parser/XObjectDoHandler;
    .locals 1
    .parameter "xobjectSubType"
    .parameter "handler"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->xobjectDoHandlers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/parser/XObjectDoHandler;

    return-object v0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 226
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->gsStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->removeAllElements()V

    .line 227
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->gsStack:Ljava/util/Stack;

    new-instance v1, Lcom/itextpdf/text/pdf/parser/GraphicsState;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/parser/GraphicsState;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 228
    iput-object v2, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->textMatrix:Lcom/itextpdf/text/pdf/parser/Matrix;

    .line 229
    iput-object v2, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->textLineMatrix:Lcom/itextpdf/text/pdf/parser/Matrix;

    .line 230
    new-instance v0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ResourceDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ResourceDictionary;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->resources:Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ResourceDictionary;

    .line 231
    return-void
.end method

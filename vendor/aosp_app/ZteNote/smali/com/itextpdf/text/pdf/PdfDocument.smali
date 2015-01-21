.class public Lcom/itextpdf/text/pdf/PdfDocument;
.super Lcom/itextpdf/text/Document;
.source "PdfDocument.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/pdf/PdfDocument$Destination;,
        Lcom/itextpdf/text/pdf/PdfDocument$Indentation;,
        Lcom/itextpdf/text/pdf/PdfDocument$PdfCatalog;,
        Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;
    }
.end annotation


# static fields
.field protected static final SIXTEEN_DIGITS:Ljava/text/DecimalFormat; = null

.field static final hangingPunctuation:Ljava/lang/String; = ".,;:\'"


# instance fields
.field protected additionalActions:Lcom/itextpdf/text/pdf/PdfDictionary;

.field protected alignment:I

.field protected anchorAction:Lcom/itextpdf/text/pdf/PdfAction;

.field annotationsImp:Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;

.field protected boxSize:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/PdfRectangle;",
            ">;"
        }
    .end annotation
.end field

.field protected collection:Lcom/itextpdf/text/pdf/collection/PdfCollection;

.field protected currentHeight:F

.field protected currentOutline:Lcom/itextpdf/text/pdf/PdfOutline;

.field protected documentFileAttachment:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            ">;"
        }
    .end annotation
.end field

.field protected documentLevelJS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            ">;"
        }
    .end annotation
.end field

.field protected firstPageEvent:Z

.field private floatingElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/Element;",
            ">;"
        }
    .end annotation
.end field

.field protected graphics:Lcom/itextpdf/text/pdf/PdfContentByte;

.field protected imageEnd:F

.field protected imageWait:Lcom/itextpdf/text/Image;

.field protected indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

.field protected info:Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;

.field protected isSectionTitle:Z

.field jsCounter:I

.field protected lastElementType:I

.field protected leading:F

.field protected leadingCount:I

.field protected line:Lcom/itextpdf/text/pdf/PdfLine;

.field protected lines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfLine;",
            ">;"
        }
    .end annotation
.end field

.field protected localDestinations:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/PdfDocument$Destination;",
            ">;"
        }
    .end annotation
.end field

.field protected markPoint:I

.field protected nextMarginBottom:F

.field protected nextMarginLeft:F

.field protected nextMarginRight:F

.field protected nextMarginTop:F

.field protected nextPageSize:Lcom/itextpdf/text/Rectangle;

.field protected openActionAction:Lcom/itextpdf/text/pdf/PdfAction;

.field protected openActionName:Ljava/lang/String;

.field protected pageAA:Lcom/itextpdf/text/pdf/PdfDictionary;

.field private pageEmpty:Z

.field protected pageLabels:Lcom/itextpdf/text/pdf/PdfPageLabels;

.field protected pageResources:Lcom/itextpdf/text/pdf/PageResources;

.field protected rootOutline:Lcom/itextpdf/text/pdf/PdfOutline;

.field protected strictImageSequence:Z

.field protected text:Lcom/itextpdf/text/pdf/PdfContentByte;

.field protected textEmptySize:I

.field protected thisBoxSize:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/PdfRectangle;",
            ">;"
        }
    .end annotation
.end field

.field protected viewerPreferences:Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

.field protected writer:Lcom/itextpdf/text/pdf/PdfWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1972
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0000000000000000"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfDocument;->SIXTEEN_DIGITS:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 292
    invoke-direct {p0}, Lcom/itextpdf/text/Document;-><init>()V

    .line 327
    iput v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->leading:F

    .line 348
    iput v2, p0, Lcom/itextpdf/text/pdf/PdfDocument;->alignment:I

    .line 351
    iput v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    .line 357
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfDocument;->isSectionTitle:Z

    .line 363
    iput v2, p0, Lcom/itextpdf/text/pdf/PdfDocument;->leadingCount:I

    .line 366
    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->anchorAction:Lcom/itextpdf/text/pdf/PdfAction;

    .line 1010
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->firstPageEvent:Z

    .line 1074
    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    .line 1076
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->lines:Ljava/util/ArrayList;

    .line 1142
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->lastElementType:I

    .line 1571
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    .line 1672
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->info:Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;

    .line 1846
    new-instance v0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->viewerPreferences:Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    .line 1924
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->localDestinations:Ljava/util/TreeMap;

    .line 1971
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->documentLevelJS:Ljava/util/HashMap;

    .line 1998
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->documentFileAttachment:Ljava/util/HashMap;

    .line 2106
    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->nextPageSize:Lcom/itextpdf/text/Rectangle;

    .line 2109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->thisBoxSize:Ljava/util/HashMap;

    .line 2113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->boxSize:Ljava/util/HashMap;

    .line 2165
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageEmpty:Z

    .line 2194
    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageAA:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 2220
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfDocument;->strictImageSequence:Z

    .line 2239
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->imageEnd:F

    .line 2256
    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->imageWait:Lcom/itextpdf/text/Image;

    .line 2369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->floatingElements:Ljava/util/ArrayList;

    .line 293
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->addProducer()Z

    .line 294
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->addCreationDate()Z

    .line 295
    return-void
.end method

.method private addDiv(Lcom/itextpdf/text/pdf/PdfDiv;)V
    .locals 1
    .parameter "div"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 2372
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->floatingElements:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2373
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->floatingElements:Ljava/util/ArrayList;

    .line 2375
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->floatingElements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2376
    return-void
.end method

.method private flushFloatingElements()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 2379
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->floatingElements:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->floatingElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2380
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->floatingElements:Ljava/util/ArrayList;

    .line 2381
    .local v0, cashedFloatingElements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/Element;>;"
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->floatingElements:Ljava/util/ArrayList;

    .line 2382
    new-instance v1, Lcom/itextpdf/text/pdf/FloatLayout;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfWriter;->getDirectContent()Lcom/itextpdf/text/pdf/PdfContentByte;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/itextpdf/text/pdf/FloatLayout;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;Ljava/util/List;)V

    .line 2384
    .local v1, fl:Lcom/itextpdf/text/pdf/FloatLayout;
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentBottom()F

    move-result v4

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentRight()F

    move-result v5

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentTop()F

    move-result v6

    iget v7, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    sub-float/2addr v6, v7

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/itextpdf/text/pdf/FloatLayout;->setSimpleColumn(FFFF)V

    .line 2385
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/pdf/FloatLayout;->layout(Z)I

    move-result v2

    .line 2387
    .local v2, status:I
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->text:Lcom/itextpdf/text/pdf/PdfContentByte;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/FloatLayout;->getYLine()F

    move-result v5

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentTop()F

    move-result v6

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveText(FF)V

    .line 2388
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentTop()F

    move-result v3

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/FloatLayout;->getYLine()F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    .line 2392
    .end local v0           #cashedFloatingElements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/Element;>;"
    .end local v1           #fl:Lcom/itextpdf/text/pdf/FloatLayout;
    .end local v2           #status:I
    :cond_0
    return-void
.end method


# virtual methods
.method protected add(Lcom/itextpdf/text/Image;)V
    .locals 14
    .parameter "image"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/pdf/PdfException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v7, 0x2

    const/4 v13, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2267
    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->hasAbsoluteY()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2268
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->graphics:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfContentByte;->addImage(Lcom/itextpdf/text/Image;)V

    .line 2269
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageEmpty:Z

    .line 2327
    :cond_0
    :goto_0
    return-void

    .line 2274
    :cond_1
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    cmpl-float v0, v0, v13

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentTop()F

    move-result v0

    iget v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    sub-float/2addr v0, v3

    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getScaledHeight()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentBottom()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    .line 2275
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->strictImageSequence:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->imageWait:Lcom/itextpdf/text/Image;

    if-nez v0, :cond_2

    .line 2276
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->imageWait:Lcom/itextpdf/text/Image;

    goto :goto_0

    .line 2279
    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->newPage()Z

    .line 2280
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    cmpl-float v0, v0, v13

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentTop()F

    move-result v0

    iget v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    sub-float/2addr v0, v3

    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getScaledHeight()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentBottom()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    .line 2281
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->imageWait:Lcom/itextpdf/text/Image;

    goto :goto_0

    .line 2285
    :cond_3
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageEmpty:Z

    .line 2287
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->imageWait:Lcom/itextpdf/text/Image;

    if-ne p1, v0, :cond_4

    .line 2288
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->imageWait:Lcom/itextpdf/text/Image;

    .line 2289
    :cond_4
    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getAlignment()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v5, :cond_b

    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getAlignment()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eq v0, v1, :cond_b

    move v11, v1

    .line 2291
    .local v11, textwrap:Z
    :goto_1
    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getAlignment()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    const/16 v3, 0x8

    if-ne v0, v3, :cond_c

    move v12, v1

    .line 2292
    .local v12, underlying:Z
    :goto_2
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->leading:F

    const/high16 v3, 0x4000

    div-float v8, v0, v3

    .line 2293
    .local v8, diff:F
    if-eqz v11, :cond_5

    .line 2294
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->leading:F

    add-float/2addr v8, v0

    .line 2296
    :cond_5
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentTop()F

    move-result v0

    iget v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    sub-float/2addr v0, v3

    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getScaledHeight()F

    move-result v3

    sub-float/2addr v0, v3

    sub-float v9, v0, v8

    .line 2297
    .local v9, lowerleft:F
    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->matrix()[F

    move-result-object v10

    .line 2298
    .local v10, mt:[F
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentLeft()F

    move-result v0

    aget v3, v10, v5

    sub-float v6, v0, v3

    .line 2299
    .local v6, startPosition:F
    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getAlignment()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v7, :cond_6

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentRight()F

    move-result v0

    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getScaledWidth()F

    move-result v3

    sub-float/2addr v0, v3

    aget v3, v10, v5

    sub-float v6, v0, v3

    .line 2300
    :cond_6
    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getAlignment()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_7

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentLeft()F

    move-result v0

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentRight()F

    move-result v3

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentLeft()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getScaledWidth()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float/2addr v0, v3

    aget v3, v10, v5

    sub-float v6, v0, v3

    .line 2301
    :cond_7
    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->hasAbsoluteX()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getAbsoluteX()F

    move-result v6

    .line 2302
    :cond_8
    if-eqz v11, :cond_e

    .line 2303
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->imageEnd:F

    cmpg-float v0, v0, v13

    if-ltz v0, :cond_9

    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->imageEnd:F

    iget v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getScaledHeight()F

    move-result v4

    add-float/2addr v3, v4

    add-float/2addr v3, v8

    cmpg-float v0, v0, v3

    if-gez v0, :cond_a

    .line 2304
    :cond_9
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getScaledHeight()F

    move-result v3

    add-float/2addr v0, v3

    add-float/2addr v0, v8

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->imageEnd:F

    .line 2306
    :cond_a
    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getAlignment()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v7, :cond_d

    .line 2308
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v3, v0, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->imageIndentRight:F

    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getScaledWidth()F

    move-result v4

    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getIndentationLeft()F

    move-result v5

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v0, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->imageIndentRight:F

    .line 2320
    :goto_3
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->graphics:Lcom/itextpdf/text/pdf/PdfContentByte;

    aget v2, v10, v2

    aget v3, v10, v1

    aget v4, v10, v7

    const/4 v1, 0x3

    aget v5, v10, v1

    const/4 v1, 0x5

    aget v1, v10, v1

    sub-float v7, v9, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/itextpdf/text/pdf/PdfContentByte;->addImage(Lcom/itextpdf/text/Image;FFFFFF)V

    .line 2321
    if-nez v11, :cond_0

    if-nez v12, :cond_0

    .line 2322
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getScaledHeight()F

    move-result v1

    add-float/2addr v1, v8

    add-float/2addr v0, v1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    .line 2323
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->flushLines()F

    .line 2324
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->text:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getScaledHeight()F

    move-result v1

    add-float/2addr v1, v8

    neg-float v1, v1

    invoke-virtual {v0, v13, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveText(FF)V

    .line 2325
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->newLine()V

    goto/16 :goto_0

    .end local v6           #startPosition:F
    .end local v8           #diff:F
    .end local v9           #lowerleft:F
    .end local v10           #mt:[F
    .end local v11           #textwrap:Z
    .end local v12           #underlying:Z
    :cond_b
    move v11, v2

    .line 2289
    goto/16 :goto_1

    .restart local v11       #textwrap:Z
    :cond_c
    move v12, v2

    .line 2291
    goto/16 :goto_2

    .line 2312
    .restart local v6       #startPosition:F
    .restart local v8       #diff:F
    .restart local v9       #lowerleft:F
    .restart local v10       #mt:[F
    .restart local v12       #underlying:Z
    :cond_d
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v3, v0, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->imageIndentLeft:F

    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getScaledWidth()F

    move-result v4

    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getIndentationRight()F

    move-result v5

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v0, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->imageIndentLeft:F

    goto :goto_3

    .line 2316
    :cond_e
    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getAlignment()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v7, :cond_f

    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getIndentationRight()F

    move-result v0

    sub-float/2addr v6, v0

    goto :goto_3

    .line 2317
    :cond_f
    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getAlignment()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getIndentationLeft()F

    move-result v0

    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getIndentationRight()F

    move-result v3

    sub-float/2addr v0, v3

    add-float/2addr v6, v0

    goto :goto_3

    .line 2318
    :cond_10
    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getIndentationLeft()F

    move-result v0

    add-float/2addr v6, v0

    goto :goto_3
.end method

.method public add(Lcom/itextpdf/text/Element;)Z
    .locals 35
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 377
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfWriter;->isPaused()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 378
    const/4 v4, 0x0

    .line 713
    :goto_0
    return v4

    .line 381
    :cond_0
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lcom/itextpdf/text/Element;->type()I

    move-result v4

    const/16 v5, 0x25

    if-eq v4, v5, :cond_1

    .line 382
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->flushFloatingElements()V

    .line 385
    :cond_1
    invoke-interface/range {p1 .. p1}, Lcom/itextpdf/text/Element;->type()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 710
    const/4 v4, 0x0

    goto :goto_0

    .line 388
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/PdfDocument;->info:Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;

    move-object/from16 v0, p1

    check-cast v0, Lcom/itextpdf/text/Meta;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/itextpdf/text/Meta;->getName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    check-cast v0, Lcom/itextpdf/text/Meta;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/itextpdf/text/Meta;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;->addkey(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    :cond_2
    :goto_1
    invoke-interface/range {p1 .. p1}, Lcom/itextpdf/text/Element;->type()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->lastElementType:I

    .line 713
    const/4 v4, 0x1

    goto :goto_0

    .line 391
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/PdfDocument;->info:Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;

    move-object/from16 v0, p1

    check-cast v0, Lcom/itextpdf/text/Meta;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/itextpdf/text/Meta;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;->addTitle(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 715
    :catch_0
    move-exception v16

    .line 716
    .local v16, e:Ljava/lang/Exception;
    new-instance v4, Lcom/itextpdf/text/DocumentException;

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/Exception;)V

    throw v4

    .line 394
    .end local v16           #e:Ljava/lang/Exception;
    :sswitch_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/PdfDocument;->info:Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;

    move-object/from16 v0, p1

    check-cast v0, Lcom/itextpdf/text/Meta;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/itextpdf/text/Meta;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;->addSubject(Ljava/lang/String;)V

    goto :goto_1

    .line 397
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/PdfDocument;->info:Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;

    move-object/from16 v0, p1

    check-cast v0, Lcom/itextpdf/text/Meta;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/itextpdf/text/Meta;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;->addKeywords(Ljava/lang/String;)V

    goto :goto_1

    .line 400
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/PdfDocument;->info:Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;

    move-object/from16 v0, p1

    check-cast v0, Lcom/itextpdf/text/Meta;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/itextpdf/text/Meta;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;->addAuthor(Ljava/lang/String;)V

    goto :goto_1

    .line 403
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/PdfDocument;->info:Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;

    move-object/from16 v0, p1

    check-cast v0, Lcom/itextpdf/text/Meta;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/itextpdf/text/Meta;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;->addCreator(Ljava/lang/String;)V

    goto :goto_1

    .line 407
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->info:Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;->addProducer()V

    goto :goto_1

    .line 411
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->info:Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;->addCreationDate()V

    goto :goto_1

    .line 417
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    if-nez v4, :cond_3

    .line 418
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->carriageReturn()V

    .line 422
    :cond_3
    new-instance v14, Lcom/itextpdf/text/pdf/PdfChunk;

    move-object/from16 v0, p1

    check-cast v0, Lcom/itextpdf/text/Chunk;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/PdfDocument;->anchorAction:Lcom/itextpdf/text/pdf/PdfAction;

    invoke-direct {v14, v4, v5}, Lcom/itextpdf/text/pdf/PdfChunk;-><init>(Lcom/itextpdf/text/Chunk;Lcom/itextpdf/text/pdf/PdfAction;)V

    .line 426
    .local v14, chunk:Lcom/itextpdf/text/pdf/PdfChunk;
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    invoke-virtual {v4, v14}, Lcom/itextpdf/text/pdf/PdfLine;->add(Lcom/itextpdf/text/pdf/PdfChunk;)Lcom/itextpdf/text/pdf/PdfChunk;

    move-result-object v25

    .local v25, overflow:Lcom/itextpdf/text/pdf/PdfChunk;
    if-eqz v25, :cond_4

    .line 427
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->carriageReturn()V

    .line 428
    move-object/from16 v14, v25

    .line 429
    invoke-virtual {v14}, Lcom/itextpdf/text/pdf/PdfChunk;->trimFirstSpace()F

    goto :goto_2

    .line 432
    :cond_4
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->pageEmpty:Z

    .line 433
    const-string v4, "NEWPAGE"

    invoke-virtual {v14, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->isAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 434
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->newPage()Z

    goto/16 :goto_1

    .line 439
    .end local v14           #chunk:Lcom/itextpdf/text/pdf/PdfChunk;
    .end local v25           #overflow:Lcom/itextpdf/text/pdf/PdfChunk;
    :sswitch_9
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->leadingCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->leadingCount:I

    .line 440
    move-object/from16 v0, p1

    check-cast v0, Lcom/itextpdf/text/Anchor;

    move-object v11, v0

    .line 441
    .local v11, anchor:Lcom/itextpdf/text/Anchor;
    invoke-virtual {v11}, Lcom/itextpdf/text/Anchor;->getReference()Ljava/lang/String;

    move-result-object v33

    .line 442
    .local v33, url:Ljava/lang/String;
    invoke-virtual {v11}, Lcom/itextpdf/text/Anchor;->getLeading()F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->leading:F

    .line 443
    if-eqz v33, :cond_5

    .line 444
    new-instance v4, Lcom/itextpdf/text/pdf/PdfAction;

    move-object/from16 v0, v33

    invoke-direct {v4, v0}, Lcom/itextpdf/text/pdf/PdfAction;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->anchorAction:Lcom/itextpdf/text/pdf/PdfAction;

    .line 447
    :cond_5
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/itextpdf/text/Element;->process(Lcom/itextpdf/text/ElementListener;)Z

    .line 448
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->anchorAction:Lcom/itextpdf/text/pdf/PdfAction;

    .line 449
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->leadingCount:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->leadingCount:I

    goto/16 :goto_1

    .line 453
    .end local v11           #anchor:Lcom/itextpdf/text/Anchor;
    .end local v33           #url:Ljava/lang/String;
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    if-nez v4, :cond_6

    .line 454
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->carriageReturn()V

    .line 456
    :cond_6
    move-object/from16 v0, p1

    check-cast v0, Lcom/itextpdf/text/Annotation;

    move-object v12, v0

    .line 457
    .local v12, annot:Lcom/itextpdf/text/Annotation;
    new-instance v28, Lcom/itextpdf/text/Rectangle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-direct {v0, v4, v5}, Lcom/itextpdf/text/Rectangle;-><init>(FF)V

    .line 458
    .local v28, rect:Lcom/itextpdf/text/Rectangle;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    if-eqz v4, :cond_7

    .line 459
    new-instance v28, Lcom/itextpdf/text/Rectangle;

    .end local v28           #rect:Lcom/itextpdf/text/Rectangle;
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentRight()F

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfLine;->widthLeft()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v12, v4}, Lcom/itextpdf/text/Annotation;->llx(F)F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentTop()F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    sub-float/2addr v5, v6

    const/high16 v6, 0x41a0

    sub-float/2addr v5, v6

    invoke-virtual {v12, v5}, Lcom/itextpdf/text/Annotation;->ury(F)F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentRight()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfLine;->widthLeft()F

    move-result v7

    sub-float/2addr v6, v7

    const/high16 v7, 0x41a0

    add-float/2addr v6, v7

    invoke-virtual {v12, v6}, Lcom/itextpdf/text/Annotation;->urx(F)F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentTop()F

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    sub-float/2addr v7, v8

    invoke-virtual {v12, v7}, Lcom/itextpdf/text/Annotation;->lly(F)F

    move-result v7

    move-object/from16 v0, v28

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    .line 460
    .restart local v28       #rect:Lcom/itextpdf/text/Rectangle;
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move-object/from16 v0, v28

    invoke-static {v4, v12, v0}, Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;->convertAnnotation(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Annotation;Lcom/itextpdf/text/Rectangle;)Lcom/itextpdf/text/pdf/PdfAnnotation;

    move-result-object v10

    .line 461
    .local v10, an:Lcom/itextpdf/text/pdf/PdfAnnotation;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->annotationsImp:Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;

    invoke-virtual {v4, v10}, Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;->addPlainAnnotation(Lcom/itextpdf/text/pdf/PdfAnnotation;)V

    .line 462
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->pageEmpty:Z

    goto/16 :goto_1

    .line 466
    .end local v10           #an:Lcom/itextpdf/text/pdf/PdfAnnotation;
    .end local v12           #annot:Lcom/itextpdf/text/Annotation;
    .end local v28           #rect:Lcom/itextpdf/text/Rectangle;
    :sswitch_b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->leadingCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->leadingCount:I

    .line 468
    move-object/from16 v0, p1

    check-cast v0, Lcom/itextpdf/text/Phrase;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/itextpdf/text/Phrase;->getTotalLeading()F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->leading:F

    .line 470
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/itextpdf/text/Element;->process(Lcom/itextpdf/text/ElementListener;)Z

    .line 471
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->leadingCount:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->leadingCount:I

    goto/16 :goto_1

    .line 475
    :sswitch_c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->leadingCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->leadingCount:I

    .line 477
    move-object/from16 v0, p1

    check-cast v0, Lcom/itextpdf/text/Paragraph;

    move-object/from16 v26, v0

    .line 478
    .local v26, paragraph:Lcom/itextpdf/text/Paragraph;
    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/Paragraph;->getSpacingBefore()F

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/PdfDocument;->leading:F

    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/Paragraph;->getFont()Lcom/itextpdf/text/Font;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/itextpdf/text/pdf/PdfDocument;->addSpacing(FFLcom/itextpdf/text/Font;)V

    .line 481
    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/Paragraph;->getAlignment()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->alignment:I

    .line 482
    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/Paragraph;->getTotalLeading()F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->leading:F

    .line 483
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->carriageReturn()V

    .line 486
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfLine;->height()F

    move-result v5

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/PdfDocument;->leading:F

    add-float/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentTop()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentBottom()F

    move-result v6

    sub-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_8

    .line 487
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->newPage()Z

    .line 489
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentLeft:F

    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/Paragraph;->getIndentationLeft()F

    move-result v6

    add-float/2addr v5, v6

    iput v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentLeft:F

    .line 490
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentRight:F

    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/Paragraph;->getIndentationRight()F

    move-result v6

    add-float/2addr v5, v6

    iput v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentRight:F

    .line 491
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->carriageReturn()V

    .line 493
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfWriter;->getPageEvent()Lcom/itextpdf/text/pdf/PdfPageEvent;

    move-result-object v2

    .line 494
    .local v2, pageEvent:Lcom/itextpdf/text/pdf/PdfPageEvent;
    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->isSectionTitle:Z

    if-nez v4, :cond_9

    .line 495
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentTop()F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    invoke-interface {v2, v4, v0, v5}, Lcom/itextpdf/text/pdf/PdfPageEvent;->onParagraph(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;F)V

    .line 498
    :cond_9
    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/Paragraph;->getKeepTogether()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 499
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->carriageReturn()V

    .line 500
    new-instance v32, Lcom/itextpdf/text/pdf/PdfPTable;

    const/4 v4, 0x1

    move-object/from16 v0, v32

    invoke-direct {v0, v4}, Lcom/itextpdf/text/pdf/PdfPTable;-><init>(I)V

    .line 501
    .local v32, table:Lcom/itextpdf/text/pdf/PdfPTable;
    const/high16 v4, 0x42c8

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfPTable;->setWidthPercentage(F)V

    .line 502
    new-instance v13, Lcom/itextpdf/text/pdf/PdfPCell;

    invoke-direct {v13}, Lcom/itextpdf/text/pdf/PdfPCell;-><init>()V

    .line 503
    .local v13, cell:Lcom/itextpdf/text/pdf/PdfPCell;
    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lcom/itextpdf/text/pdf/PdfPCell;->addElement(Lcom/itextpdf/text/Element;)V

    .line 504
    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Lcom/itextpdf/text/pdf/PdfPCell;->setBorder(I)V

    .line 505
    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Lcom/itextpdf/text/pdf/PdfPCell;->setPadding(F)V

    .line 506
    move-object/from16 v0, v32

    invoke-virtual {v0, v13}, Lcom/itextpdf/text/pdf/PdfPTable;->addCell(Lcom/itextpdf/text/pdf/PdfPCell;)V

    .line 507
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentLeft:F

    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/Paragraph;->getIndentationLeft()F

    move-result v6

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentLeft:F

    .line 508
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentRight:F

    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/Paragraph;->getIndentationRight()F

    move-result v6

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentRight:F

    .line 509
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDocument;->add(Lcom/itextpdf/text/Element;)Z

    .line 510
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentLeft:F

    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/Paragraph;->getIndentationLeft()F

    move-result v6

    add-float/2addr v5, v6

    iput v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentLeft:F

    .line 511
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentRight:F

    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/Paragraph;->getIndentationRight()F

    move-result v6

    add-float/2addr v5, v6

    iput v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentRight:F

    .line 520
    .end local v13           #cell:Lcom/itextpdf/text/pdf/PdfPCell;
    .end local v32           #table:Lcom/itextpdf/text/pdf/PdfPTable;
    :goto_3
    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->isSectionTitle:Z

    if-nez v4, :cond_a

    .line 521
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentTop()F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    invoke-interface {v2, v4, v0, v5}, Lcom/itextpdf/text/pdf/PdfPageEvent;->onParagraphEnd(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;F)V

    .line 523
    :cond_a
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->alignment:I

    .line 524
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentLeft:F

    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/Paragraph;->getIndentationLeft()F

    move-result v6

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentLeft:F

    .line 525
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentRight:F

    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/Paragraph;->getIndentationRight()F

    move-result v6

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentRight:F

    .line 526
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->carriageReturn()V

    .line 527
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->leadingCount:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->leadingCount:I

    goto/16 :goto_1

    .line 514
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/Paragraph;->getFirstLineIndent()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/PdfLine;->setExtraIndent(F)V

    .line 515
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/itextpdf/text/Element;->process(Lcom/itextpdf/text/ElementListener;)Z

    .line 516
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->carriageReturn()V

    .line 517
    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/Paragraph;->getSpacingAfter()F

    move-result v4

    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/Paragraph;->getTotalLeading()F

    move-result v5

    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/Paragraph;->getFont()Lcom/itextpdf/text/Font;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/itextpdf/text/pdf/PdfDocument;->addSpacing(FFLcom/itextpdf/text/Font;)V

    goto :goto_3

    .line 534
    .end local v2           #pageEvent:Lcom/itextpdf/text/pdf/PdfPageEvent;
    .end local v26           #paragraph:Lcom/itextpdf/text/Paragraph;
    :sswitch_d
    move-object/from16 v0, p1

    check-cast v0, Lcom/itextpdf/text/Section;

    move-object/from16 v31, v0

    .line 535
    .local v31, section:Lcom/itextpdf/text/Section;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfWriter;->getPageEvent()Lcom/itextpdf/text/pdf/PdfPageEvent;

    move-result-object v2

    .line 537
    .restart local v2       #pageEvent:Lcom/itextpdf/text/pdf/PdfPageEvent;
    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/Section;->isNotAddedYet()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/Section;->getTitle()Lcom/itextpdf/text/Paragraph;

    move-result-object v4

    if-eqz v4, :cond_f

    const/16 v18, 0x1

    .line 541
    .local v18, hasTitle:Z
    :goto_4
    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/Section;->isTriggerNewPage()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 542
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->newPage()Z

    .line 545
    :cond_c
    if-eqz v18, :cond_11

    .line 546
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentTop()F

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    sub-float v17, v4, v5

    .line 547
    .local v17, fith:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->pageSize:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v4}, Lcom/itextpdf/text/Rectangle;->getRotation()I

    move-result v30

    .line 548
    .local v30, rotation:I
    const/16 v4, 0x5a

    move/from16 v0, v30

    if-eq v0, v4, :cond_d

    const/16 v4, 0xb4

    move/from16 v0, v30

    if-ne v0, v4, :cond_e

    .line 549
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->pageSize:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v4}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v4

    sub-float v17, v4, v17

    .line 550
    :cond_e
    new-instance v15, Lcom/itextpdf/text/pdf/PdfDestination;

    const/4 v4, 0x2

    move/from16 v0, v17

    invoke-direct {v15, v4, v0}, Lcom/itextpdf/text/pdf/PdfDestination;-><init>(IF)V

    .line 551
    .local v15, destination:Lcom/itextpdf/text/pdf/PdfDestination;
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->currentOutline:Lcom/itextpdf/text/pdf/PdfOutline;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfOutline;->level()I

    move-result v4

    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/Section;->getDepth()I

    move-result v5

    if-lt v4, v5, :cond_10

    .line 552
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->currentOutline:Lcom/itextpdf/text/pdf/PdfOutline;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfOutline;->parent()Lcom/itextpdf/text/pdf/PdfOutline;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->currentOutline:Lcom/itextpdf/text/pdf/PdfOutline;

    goto :goto_5

    .line 537
    .end local v15           #destination:Lcom/itextpdf/text/pdf/PdfDestination;
    .end local v17           #fith:F
    .end local v18           #hasTitle:Z
    .end local v30           #rotation:I
    :cond_f
    const/16 v18, 0x0

    goto :goto_4

    .line 554
    .restart local v15       #destination:Lcom/itextpdf/text/pdf/PdfDestination;
    .restart local v17       #fith:F
    .restart local v18       #hasTitle:Z
    .restart local v30       #rotation:I
    :cond_10
    new-instance v24, Lcom/itextpdf/text/pdf/PdfOutline;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->currentOutline:Lcom/itextpdf/text/pdf/PdfOutline;

    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/Section;->getBookmarkTitle()Lcom/itextpdf/text/Paragraph;

    move-result-object v5

    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/Section;->isBookmarkOpen()Z

    move-result v6

    move-object/from16 v0, v24

    invoke-direct {v0, v4, v15, v5, v6}, Lcom/itextpdf/text/pdf/PdfOutline;-><init>(Lcom/itextpdf/text/pdf/PdfOutline;Lcom/itextpdf/text/pdf/PdfDestination;Lcom/itextpdf/text/Paragraph;Z)V

    .line 555
    .local v24, outline:Lcom/itextpdf/text/pdf/PdfOutline;
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/PdfDocument;->currentOutline:Lcom/itextpdf/text/pdf/PdfOutline;

    .line 559
    .end local v15           #destination:Lcom/itextpdf/text/pdf/PdfDestination;
    .end local v17           #fith:F
    .end local v24           #outline:Lcom/itextpdf/text/pdf/PdfOutline;
    .end local v30           #rotation:I
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->carriageReturn()V

    .line 560
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->sectionIndentLeft:F

    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/Section;->getIndentationLeft()F

    move-result v6

    add-float/2addr v5, v6

    iput v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->sectionIndentLeft:F

    .line 561
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->sectionIndentRight:F

    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/Section;->getIndentationRight()F

    move-result v6

    add-float/2addr v5, v6

    iput v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->sectionIndentRight:F

    .line 563
    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/Section;->isNotAddedYet()Z

    move-result v4

    if-eqz v4, :cond_12

    if-eqz v2, :cond_12

    .line 564
    invoke-interface/range {p1 .. p1}, Lcom/itextpdf/text/Element;->type()I

    move-result v4

    const/16 v5, 0x10

    if-ne v4, v5, :cond_14

    .line 565
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentTop()F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    sub-float/2addr v5, v6

    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/Section;->getTitle()Lcom/itextpdf/text/Paragraph;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-interface {v2, v4, v0, v5, v6}, Lcom/itextpdf/text/pdf/PdfPageEvent;->onChapter(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;FLcom/itextpdf/text/Paragraph;)V

    .line 570
    :cond_12
    :goto_6
    if-eqz v18, :cond_13

    .line 571
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->isSectionTitle:Z

    .line 572
    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/Section;->getTitle()Lcom/itextpdf/text/Paragraph;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfDocument;->add(Lcom/itextpdf/text/Element;)Z

    .line 573
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->isSectionTitle:Z

    .line 575
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->sectionIndentLeft:F

    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/Section;->getIndentation()F

    move-result v6

    add-float/2addr v5, v6

    iput v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->sectionIndentLeft:F

    .line 577
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/itextpdf/text/Element;->process(Lcom/itextpdf/text/ElementListener;)Z

    .line 578
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->flushLines()F

    .line 580
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->sectionIndentLeft:F

    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/Section;->getIndentationLeft()F

    move-result v6

    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/Section;->getIndentation()F

    move-result v7

    add-float/2addr v6, v7

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->sectionIndentLeft:F

    .line 581
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->sectionIndentRight:F

    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/Section;->getIndentationRight()F

    move-result v6

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->sectionIndentRight:F

    .line 583
    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/Section;->isComplete()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    .line 584
    invoke-interface/range {p1 .. p1}, Lcom/itextpdf/text/Element;->type()I

    move-result v4

    const/16 v5, 0x10

    if-ne v4, v5, :cond_15

    .line 585
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentTop()F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    invoke-interface {v2, v4, v0, v5}, Lcom/itextpdf/text/pdf/PdfPageEvent;->onChapterEnd(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;F)V

    goto/16 :goto_1

    .line 567
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentTop()F

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    sub-float v5, v4, v5

    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/Section;->getDepth()I

    move-result v6

    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/Section;->getTitle()Lcom/itextpdf/text/Paragraph;

    move-result-object v7

    move-object/from16 v4, p0

    invoke-interface/range {v2 .. v7}, Lcom/itextpdf/text/pdf/PdfPageEvent;->onSection(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;FILcom/itextpdf/text/Paragraph;)V

    goto/16 :goto_6

    .line 587
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentTop()F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    invoke-interface {v2, v4, v0, v5}, Lcom/itextpdf/text/pdf/PdfPageEvent;->onSectionEnd(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;F)V

    goto/16 :goto_1

    .line 593
    .end local v2           #pageEvent:Lcom/itextpdf/text/pdf/PdfPageEvent;
    .end local v18           #hasTitle:Z
    .end local v31           #section:Lcom/itextpdf/text/Section;
    :sswitch_e
    move-object/from16 v0, p1

    check-cast v0, Lcom/itextpdf/text/List;

    move-object/from16 v20, v0

    .line 594
    .local v20, list:Lcom/itextpdf/text/List;
    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/text/List;->isAlignindent()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 595
    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/text/List;->normalizeIndentation()V

    .line 598
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->listIndentLeft:F

    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/text/List;->getIndentationLeft()F

    move-result v6

    add-float/2addr v5, v6

    iput v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->listIndentLeft:F

    .line 599
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentRight:F

    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/text/List;->getIndentationRight()F

    move-result v6

    add-float/2addr v5, v6

    iput v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentRight:F

    .line 601
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/itextpdf/text/Element;->process(Lcom/itextpdf/text/ElementListener;)Z

    .line 603
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->listIndentLeft:F

    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/text/List;->getIndentationLeft()F

    move-result v6

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->listIndentLeft:F

    .line 604
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentRight:F

    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/text/List;->getIndentationRight()F

    move-result v6

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentRight:F

    .line 605
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->carriageReturn()V

    goto/16 :goto_1

    .line 609
    .end local v20           #list:Lcom/itextpdf/text/List;
    :sswitch_f
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->leadingCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->leadingCount:I

    .line 611
    move-object/from16 v0, p1

    check-cast v0, Lcom/itextpdf/text/ListItem;

    move-object/from16 v21, v0

    .line 613
    .local v21, listItem:Lcom/itextpdf/text/ListItem;
    invoke-virtual/range {v21 .. v21}, Lcom/itextpdf/text/ListItem;->getSpacingBefore()F

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/PdfDocument;->leading:F

    invoke-virtual/range {v21 .. v21}, Lcom/itextpdf/text/ListItem;->getFont()Lcom/itextpdf/text/Font;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/itextpdf/text/pdf/PdfDocument;->addSpacing(FFLcom/itextpdf/text/Font;)V

    .line 616
    invoke-virtual/range {v21 .. v21}, Lcom/itextpdf/text/ListItem;->getAlignment()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->alignment:I

    .line 617
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->listIndentLeft:F

    invoke-virtual/range {v21 .. v21}, Lcom/itextpdf/text/ListItem;->getIndentationLeft()F

    move-result v6

    add-float/2addr v5, v6

    iput v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->listIndentLeft:F

    .line 618
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentRight:F

    invoke-virtual/range {v21 .. v21}, Lcom/itextpdf/text/ListItem;->getIndentationRight()F

    move-result v6

    add-float/2addr v5, v6

    iput v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentRight:F

    .line 619
    invoke-virtual/range {v21 .. v21}, Lcom/itextpdf/text/ListItem;->getTotalLeading()F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->leading:F

    .line 620
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->carriageReturn()V

    .line 623
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfLine;->setListItem(Lcom/itextpdf/text/ListItem;)V

    .line 625
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/itextpdf/text/Element;->process(Lcom/itextpdf/text/ElementListener;)Z

    .line 627
    invoke-virtual/range {v21 .. v21}, Lcom/itextpdf/text/ListItem;->getSpacingAfter()F

    move-result v4

    invoke-virtual/range {v21 .. v21}, Lcom/itextpdf/text/ListItem;->getTotalLeading()F

    move-result v5

    invoke-virtual/range {v21 .. v21}, Lcom/itextpdf/text/ListItem;->getFont()Lcom/itextpdf/text/Font;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/itextpdf/text/pdf/PdfDocument;->addSpacing(FFLcom/itextpdf/text/Font;)V

    .line 630
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfLine;->hasToBeJustified()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 631
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfLine;->resetAlignment()V

    .line 634
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->carriageReturn()V

    .line 635
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->listIndentLeft:F

    invoke-virtual/range {v21 .. v21}, Lcom/itextpdf/text/ListItem;->getIndentationLeft()F

    move-result v6

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->listIndentLeft:F

    .line 636
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentRight:F

    invoke-virtual/range {v21 .. v21}, Lcom/itextpdf/text/ListItem;->getIndentationRight()F

    move-result v6

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentRight:F

    .line 637
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->leadingCount:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->leadingCount:I

    goto/16 :goto_1

    .line 641
    .end local v21           #listItem:Lcom/itextpdf/text/ListItem;
    :sswitch_10
    move-object/from16 v0, p1

    check-cast v0, Lcom/itextpdf/text/Rectangle;

    move-object/from16 v29, v0

    .line 642
    .local v29, rectangle:Lcom/itextpdf/text/Rectangle;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->graphics:Lcom/itextpdf/text/pdf/PdfContentByte;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->rectangle(Lcom/itextpdf/text/Rectangle;)V

    .line 643
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->pageEmpty:Z

    goto/16 :goto_1

    .line 647
    .end local v29           #rectangle:Lcom/itextpdf/text/Rectangle;
    :sswitch_11
    move-object/from16 v0, p1

    check-cast v0, Lcom/itextpdf/text/pdf/PdfPTable;

    move-object/from16 v27, v0

    .line 648
    .local v27, ptable:Lcom/itextpdf/text/pdf/PdfPTable;
    invoke-virtual/range {v27 .. v27}, Lcom/itextpdf/text/pdf/PdfPTable;->size()I

    move-result v4

    invoke-virtual/range {v27 .. v27}, Lcom/itextpdf/text/pdf/PdfPTable;->getHeaderRows()I

    move-result v5

    if-le v4, v5, :cond_2

    .line 652
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->ensureNewLine()V

    .line 653
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->flushLines()F

    .line 655
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDocument;->addPTable(Lcom/itextpdf/text/pdf/PdfPTable;)V

    .line 656
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->pageEmpty:Z

    .line 657
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->newLine()V

    goto/16 :goto_1

    .line 661
    .end local v27           #ptable:Lcom/itextpdf/text/pdf/PdfPTable;
    :sswitch_12
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->ensureNewLine()V

    .line 662
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->flushLines()F

    .line 663
    move-object/from16 v0, p1

    check-cast v0, Lcom/itextpdf/text/pdf/MultiColumnText;

    move-object/from16 v23, v0

    .line 664
    .local v23, multiText:Lcom/itextpdf/text/pdf/MultiColumnText;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfWriter;->getDirectContent()Lcom/itextpdf/text/pdf/PdfContentByte;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentTop()F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    sub-float/2addr v5, v6

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v4, v1, v5}, Lcom/itextpdf/text/pdf/MultiColumnText;->write(Lcom/itextpdf/text/pdf/PdfContentByte;Lcom/itextpdf/text/pdf/PdfDocument;F)F

    move-result v19

    .line 665
    .local v19, height:F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    add-float v4, v4, v19

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    .line 666
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->text:Lcom/itextpdf/text/pdf/PdfContentByte;

    const/4 v5, 0x0

    const/high16 v6, -0x4080

    mul-float v6, v6, v19

    invoke-virtual {v4, v5, v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveText(FF)V

    .line 667
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->pageEmpty:Z

    goto/16 :goto_1

    .line 676
    .end local v19           #height:F
    .end local v23           #multiText:Lcom/itextpdf/text/pdf/MultiColumnText;
    :sswitch_13
    move-object/from16 v0, p1

    check-cast v0, Lcom/itextpdf/text/Image;

    move-object v4, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfDocument;->add(Lcom/itextpdf/text/Image;)V

    goto/16 :goto_1

    .line 680
    :sswitch_14
    move-object/from16 v0, p1

    check-cast v0, Lcom/itextpdf/text/pdf/draw/DrawInterface;

    move-object v3, v0

    .line 681
    .local v3, zh:Lcom/itextpdf/text/pdf/draw/DrawInterface;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->graphics:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentLeft()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentBottom()F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentRight()F

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentTop()F

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentTop()F

    move-result v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    move/from16 v34, v0

    sub-float v34, v9, v34

    move-object/from16 v0, p0

    iget v9, v0, Lcom/itextpdf/text/pdf/PdfDocument;->leadingCount:I

    if-lez v9, :cond_18

    move-object/from16 v0, p0

    iget v9, v0, Lcom/itextpdf/text/pdf/PdfDocument;->leading:F

    :goto_7
    sub-float v9, v34, v9

    invoke-interface/range {v3 .. v9}, Lcom/itextpdf/text/pdf/draw/DrawInterface;->draw(Lcom/itextpdf/text/pdf/PdfContentByte;FFFFF)V

    .line 682
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->pageEmpty:Z

    goto/16 :goto_1

    .line 681
    :cond_18
    const/4 v9, 0x0

    goto :goto_7

    .line 687
    .end local v3           #zh:Lcom/itextpdf/text/pdf/draw/DrawInterface;
    :sswitch_15
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/itextpdf/text/MarkedSection;

    if-eqz v4, :cond_19

    .line 688
    move-object/from16 v0, p1

    check-cast v0, Lcom/itextpdf/text/MarkedSection;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/itextpdf/text/MarkedSection;->getTitle()Lcom/itextpdf/text/MarkedObject;

    move-result-object v22

    .line 689
    .local v22, mo:Lcom/itextpdf/text/MarkedObject;
    if-eqz v22, :cond_19

    .line 690
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/MarkedObject;->process(Lcom/itextpdf/text/ElementListener;)Z

    .line 693
    .end local v22           #mo:Lcom/itextpdf/text/MarkedObject;
    :cond_19
    move-object/from16 v0, p1

    check-cast v0, Lcom/itextpdf/text/MarkedObject;

    move-object/from16 v22, v0

    .line 694
    .restart local v22       #mo:Lcom/itextpdf/text/MarkedObject;
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/MarkedObject;->process(Lcom/itextpdf/text/ElementListener;)Z

    goto/16 :goto_1

    .line 698
    .end local v22           #mo:Lcom/itextpdf/text/MarkedObject;
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    if-eqz v4, :cond_2

    .line 699
    move-object/from16 v0, p1

    check-cast v0, Lcom/itextpdf/text/api/WriterOperation;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move-object/from16 v0, p0

    invoke-interface {v4, v5, v0}, Lcom/itextpdf/text/api/WriterOperation;->write(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;)V

    goto/16 :goto_1

    .line 703
    :sswitch_17
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->ensureNewLine()V

    .line 704
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->flushLines()F

    .line 705
    move-object/from16 v0, p1

    check-cast v0, Lcom/itextpdf/text/pdf/PdfDiv;

    move-object v4, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/itextpdf/text/pdf/PdfDocument;->addDiv(Lcom/itextpdf/text/pdf/PdfDiv;)V

    .line 706
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->pageEmpty:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 385
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0x7 -> :sswitch_5
        0xa -> :sswitch_8
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_d
        0x11 -> :sswitch_9
        0x17 -> :sswitch_11
        0x1d -> :sswitch_a
        0x1e -> :sswitch_10
        0x20 -> :sswitch_13
        0x21 -> :sswitch_13
        0x22 -> :sswitch_13
        0x23 -> :sswitch_13
        0x24 -> :sswitch_13
        0x25 -> :sswitch_17
        0x28 -> :sswitch_12
        0x32 -> :sswitch_15
        0x37 -> :sswitch_14
        0x29a -> :sswitch_16
    .end sparse-switch
.end method

.method addAdditionalAction(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfAction;)V
    .locals 1
    .parameter "actionType"
    .parameter "action"

    .prologue
    .line 2043
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->additionalActions:Lcom/itextpdf/text/pdf/PdfDictionary;

    if-nez v0, :cond_0

    .line 2044
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->additionalActions:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 2046
    :cond_0
    if-nez p2, :cond_2

    .line 2047
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->additionalActions:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 2050
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->additionalActions:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2051
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->additionalActions:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 2052
    :cond_1
    return-void

    .line 2049
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->additionalActions:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0
.end method

.method addAnnotation(Lcom/itextpdf/text/pdf/PdfAnnotation;)V
    .locals 1
    .parameter "annot"

    .prologue
    .line 2087
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageEmpty:Z

    .line 2088
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->annotationsImp:Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;->addAnnotation(Lcom/itextpdf/text/pdf/PdfAnnotation;)V

    .line 2089
    return-void
.end method

.method addCalculationOrder(Lcom/itextpdf/text/pdf/PdfFormField;)V
    .locals 1
    .parameter "formField"

    .prologue
    .line 2083
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->annotationsImp:Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;->addCalculationOrder(Lcom/itextpdf/text/pdf/PdfFormField;)V

    .line 2084
    return-void
.end method

.method addFileAttachment(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfFileSpecification;)V
    .locals 7
    .parameter "description"
    .parameter "fs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 2001
    if-nez p1, :cond_0

    .line 2002
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->DESC:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p2, v3}, Lcom/itextpdf/text/pdf/PdfFileSpecification;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfString;

    .line 2003
    .local v0, desc:Lcom/itextpdf/text/pdf/PdfString;
    if-nez v0, :cond_2

    .line 2004
    const-string p1, ""

    .line 2010
    .end local v0           #desc:Lcom/itextpdf/text/pdf/PdfString;
    :cond_0
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {p2, p1, v3}, Lcom/itextpdf/text/pdf/PdfFileSpecification;->addDescription(Ljava/lang/String;Z)V

    .line 2011
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 2012
    const-string p1, "Unnamed"

    .line 2013
    :cond_1
    new-instance v3, Lcom/itextpdf/text/pdf/PdfString;

    const-string v4, "UnicodeBig"

    invoke-direct {v3, p1, v4}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfString;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v6}, Lcom/itextpdf/text/pdf/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2014
    .local v1, fn:Ljava/lang/String;
    const/4 v2, 0x0

    .line 2015
    .local v2, k:I
    :goto_1
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->documentFileAttachment:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2016
    add-int/lit8 v2, v2, 0x1

    .line 2017
    new-instance v3, Lcom/itextpdf/text/pdf/PdfString;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UnicodeBig"

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfString;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v6}, Lcom/itextpdf/text/pdf/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 2007
    .end local v1           #fn:Ljava/lang/String;
    .end local v2           #k:I
    .restart local v0       #desc:Lcom/itextpdf/text/pdf/PdfString;
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfString;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v6}, Lcom/itextpdf/text/pdf/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2019
    .end local v0           #desc:Lcom/itextpdf/text/pdf/PdfString;
    .restart local v1       #fn:Ljava/lang/String;
    .restart local v2       #k:I
    :cond_3
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->documentFileAttachment:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/PdfFileSpecification;->getReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2020
    return-void
.end method

.method addJavaScript(Lcom/itextpdf/text/pdf/PdfAction;)V
    .locals 5
    .parameter "js"

    .prologue
    .line 1974
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->JS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/text/pdf/PdfAction;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1975
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "only.javascript.actions.are.allowed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1977
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->documentLevelJS:Ljava/util/HashMap;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfDocument;->SIXTEEN_DIGITS:Ljava/text/DecimalFormat;

    iget v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->jsCounter:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->jsCounter:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v3, p1}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1982
    return-void

    .line 1979
    :catch_0
    move-exception v0

    .line 1980
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method addJavaScript(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfAction;)V
    .locals 4
    .parameter "name"
    .parameter "js"

    .prologue
    .line 1984
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->JS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p2, v1}, Lcom/itextpdf/text/pdf/PdfAction;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1985
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "only.javascript.actions.are.allowed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1987
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->documentLevelJS:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v2, p2}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1992
    return-void

    .line 1989
    :catch_0
    move-exception v0

    .line 1990
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method addOutline(Lcom/itextpdf/text/pdf/PdfOutline;Ljava/lang/String;)V
    .locals 1
    .parameter "outline"
    .parameter "name"

    .prologue
    .line 1757
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfOutline;->getPdfDestination()Lcom/itextpdf/text/pdf/PdfDestination;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/itextpdf/text/pdf/PdfDocument;->localDestination(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfDestination;)Z

    .line 1758
    return-void
.end method

.method addPTable(Lcom/itextpdf/text/pdf/PdfPTable;)V
    .locals 11
    .parameter "ptable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 2336
    new-instance v0, Lcom/itextpdf/text/pdf/ColumnText;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfWriter;->getDirectContent()Lcom/itextpdf/text/pdf/PdfContentByte;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/itextpdf/text/pdf/ColumnText;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 2339
    .local v0, ct:Lcom/itextpdf/text/pdf/ColumnText;
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfPTable;->getKeepTogether()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, p1, v9}, Lcom/itextpdf/text/pdf/PdfDocument;->fitsPage(Lcom/itextpdf/text/pdf/PdfPTable;F)Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    cmpl-float v4, v4, v9

    if-lez v4, :cond_0

    .line 2340
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->newPage()Z

    .line 2342
    :cond_0
    iget v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    cmpl-float v4, v4, v9

    if-nez v4, :cond_1

    .line 2343
    invoke-virtual {v0, v10}, Lcom/itextpdf/text/pdf/ColumnText;->setAdjustFirstLine(Z)V

    .line 2345
    :cond_1
    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ColumnText;->addElement(Lcom/itextpdf/text/Element;)V

    .line 2346
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfPTable;->isHeadersInEvent()Z

    move-result v1

    .line 2347
    .local v1, he:Z
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/itextpdf/text/pdf/PdfPTable;->setHeadersInEvent(Z)V

    .line 2348
    const/4 v2, 0x0

    .line 2350
    .local v2, loop:I
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentLeft()F

    move-result v4

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentBottom()F

    move-result v5

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentRight()F

    move-result v6

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentTop()F

    move-result v7

    iget v8, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    sub-float/2addr v7, v8

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/itextpdf/text/pdf/ColumnText;->setSimpleColumn(FFFF)V

    .line 2351
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ColumnText;->go()I

    move-result v3

    .line 2352
    .local v3, status:I
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_2

    .line 2353
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->text:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ColumnText;->getYLine()F

    move-result v5

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentTop()F

    move-result v6

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    add-float/2addr v5, v6

    invoke-virtual {v4, v9, v5}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveText(FF)V

    .line 2354
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentTop()F

    move-result v4

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ColumnText;->getYLine()F

    move-result v5

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    .line 2366
    invoke-virtual {p1, v1}, Lcom/itextpdf/text/pdf/PdfPTable;->setHeadersInEvent(Z)V

    .line 2367
    return-void

    .line 2357
    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentTop()F

    move-result v4

    iget v5, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    sub-float/2addr v4, v5

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ColumnText;->getYLine()F

    move-result v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_3

    .line 2358
    add-int/lit8 v2, v2, 0x1

    .line 2361
    :goto_1
    const/4 v4, 0x3

    if-ne v2, v4, :cond_4

    .line 2362
    new-instance v4, Lcom/itextpdf/text/DocumentException;

    const-string v5, "infinite.table.loop"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2360
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 2364
    :cond_4
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->newPage()Z

    goto :goto_0
.end method

.method protected addSpacing(FFLcom/itextpdf/text/Font;)V
    .locals 6
    .parameter "extraspace"
    .parameter "oldleading"
    .parameter "f"

    .prologue
    .line 1651
    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-nez v3, :cond_1

    .line 1667
    :cond_0
    :goto_0
    return-void

    .line 1652
    :cond_1
    iget-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageEmpty:Z

    if-nez v3, :cond_0

    .line 1653
    iget v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfLine;->height()F

    move-result v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->leading:F

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentTop()F

    move-result v4

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentBottom()F

    move-result v5

    sub-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_0

    .line 1654
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->leading:F

    .line 1655
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->carriageReturn()V

    .line 1656
    invoke-virtual {p3}, Lcom/itextpdf/text/Font;->isUnderlined()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p3}, Lcom/itextpdf/text/Font;->isStrikethru()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1657
    :cond_2
    new-instance v0, Lcom/itextpdf/text/Font;

    invoke-direct {v0, p3}, Lcom/itextpdf/text/Font;-><init>(Lcom/itextpdf/text/Font;)V

    .line 1658
    .end local p3
    .local v0, f:Lcom/itextpdf/text/Font;
    invoke-virtual {v0}, Lcom/itextpdf/text/Font;->getStyle()I

    move-result v2

    .line 1659
    .local v2, style:I
    and-int/lit8 v2, v2, -0x5

    .line 1660
    and-int/lit8 v2, v2, -0x9

    .line 1661
    invoke-virtual {v0, v2}, Lcom/itextpdf/text/Font;->setStyle(I)V

    move-object p3, v0

    .line 1663
    .end local v0           #f:Lcom/itextpdf/text/Font;
    .end local v2           #style:I
    .restart local p3
    :cond_3
    new-instance v1, Lcom/itextpdf/text/Chunk;

    const-string v3, " "

    invoke-direct {v1, v3, p3}, Lcom/itextpdf/text/Chunk;-><init>(Ljava/lang/String;Lcom/itextpdf/text/Font;)V

    .line 1664
    .local v1, space:Lcom/itextpdf/text/Chunk;
    invoke-virtual {v1, p0}, Lcom/itextpdf/text/Chunk;->process(Lcom/itextpdf/text/ElementListener;)Z

    .line 1665
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->carriageReturn()V

    .line 1666
    iput p2, p0, Lcom/itextpdf/text/pdf/PdfDocument;->leading:F

    goto :goto_0
.end method

.method addViewerPreference(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1854
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->viewerPreferences:Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->addViewerPreference(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1855
    return-void
.end method

.method public addWriter(Lcom/itextpdf/text/pdf/PdfWriter;)V
    .locals 3
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    if-nez v0, :cond_0

    .line 309
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    .line 310
    new-instance v0, Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;

    invoke-direct {v0, p1}, Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->annotationsImp:Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;

    .line 311
    return-void

    .line 313
    :cond_0
    new-instance v0, Lcom/itextpdf/text/DocumentException;

    const-string v1, "you.can.only.add.a.writer.to.a.pdfdocument.once"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method calculateOutlineCount()V
    .locals 1

    .prologue
    .line 1774
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->rootOutline:Lcom/itextpdf/text/pdf/PdfOutline;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfOutline;->getKids()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1777
    :goto_0
    return-void

    .line 1776
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->rootOutline:Lcom/itextpdf/text/pdf/PdfOutline;

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfDocument;->traverseOutlineCount(Lcom/itextpdf/text/pdf/PdfOutline;)V

    goto :goto_0
.end method

.method protected carriageReturn()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/high16 v4, -0x4080

    .line 1098
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->lines:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 1099
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->lines:Ljava/util/ArrayList;

    .line 1102
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfLine;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1104
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfLine;->height()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/itextpdf/text/pdf/PdfDocument;->leading:F

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentBottom()F

    move-result v3

    sub-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 1108
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    .line 1109
    .local v0, overflowLine:Lcom/itextpdf/text/pdf/PdfLine;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    .line 1110
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->newPage()Z

    .line 1111
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    .line 1113
    .end local v0           #overflowLine:Lcom/itextpdf/text/pdf/PdfLine;
    :cond_1
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfLine;->height()F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    .line 1114
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->lines:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1115
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageEmpty:Z

    .line 1117
    :cond_2
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->imageEnd:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_3

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    iget v2, p0, Lcom/itextpdf/text/pdf/PdfDocument;->imageEnd:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 1118
    iput v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->imageEnd:F

    .line 1119
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iput v5, v1, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->imageIndentRight:F

    .line 1120
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iput v5, v1, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->imageIndentLeft:F

    .line 1123
    :cond_3
    new-instance v1, Lcom/itextpdf/text/pdf/PdfLine;

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentLeft()F

    move-result v2

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentRight()F

    move-result v3

    iget v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->alignment:I

    iget v5, p0, Lcom/itextpdf/text/pdf/PdfDocument;->leading:F

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/itextpdf/text/pdf/PdfLine;-><init>(FFIF)V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    .line 1124
    return-void
.end method

.method public clearTextWrap()V
    .locals 3

    .prologue
    .line 2245
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->imageEnd:F

    iget v2, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    sub-float v0, v1, v2

    .line 2246
    .local v0, tmpHeight:F
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    if-eqz v1, :cond_0

    .line 2247
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfLine;->height()F

    move-result v1

    add-float/2addr v0, v1

    .line 2249
    :cond_0
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->imageEnd:F

    const/high16 v2, -0x4080

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 2250
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->carriageReturn()V

    .line 2251
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    .line 2253
    :cond_1
    return-void
.end method

.method public close()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 754
    iget-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->close:Z

    if-eqz v3, :cond_0

    .line 777
    :goto_0
    return-void

    .line 758
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->imageWait:Lcom/itextpdf/text/Image;

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 759
    .local v2, wasImage:Z
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->newPage()Z

    .line 760
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->imageWait:Lcom/itextpdf/text/Image;

    if-nez v3, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->newPage()Z

    .line 761
    :cond_3
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->annotationsImp:Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;->hasUnusedAnnotations()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 762
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "not.all.annotations.could.be.added.to.the.document.the.document.doesn.t.have.enough.pages"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    .end local v2           #wasImage:Z
    :catch_0
    move-exception v0

    .line 773
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/itextpdf/text/ExceptionConverter;->convertException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 763
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #wasImage:Z
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfWriter;->getPageEvent()Lcom/itextpdf/text/pdf/PdfPageEvent;

    move-result-object v1

    .line 764
    .local v1, pageEvent:Lcom/itextpdf/text/pdf/PdfPageEvent;
    if-eqz v1, :cond_5

    .line 765
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-interface {v1, v3, p0}, Lcom/itextpdf/text/pdf/PdfPageEvent;->onCloseDocument(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;)V

    .line 766
    :cond_5
    invoke-super {p0}, Lcom/itextpdf/text/Document;->close()V

    .line 768
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->localDestinations:Ljava/util/TreeMap;

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/PdfWriter;->addLocalDestinations(Ljava/util/TreeMap;)V

    .line 769
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->calculateOutlineCount()V

    .line 770
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->writeOutlines()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 776
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfWriter;->close()V

    goto :goto_0
.end method

.method protected ensureNewLine()V
    .locals 3

    .prologue
    .line 1149
    :try_start_0
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->lastElementType:I

    const/16 v2, 0xb

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->lastElementType:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 1151
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->newLine()V

    .line 1152
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->flushLines()F
    :try_end_0
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1157
    :cond_1
    return-void

    .line 1154
    :catch_0
    move-exception v0

    .line 1155
    .local v0, ex:Lcom/itextpdf/text/DocumentException;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method fitsPage(Lcom/itextpdf/text/pdf/PdfPTable;F)Z
    .locals 5
    .parameter "table"
    .parameter "margin"

    .prologue
    const/4 v3, 0x0

    .line 2403
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfPTable;->isLockedWidth()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2404
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentRight()F

    move-result v2

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentLeft()F

    move-result v4

    sub-float/2addr v2, v4

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfPTable;->getWidthPercentage()F

    move-result v4

    mul-float/2addr v2, v4

    const/high16 v4, 0x42c8

    div-float v1, v2, v4

    .line 2405
    .local v1, totalWidth:F
    invoke-virtual {p1, v1}, Lcom/itextpdf/text/pdf/PdfPTable;->setTotalWidth(F)V

    .line 2408
    .end local v1           #totalWidth:F
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->ensureNewLine()V

    .line 2409
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfPTable;->isSkipFirstHeader()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfPTable;->getTotalHeight()F

    move-result v2

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfPTable;->getHeaderHeight()F

    move-result v4

    sub-float/2addr v2, v4

    :goto_0
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 2410
    .local v0, spaceNeeded:Ljava/lang/Float;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget v2, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfPTable;->spacingBefore()F

    move-result v2

    :goto_1
    add-float/2addr v2, v4

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentTop()F

    move-result v3

    iget v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentBottom()F

    move-result v4

    sub-float/2addr v3, v4

    sub-float/2addr v3, p2

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_3

    const/4 v2, 0x1

    :goto_2
    return v2

    .line 2409
    .end local v0           #spaceNeeded:Ljava/lang/Float;
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfPTable;->getTotalHeight()F

    move-result v2

    goto :goto_0

    .restart local v0       #spaceNeeded:Ljava/lang/Float;
    :cond_2
    move v2, v3

    .line 2410
    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method

.method protected flushLines()F
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->lines:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1168
    const/4 v8, 0x0

    .line 1206
    :goto_0
    return v8

    .line 1171
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfLine;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1172
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->lines:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1173
    new-instance v0, Lcom/itextpdf/text/pdf/PdfLine;

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentLeft()F

    move-result v1

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentRight()F

    move-result v2

    iget v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->alignment:I

    iget v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->leading:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/text/pdf/PdfLine;-><init>(FFIF)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    .line 1177
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1178
    const/4 v8, 0x0

    goto :goto_0

    .line 1182
    :cond_2
    const/4 v0, 0x2

    new-array v7, v0, [Ljava/lang/Object;

    .line 1183
    .local v7, currentValues:[Ljava/lang/Object;
    const/4 v6, 0x0

    .line 1184
    .local v6, currentFont:Lcom/itextpdf/text/pdf/PdfFont;
    const/4 v8, 0x0

    .line 1185
    .local v8, displacement:F
    new-instance v11, Ljava/lang/Float;

    const/4 v0, 0x0

    invoke-direct {v11, v0}, Ljava/lang/Float;-><init>(F)V

    .line 1186
    .local v11, lastBaseFactor:Ljava/lang/Float;
    const/4 v0, 0x1

    aput-object v11, v7, v0

    .line 1188
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/text/pdf/PdfLine;

    .line 1189
    .local v10, l:Lcom/itextpdf/text/pdf/PdfLine;
    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/PdfLine;->indentLeft()F

    move-result v0

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentLeft()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v1, v1, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentLeft:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v1, v1, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->listIndentLeft:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v1, v1, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->sectionIndentLeft:F

    add-float v12, v0, v1

    .line 1190
    .local v12, moveTextX:F
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->text:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/PdfLine;->height()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v12, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveText(FF)V

    .line 1192
    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/PdfLine;->listSymbol()Lcom/itextpdf/text/Chunk;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1193
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->graphics:Lcom/itextpdf/text/pdf/PdfContentByte;

    const/4 v1, 0x0

    new-instance v2, Lcom/itextpdf/text/Phrase;

    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/PdfLine;->listSymbol()Lcom/itextpdf/text/Chunk;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/text/Phrase;-><init>(Lcom/itextpdf/text/Chunk;)V

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->text:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfContentByte;->getXTLM()F

    move-result v3

    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/PdfLine;->listIndent()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->text:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->getYTLM()F

    move-result v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/text/pdf/ColumnText;->showTextAligned(Lcom/itextpdf/text/pdf/PdfContentByte;ILcom/itextpdf/text/Phrase;FFF)V

    .line 1196
    :cond_3
    const/4 v0, 0x0

    aput-object v6, v7, v0

    .line 1198
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfDocument;->text:Lcom/itextpdf/text/pdf/PdfContentByte;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->graphics:Lcom/itextpdf/text/pdf/PdfContentByte;

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfWriter;->getSpaceCharRatio()F

    move-result v5

    move-object v0, p0

    move-object v1, v10

    move-object v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/text/pdf/PdfDocument;->writeLineToContent(Lcom/itextpdf/text/pdf/PdfLine;Lcom/itextpdf/text/pdf/PdfContentByte;Lcom/itextpdf/text/pdf/PdfContentByte;[Ljava/lang/Object;F)F

    .line 1200
    const/4 v0, 0x0

    aget-object v6, v7, v0

    .end local v6           #currentFont:Lcom/itextpdf/text/pdf/PdfFont;
    check-cast v6, Lcom/itextpdf/text/pdf/PdfFont;

    .line 1201
    .restart local v6       #currentFont:Lcom/itextpdf/text/pdf/PdfFont;
    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/PdfLine;->height()F

    move-result v0

    add-float/2addr v8, v0

    .line 1202
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->text:Lcom/itextpdf/text/pdf/PdfContentByte;

    neg-float v1, v12

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveText(FF)V

    goto :goto_1

    .line 1205
    .end local v10           #l:Lcom/itextpdf/text/pdf/PdfLine;
    .end local v12           #moveTextX:F
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->lines:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method getAcroForm()Lcom/itextpdf/text/pdf/PdfAcroForm;
    .locals 1

    .prologue
    .line 2075
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->annotationsImp:Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;->getAcroForm()Lcom/itextpdf/text/pdf/PdfAcroForm;

    move-result-object v0

    return-object v0
.end method

.method getBoxSize(Ljava/lang/String;)Lcom/itextpdf/text/Rectangle;
    .locals 2
    .parameter "boxName"

    .prologue
    .line 2157
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->thisBoxSize:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfRectangle;

    .line 2158
    .local v0, r:Lcom/itextpdf/text/pdf/PdfRectangle;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfRectangle;->getRectangle()Lcom/itextpdf/text/Rectangle;

    move-result-object v1

    .line 2159
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getCatalog(Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfDocument$PdfCatalog;
    .locals 7
    .parameter "pages"

    .prologue
    .line 1692
    new-instance v1, Lcom/itextpdf/text/pdf/PdfDocument$PdfCatalog;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-direct {v1, p1, v3}, Lcom/itextpdf/text/pdf/PdfDocument$PdfCatalog;-><init>(Lcom/itextpdf/text/pdf/PdfIndirectReference;Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 1695
    .local v1, catalog:Lcom/itextpdf/text/pdf/PdfDocument$PdfCatalog;
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->rootOutline:Lcom/itextpdf/text/pdf/PdfOutline;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfOutline;->getKids()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1696
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->PAGEMODE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->USEOUTLINES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v3, v4}, Lcom/itextpdf/text/pdf/PdfDocument$PdfCatalog;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1697
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->OUTLINES:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->rootOutline:Lcom/itextpdf/text/pdf/PdfOutline;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfOutline;->indirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/itextpdf/text/pdf/PdfDocument$PdfCatalog;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1701
    :cond_0
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfWriter;->getPdfVersion()Lcom/itextpdf/text/pdf/internal/PdfVersionImp;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/itextpdf/text/pdf/internal/PdfVersionImp;->addToCatalog(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 1704
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->viewerPreferences:Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    invoke-virtual {v3, v1}, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->addToCatalog(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 1707
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageLabels:Lcom/itextpdf/text/pdf/PdfPageLabels;

    if-eqz v3, :cond_1

    .line 1708
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->PAGELABELS:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageLabels:Lcom/itextpdf/text/pdf/PdfPageLabels;

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/PdfPageLabels;->getDictionary(Lcom/itextpdf/text/pdf/PdfWriter;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/itextpdf/text/pdf/PdfDocument$PdfCatalog;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1712
    :cond_1
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->localDestinations:Ljava/util/TreeMap;

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->getDocumentLevelJS()Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfDocument;->documentFileAttachment:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/itextpdf/text/pdf/PdfDocument$PdfCatalog;->addNames(Ljava/util/TreeMap;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 1715
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->openActionName:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 1716
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->openActionName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/itextpdf/text/pdf/PdfDocument;->getLocalGotoAction(Ljava/lang/String;)Lcom/itextpdf/text/pdf/PdfAction;

    move-result-object v0

    .line 1717
    .local v0, action:Lcom/itextpdf/text/pdf/PdfAction;
    invoke-virtual {v1, v0}, Lcom/itextpdf/text/pdf/PdfDocument$PdfCatalog;->setOpenAction(Lcom/itextpdf/text/pdf/PdfAction;)V

    .line 1721
    .end local v0           #action:Lcom/itextpdf/text/pdf/PdfAction;
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->additionalActions:Lcom/itextpdf/text/pdf/PdfDictionary;

    if-eqz v3, :cond_3

    .line 1722
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->additionalActions:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/pdf/PdfDocument$PdfCatalog;->setAdditionalActions(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 1726
    :cond_3
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->collection:Lcom/itextpdf/text/pdf/collection/PdfCollection;

    if-eqz v3, :cond_4

    .line 1727
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->COLLECTION:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->collection:Lcom/itextpdf/text/pdf/collection/PdfCollection;

    invoke-virtual {v1, v3, v4}, Lcom/itextpdf/text/pdf/PdfDocument$PdfCatalog;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1731
    :cond_4
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->annotationsImp:Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;->hasValidAcroForm()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1733
    :try_start_0
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->ACROFORM:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfDocument;->annotationsImp:Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;->getAcroForm()Lcom/itextpdf/text/pdf/PdfAcroForm;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/itextpdf/text/pdf/PdfDocument$PdfCatalog;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1740
    :cond_5
    return-object v1

    .line 1719
    :cond_6
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->openActionAction:Lcom/itextpdf/text/pdf/PdfAction;

    if-eqz v3, :cond_2

    .line 1720
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->openActionAction:Lcom/itextpdf/text/pdf/PdfAction;

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/pdf/PdfDocument$PdfCatalog;->setOpenAction(Lcom/itextpdf/text/pdf/PdfAction;)V

    goto :goto_0

    .line 1735
    :catch_0
    move-exception v2

    .line 1736
    .local v2, e:Ljava/io/IOException;
    new-instance v3, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v3, v2}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method getDocumentFileAttachment()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2023
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->documentFileAttachment:Ljava/util/HashMap;

    return-object v0
.end method

.method getDocumentLevelJS()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1995
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->documentLevelJS:Ljava/util/HashMap;

    return-object v0
.end method

.method getInfo()Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;
    .locals 1

    .prologue
    .line 1681
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->info:Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;

    return-object v0
.end method

.method public getLeading()F
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->leading:F

    return v0
.end method

.method getLocalGotoAction(Ljava/lang/String;)Lcom/itextpdf/text/pdf/PdfAction;
    .locals 3
    .parameter "name"

    .prologue
    .line 1928
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfDocument;->localDestinations:Ljava/util/TreeMap;

    invoke-virtual {v2, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfDocument$Destination;

    .line 1929
    .local v1, dest:Lcom/itextpdf/text/pdf/PdfDocument$Destination;
    if-nez v1, :cond_0

    .line 1930
    new-instance v1, Lcom/itextpdf/text/pdf/PdfDocument$Destination;

    .end local v1           #dest:Lcom/itextpdf/text/pdf/PdfDocument$Destination;
    invoke-direct {v1, p0}, Lcom/itextpdf/text/pdf/PdfDocument$Destination;-><init>(Lcom/itextpdf/text/pdf/PdfDocument;)V

    .line 1931
    .restart local v1       #dest:Lcom/itextpdf/text/pdf/PdfDocument$Destination;
    :cond_0
    iget-object v2, v1, Lcom/itextpdf/text/pdf/PdfDocument$Destination;->action:Lcom/itextpdf/text/pdf/PdfAction;

    if-nez v2, :cond_2

    .line 1932
    iget-object v2, v1, Lcom/itextpdf/text/pdf/PdfDocument$Destination;->reference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    if-nez v2, :cond_1

    .line 1933
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfWriter;->getPdfIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v2

    iput-object v2, v1, Lcom/itextpdf/text/pdf/PdfDocument$Destination;->reference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 1935
    :cond_1
    new-instance v0, Lcom/itextpdf/text/pdf/PdfAction;

    iget-object v2, v1, Lcom/itextpdf/text/pdf/PdfDocument$Destination;->reference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    invoke-direct {v0, v2}, Lcom/itextpdf/text/pdf/PdfAction;-><init>(Lcom/itextpdf/text/pdf/PdfIndirectReference;)V

    .line 1936
    .local v0, action:Lcom/itextpdf/text/pdf/PdfAction;
    iput-object v0, v1, Lcom/itextpdf/text/pdf/PdfDocument$Destination;->action:Lcom/itextpdf/text/pdf/PdfAction;

    .line 1937
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfDocument;->localDestinations:Ljava/util/TreeMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1942
    :goto_0
    return-object v0

    .line 1940
    .end local v0           #action:Lcom/itextpdf/text/pdf/PdfAction;
    :cond_2
    iget-object v0, v1, Lcom/itextpdf/text/pdf/PdfDocument$Destination;->action:Lcom/itextpdf/text/pdf/PdfAction;

    .restart local v0       #action:Lcom/itextpdf/text/pdf/PdfAction;
    goto :goto_0
.end method

.method getMarkPoint()I
    .locals 1

    .prologue
    .line 2096
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->markPoint:I

    return v0
.end method

.method getPageResources()Lcom/itextpdf/text/pdf/PageResources;
    .locals 1

    .prologue
    .line 2214
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageResources:Lcom/itextpdf/text/pdf/PageResources;

    return-object v0
.end method

.method public getRootOutline()Lcom/itextpdf/text/pdf/PdfOutline;
    .locals 1

    .prologue
    .line 1766
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->rootOutline:Lcom/itextpdf/text/pdf/PdfOutline;

    return-object v0
.end method

.method public getVerticalPosition(Z)F
    .locals 2
    .parameter "ensureNewLine"

    .prologue
    .line 1135
    if-eqz p1, :cond_0

    .line 1136
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->ensureNewLine()V

    .line 1138
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->top()F

    move-result v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v1, v1, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentTop:F

    sub-float/2addr v0, v1

    return v0
.end method

.method incMarkPoint()V
    .locals 1

    .prologue
    .line 2100
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->markPoint:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->markPoint:I

    .line 2101
    return-void
.end method

.method indentBottom()F
    .locals 1

    .prologue
    .line 1643
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v0, v0, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentBottom:F

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfDocument;->bottom(F)F

    move-result v0

    return v0
.end method

.method protected indentLeft()F
    .locals 2

    .prologue
    .line 1613
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v0, v0, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentLeft:F

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v1, v1, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->listIndentLeft:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v1, v1, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->imageIndentLeft:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v1, v1, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->sectionIndentLeft:F

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfDocument;->left(F)F

    move-result v0

    return v0
.end method

.method protected indentRight()F
    .locals 2

    .prologue
    .line 1623
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v0, v0, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentRight:F

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v1, v1, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->sectionIndentRight:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v1, v1, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->imageIndentRight:F

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfDocument;->right(F)F

    move-result v0

    return v0
.end method

.method protected indentTop()F
    .locals 1

    .prologue
    .line 1633
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v0, v0, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentTop:F

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfDocument;->top(F)F

    move-result v0

    return v0
.end method

.method protected initPage()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1020
    iget v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageN:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageN:I

    .line 1023
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->annotationsImp:Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;->resetAnnotations()V

    .line 1024
    new-instance v4, Lcom/itextpdf/text/pdf/PageResources;

    invoke-direct {v4}, Lcom/itextpdf/text/pdf/PageResources;-><init>()V

    iput-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageResources:Lcom/itextpdf/text/pdf/PageResources;

    .line 1026
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfWriter;->resetContent()V

    .line 1027
    new-instance v4, Lcom/itextpdf/text/pdf/PdfContentByte;

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-direct {v4, v5}, Lcom/itextpdf/text/pdf/PdfContentByte;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    iput-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->graphics:Lcom/itextpdf/text/pdf/PdfContentByte;

    .line 1029
    iput v7, p0, Lcom/itextpdf/text/pdf/PdfDocument;->markPoint:I

    .line 1030
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->setNewPageSizeAndMargins()V

    .line 1031
    const/high16 v4, -0x4080

    iput v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->imageEnd:F

    .line 1032
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iput v6, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->imageIndentRight:F

    .line 1033
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iput v6, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->imageIndentLeft:F

    .line 1034
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iput v6, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentBottom:F

    .line 1035
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iput v6, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentTop:F

    .line 1036
    iput v6, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    .line 1039
    new-instance v4, Ljava/util/HashMap;

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfDocument;->boxSize:Ljava/util/HashMap;

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->thisBoxSize:Ljava/util/HashMap;

    .line 1040
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageSize:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v4}, Lcom/itextpdf/text/Rectangle;->getBackgroundColor()Lcom/itextpdf/text/BaseColor;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageSize:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v4}, Lcom/itextpdf/text/Rectangle;->hasBorders()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageSize:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v4}, Lcom/itextpdf/text/Rectangle;->getBorderColor()Lcom/itextpdf/text/BaseColor;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1043
    :cond_0
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageSize:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {p0, v4}, Lcom/itextpdf/text/pdf/PdfDocument;->add(Lcom/itextpdf/text/Element;)Z

    .line 1046
    :cond_1
    iget v2, p0, Lcom/itextpdf/text/pdf/PdfDocument;->leading:F

    .line 1047
    .local v2, oldleading:F
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->alignment:I

    .line 1048
    .local v1, oldAlignment:I
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageEmpty:Z

    .line 1051
    :try_start_0
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->imageWait:Lcom/itextpdf/text/Image;

    if-eqz v4, :cond_2

    .line 1052
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->imageWait:Lcom/itextpdf/text/Image;

    invoke-virtual {p0, v4}, Lcom/itextpdf/text/pdf/PdfDocument;->add(Lcom/itextpdf/text/Image;)V

    .line 1053
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->imageWait:Lcom/itextpdf/text/Image;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1059
    :cond_2
    iput v2, p0, Lcom/itextpdf/text/pdf/PdfDocument;->leading:F

    .line 1060
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->alignment:I

    .line 1061
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->carriageReturn()V

    .line 1063
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfWriter;->getPageEvent()Lcom/itextpdf/text/pdf/PdfPageEvent;

    move-result-object v3

    .line 1064
    .local v3, pageEvent:Lcom/itextpdf/text/pdf/PdfPageEvent;
    if-eqz v3, :cond_4

    .line 1065
    iget-boolean v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->firstPageEvent:Z

    if-eqz v4, :cond_3

    .line 1066
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-interface {v3, v4, p0}, Lcom/itextpdf/text/pdf/PdfPageEvent;->onOpenDocument(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;)V

    .line 1068
    :cond_3
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-interface {v3, v4, p0}, Lcom/itextpdf/text/pdf/PdfPageEvent;->onStartPage(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;)V

    .line 1070
    :cond_4
    iput-boolean v7, p0, Lcom/itextpdf/text/pdf/PdfDocument;->firstPageEvent:Z

    .line 1071
    return-void

    .line 1056
    .end local v3           #pageEvent:Lcom/itextpdf/text/pdf/PdfPageEvent;
    :catch_0
    move-exception v0

    .line 1057
    .local v0, e:Ljava/lang/Exception;
    new-instance v4, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v4, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method isPageEmpty()Z
    .locals 1

    .prologue
    .line 2172
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfWriter;->getDirectContent()Lcom/itextpdf/text/pdf/PdfContentByte;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfWriter;->getDirectContentUnder()Lcom/itextpdf/text/pdf/PdfContentByte;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageEmpty:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfWriter;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isStrictImageSequence()Z
    .locals 1

    .prologue
    .line 2227
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->strictImageSequence:Z

    return v0
.end method

.method localDestination(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfDestination;)Z
    .locals 2
    .parameter "name"
    .parameter "destination"

    .prologue
    .line 1955
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->localDestinations:Ljava/util/TreeMap;

    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfDocument$Destination;

    .line 1956
    .local v0, dest:Lcom/itextpdf/text/pdf/PdfDocument$Destination;
    if-nez v0, :cond_0

    .line 1957
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDocument$Destination;

    .end local v0           #dest:Lcom/itextpdf/text/pdf/PdfDocument$Destination;
    invoke-direct {v0, p0}, Lcom/itextpdf/text/pdf/PdfDocument$Destination;-><init>(Lcom/itextpdf/text/pdf/PdfDocument;)V

    .line 1958
    .restart local v0       #dest:Lcom/itextpdf/text/pdf/PdfDocument$Destination;
    :cond_0
    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfDocument$Destination;->destination:Lcom/itextpdf/text/pdf/PdfDestination;

    if-eqz v1, :cond_1

    .line 1959
    const/4 v1, 0x0

    .line 1964
    :goto_0
    return v1

    .line 1960
    :cond_1
    iput-object p2, v0, Lcom/itextpdf/text/pdf/PdfDocument$Destination;->destination:Lcom/itextpdf/text/pdf/PdfDestination;

    .line 1961
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->localDestinations:Ljava/util/TreeMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1962
    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/PdfDestination;->hasPage()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1963
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfWriter;->getCurrentPage()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/itextpdf/text/pdf/PdfDestination;->addPage(Lcom/itextpdf/text/pdf/PdfIndirectReference;)Z

    .line 1964
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method localGoto(Ljava/lang/String;FFFF)V
    .locals 8
    .parameter "name"
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    .line 1880
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfDocument;->getLocalGotoAction(Ljava/lang/String;)Lcom/itextpdf/text/pdf/PdfAction;

    move-result-object v6

    .line 1881
    .local v6, action:Lcom/itextpdf/text/pdf/PdfAction;
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfDocument;->annotationsImp:Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;

    new-instance v0, Lcom/itextpdf/text/pdf/PdfAnnotation;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfAnnotation;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;FFFFLcom/itextpdf/text/pdf/PdfAction;)V

    invoke-virtual {v7, v0}, Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;->addPlainAnnotation(Lcom/itextpdf/text/pdf/PdfAnnotation;)V

    .line 1882
    return-void
.end method

.method protected newLine()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 1083
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->lastElementType:I

    .line 1084
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->carriageReturn()V

    .line 1085
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->lines:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->lines:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1087
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfLine;->height()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    .line 1089
    :cond_0
    new-instance v0, Lcom/itextpdf/text/pdf/PdfLine;

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentLeft()F

    move-result v1

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentRight()F

    move-result v2

    iget v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->alignment:I

    iget v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->leading:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/text/pdf/PdfLine;-><init>(FFIF)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    .line 1090
    return-void
.end method

.method public newPage()Z
    .locals 15

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 808
    const/4 v1, -0x1

    iput v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->lastElementType:I

    .line 809
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->isPageEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 810
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->setNewPageSizeAndMargins()V

    .line 899
    :goto_0
    return v0

    .line 813
    :cond_0
    iget-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->open:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->close:Z

    if-eqz v1, :cond_2

    .line 814
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "the.document.is.not.open"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 816
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfWriter;->getPageEvent()Lcom/itextpdf/text/pdf/PdfPageEvent;

    move-result-object v11

    .line 817
    .local v11, pageEvent:Lcom/itextpdf/text/pdf/PdfPageEvent;
    if-eqz v11, :cond_3

    .line 818
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-interface {v11, v0, p0}, Lcom/itextpdf/text/pdf/PdfPageEvent;->onEndPage(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;)V

    .line 821
    :cond_3
    invoke-super {p0}, Lcom/itextpdf/text/Document;->newPage()Z

    .line 824
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iput v2, v0, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->imageIndentLeft:F

    .line 825
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iput v2, v0, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->imageIndentRight:F

    .line 828
    :try_start_0
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->flushFloatingElements()V

    .line 830
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->flushLines()F

    .line 835
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageSize:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v0}, Lcom/itextpdf/text/Rectangle;->getRotation()I

    move-result v13

    .line 838
    .local v13, rotation:I
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfWriter;->isPdfX()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 839
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->thisBoxSize:Ljava/util/HashMap;

    const-string v1, "art"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->thisBoxSize:Ljava/util/HashMap;

    const-string v1, "trim"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 840
    new-instance v0, Lcom/itextpdf/text/pdf/PdfXConformanceException;

    const-string v1, "only.one.of.artbox.or.trimbox.can.exist.in.the.page"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfXConformanceException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 892
    .end local v13           #rotation:I
    :catch_0
    move-exception v8

    .line 894
    .local v8, de:Lcom/itextpdf/text/DocumentException;
    new-instance v0, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v0, v8}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 841
    .end local v8           #de:Lcom/itextpdf/text/DocumentException;
    .restart local v13       #rotation:I
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->thisBoxSize:Ljava/util/HashMap;

    const-string v1, "art"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->thisBoxSize:Ljava/util/HashMap;

    const-string v1, "trim"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 842
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->thisBoxSize:Ljava/util/HashMap;

    const-string v1, "crop"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 843
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->thisBoxSize:Ljava/util/HashMap;

    const-string v1, "trim"

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfDocument;->thisBoxSize:Ljava/util/HashMap;

    const-string v3, "crop"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageResources:Lcom/itextpdf/text/pdf/PageResources;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfWriter;->getDefaultColorspace()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PageResources;->addDefaultColorDiff(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 851
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfWriter;->isRgbTransparencyBlending()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 852
    new-instance v7, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v7}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 853
    .local v7, dcs:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->CS:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->DEVICERGB:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 854
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageResources:Lcom/itextpdf/text/pdf/PageResources;

    invoke-virtual {v0, v7}, Lcom/itextpdf/text/pdf/PageResources;->addDefaultColorDiff(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 856
    .end local v7           #dcs:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_6
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageResources:Lcom/itextpdf/text/pdf/PageResources;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PageResources;->getResources()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v12

    .line 860
    .local v12, resources:Lcom/itextpdf/text/pdf/PdfDictionary;
    new-instance v10, Lcom/itextpdf/text/pdf/PdfPage;

    new-instance v0, Lcom/itextpdf/text/pdf/PdfRectangle;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageSize:Lcom/itextpdf/text/Rectangle;

    invoke-direct {v0, v1, v13}, Lcom/itextpdf/text/pdf/PdfRectangle;-><init>(Lcom/itextpdf/text/Rectangle;I)V

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->thisBoxSize:Ljava/util/HashMap;

    invoke-direct {v10, v0, v1, v12, v13}, Lcom/itextpdf/text/pdf/PdfPage;-><init>(Lcom/itextpdf/text/pdf/PdfRectangle;Ljava/util/HashMap;Lcom/itextpdf/text/pdf/PdfDictionary;I)V

    .line 861
    .local v10, page:Lcom/itextpdf/text/pdf/PdfPage;
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->TABS:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfWriter;->getTabs()Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lcom/itextpdf/text/pdf/PdfPage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 862
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfWriter;->getPageDictEntries()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/itextpdf/text/pdf/PdfPage;->putAll(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 863
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfWriter;->resetPageDictEntries()V

    .line 868
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageAA:Lcom/itextpdf/text/pdf/PdfDictionary;

    if-eqz v0, :cond_7

    .line 869
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->AA:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageAA:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lcom/itextpdf/text/pdf/PdfPage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 870
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageAA:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 874
    :cond_7
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->annotationsImp:Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;->hasUnusedAnnotations()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 875
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->annotationsImp:Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageSize:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;->rotateAnnotations(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v6

    .line 876
    .local v6, array:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v0

    if-eqz v0, :cond_8

    .line 877
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v10, v0, v6}, Lcom/itextpdf/text/pdf/PdfPage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 881
    .end local v6           #array:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_8
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfWriter;->isTagged()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 882
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->STRUCTPARENTS:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfNumber;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfWriter;->getCurrentPageNumber()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v10, v0, v1}, Lcom/itextpdf/text/pdf/PdfPage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 884
    :cond_9
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->text:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->size()I

    move-result v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->textEmptySize:I

    if-le v0, v1, :cond_b

    .line 885
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->text:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->endText()V

    .line 888
    :goto_2
    iget-object v14, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    new-instance v0, Lcom/itextpdf/text/pdf/PdfContents;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfWriter;->getDirectContentUnder()Lcom/itextpdf/text/pdf/PdfContentByte;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfDocument;->graphics:Lcom/itextpdf/text/pdf/PdfContentByte;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->text:Lcom/itextpdf/text/pdf/PdfContentByte;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfWriter;->getDirectContent()Lcom/itextpdf/text/pdf/PdfContentByte;

    move-result-object v4

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageSize:Lcom/itextpdf/text/Rectangle;

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/text/pdf/PdfContents;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;Lcom/itextpdf/text/pdf/PdfContentByte;Lcom/itextpdf/text/pdf/PdfContentByte;Lcom/itextpdf/text/pdf/PdfContentByte;Lcom/itextpdf/text/Rectangle;)V

    invoke-virtual {v14, v10, v0}, Lcom/itextpdf/text/pdf/PdfWriter;->add(Lcom/itextpdf/text/pdf/PdfPage;Lcom/itextpdf/text/pdf/PdfContents;)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 890
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->initPage()V

    .line 899
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 845
    .end local v10           #page:Lcom/itextpdf/text/pdf/PdfPage;
    .end local v12           #resources:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_a
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->thisBoxSize:Ljava/util/HashMap;

    const-string v1, "trim"

    new-instance v2, Lcom/itextpdf/text/pdf/PdfRectangle;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageSize:Lcom/itextpdf/text/Rectangle;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageSize:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v4}, Lcom/itextpdf/text/Rectangle;->getRotation()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/text/pdf/PdfRectangle;-><init>(Lcom/itextpdf/text/Rectangle;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 896
    .end local v13           #rotation:I
    :catch_1
    move-exception v9

    .line 897
    .local v9, ioe:Ljava/io/IOException;
    new-instance v0, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v0, v9}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 887
    .end local v9           #ioe:Ljava/io/IOException;
    .restart local v10       #page:Lcom/itextpdf/text/pdf/PdfPage;
    .restart local v12       #resources:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v13       #rotation:I
    :cond_b
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->text:Lcom/itextpdf/text/pdf/PdfContentByte;
    :try_end_2
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2
.end method

.method public open()V
    .locals 3

    .prologue
    .line 730
    iget-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->open:Z

    if-nez v1, :cond_0

    .line 731
    invoke-super {p0}, Lcom/itextpdf/text/Document;->open()V

    .line 732
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfWriter;->open()V

    .line 733
    new-instance v1, Lcom/itextpdf/text/pdf/PdfOutline;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfOutline;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->rootOutline:Lcom/itextpdf/text/pdf/PdfOutline;

    .line 734
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->rootOutline:Lcom/itextpdf/text/pdf/PdfOutline;

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentOutline:Lcom/itextpdf/text/pdf/PdfOutline;

    .line 737
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->initPage()V
    :try_end_0
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 742
    return-void

    .line 739
    :catch_0
    move-exception v0

    .line 740
    .local v0, de:Lcom/itextpdf/text/DocumentException;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method outlineTree(Lcom/itextpdf/text/pdf/PdfOutline;)V
    .locals 7
    .parameter "outline"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1820
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfWriter;->getPdfIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/itextpdf/text/pdf/PdfOutline;->setIndirectReference(Lcom/itextpdf/text/pdf/PdfIndirectReference;)V

    .line 1821
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfOutline;->parent()Lcom/itextpdf/text/pdf/PdfOutline;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1822
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->PARENT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfOutline;->parent()Lcom/itextpdf/text/pdf/PdfOutline;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfOutline;->indirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/itextpdf/text/pdf/PdfOutline;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1823
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfOutline;->getKids()Ljava/util/ArrayList;

    move-result-object v2

    .line 1824
    .local v2, kids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfOutline;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1825
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 1826
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfOutline;

    invoke-virtual {p0, v4}, Lcom/itextpdf/text/pdf/PdfDocument;->outlineTree(Lcom/itextpdf/text/pdf/PdfOutline;)V

    .line 1825
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1827
    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_4

    .line 1828
    if-lez v0, :cond_2

    .line 1829
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfOutline;

    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->PREV:Lcom/itextpdf/text/pdf/PdfName;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/text/pdf/PdfOutline;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfOutline;->indirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lcom/itextpdf/text/pdf/PdfOutline;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1830
    :cond_2
    add-int/lit8 v4, v3, -0x1

    if-ge v0, v4, :cond_3

    .line 1831
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfOutline;

    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->NEXT:Lcom/itextpdf/text/pdf/PdfName;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/text/pdf/PdfOutline;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfOutline;->indirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lcom/itextpdf/text/pdf/PdfOutline;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1827
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1833
    :cond_4
    if-lez v3, :cond_5

    .line 1834
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->FIRST:Lcom/itextpdf/text/pdf/PdfName;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfOutline;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfOutline;->indirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v4

    invoke-virtual {p1, v5, v4}, Lcom/itextpdf/text/pdf/PdfOutline;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1835
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->LAST:Lcom/itextpdf/text/pdf/PdfName;

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfOutline;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfOutline;->indirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v4

    invoke-virtual {p1, v5, v4}, Lcom/itextpdf/text/pdf/PdfOutline;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1837
    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_6

    .line 1838
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfOutline;

    .line 1839
    .local v1, kid:Lcom/itextpdf/text/pdf/PdfOutline;
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfOutline;->indirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    .line 1837
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1841
    .end local v1           #kid:Lcom/itextpdf/text/pdf/PdfOutline;
    :cond_6
    return-void
.end method

.method remoteGoto(Ljava/lang/String;IFFFF)V
    .locals 7
    .parameter "filename"
    .parameter "page"
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    .line 1907
    new-instance v0, Lcom/itextpdf/text/pdf/PdfAnnotation;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    new-instance v6, Lcom/itextpdf/text/pdf/PdfAction;

    invoke-direct {v6, p1, p2}, Lcom/itextpdf/text/pdf/PdfAction;-><init>(Ljava/lang/String;I)V

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfAnnotation;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;FFFFLcom/itextpdf/text/pdf/PdfAction;)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfDocument;->addAnnotation(Lcom/itextpdf/text/pdf/PdfAnnotation;)V

    .line 1908
    return-void
.end method

.method remoteGoto(Ljava/lang/String;Ljava/lang/String;FFFF)V
    .locals 8
    .parameter "filename"
    .parameter "name"
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    .line 1894
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfDocument;->annotationsImp:Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;

    new-instance v0, Lcom/itextpdf/text/pdf/PdfAnnotation;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    new-instance v6, Lcom/itextpdf/text/pdf/PdfAction;

    invoke-direct {v6, p1, p2}, Lcom/itextpdf/text/pdf/PdfAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfAnnotation;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;FFFFLcom/itextpdf/text/pdf/PdfAction;)V

    invoke-virtual {v7, v0}, Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;->addPlainAnnotation(Lcom/itextpdf/text/pdf/PdfAnnotation;)V

    .line 1895
    return-void
.end method

.method public resetPageCount()V
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfWriter;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1005
    :goto_0
    return-void

    .line 1004
    :cond_0
    invoke-super {p0}, Lcom/itextpdf/text/Document;->resetPageCount()V

    goto :goto_0
.end method

.method setAction(Lcom/itextpdf/text/pdf/PdfAction;FFFF)V
    .locals 7
    .parameter "action"
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    .line 1918
    new-instance v0, Lcom/itextpdf/text/pdf/PdfAnnotation;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfAnnotation;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;FFFFLcom/itextpdf/text/pdf/PdfAction;)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfDocument;->addAnnotation(Lcom/itextpdf/text/pdf/PdfAnnotation;)V

    .line 1919
    return-void
.end method

.method setBoxSize(Ljava/lang/String;Lcom/itextpdf/text/Rectangle;)V
    .locals 2
    .parameter "boxName"
    .parameter "size"

    .prologue
    .line 2120
    if-nez p2, :cond_0

    .line 2121
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->boxSize:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2124
    :goto_0
    return-void

    .line 2123
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->boxSize:Ljava/util/HashMap;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfRectangle;

    invoke-direct {v1, p2}, Lcom/itextpdf/text/pdf/PdfRectangle;-><init>(Lcom/itextpdf/text/Rectangle;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setCollection(Lcom/itextpdf/text/pdf/collection/PdfCollection;)V
    .locals 0
    .parameter "collection"

    .prologue
    .line 2063
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->collection:Lcom/itextpdf/text/pdf/collection/PdfCollection;

    .line 2064
    return-void
.end method

.method setCropBoxSize(Lcom/itextpdf/text/Rectangle;)V
    .locals 1
    .parameter "crop"

    .prologue
    .line 2116
    const-string v0, "crop"

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/PdfDocument;->setBoxSize(Ljava/lang/String;Lcom/itextpdf/text/Rectangle;)V

    .line 2117
    return-void
.end method

.method setDuration(I)V
    .locals 3
    .parameter "seconds"

    .prologue
    .line 2182
    if-lez p1, :cond_0

    .line 2183
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->DUR:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v2, p1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfWriter;->addPageDictEntry(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 2184
    :cond_0
    return-void
.end method

.method setLeading(F)V
    .locals 0
    .parameter "leading"

    .prologue
    .line 344
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->leading:F

    .line 345
    return-void
.end method

.method public setMarginMirroring(Z)Z
    .locals 1
    .parameter "MarginMirroring"

    .prologue
    .line 961
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfWriter;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 962
    const/4 v0, 0x0

    .line 964
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/itextpdf/text/Document;->setMarginMirroring(Z)Z

    move-result v0

    goto :goto_0
.end method

.method public setMarginMirroringTopBottom(Z)Z
    .locals 1
    .parameter "MarginMirroringTopBottom"

    .prologue
    .line 973
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfWriter;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 974
    const/4 v0, 0x0

    .line 976
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/itextpdf/text/Document;->setMarginMirroringTopBottom(Z)Z

    move-result v0

    goto :goto_0
.end method

.method public setMargins(FFFF)Z
    .locals 1
    .parameter "marginLeft"
    .parameter "marginRight"
    .parameter "marginTop"
    .parameter "marginBottom"

    .prologue
    .line 944
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfWriter;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 945
    const/4 v0, 0x0

    .line 951
    :goto_0
    return v0

    .line 947
    :cond_0
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->nextMarginLeft:F

    .line 948
    iput p2, p0, Lcom/itextpdf/text/pdf/PdfDocument;->nextMarginRight:F

    .line 949
    iput p3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->nextMarginTop:F

    .line 950
    iput p4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->nextMarginBottom:F

    .line 951
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected setNewPageSizeAndMargins()V
    .locals 3

    .prologue
    .line 2127
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->nextPageSize:Lcom/itextpdf/text/Rectangle;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageSize:Lcom/itextpdf/text/Rectangle;

    .line 2128
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->marginMirroring:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->getPageNumber()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2129
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->nextMarginLeft:F

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->marginRight:F

    .line 2130
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->nextMarginRight:F

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->marginLeft:F

    .line 2136
    :goto_0
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->marginMirroringTopBottom:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->getPageNumber()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 2137
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->nextMarginBottom:F

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->marginTop:F

    .line 2138
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->nextMarginTop:F

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->marginBottom:F

    .line 2144
    :goto_1
    new-instance v0, Lcom/itextpdf/text/pdf/PdfContentByte;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->text:Lcom/itextpdf/text/pdf/PdfContentByte;

    .line 2145
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->text:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->reset()V

    .line 2146
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->text:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->beginText()V

    .line 2147
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->text:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->size()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->textEmptySize:I

    .line 2149
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->text:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->left()F

    move-result v1

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->top()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveText(FF)V

    .line 2150
    return-void

    .line 2133
    :cond_0
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->nextMarginLeft:F

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->marginLeft:F

    .line 2134
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->nextMarginRight:F

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->marginRight:F

    goto :goto_0

    .line 2141
    :cond_1
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->nextMarginTop:F

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->marginTop:F

    .line 2142
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->nextMarginBottom:F

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->marginBottom:F

    goto :goto_1
.end method

.method setOpenAction(Lcom/itextpdf/text/pdf/PdfAction;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 2037
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->openActionAction:Lcom/itextpdf/text/pdf/PdfAction;

    .line 2038
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->openActionName:Ljava/lang/String;

    .line 2039
    return-void
.end method

.method setOpenAction(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 2031
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->openActionName:Ljava/lang/String;

    .line 2032
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->openActionAction:Lcom/itextpdf/text/pdf/PdfAction;

    .line 2033
    return-void
.end method

.method setPageAction(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfAction;)V
    .locals 1
    .parameter "actionType"
    .parameter "action"

    .prologue
    .line 2196
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageAA:Lcom/itextpdf/text/pdf/PdfDictionary;

    if-nez v0, :cond_0

    .line 2197
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageAA:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 2199
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageAA:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 2200
    return-void
.end method

.method public setPageCount(I)V
    .locals 1
    .parameter "pageN"

    .prologue
    .line 988
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfWriter;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 992
    :goto_0
    return-void

    .line 991
    :cond_0
    invoke-super {p0, p1}, Lcom/itextpdf/text/Document;->setPageCount(I)V

    goto :goto_0
.end method

.method setPageEmpty(Z)V
    .locals 0
    .parameter "pageEmpty"

    .prologue
    .line 2168
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageEmpty:Z

    .line 2169
    return-void
.end method

.method setPageLabels(Lcom/itextpdf/text/pdf/PdfPageLabels;)V
    .locals 0
    .parameter "pageLabels"

    .prologue
    .line 1865
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageLabels:Lcom/itextpdf/text/pdf/PdfPageLabels;

    .line 1866
    return-void
.end method

.method public setPageSize(Lcom/itextpdf/text/Rectangle;)Z
    .locals 1
    .parameter "pageSize"

    .prologue
    .line 912
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfWriter;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 913
    const/4 v0, 0x0

    .line 916
    :goto_0
    return v0

    .line 915
    :cond_0
    new-instance v0, Lcom/itextpdf/text/Rectangle;

    invoke-direct {v0, p1}, Lcom/itextpdf/text/Rectangle;-><init>(Lcom/itextpdf/text/Rectangle;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->nextPageSize:Lcom/itextpdf/text/Rectangle;

    .line 916
    const/4 v0, 0x1

    goto :goto_0
.end method

.method setSigFlags(I)V
    .locals 1
    .parameter "f"

    .prologue
    .line 2079
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->annotationsImp:Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;->setSigFlags(I)V

    .line 2080
    return-void
.end method

.method setStrictImageSequence(Z)V
    .locals 0
    .parameter "strictImageSequence"

    .prologue
    .line 2235
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->strictImageSequence:Z

    .line 2236
    return-void
.end method

.method setThumbnail(Lcom/itextpdf/text/Image;)V
    .locals 4
    .parameter "image"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/pdf/PdfException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 2205
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->THUMB:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v3, p1}, Lcom/itextpdf/text/pdf/PdfWriter;->addDirectImageSimple(Lcom/itextpdf/text/Image;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/PdfWriter;->getImageReference(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfWriter;->addPageDictEntry(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 2206
    return-void
.end method

.method setTransition(Lcom/itextpdf/text/pdf/PdfTransition;)V
    .locals 3
    .parameter "transition"

    .prologue
    .line 2191
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->TRANS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfTransition;->getTransitionDictionary()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfWriter;->addPageDictEntry(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 2192
    return-void
.end method

.method setViewerPreferences(I)V
    .locals 1
    .parameter "preferences"

    .prologue
    .line 1849
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->viewerPreferences:Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->setViewerPreferences(I)V

    .line 1850
    return-void
.end method

.method public setXmpMetadata([B)V
    .locals 6
    .parameter "xmpMetadata"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 789
    new-instance v2, Lcom/itextpdf/text/pdf/PdfStream;

    invoke-direct {v2, p1}, Lcom/itextpdf/text/pdf/PdfStream;-><init>([B)V

    .line 790
    .local v2, xmp:Lcom/itextpdf/text/pdf/PdfStream;
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->TYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->METADATA:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/text/pdf/PdfStream;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 791
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->XML:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/text/pdf/PdfStream;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 792
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfWriter;->getEncryption()Lcom/itextpdf/text/pdf/PdfEncryption;

    move-result-object v1

    .line 793
    .local v1, crypto:Lcom/itextpdf/text/pdf/PdfEncryption;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfEncryption;->isMetadataEncrypted()Z

    move-result v3

    if-nez v3, :cond_0

    .line 794
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 795
    .local v0, ar:Lcom/itextpdf/text/pdf/PdfArray;
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->CRYPT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 796
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->FILTER:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v3, v0}, Lcom/itextpdf/text/pdf/PdfStream;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 798
    .end local v0           #ar:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_0
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->METADATA:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v5, v2}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/text/pdf/PdfWriter;->addPageDictEntry(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 799
    return-void
.end method

.method traverseOutlineCount(Lcom/itextpdf/text/pdf/PdfOutline;)V
    .locals 5
    .parameter "outline"

    .prologue
    .line 1783
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfOutline;->getKids()Ljava/util/ArrayList;

    move-result-object v1

    .line 1784
    .local v1, kids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfOutline;>;"
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfOutline;->parent()Lcom/itextpdf/text/pdf/PdfOutline;

    move-result-object v2

    .line 1785
    .local v2, parent:Lcom/itextpdf/text/pdf/PdfOutline;
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1786
    if-eqz v2, :cond_0

    .line 1787
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfOutline;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/PdfOutline;->setCount(I)V

    .line 1804
    :cond_0
    :goto_0
    return-void

    .line 1791
    :cond_1
    const/4 v0, 0x0

    .local v0, k:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1792
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/PdfOutline;

    invoke-virtual {p0, v3}, Lcom/itextpdf/text/pdf/PdfDocument;->traverseOutlineCount(Lcom/itextpdf/text/pdf/PdfOutline;)V

    .line 1791
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1794
    :cond_2
    if-eqz v2, :cond_0

    .line 1795
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfOutline;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1796
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfOutline;->getCount()I

    move-result v3

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfOutline;->getCount()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/PdfOutline;->setCount(I)V

    goto :goto_0

    .line 1799
    :cond_3
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfOutline;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/PdfOutline;->setCount(I)V

    .line 1800
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfOutline;->getCount()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {p1, v3}, Lcom/itextpdf/text/pdf/PdfOutline;->setCount(I)V

    goto :goto_0
.end method

.method writeLineToContent(Lcom/itextpdf/text/pdf/PdfLine;Lcom/itextpdf/text/pdf/PdfContentByte;Lcom/itextpdf/text/pdf/PdfContentByte;[Ljava/lang/Object;F)F
    .locals 90
    .parameter "line"
    .parameter "text"
    .parameter "graphics"
    .parameter "currentValues"
    .parameter "ratio"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 1226
    const/4 v4, 0x0

    aget-object v42, p4, v4

    check-cast v42, Lcom/itextpdf/text/pdf/PdfFont;

    .line 1227
    .local v42, currentFont:Lcom/itextpdf/text/pdf/PdfFont;
    const/4 v4, 0x1

    aget-object v4, p4, v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v56

    .line 1232
    .local v56, lastBaseFactor:F
    const/16 v49, 0x0

    .line 1233
    .local v49, hangingCorrection:F
    const/high16 v18, 0x3f80

    .line 1234
    .local v18, hScale:F
    const/high16 v58, 0x7fc0

    .line 1235
    .local v58, lastHScale:F
    const/16 v35, 0x0

    .line 1236
    .local v35, baseWordSpacing:F
    const/16 v33, 0x0

    .line 1237
    .local v33, baseCharacterSpacing:F
    const/16 v47, 0x0

    .line 1238
    .local v47, glueWidth:F
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/text/pdf/PdfContentByte;->getXTLM()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfLine;->getOriginalWidth()F

    move-result v6

    add-float v60, v4, v6

    .line 1239
    .local v60, lastX:F
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfLine;->numberOfSpaces()I

    move-result v64

    .line 1240
    .local v64, numberOfSpaces:I
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfLine;->getLineLengthUtf32()I

    move-result v61

    .line 1242
    .local v61, lineLen:I
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfLine;->hasToBeJustified()Z

    move-result v4

    if-eqz v4, :cond_e

    if-nez v64, :cond_0

    const/4 v4, 0x1

    move/from16 v0, v61

    if-le v0, v4, :cond_e

    :cond_0
    const/16 v52, 0x1

    .line 1243
    .local v52, isJustified:Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfLine;->getSeparatorCount()I

    move-result v75

    .line 1244
    .local v75, separatorCount:I
    if-lez v75, :cond_f

    .line 1245
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfLine;->widthLeft()F

    move-result v4

    move/from16 v0, v75

    int-to-float v6, v0

    div-float v47, v4, v6

    .line 1277
    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfLine;->getLastStrokeChunk()I

    move-result v57

    .line 1278
    .local v57, lastChunkStroke:I
    const/16 v39, 0x0

    .line 1279
    .local v39, chunkStrokeIdx:I
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/text/pdf/PdfContentByte;->getXTLM()F

    move-result v12

    .line 1280
    .local v12, xMarker:F
    move v5, v12

    .line 1281
    .local v5, baseXMarker:F
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/text/pdf/PdfContentByte;->getYTLM()F

    move-result v9

    .line 1282
    .local v9, yMarker:F
    const/16 v29, 0x0

    .line 1283
    .local v29, adjustMatrix:Z
    const/4 v14, 0x0

    .line 1286
    .local v14, tabPosition:F
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfLine;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .local v53, j:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/pdf/PdfChunk;>;"
    move/from16 v82, v14

    .end local v14           #tabPosition:F
    .local v82, tabPosition:F
    :goto_2
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    .line 1287
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/itextpdf/text/pdf/PdfChunk;

    .line 1288
    .local v38, chunk:Lcom/itextpdf/text/pdf/PdfChunk;
    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfChunk;->color()Lcom/itextpdf/text/BaseColor;

    move-result-object v40

    .line 1289
    .local v40, color:Lcom/itextpdf/text/BaseColor;
    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfChunk;->font()Lcom/itextpdf/text/pdf/PdfFont;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfFont;->size()F

    move-result v45

    .line 1290
    .local v45, fontSize:F
    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfChunk;->font()Lcom/itextpdf/text/pdf/PdfFont;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfFont;->getFont()Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v4

    const/4 v6, 0x1

    move/from16 v0, v45

    invoke-virtual {v4, v6, v0}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v32

    .line 1291
    .local v32, ascender:F
    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfChunk;->font()Lcom/itextpdf/text/pdf/PdfFont;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfFont;->getFont()Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v4

    const/4 v6, 0x3

    move/from16 v0, v45

    invoke-virtual {v4, v6, v0}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v43

    .line 1292
    .local v43, descender:F
    const/high16 v48, 0x3f80

    .line 1294
    .end local v18           #hScale:F
    .local v48, hScale:F
    move/from16 v0, v39

    move/from16 v1, v57

    if-gt v0, v1, :cond_4e

    .line 1296
    if-eqz v52, :cond_15

    .line 1297
    move-object/from16 v0, v38

    move/from16 v1, v33

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfChunk;->getWidthCorrected(FF)F

    move-result v89

    .line 1302
    .local v89, width:F
    :goto_3
    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfChunk;->isStroked()Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 1303
    add-int/lit8 v4, v39, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfLine;->getChunk(I)Lcom/itextpdf/text/pdf/PdfChunk;

    move-result-object v63

    .line 1304
    .local v63, nextChunk:Lcom/itextpdf/text/pdf/PdfChunk;
    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfChunk;->isSeparator()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1305
    move/from16 v89, v47

    .line 1306
    const-string v4, "SEPARATOR"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object/from16 v74, v4

    check-cast v74, [Ljava/lang/Object;

    .line 1307
    .local v74, sep:[Ljava/lang/Object;
    const/4 v4, 0x0

    aget-object v3, v74, v4

    check-cast v3, Lcom/itextpdf/text/pdf/draw/DrawInterface;

    .line 1308
    .local v3, di:Lcom/itextpdf/text/pdf/draw/DrawInterface;
    const/4 v4, 0x1

    aget-object v88, v74, v4

    check-cast v88, Ljava/lang/Boolean;

    .line 1309
    .local v88, vertical:Ljava/lang/Boolean;
    invoke-virtual/range {v88 .. v88}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1310
    add-float v6, v9, v43

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfLine;->getOriginalWidth()F

    move-result v4

    add-float v7, v5, v4

    sub-float v8, v32, v43

    move-object/from16 v4, p3

    invoke-interface/range {v3 .. v9}, Lcom/itextpdf/text/pdf/draw/DrawInterface;->draw(Lcom/itextpdf/text/pdf/PdfContentByte;FFFFF)V

    .line 1316
    .end local v3           #di:Lcom/itextpdf/text/pdf/draw/DrawInterface;
    .end local v74           #sep:[Ljava/lang/Object;
    .end local v88           #vertical:Ljava/lang/Boolean;
    :cond_2
    :goto_4
    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfChunk;->isTab()Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 1317
    const-string v4, "TAB"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object/from16 v81, v4

    check-cast v81, [Ljava/lang/Object;

    .line 1318
    .local v81, tab:[Ljava/lang/Object;
    const/4 v4, 0x0

    aget-object v3, v81, v4

    check-cast v3, Lcom/itextpdf/text/pdf/draw/DrawInterface;

    .line 1319
    .restart local v3       #di:Lcom/itextpdf/text/pdf/draw/DrawInterface;
    const/4 v4, 0x1

    aget-object v4, v81, v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/4 v4, 0x3

    aget-object v4, v81, v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float v14, v6, v4

    .line 1320
    .end local v82           #tabPosition:F
    .restart local v14       #tabPosition:F
    cmpl-float v4, v14, v12

    if-lez v4, :cond_3

    .line 1321
    add-float v13, v9, v43

    sub-float v15, v32, v43

    move-object v10, v3

    move-object/from16 v11, p3

    move/from16 v16, v9

    invoke-interface/range {v10 .. v16}, Lcom/itextpdf/text/pdf/draw/DrawInterface;->draw(Lcom/itextpdf/text/pdf/PdfContentByte;FFFFF)V

    .line 1323
    :cond_3
    move/from16 v85, v12

    .line 1324
    .local v85, tmp:F
    move v12, v14

    .line 1325
    move/from16 v14, v85

    .line 1327
    .end local v3           #di:Lcom/itextpdf/text/pdf/draw/DrawInterface;
    .end local v81           #tab:[Ljava/lang/Object;
    .end local v85           #tmp:F
    :goto_5
    const-string v4, "BACKGROUND"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->isAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1328
    move/from16 v80, v56

    .line 1329
    .local v80, subtract:F
    if-eqz v63, :cond_4

    const-string v4, "BACKGROUND"

    move-object/from16 v0, v63

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->isAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1330
    const/16 v80, 0x0

    .line 1331
    :cond_4
    if-nez v63, :cond_5

    .line 1332
    add-float v80, v80, v49

    .line 1333
    :cond_5
    const-string v4, "BACKGROUND"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object/from16 v36, v4

    check-cast v36, [Ljava/lang/Object;

    .line 1334
    .local v36, bgr:[Ljava/lang/Object;
    const/4 v4, 0x0

    aget-object v4, v36, v4

    check-cast v4, Lcom/itextpdf/text/BaseColor;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    .line 1335
    const/4 v4, 0x1

    aget-object v4, v36, v4

    check-cast v4, [F

    move-object/from16 v44, v4

    check-cast v44, [F

    .line 1336
    .local v44, extra:[F
    const/4 v4, 0x0

    aget v4, v44, v4

    sub-float v4, v12, v4

    add-float v6, v9, v43

    const/4 v7, 0x1

    aget v7, v44, v7

    sub-float/2addr v6, v7

    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfChunk;->getTextRise()F

    move-result v7

    add-float/2addr v6, v7

    sub-float v7, v89, v80

    const/4 v8, 0x0

    aget v8, v44, v8

    add-float/2addr v7, v8

    const/4 v8, 0x2

    aget v8, v44, v8

    add-float/2addr v7, v8

    sub-float v8, v32, v43

    const/4 v10, 0x1

    aget v10, v44, v10

    add-float/2addr v8, v10

    const/4 v10, 0x3

    aget v10, v44, v10

    add-float/2addr v8, v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v6, v7, v8}, Lcom/itextpdf/text/pdf/PdfContentByte;->rectangle(FFFF)V

    .line 1340
    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/text/pdf/PdfContentByte;->fill()V

    .line 1341
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->setGrayFill(F)V

    .line 1343
    .end local v36           #bgr:[Ljava/lang/Object;
    .end local v44           #extra:[F
    .end local v80           #subtract:F
    :cond_6
    const-string v4, "UNDERLINE"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->isAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1344
    move/from16 v80, v56

    .line 1345
    .restart local v80       #subtract:F
    if-eqz v63, :cond_7

    const-string v4, "UNDERLINE"

    move-object/from16 v0, v63

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->isAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1346
    const/16 v80, 0x0

    .line 1347
    :cond_7
    if-nez v63, :cond_8

    .line 1348
    add-float v80, v80, v49

    .line 1349
    :cond_8
    const-string v4, "UNDERLINE"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Ljava/lang/Object;

    move-object/from16 v87, v4

    check-cast v87, [[Ljava/lang/Object;

    .line 1350
    .local v87, unders:[[Ljava/lang/Object;
    const/16 v73, 0x0

    .line 1351
    .local v73, scolor:Lcom/itextpdf/text/BaseColor;
    const/16 v54, 0x0

    .local v54, k:I
    :goto_6
    move-object/from16 v0, v87

    array-length v4, v0

    move/from16 v0, v54

    if-ge v0, v4, :cond_17

    .line 1352
    aget-object v65, v87, v54

    .line 1353
    .local v65, obj:[Ljava/lang/Object;
    const/4 v4, 0x0

    aget-object v73, v65, v4

    .end local v73           #scolor:Lcom/itextpdf/text/BaseColor;
    check-cast v73, Lcom/itextpdf/text/BaseColor;

    .line 1354
    .restart local v73       #scolor:Lcom/itextpdf/text/BaseColor;
    const/4 v4, 0x1

    aget-object v4, v65, v4

    check-cast v4, [F

    move-object/from16 v69, v4

    check-cast v69, [F

    .line 1355
    .local v69, ps:[F
    if-nez v73, :cond_9

    .line 1356
    move-object/from16 v73, v40

    .line 1357
    :cond_9
    if-eqz v73, :cond_a

    .line 1358
    move-object/from16 v0, p3

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorStroke(Lcom/itextpdf/text/BaseColor;)V

    .line 1359
    :cond_a
    const/4 v4, 0x0

    aget v4, v69, v4

    const/4 v6, 0x1

    aget v6, v69, v6

    mul-float v6, v6, v45

    add-float/2addr v4, v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineWidth(F)V

    .line 1360
    const/4 v4, 0x2

    aget v4, v69, v4

    const/4 v6, 0x3

    aget v6, v69, v6

    mul-float v6, v6, v45

    add-float v76, v4, v6

    .line 1361
    .local v76, shift:F
    const/4 v4, 0x4

    aget v4, v69, v4

    float-to-int v0, v4

    move/from16 v37, v0

    .line 1362
    .local v37, cap2:I
    if-eqz v37, :cond_b

    .line 1363
    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineCap(I)V

    .line 1364
    :cond_b
    add-float v4, v9, v76

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveTo(FF)V

    .line 1365
    add-float v4, v12, v89

    sub-float v4, v4, v80

    add-float v6, v9, v76

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 1366
    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/text/pdf/PdfContentByte;->stroke()V

    .line 1367
    if-eqz v73, :cond_c

    .line 1368
    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/text/pdf/PdfContentByte;->resetGrayStroke()V

    .line 1369
    :cond_c
    if-eqz v37, :cond_d

    .line 1370
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineCap(I)V

    .line 1351
    :cond_d
    add-int/lit8 v54, v54, 0x1

    goto :goto_6

    .line 1242
    .end local v5           #baseXMarker:F
    .end local v9           #yMarker:F
    .end local v12           #xMarker:F
    .end local v14           #tabPosition:F
    .end local v29           #adjustMatrix:Z
    .end local v32           #ascender:F
    .end local v37           #cap2:I
    .end local v38           #chunk:Lcom/itextpdf/text/pdf/PdfChunk;
    .end local v39           #chunkStrokeIdx:I
    .end local v40           #color:Lcom/itextpdf/text/BaseColor;
    .end local v43           #descender:F
    .end local v45           #fontSize:F
    .end local v48           #hScale:F
    .end local v52           #isJustified:Z
    .end local v53           #j:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/pdf/PdfChunk;>;"
    .end local v54           #k:I
    .end local v57           #lastChunkStroke:I
    .end local v63           #nextChunk:Lcom/itextpdf/text/pdf/PdfChunk;
    .end local v65           #obj:[Ljava/lang/Object;
    .end local v69           #ps:[F
    .end local v73           #scolor:Lcom/itextpdf/text/BaseColor;
    .end local v75           #separatorCount:I
    .end local v76           #shift:F
    .end local v80           #subtract:F
    .end local v87           #unders:[[Ljava/lang/Object;
    .end local v89           #width:F
    .restart local v18       #hScale:F
    :cond_e
    const/16 v52, 0x0

    goto/16 :goto_0

    .line 1247
    .restart local v52       #isJustified:Z
    .restart local v75       #separatorCount:I
    :cond_f
    if-eqz v52, :cond_13

    if-nez v75, :cond_13

    .line 1248
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfLine;->isNewlineSplit()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfLine;->widthLeft()F

    move-result v4

    move/from16 v0, v64

    int-to-float v6, v0

    mul-float v6, v6, p5

    move/from16 v0, v61

    int-to-float v7, v0

    add-float/2addr v6, v7

    const/high16 v7, 0x3f80

    sub-float/2addr v6, v7

    mul-float v6, v6, v56

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_11

    .line 1249
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfLine;->isRTL()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1250
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfLine;->widthLeft()F

    move-result v4

    move/from16 v0, v64

    int-to-float v6, v0

    mul-float v6, v6, p5

    move/from16 v0, v61

    int-to-float v7, v0

    add-float/2addr v6, v7

    const/high16 v7, 0x3f80

    sub-float/2addr v6, v7

    mul-float v6, v6, v56

    sub-float/2addr v4, v6

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveText(FF)V

    .line 1252
    :cond_10
    mul-float v35, p5, v56

    .line 1253
    move/from16 v33, v56

    goto/16 :goto_1

    .line 1256
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfLine;->widthLeft()F

    move-result v89

    .line 1257
    .restart local v89       #width:F
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfLine;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfLine;->getChunk(I)Lcom/itextpdf/text/pdf/PdfChunk;

    move-result-object v55

    .line 1258
    .local v55, last:Lcom/itextpdf/text/pdf/PdfChunk;
    if-eqz v55, :cond_12

    .line 1259
    invoke-virtual/range {v55 .. v55}, Lcom/itextpdf/text/pdf/PdfChunk;->toString()Ljava/lang/String;

    move-result-object v72

    .line 1261
    .local v72, s:Ljava/lang/String;
    invoke-virtual/range {v72 .. v72}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_12

    const-string v4, ".,;:\'"

    invoke-virtual/range {v72 .. v72}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v72

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v20

    .local v20, c:C
    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_12

    .line 1262
    move/from16 v66, v89

    .line 1263
    .local v66, oldWidth:F
    invoke-virtual/range {v55 .. v55}, Lcom/itextpdf/text/pdf/PdfChunk;->font()Lcom/itextpdf/text/pdf/PdfFont;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfFont;->width(I)F

    move-result v4

    const v6, 0x3ecccccd

    mul-float/2addr v4, v6

    add-float v89, v89, v4

    .line 1264
    sub-float v49, v89, v66

    .line 1267
    .end local v20           #c:C
    .end local v66           #oldWidth:F
    .end local v72           #s:Ljava/lang/String;
    :cond_12
    move/from16 v0, v64

    int-to-float v4, v0

    mul-float v4, v4, p5

    move/from16 v0, v61

    int-to-float v6, v0

    add-float/2addr v4, v6

    const/high16 v6, 0x3f80

    sub-float/2addr v4, v6

    div-float v34, v89, v4

    .line 1268
    .local v34, baseFactor:F
    mul-float v35, p5, v34

    .line 1269
    move/from16 v33, v34

    .line 1270
    move/from16 v56, v34

    .line 1271
    goto/16 :goto_1

    .line 1273
    .end local v34           #baseFactor:F
    .end local v55           #last:Lcom/itextpdf/text/pdf/PdfChunk;
    .end local v89           #width:F
    :cond_13
    move-object/from16 v0, p1

    iget v4, v0, Lcom/itextpdf/text/pdf/PdfLine;->alignment:I

    if-eqz v4, :cond_14

    move-object/from16 v0, p1

    iget v4, v0, Lcom/itextpdf/text/pdf/PdfLine;->alignment:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    .line 1274
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfLine;->widthLeft()F

    move-result v4

    sub-float v60, v60, v4

    goto/16 :goto_1

    .line 1300
    .end local v18           #hScale:F
    .restart local v5       #baseXMarker:F
    .restart local v9       #yMarker:F
    .restart local v12       #xMarker:F
    .restart local v29       #adjustMatrix:Z
    .restart local v32       #ascender:F
    .restart local v38       #chunk:Lcom/itextpdf/text/pdf/PdfChunk;
    .restart local v39       #chunkStrokeIdx:I
    .restart local v40       #color:Lcom/itextpdf/text/BaseColor;
    .restart local v43       #descender:F
    .restart local v45       #fontSize:F
    .restart local v48       #hScale:F
    .restart local v53       #j:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/pdf/PdfChunk;>;"
    .restart local v57       #lastChunkStroke:I
    .restart local v82       #tabPosition:F
    :cond_15
    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfChunk;->width()F

    move-result v89

    .restart local v89       #width:F
    goto/16 :goto_3

    .line 1313
    .restart local v3       #di:Lcom/itextpdf/text/pdf/draw/DrawInterface;
    .restart local v63       #nextChunk:Lcom/itextpdf/text/pdf/PdfChunk;
    .restart local v74       #sep:[Ljava/lang/Object;
    .restart local v88       #vertical:Ljava/lang/Boolean;
    :cond_16
    add-float v13, v9, v43

    add-float v14, v12, v89

    sub-float v15, v32, v43

    move-object v10, v3

    move-object/from16 v11, p3

    move/from16 v16, v9

    invoke-interface/range {v10 .. v16}, Lcom/itextpdf/text/pdf/draw/DrawInterface;->draw(Lcom/itextpdf/text/pdf/PdfContentByte;FFFFF)V

    goto/16 :goto_4

    .line 1372
    .end local v3           #di:Lcom/itextpdf/text/pdf/draw/DrawInterface;
    .end local v74           #sep:[Ljava/lang/Object;
    .end local v82           #tabPosition:F
    .end local v88           #vertical:Ljava/lang/Boolean;
    .restart local v14       #tabPosition:F
    .restart local v54       #k:I
    .restart local v73       #scolor:Lcom/itextpdf/text/BaseColor;
    .restart local v80       #subtract:F
    .restart local v87       #unders:[[Ljava/lang/Object;
    :cond_17
    const/high16 v4, 0x3f80

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineWidth(F)V

    .line 1374
    .end local v54           #k:I
    .end local v73           #scolor:Lcom/itextpdf/text/BaseColor;
    .end local v80           #subtract:F
    .end local v87           #unders:[[Ljava/lang/Object;
    :cond_18
    const-string v4, "ACTION"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->isAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1375
    move/from16 v80, v56

    .line 1376
    .restart local v80       #subtract:F
    if-eqz v63, :cond_19

    const-string v4, "ACTION"

    move-object/from16 v0, v63

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->isAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1377
    const/16 v80, 0x0

    .line 1378
    :cond_19
    if-nez v63, :cond_1a

    .line 1379
    add-float v80, v80, v49

    .line 1380
    :cond_1a
    new-instance v15, Lcom/itextpdf/text/pdf/PdfAnnotation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move-object/from16 v16, v0

    add-float v4, v9, v43

    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfChunk;->getTextRise()F

    move-result v6

    add-float v18, v4, v6

    add-float v4, v12, v89

    sub-float v19, v4, v80

    add-float v4, v9, v32

    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfChunk;->getTextRise()F

    move-result v6

    add-float v20, v4, v6

    const-string v4, "ACTION"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/itextpdf/text/pdf/PdfAction;

    move/from16 v17, v12

    invoke-direct/range {v15 .. v21}, Lcom/itextpdf/text/pdf/PdfAnnotation;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;FFFFLcom/itextpdf/text/pdf/PdfAction;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/itextpdf/text/pdf/PdfContentByte;->addAnnotation(Lcom/itextpdf/text/pdf/PdfAnnotation;)V

    .line 1382
    .end local v80           #subtract:F
    :cond_1b
    const-string v4, "REMOTEGOTO"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->isAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1383
    move/from16 v80, v56

    .line 1384
    .restart local v80       #subtract:F
    if-eqz v63, :cond_1c

    const-string v4, "REMOTEGOTO"

    move-object/from16 v0, v63

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->isAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1385
    const/16 v80, 0x0

    .line 1386
    :cond_1c
    if-nez v63, :cond_1d

    .line 1387
    add-float v80, v80, v49

    .line 1388
    :cond_1d
    const-string v4, "REMOTEGOTO"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object/from16 v65, v4

    check-cast v65, [Ljava/lang/Object;

    .line 1389
    .restart local v65       #obj:[Ljava/lang/Object;
    const/4 v4, 0x0

    aget-object v16, v65, v4

    check-cast v16, Ljava/lang/String;

    .line 1390
    .local v16, filename:Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, v65, v4

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_3e

    .line 1391
    const/4 v4, 0x1

    aget-object v17, v65, v4

    check-cast v17, Ljava/lang/String;

    add-float v4, v9, v43

    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfChunk;->getTextRise()F

    move-result v6

    add-float v19, v4, v6

    add-float v4, v12, v89

    sub-float v20, v4, v80

    add-float v4, v9, v32

    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfChunk;->getTextRise()F

    move-result v6

    add-float v21, v4, v6

    move-object/from16 v15, p0

    move/from16 v18, v12

    invoke-virtual/range {v15 .. v21}, Lcom/itextpdf/text/pdf/PdfDocument;->remoteGoto(Ljava/lang/String;Ljava/lang/String;FFFF)V

    .line 1395
    .end local v16           #filename:Ljava/lang/String;
    .end local v65           #obj:[Ljava/lang/Object;
    .end local v80           #subtract:F
    :cond_1e
    :goto_7
    const-string v4, "LOCALGOTO"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->isAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1396
    move/from16 v80, v56

    .line 1397
    .restart local v80       #subtract:F
    if-eqz v63, :cond_1f

    const-string v4, "LOCALGOTO"

    move-object/from16 v0, v63

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->isAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1398
    const/16 v80, 0x0

    .line 1399
    :cond_1f
    if-nez v63, :cond_20

    .line 1400
    add-float v80, v80, v49

    .line 1401
    :cond_20
    const-string v4, "LOCALGOTO"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    add-float v4, v12, v89

    sub-float v10, v4, v80

    add-float v11, v9, v45

    move-object/from16 v6, p0

    move v8, v12

    invoke-virtual/range {v6 .. v11}, Lcom/itextpdf/text/pdf/PdfDocument;->localGoto(Ljava/lang/String;FFFF)V

    .line 1403
    .end local v80           #subtract:F
    :cond_21
    const-string v4, "LOCALDESTINATION"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->isAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1409
    const-string v4, "LOCALDESTINATION"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v6, Lcom/itextpdf/text/pdf/PdfDestination;

    const/4 v7, 0x0

    add-float v8, v9, v45

    const/4 v10, 0x0

    invoke-direct {v6, v7, v12, v8, v10}, Lcom/itextpdf/text/pdf/PdfDestination;-><init>(IFFF)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/itextpdf/text/pdf/PdfDocument;->localDestination(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfDestination;)Z

    .line 1411
    :cond_22
    const-string v4, "GENERICTAG"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->isAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 1412
    move/from16 v80, v56

    .line 1413
    .restart local v80       #subtract:F
    if-eqz v63, :cond_23

    const-string v4, "GENERICTAG"

    move-object/from16 v0, v63

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->isAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 1414
    const/16 v80, 0x0

    .line 1415
    :cond_23
    if-nez v63, :cond_24

    .line 1416
    add-float v80, v80, v49

    .line 1417
    :cond_24
    new-instance v70, Lcom/itextpdf/text/Rectangle;

    add-float v4, v12, v89

    sub-float v4, v4, v80

    add-float v6, v9, v45

    move-object/from16 v0, v70

    invoke-direct {v0, v12, v9, v4, v6}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    .line 1418
    .local v70, rect:Lcom/itextpdf/text/Rectangle;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfWriter;->getPageEvent()Lcom/itextpdf/text/pdf/PdfPageEvent;

    move-result-object v68

    .line 1419
    .local v68, pev:Lcom/itextpdf/text/pdf/PdfPageEvent;
    if-eqz v68, :cond_25

    .line 1420
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    const-string v4, "GENERICTAG"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v68

    move-object/from16 v1, p0

    move-object/from16 v2, v70

    invoke-interface {v0, v6, v1, v2, v4}, Lcom/itextpdf/text/pdf/PdfPageEvent;->onGenericTag(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;Lcom/itextpdf/text/Rectangle;Ljava/lang/String;)V

    .line 1422
    .end local v68           #pev:Lcom/itextpdf/text/pdf/PdfPageEvent;
    .end local v70           #rect:Lcom/itextpdf/text/Rectangle;
    .end local v80           #subtract:F
    :cond_25
    const-string v4, "PDFANNOTATION"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->isAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 1423
    move/from16 v80, v56

    .line 1424
    .restart local v80       #subtract:F
    if-eqz v63, :cond_26

    const-string v4, "PDFANNOTATION"

    move-object/from16 v0, v63

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->isAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1425
    const/16 v80, 0x0

    .line 1426
    :cond_26
    if-nez v63, :cond_27

    .line 1427
    add-float v80, v80, v49

    .line 1428
    :cond_27
    const-string v4, "PDFANNOTATION"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfAnnotation;

    invoke-static {v4}, Lcom/itextpdf/text/pdf/PdfFormField;->shallowDuplicate(Lcom/itextpdf/text/pdf/PdfAnnotation;)Lcom/itextpdf/text/pdf/PdfAnnotation;

    move-result-object v30

    .line 1429
    .local v30, annot:Lcom/itextpdf/text/pdf/PdfAnnotation;
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->RECT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v6, Lcom/itextpdf/text/pdf/PdfRectangle;

    add-float v7, v9, v43

    add-float v8, v12, v89

    sub-float v8, v8, v80

    add-float v10, v9, v32

    invoke-direct {v6, v12, v7, v8, v10}, Lcom/itextpdf/text/pdf/PdfRectangle;-><init>(FFFF)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v6}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1430
    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->addAnnotation(Lcom/itextpdf/text/pdf/PdfAnnotation;)V

    .line 1432
    .end local v30           #annot:Lcom/itextpdf/text/pdf/PdfAnnotation;
    .end local v80           #subtract:F
    :cond_28
    const-string v4, "SKEW"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    move-object/from16 v67, v4

    check-cast v67, [F

    .line 1433
    .local v67, params:[F
    const-string v4, "HSCALE"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/lang/Float;

    .line 1434
    .local v50, hs:Ljava/lang/Float;
    if-nez v67, :cond_29

    if-eqz v50, :cond_4b

    .line 1435
    :cond_29
    const/16 v19, 0x0

    .local v19, b:F
    const/16 v20, 0x0

    .line 1436
    .local v20, c:F
    if-eqz v67, :cond_2a

    .line 1437
    const/4 v4, 0x0

    aget v19, v67, v4

    .line 1438
    const/4 v4, 0x1

    aget v20, v67, v4

    .line 1440
    :cond_2a
    if-eqz v50, :cond_4a

    .line 1441
    invoke-virtual/range {v50 .. v50}, Ljava/lang/Float;->floatValue()F

    move-result v18

    .line 1442
    .end local v48           #hScale:F
    .restart local v18       #hScale:F
    :goto_8
    const/high16 v21, 0x3f80

    move-object/from16 v17, p2

    move/from16 v22, v12

    move/from16 v23, v9

    invoke-virtual/range {v17 .. v23}, Lcom/itextpdf/text/pdf/PdfContentByte;->setTextMatrix(FFFFFF)V

    .line 1444
    .end local v19           #b:F
    .end local v20           #c:F
    :goto_9
    const-string v4, "CHAR_SPACING"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->isAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 1445
    const-string v4, "CHAR_SPACING"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/Float;

    .line 1446
    .local v41, cs:Ljava/lang/Float;
    invoke-virtual/range {v41 .. v41}, Ljava/lang/Float;->floatValue()F

    move-result v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->setCharacterSpacing(F)V

    .line 1448
    .end local v41           #cs:Ljava/lang/Float;
    :cond_2b
    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfChunk;->isImage()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 1449
    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfChunk;->getImage()Lcom/itextpdf/text/Image;

    move-result-object v22

    .line 1450
    .local v22, image:Lcom/itextpdf/text/Image;
    invoke-virtual/range {v22 .. v22}, Lcom/itextpdf/text/Image;->matrix()[F

    move-result-object v62

    .line 1451
    .local v62, matrix:[F
    const/4 v4, 0x4

    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfChunk;->getImageOffsetX()F

    move-result v6

    add-float/2addr v6, v12

    const/4 v7, 0x4

    aget v7, v62, v7

    sub-float/2addr v6, v7

    aput v6, v62, v4

    .line 1452
    const/4 v4, 0x5

    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfChunk;->getImageOffsetY()F

    move-result v6

    add-float/2addr v6, v9

    const/4 v7, 0x5

    aget v7, v62, v7

    sub-float/2addr v6, v7

    aput v6, v62, v4

    .line 1453
    const/4 v4, 0x0

    aget v23, v62, v4

    const/4 v4, 0x1

    aget v24, v62, v4

    const/4 v4, 0x2

    aget v25, v62, v4

    const/4 v4, 0x3

    aget v26, v62, v4

    const/4 v4, 0x4

    aget v27, v62, v4

    const/4 v4, 0x5

    aget v28, v62, v4

    move-object/from16 v21, p3

    invoke-virtual/range {v21 .. v28}, Lcom/itextpdf/text/pdf/PdfContentByte;->addImage(Lcom/itextpdf/text/Image;FFFFFF)V

    .line 1454
    add-float v4, v12, v56

    invoke-virtual/range {v22 .. v22}, Lcom/itextpdf/text/Image;->getScaledWidth()F

    move-result v6

    add-float/2addr v4, v6

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/text/pdf/PdfContentByte;->getXTLM()F

    move-result v6

    sub-float/2addr v4, v6

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveText(FF)V

    .line 1457
    .end local v22           #image:Lcom/itextpdf/text/Image;
    .end local v50           #hs:Ljava/lang/Float;
    .end local v62           #matrix:[F
    .end local v63           #nextChunk:Lcom/itextpdf/text/pdf/PdfChunk;
    .end local v67           #params:[F
    :cond_2c
    :goto_a
    add-float v12, v12, v89

    .line 1458
    add-int/lit8 v39, v39, 0x1

    .line 1461
    .end local v89           #width:F
    :goto_b
    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfChunk;->font()Lcom/itextpdf/text/pdf/PdfFont;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfFont;->compareTo(Lcom/itextpdf/text/pdf/PdfFont;)I

    move-result v4

    if-eqz v4, :cond_2d

    .line 1462
    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfChunk;->font()Lcom/itextpdf/text/pdf/PdfFont;

    move-result-object v42

    .line 1463
    invoke-virtual/range {v42 .. v42}, Lcom/itextpdf/text/pdf/PdfFont;->getFont()Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v4

    invoke-virtual/range {v42 .. v42}, Lcom/itextpdf/text/pdf/PdfFont;->size()F

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->setFontAndSize(Lcom/itextpdf/text/pdf/BaseFont;F)V

    .line 1465
    :cond_2d
    const/16 v71, 0x0

    .line 1466
    .local v71, rise:F
    const-string v4, "TEXTRENDERMODE"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object/from16 v84, v4

    check-cast v84, [Ljava/lang/Object;

    .line 1467
    .local v84, textRender:[Ljava/lang/Object;
    const/16 v86, 0x0

    .line 1468
    .local v86, tr:I
    const/high16 v79, 0x3f80

    .line 1469
    .local v79, strokeWidth:F
    const/16 v78, 0x0

    .line 1470
    .local v78, strokeColor:Lcom/itextpdf/text/BaseColor;
    const-string v4, "SUBSUPSCRIPT"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/Float;

    .line 1471
    .local v46, fr:Ljava/lang/Float;
    if-eqz v84, :cond_32

    .line 1472
    const/4 v4, 0x0

    aget-object v4, v84, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/lit8 v86, v4, 0x3

    .line 1473
    if-eqz v86, :cond_2e

    .line 1474
    move-object/from16 v0, p2

    move/from16 v1, v86

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->setTextRenderingMode(I)V

    .line 1475
    :cond_2e
    const/4 v4, 0x1

    move/from16 v0, v86

    if-eq v0, v4, :cond_2f

    const/4 v4, 0x2

    move/from16 v0, v86

    if-ne v0, v4, :cond_32

    .line 1476
    :cond_2f
    const/4 v4, 0x1

    aget-object v4, v84, v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v79

    .line 1477
    const/high16 v4, 0x3f80

    cmpl-float v4, v79, v4

    if-eqz v4, :cond_30

    .line 1478
    move-object/from16 v0, p2

    move/from16 v1, v79

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineWidth(F)V

    .line 1479
    :cond_30
    const/4 v4, 0x2

    aget-object v78, v84, v4

    .end local v78           #strokeColor:Lcom/itextpdf/text/BaseColor;
    check-cast v78, Lcom/itextpdf/text/BaseColor;

    .line 1480
    .restart local v78       #strokeColor:Lcom/itextpdf/text/BaseColor;
    if-nez v78, :cond_31

    .line 1481
    move-object/from16 v78, v40

    .line 1482
    :cond_31
    if-eqz v78, :cond_32

    .line 1483
    move-object/from16 v0, p2

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorStroke(Lcom/itextpdf/text/BaseColor;)V

    .line 1486
    :cond_32
    if-eqz v46, :cond_33

    .line 1487
    invoke-virtual/range {v46 .. v46}, Ljava/lang/Float;->floatValue()F

    move-result v71

    .line 1488
    :cond_33
    if-eqz v40, :cond_34

    .line 1489
    move-object/from16 v0, p2

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    .line 1490
    :cond_34
    const/4 v4, 0x0

    cmpl-float v4, v71, v4

    if-eqz v4, :cond_35

    .line 1491
    move-object/from16 v0, p2

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->setTextRise(F)V

    .line 1492
    :cond_35
    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfChunk;->isImage()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 1493
    const/16 v29, 0x1

    .line 1540
    :goto_c
    const/4 v4, 0x0

    cmpl-float v4, v71, v4

    if-eqz v4, :cond_36

    .line 1541
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->setTextRise(F)V

    .line 1542
    :cond_36
    if-eqz v40, :cond_37

    .line 1543
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/text/pdf/PdfContentByte;->resetRGBColorFill()V

    .line 1544
    :cond_37
    if-eqz v86, :cond_38

    .line 1545
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->setTextRenderingMode(I)V

    .line 1546
    :cond_38
    if-eqz v78, :cond_39

    .line 1547
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/text/pdf/PdfContentByte;->resetRGBColorStroke()V

    .line 1548
    :cond_39
    const/high16 v4, 0x3f80

    cmpl-float v4, v79, v4

    if-eqz v4, :cond_3a

    .line 1549
    const/high16 v4, 0x3f80

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineWidth(F)V

    .line 1550
    :cond_3a
    const-string v4, "SKEW"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->isAttribute(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3b

    const-string v4, "HSCALE"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->isAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 1551
    :cond_3b
    const/16 v29, 0x1

    .line 1552
    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v9}, Lcom/itextpdf/text/pdf/PdfContentByte;->setTextMatrix(FF)V

    .line 1554
    :cond_3c
    const-string v4, "CHAR_SPACING"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->isAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 1555
    move-object/from16 v0, p2

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->setCharacterSpacing(F)V

    :cond_3d
    move/from16 v82, v14

    .line 1557
    .end local v14           #tabPosition:F
    .restart local v82       #tabPosition:F
    goto/16 :goto_2

    .line 1393
    .end local v18           #hScale:F
    .end local v46           #fr:Ljava/lang/Float;
    .end local v71           #rise:F
    .end local v78           #strokeColor:Lcom/itextpdf/text/BaseColor;
    .end local v79           #strokeWidth:F
    .end local v82           #tabPosition:F
    .end local v84           #textRender:[Ljava/lang/Object;
    .end local v86           #tr:I
    .restart local v14       #tabPosition:F
    .restart local v16       #filename:Ljava/lang/String;
    .restart local v48       #hScale:F
    .restart local v63       #nextChunk:Lcom/itextpdf/text/pdf/PdfChunk;
    .restart local v65       #obj:[Ljava/lang/Object;
    .restart local v80       #subtract:F
    .restart local v89       #width:F
    :cond_3e
    const/4 v4, 0x1

    aget-object v4, v65, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v17

    add-float v4, v9, v43

    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfChunk;->getTextRise()F

    move-result v6

    add-float v19, v4, v6

    add-float v4, v12, v89

    sub-float v20, v4, v80

    add-float v4, v9, v32

    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfChunk;->getTextRise()F

    move-result v6

    add-float v21, v4, v6

    move-object/from16 v15, p0

    move/from16 v18, v12

    invoke-virtual/range {v15 .. v21}, Lcom/itextpdf/text/pdf/PdfDocument;->remoteGoto(Ljava/lang/String;IFFFF)V

    goto/16 :goto_7

    .line 1495
    .end local v16           #filename:Ljava/lang/String;
    .end local v48           #hScale:F
    .end local v63           #nextChunk:Lcom/itextpdf/text/pdf/PdfChunk;
    .end local v65           #obj:[Ljava/lang/Object;
    .end local v80           #subtract:F
    .end local v89           #width:F
    .restart local v18       #hScale:F
    .restart local v46       #fr:Ljava/lang/Float;
    .restart local v71       #rise:F
    .restart local v78       #strokeColor:Lcom/itextpdf/text/BaseColor;
    .restart local v79       #strokeWidth:F
    .restart local v84       #textRender:[Ljava/lang/Object;
    .restart local v86       #tr:I
    :cond_3f
    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfChunk;->isHorizontalSeparator()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 1496
    new-instance v31, Lcom/itextpdf/text/pdf/PdfTextArray;

    invoke-direct/range {v31 .. v31}, Lcom/itextpdf/text/pdf/PdfTextArray;-><init>()V

    .line 1497
    .local v31, array:Lcom/itextpdf/text/pdf/PdfTextArray;
    move/from16 v0, v47

    neg-float v4, v0

    const/high16 v6, 0x447a

    mul-float/2addr v4, v6

    move-object/from16 v0, v38

    iget-object v6, v0, Lcom/itextpdf/text/pdf/PdfChunk;->font:Lcom/itextpdf/text/pdf/PdfFont;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfFont;->size()F

    move-result v6

    div-float/2addr v4, v6

    div-float v4, v4, v18

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfTextArray;->add(F)V

    .line 1498
    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->showText(Lcom/itextpdf/text/pdf/PdfTextArray;)V

    goto/16 :goto_c

    .line 1500
    .end local v31           #array:Lcom/itextpdf/text/pdf/PdfTextArray;
    :cond_40
    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfChunk;->isTab()Z

    move-result v4

    if-eqz v4, :cond_41

    .line 1501
    new-instance v31, Lcom/itextpdf/text/pdf/PdfTextArray;

    invoke-direct/range {v31 .. v31}, Lcom/itextpdf/text/pdf/PdfTextArray;-><init>()V

    .line 1502
    .restart local v31       #array:Lcom/itextpdf/text/pdf/PdfTextArray;
    sub-float v4, v14, v12

    const/high16 v6, 0x447a

    mul-float/2addr v4, v6

    move-object/from16 v0, v38

    iget-object v6, v0, Lcom/itextpdf/text/pdf/PdfChunk;->font:Lcom/itextpdf/text/pdf/PdfFont;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfFont;->size()F

    move-result v6

    div-float/2addr v4, v6

    div-float v4, v4, v18

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfTextArray;->add(F)V

    .line 1503
    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->showText(Lcom/itextpdf/text/pdf/PdfTextArray;)V

    goto/16 :goto_c

    .line 1507
    .end local v31           #array:Lcom/itextpdf/text/pdf/PdfTextArray;
    :cond_41
    if-eqz v52, :cond_45

    if-lez v64, :cond_45

    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfChunk;->isSpecialEncoding()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 1508
    cmpl-float v4, v18, v58

    if-eqz v4, :cond_42

    .line 1509
    move/from16 v58, v18

    .line 1510
    div-float v4, v35, v18

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->setWordSpacing(F)V

    .line 1511
    div-float v4, v33, v18

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/text/pdf/PdfContentByte;->getCharacterSpacing()F

    move-result v6

    add-float/2addr v4, v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->setCharacterSpacing(F)V

    .line 1513
    :cond_42
    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfChunk;->toString()Ljava/lang/String;

    move-result-object v72

    .line 1514
    .restart local v72       #s:Ljava/lang/String;
    const/16 v4, 0x20

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v51

    .line 1515
    .local v51, idx:I
    if-gez v51, :cond_43

    .line 1516
    move-object/from16 v0, p2

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->showText(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 1518
    :cond_43
    move/from16 v0, v35

    neg-float v4, v0

    const/high16 v6, 0x447a

    mul-float/2addr v4, v6

    move-object/from16 v0, v38

    iget-object v6, v0, Lcom/itextpdf/text/pdf/PdfChunk;->font:Lcom/itextpdf/text/pdf/PdfFont;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfFont;->size()F

    move-result v6

    div-float/2addr v4, v6

    div-float v77, v4, v18

    .line 1519
    .local v77, spaceCorrection:F
    new-instance v83, Lcom/itextpdf/text/pdf/PdfTextArray;

    const/4 v4, 0x0

    move-object/from16 v0, v72

    move/from16 v1, v51

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v83

    invoke-direct {v0, v4}, Lcom/itextpdf/text/pdf/PdfTextArray;-><init>(Ljava/lang/String;)V

    .line 1520
    .local v83, textArray:Lcom/itextpdf/text/pdf/PdfTextArray;
    move/from16 v59, v51

    .line 1521
    .local v59, lastIdx:I
    :goto_d
    const/16 v4, 0x20

    add-int/lit8 v6, v59, 0x1

    move-object/from16 v0, v72

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v51

    if-ltz v51, :cond_44

    .line 1522
    move-object/from16 v0, v83

    move/from16 v1, v77

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfTextArray;->add(F)V

    .line 1523
    move-object/from16 v0, v72

    move/from16 v1, v59

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v83

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfTextArray;->add(Ljava/lang/String;)V

    .line 1524
    move/from16 v59, v51

    goto :goto_d

    .line 1526
    :cond_44
    move-object/from16 v0, v83

    move/from16 v1, v77

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfTextArray;->add(F)V

    .line 1527
    move-object/from16 v0, v72

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v83

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfTextArray;->add(Ljava/lang/String;)V

    .line 1528
    move-object/from16 v0, p2

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->showText(Lcom/itextpdf/text/pdf/PdfTextArray;)V

    goto/16 :goto_c

    .line 1532
    .end local v51           #idx:I
    .end local v59           #lastIdx:I
    .end local v72           #s:Ljava/lang/String;
    .end local v77           #spaceCorrection:F
    .end local v83           #textArray:Lcom/itextpdf/text/pdf/PdfTextArray;
    :cond_45
    if-eqz v52, :cond_46

    cmpl-float v4, v18, v58

    if-eqz v4, :cond_46

    .line 1533
    move/from16 v58, v18

    .line 1534
    div-float v4, v35, v18

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->setWordSpacing(F)V

    .line 1535
    div-float v4, v33, v18

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/text/pdf/PdfContentByte;->getCharacterSpacing()F

    move-result v6

    add-float/2addr v4, v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->setCharacterSpacing(F)V

    .line 1537
    :cond_46
    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfChunk;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->showText(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 1558
    .end local v14           #tabPosition:F
    .end local v32           #ascender:F
    .end local v38           #chunk:Lcom/itextpdf/text/pdf/PdfChunk;
    .end local v40           #color:Lcom/itextpdf/text/BaseColor;
    .end local v43           #descender:F
    .end local v45           #fontSize:F
    .end local v46           #fr:Ljava/lang/Float;
    .end local v71           #rise:F
    .end local v78           #strokeColor:Lcom/itextpdf/text/BaseColor;
    .end local v79           #strokeWidth:F
    .end local v84           #textRender:[Ljava/lang/Object;
    .end local v86           #tr:I
    .restart local v82       #tabPosition:F
    :cond_47
    if-eqz v52, :cond_48

    .line 1559
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->setWordSpacing(F)V

    .line 1560
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->setCharacterSpacing(F)V

    .line 1561
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfLine;->isNewlineSplit()Z

    move-result v4

    if-eqz v4, :cond_48

    .line 1562
    const/16 v56, 0x0

    .line 1564
    :cond_48
    if-eqz v29, :cond_49

    .line 1565
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/text/pdf/PdfContentByte;->getXTLM()F

    move-result v4

    sub-float v4, v5, v4

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveText(FF)V

    .line 1566
    :cond_49
    const/4 v4, 0x0

    aput-object v42, p4, v4

    .line 1567
    const/4 v4, 0x1

    new-instance v6, Ljava/lang/Float;

    move/from16 v0, v56

    invoke-direct {v6, v0}, Ljava/lang/Float;-><init>(F)V

    aput-object v6, p4, v4

    .line 1568
    return v60

    .end local v18           #hScale:F
    .end local v82           #tabPosition:F
    .restart local v14       #tabPosition:F
    .restart local v19       #b:F
    .restart local v20       #c:F
    .restart local v32       #ascender:F
    .restart local v38       #chunk:Lcom/itextpdf/text/pdf/PdfChunk;
    .restart local v40       #color:Lcom/itextpdf/text/BaseColor;
    .restart local v43       #descender:F
    .restart local v45       #fontSize:F
    .restart local v48       #hScale:F
    .restart local v50       #hs:Ljava/lang/Float;
    .restart local v63       #nextChunk:Lcom/itextpdf/text/pdf/PdfChunk;
    .restart local v67       #params:[F
    .restart local v89       #width:F
    :cond_4a
    move/from16 v18, v48

    .end local v48           #hScale:F
    .restart local v18       #hScale:F
    goto/16 :goto_8

    .end local v18           #hScale:F
    .end local v19           #b:F
    .end local v20           #c:F
    .restart local v48       #hScale:F
    :cond_4b
    move/from16 v18, v48

    .end local v48           #hScale:F
    .restart local v18       #hScale:F
    goto/16 :goto_9

    .end local v14           #tabPosition:F
    .end local v18           #hScale:F
    .end local v50           #hs:Ljava/lang/Float;
    .end local v67           #params:[F
    .restart local v48       #hScale:F
    .restart local v82       #tabPosition:F
    :cond_4c
    move/from16 v14, v82

    .end local v82           #tabPosition:F
    .restart local v14       #tabPosition:F
    goto/16 :goto_5

    .end local v14           #tabPosition:F
    .end local v63           #nextChunk:Lcom/itextpdf/text/pdf/PdfChunk;
    .restart local v82       #tabPosition:F
    :cond_4d
    move/from16 v14, v82

    .end local v82           #tabPosition:F
    .restart local v14       #tabPosition:F
    move/from16 v18, v48

    .end local v48           #hScale:F
    .restart local v18       #hScale:F
    goto/16 :goto_a

    .end local v14           #tabPosition:F
    .end local v18           #hScale:F
    .end local v89           #width:F
    .restart local v48       #hScale:F
    .restart local v82       #tabPosition:F
    :cond_4e
    move/from16 v14, v82

    .end local v82           #tabPosition:F
    .restart local v14       #tabPosition:F
    move/from16 v18, v48

    .end local v48           #hScale:F
    .restart local v18       #hScale:F
    goto/16 :goto_b
.end method

.method writeOutlines()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1810
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->rootOutline:Lcom/itextpdf/text/pdf/PdfOutline;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfOutline;->getKids()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1814
    :goto_0
    return-void

    .line 1812
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->rootOutline:Lcom/itextpdf/text/pdf/PdfOutline;

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfDocument;->outlineTree(Lcom/itextpdf/text/pdf/PdfOutline;)V

    .line 1813
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->rootOutline:Lcom/itextpdf/text/pdf/PdfOutline;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfDocument;->rootOutline:Lcom/itextpdf/text/pdf/PdfOutline;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfOutline;->indirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    goto :goto_0
.end method

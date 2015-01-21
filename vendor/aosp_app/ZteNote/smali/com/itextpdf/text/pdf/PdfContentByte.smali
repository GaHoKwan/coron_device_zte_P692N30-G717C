.class public Lcom/itextpdf/text/pdf/PdfContentByte;
.super Ljava/lang/Object;
.source "PdfContentByte.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;
    }
.end annotation


# static fields
.field public static final ALIGN_CENTER:I = 0x1

.field public static final ALIGN_LEFT:I = 0x0

.field public static final ALIGN_RIGHT:I = 0x2

.field public static final LINE_CAP_BUTT:I = 0x0

.field public static final LINE_CAP_PROJECTING_SQUARE:I = 0x2

.field public static final LINE_CAP_ROUND:I = 0x1

.field public static final LINE_JOIN_BEVEL:I = 0x2

.field public static final LINE_JOIN_MITER:I = 0x0

.field public static final LINE_JOIN_ROUND:I = 0x1

.field public static final TEXT_RENDER_MODE_CLIP:I = 0x7

.field public static final TEXT_RENDER_MODE_FILL:I = 0x0

.field public static final TEXT_RENDER_MODE_FILL_CLIP:I = 0x4

.field public static final TEXT_RENDER_MODE_FILL_STROKE:I = 0x2

.field public static final TEXT_RENDER_MODE_FILL_STROKE_CLIP:I = 0x6

.field public static final TEXT_RENDER_MODE_INVISIBLE:I = 0x3

.field public static final TEXT_RENDER_MODE_STROKE:I = 0x1

.field public static final TEXT_RENDER_MODE_STROKE_CLIP:I = 0x5

.field private static abrev:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/itextpdf/text/pdf/PdfName;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final unitRect:[F


# instance fields
.field protected content:Lcom/itextpdf/text/pdf/ByteBuffer;

.field private inText:Z

.field protected layerDepth:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mcDepth:I

.field protected pdf:Lcom/itextpdf/text/pdf/PdfDocument;

.field protected separator:I

.field protected state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

.field protected stateList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;",
            ">;"
        }
    .end annotation
.end field

.field protected writer:Lcom/itextpdf/text/pdf/PdfWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 161
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/text/pdf/PdfContentByte;->unitRect:[F

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfContentByte;->abrev:Ljava/util/HashMap;

    .line 192
    sget-object v0, Lcom/itextpdf/text/pdf/PdfContentByte;->abrev:Ljava/util/HashMap;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->BITSPERCOMPONENT:Lcom/itextpdf/text/pdf/PdfName;

    const-string v2, "/BPC "

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/itextpdf/text/pdf/PdfContentByte;->abrev:Ljava/util/HashMap;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->COLORSPACE:Lcom/itextpdf/text/pdf/PdfName;

    const-string v2, "/CS "

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/itextpdf/text/pdf/PdfContentByte;->abrev:Ljava/util/HashMap;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->DECODE:Lcom/itextpdf/text/pdf/PdfName;

    const-string v2, "/D "

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/itextpdf/text/pdf/PdfContentByte;->abrev:Ljava/util/HashMap;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->DECODEPARMS:Lcom/itextpdf/text/pdf/PdfName;

    const-string v2, "/DP "

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/itextpdf/text/pdf/PdfContentByte;->abrev:Ljava/util/HashMap;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->FILTER:Lcom/itextpdf/text/pdf/PdfName;

    const-string v2, "/F "

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/itextpdf/text/pdf/PdfContentByte;->abrev:Ljava/util/HashMap;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->HEIGHT:Lcom/itextpdf/text/pdf/PdfName;

    const-string v2, "/H "

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/itextpdf/text/pdf/PdfContentByte;->abrev:Ljava/util/HashMap;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->IMAGEMASK:Lcom/itextpdf/text/pdf/PdfName;

    const-string v2, "/IM "

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/itextpdf/text/pdf/PdfContentByte;->abrev:Ljava/util/HashMap;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->INTENT:Lcom/itextpdf/text/pdf/PdfName;

    const-string v2, "/Intent "

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/itextpdf/text/pdf/PdfContentByte;->abrev:Ljava/util/HashMap;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->INTERPOLATE:Lcom/itextpdf/text/pdf/PdfName;

    const-string v2, "/I "

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lcom/itextpdf/text/pdf/PdfContentByte;->abrev:Ljava/util/HashMap;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->WIDTH:Lcom/itextpdf/text/pdf/PdfName;

    const-string v2, "/W "

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    return-void

    .line 161
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfWriter;)V
    .locals 2
    .parameter "wr"

    .prologue
    const/4 v1, 0x0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance v0, Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/ByteBuffer;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 174
    new-instance v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->stateList:Ljava/util/ArrayList;

    .line 184
    const/16 v0, 0xa

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    .line 186
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->mcDepth:I

    .line 187
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->inText:Z

    .line 213
    if-eqz p1, :cond_0

    .line 214
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    .line 215
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfWriter;->getPdfDocument()Lcom/itextpdf/text/pdf/PdfDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    .line 217
    :cond_0
    return-void
.end method

.method private HelperCMYK(FFFF)V
    .locals 4
    .parameter "cyan"
    .parameter "magenta"
    .parameter "yellow"
    .parameter "black"

    .prologue
    const/16 v3, 0x20

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 613
    cmpg-float v0, p1, v1

    if-gez v0, :cond_4

    .line 614
    const/4 p1, 0x0

    .line 617
    :cond_0
    :goto_0
    cmpg-float v0, p2, v1

    if-gez v0, :cond_5

    .line 618
    const/4 p2, 0x0

    .line 621
    :cond_1
    :goto_1
    cmpg-float v0, p3, v1

    if-gez v0, :cond_6

    .line 622
    const/4 p3, 0x0

    .line 625
    :cond_2
    :goto_2
    cmpg-float v0, p4, v1

    if-gez v0, :cond_7

    .line 626
    const/4 p4, 0x0

    .line 629
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 630
    return-void

    .line 615
    :cond_4
    cmpl-float v0, p1, v2

    if-lez v0, :cond_0

    .line 616
    const/high16 p1, 0x3f80

    goto :goto_0

    .line 619
    :cond_5
    cmpl-float v0, p2, v2

    if-lez v0, :cond_1

    .line 620
    const/high16 p2, 0x3f80

    goto :goto_1

    .line 623
    :cond_6
    cmpl-float v0, p3, v2

    if-lez v0, :cond_2

    .line 624
    const/high16 p3, 0x3f80

    goto :goto_2

    .line 627
    :cond_7
    cmpl-float v0, p4, v2

    if-lez v0, :cond_3

    .line 628
    const/high16 p4, 0x3f80

    goto :goto_3
.end method

.method private HelperRGB(FFF)V
    .locals 6
    .parameter "red"
    .parameter "green"
    .parameter "blue"

    .prologue
    const/16 v5, 0x20

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 533
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;->checkPDFXConformance(Lcom/itextpdf/text/pdf/PdfWriter;ILjava/lang/Object;)V

    .line 534
    cmpg-float v0, p1, v3

    if-gez v0, :cond_3

    .line 535
    const/4 p1, 0x0

    .line 538
    :cond_0
    :goto_0
    cmpg-float v0, p2, v3

    if-gez v0, :cond_4

    .line 539
    const/4 p2, 0x0

    .line 542
    :cond_1
    :goto_1
    cmpg-float v0, p3, v3

    if-gez v0, :cond_5

    .line 543
    const/4 p3, 0x0

    .line 546
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 547
    return-void

    .line 536
    :cond_3
    cmpl-float v0, p1, v4

    if-lez v0, :cond_0

    .line 537
    const/high16 p1, 0x3f80

    goto :goto_0

    .line 540
    :cond_4
    cmpl-float v0, p2, v4

    if-lez v0, :cond_1

    .line 541
    const/high16 p2, 0x3f80

    goto :goto_1

    .line 544
    :cond_5
    cmpl-float v0, p3, v4

    if-lez v0, :cond_2

    .line 545
    const/high16 p3, 0x3f80

    goto :goto_2
.end method

.method private beginLayer2(Lcom/itextpdf/text/pdf/PdfOCG;)V
    .locals 4
    .parameter "layer"

    .prologue
    .line 2919
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-interface {p1}, Lcom/itextpdf/text/pdf/PdfOCG;->getRef()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/itextpdf/text/pdf/PdfWriter;->addSimpleProperty(Ljava/lang/Object;Lcom/itextpdf/text/pdf/PdfIndirectReference;)[Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v0, v2, v3

    check-cast v0, Lcom/itextpdf/text/pdf/PdfName;

    .line 2920
    .local v0, name:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getPageResources()Lcom/itextpdf/text/pdf/PageResources;

    move-result-object v1

    .line 2921
    .local v1, prs:Lcom/itextpdf/text/pdf/PageResources;
    invoke-interface {p1}, Lcom/itextpdf/text/pdf/PdfOCG;->getRef()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/itextpdf/text/pdf/PageResources;->addProperty(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v0

    .line 2922
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string v3, "/OC "

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    const-string v3, " BDC"

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    iget v3, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2923
    return-void
.end method

.method public static bezierArc(FFFFFF)Ljava/util/ArrayList;
    .locals 25
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"
    .parameter "startAng"
    .parameter "extent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFFFF)",
            "Ljava/util/ArrayList",
            "<[F>;"
        }
    .end annotation

    .prologue
    .line 1884
    cmpl-float v19, p0, p2

    if-lez v19, :cond_0

    .line 1885
    move/from16 v16, p0

    .line 1886
    .local v16, tmp:F
    move/from16 p0, p2

    .line 1887
    move/from16 p2, v16

    .line 1889
    .end local v16           #tmp:F
    :cond_0
    cmpl-float v19, p3, p1

    if-lez v19, :cond_1

    .line 1890
    move/from16 v16, p1

    .line 1891
    .restart local v16       #tmp:F
    move/from16 p1, p3

    .line 1892
    move/from16 p3, v16

    .line 1897
    .end local v16           #tmp:F
    :cond_1
    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->abs(F)F

    move-result v19

    const/high16 v20, 0x42b4

    cmpg-float v19, v19, v20

    if-gtz v19, :cond_2

    .line 1898
    move/from16 v5, p5

    .line 1899
    .local v5, fragAngle:F
    const/4 v2, 0x1

    .line 1905
    .local v2, Nfrag:I
    :goto_0
    add-float v19, p0, p2

    const/high16 v20, 0x4000

    div-float v17, v19, v20

    .line 1906
    .local v17, x_cen:F
    add-float v19, p1, p3

    const/high16 v20, 0x4000

    div-float v18, v19, v20

    .line 1907
    .local v18, y_cen:F
    sub-float v19, p2, p0

    const/high16 v20, 0x4000

    div-float v10, v19, v20

    .line 1908
    .local v10, rx:F
    sub-float v19, p3, p1

    const/high16 v20, 0x4000

    div-float v11, v19, v20

    .line 1909
    .local v11, ry:F
    float-to-double v0, v5

    move-wide/from16 v19, v0

    const-wide v21, 0x400921fb54442d18L

    mul-double v19, v19, v21

    const-wide v21, 0x4076800000000000L

    div-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-float v6, v0

    .line 1910
    .local v6, halfAng:F
    const-wide v19, 0x3ff5555555555555L

    const-wide/high16 v21, 0x3ff0

    float-to-double v0, v6

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    sub-double v21, v21, v23

    mul-double v19, v19, v21

    float-to-double v0, v6

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    div-double v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v8, v0

    .line 1911
    .local v8, kappa:F
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1912
    .local v9, pointList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[F>;"
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v2, :cond_4

    .line 1913
    int-to-float v0, v7

    move/from16 v19, v0

    mul-float v19, v19, v5

    add-float v19, v19, p4

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    const-wide v21, 0x400921fb54442d18L

    mul-double v19, v19, v21

    const-wide v21, 0x4066800000000000L

    div-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-float v14, v0

    .line 1914
    .local v14, theta0:F
    add-int/lit8 v19, v7, 0x1

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v5

    add-float v19, v19, p4

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    const-wide v21, 0x400921fb54442d18L

    mul-double v19, v19, v21

    const-wide v21, 0x4066800000000000L

    div-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-float v15, v0

    .line 1915
    .local v15, theta1:F
    float-to-double v0, v14

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v3, v0

    .line 1916
    .local v3, cos0:F
    float-to-double v0, v15

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v4, v0

    .line 1917
    .local v4, cos1:F
    float-to-double v0, v14

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v12, v0

    .line 1918
    .local v12, sin0:F
    float-to-double v0, v15

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v13, v0

    .line 1919
    .local v13, sin1:F
    const/16 v19, 0x0

    cmpl-float v19, v5, v19

    if-lez v19, :cond_3

    .line 1920
    const/16 v19, 0x8

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    mul-float v21, v10, v3

    add-float v21, v21, v17

    aput v21, v19, v20

    const/16 v20, 0x1

    mul-float v21, v11, v12

    sub-float v21, v18, v21

    aput v21, v19, v20

    const/16 v20, 0x2

    mul-float v21, v8, v12

    sub-float v21, v3, v21

    mul-float v21, v21, v10

    add-float v21, v21, v17

    aput v21, v19, v20

    const/16 v20, 0x3

    mul-float v21, v8, v3

    add-float v21, v21, v12

    mul-float v21, v21, v11

    sub-float v21, v18, v21

    aput v21, v19, v20

    const/16 v20, 0x4

    mul-float v21, v8, v13

    add-float v21, v21, v4

    mul-float v21, v21, v10

    add-float v21, v21, v17

    aput v21, v19, v20

    const/16 v20, 0x5

    mul-float v21, v8, v4

    sub-float v21, v13, v21

    mul-float v21, v21, v11

    sub-float v21, v18, v21

    aput v21, v19, v20

    const/16 v20, 0x6

    mul-float v21, v10, v4

    add-float v21, v21, v17

    aput v21, v19, v20

    const/16 v20, 0x7

    mul-float v21, v11, v13

    sub-float v21, v18, v21

    aput v21, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1912
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 1902
    .end local v2           #Nfrag:I
    .end local v3           #cos0:F
    .end local v4           #cos1:F
    .end local v5           #fragAngle:F
    .end local v6           #halfAng:F
    .end local v7           #i:I
    .end local v8           #kappa:F
    .end local v9           #pointList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[F>;"
    .end local v10           #rx:F
    .end local v11           #ry:F
    .end local v12           #sin0:F
    .end local v13           #sin1:F
    .end local v14           #theta0:F
    .end local v15           #theta1:F
    .end local v17           #x_cen:F
    .end local v18           #y_cen:F
    :cond_2
    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->abs(F)F

    move-result v19

    const/high16 v20, 0x42b4

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-int v2, v0

    .line 1903
    .restart local v2       #Nfrag:I
    int-to-float v0, v2

    move/from16 v19, v0

    div-float v5, p5, v19

    .restart local v5       #fragAngle:F
    goto/16 :goto_0

    .line 1930
    .restart local v3       #cos0:F
    .restart local v4       #cos1:F
    .restart local v6       #halfAng:F
    .restart local v7       #i:I
    .restart local v8       #kappa:F
    .restart local v9       #pointList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[F>;"
    .restart local v10       #rx:F
    .restart local v11       #ry:F
    .restart local v12       #sin0:F
    .restart local v13       #sin1:F
    .restart local v14       #theta0:F
    .restart local v15       #theta1:F
    .restart local v17       #x_cen:F
    .restart local v18       #y_cen:F
    :cond_3
    const/16 v19, 0x8

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    mul-float v21, v10, v3

    add-float v21, v21, v17

    aput v21, v19, v20

    const/16 v20, 0x1

    mul-float v21, v11, v12

    sub-float v21, v18, v21

    aput v21, v19, v20

    const/16 v20, 0x2

    mul-float v21, v8, v12

    add-float v21, v21, v3

    mul-float v21, v21, v10

    add-float v21, v21, v17

    aput v21, v19, v20

    const/16 v20, 0x3

    mul-float v21, v8, v3

    sub-float v21, v12, v21

    mul-float v21, v21, v11

    sub-float v21, v18, v21

    aput v21, v19, v20

    const/16 v20, 0x4

    mul-float v21, v8, v13

    sub-float v21, v4, v21

    mul-float v21, v21, v10

    add-float v21, v21, v17

    aput v21, v19, v20

    const/16 v20, 0x5

    mul-float v21, v8, v4

    add-float v21, v21, v13

    mul-float v21, v21, v11

    sub-float v21, v18, v21

    aput v21, v19, v20

    const/16 v20, 0x6

    mul-float v21, v10, v4

    add-float v21, v21, v17

    aput v21, v19, v20

    const/16 v20, 0x7

    mul-float v21, v11, v13

    sub-float v21, v18, v21

    aput v21, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1940
    .end local v3           #cos0:F
    .end local v4           #cos1:F
    .end local v12           #sin0:F
    .end local v13           #sin1:F
    .end local v14           #theta0:F
    .end local v15           #theta1:F
    :cond_4
    return-object v9
.end method

.method private compareColors(Lcom/itextpdf/text/BaseColor;Lcom/itextpdf/text/BaseColor;)Z
    .locals 1
    .parameter "c1"
    .parameter "c2"

    .prologue
    .line 803
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 804
    const/4 v0, 0x1

    .line 809
    :goto_0
    return v0

    .line 805
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 806
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 807
    :cond_2
    instance-of v0, p1, Lcom/itextpdf/text/pdf/ExtendedColor;

    if-eqz v0, :cond_3

    .line 808
    invoke-virtual {p1, p2}, Lcom/itextpdf/text/BaseColor;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 809
    :cond_3
    invoke-virtual {p2, p1}, Lcom/itextpdf/text/BaseColor;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static escapeString([BLcom/itextpdf/text/pdf/ByteBuffer;)V
    .locals 3
    .parameter "b"
    .parameter "content"

    .prologue
    .line 1676
    const/16 v2, 0x28

    invoke-virtual {p1, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1677
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 1678
    aget-byte v0, p0, v1

    .line 1679
    .local v0, c:B
    sparse-switch v0, :sswitch_data_0

    .line 1701
    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1677
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1681
    :sswitch_0
    const-string v2, "\\r"

    invoke-virtual {p1, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    goto :goto_1

    .line 1684
    :sswitch_1
    const-string v2, "\\n"

    invoke-virtual {p1, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    goto :goto_1

    .line 1687
    :sswitch_2
    const-string v2, "\\t"

    invoke-virtual {p1, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    goto :goto_1

    .line 1690
    :sswitch_3
    const-string v2, "\\b"

    invoke-virtual {p1, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    goto :goto_1

    .line 1693
    :sswitch_4
    const-string v2, "\\f"

    invoke-virtual {p1, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    goto :goto_1

    .line 1698
    :sswitch_5
    const/16 v2, 0x5c

    invoke-virtual {p1, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    goto :goto_1

    .line 1704
    .end local v0           #c:B
    :cond_0
    const-string v2, ")"

    invoke-virtual {p1, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1705
    return-void

    .line 1679
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_3
        0x9 -> :sswitch_2
        0xa -> :sswitch_1
        0xc -> :sswitch_4
        0xd -> :sswitch_0
        0x28 -> :sswitch_5
        0x29 -> :sswitch_5
        0x5c -> :sswitch_5
    .end sparse-switch
.end method

.method static escapeString([B)[B
    .locals 2
    .parameter "b"

    .prologue
    .line 1664
    new-instance v0, Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/ByteBuffer;-><init>()V

    .line 1665
    .local v0, content:Lcom/itextpdf/text/pdf/ByteBuffer;
    invoke-static {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->escapeString([BLcom/itextpdf/text/pdf/ByteBuffer;)V

    .line 1666
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static getKernArray(Ljava/lang/String;Lcom/itextpdf/text/pdf/BaseFont;)Lcom/itextpdf/text/pdf/PdfTextArray;
    .locals 10
    .parameter "text"
    .parameter "font"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1501
    new-instance v6, Lcom/itextpdf/text/pdf/PdfTextArray;

    invoke-direct {v6}, Lcom/itextpdf/text/pdf/PdfTextArray;-><init>()V

    .line 1502
    .local v6, pa:Lcom/itextpdf/text/pdf/PdfTextArray;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1503
    .local v0, acc:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    .line 1504
    .local v5, len:I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 1505
    .local v1, c:[C
    if-ltz v5, :cond_0

    .line 1506
    invoke-virtual {v0, v1, v8, v9}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 1507
    :cond_0
    const/4 v3, 0x0

    .local v3, k:I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 1508
    add-int/lit8 v7, v3, 0x1

    aget-char v2, v1, v7

    .line 1509
    .local v2, c2:C
    aget-char v7, v1, v3

    invoke-virtual {p1, v7, v2}, Lcom/itextpdf/text/pdf/BaseFont;->getKerning(II)I

    move-result v4

    .line 1510
    .local v4, kern:I
    if-nez v4, :cond_1

    .line 1511
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1507
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1514
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/itextpdf/text/pdf/PdfTextArray;->add(Ljava/lang/String;)V

    .line 1515
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1516
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v0, v1, v7, v9}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 1517
    neg-int v7, v4

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Lcom/itextpdf/text/pdf/PdfTextArray;->add(F)V

    goto :goto_1

    .line 1520
    .end local v2           #c2:C
    .end local v4           #kern:I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/itextpdf/text/pdf/PdfTextArray;->add(Ljava/lang/String;)V

    .line 1521
    return-object v6
.end method

.method private showText2(Ljava/lang/String;)V
    .locals 4
    .parameter "text"

    .prologue
    .line 1478
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget-object v1, v1, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->fontDetails:Lcom/itextpdf/text/pdf/FontDetails;

    if-nez v1, :cond_0

    .line 1479
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "font.and.size.must.be.set.before.writing.any.text"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1480
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget-object v1, v1, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->fontDetails:Lcom/itextpdf/text/pdf/FontDetails;

    invoke-virtual {v1, p1}, Lcom/itextpdf/text/pdf/FontDetails;->convertToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1481
    .local v0, b:[B
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-static {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->escapeString([BLcom/itextpdf/text/pdf/ByteBuffer;)V

    .line 1482
    return-void
.end method

.method private showTextAligned(ILjava/lang/String;FFFZ)V
    .locals 11
    .parameter "alignment"
    .parameter "text"
    .parameter "x"
    .parameter "y"
    .parameter "rotation"
    .parameter "kerned"

    .prologue
    .line 1778
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget-object v1, v1, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->fontDetails:Lcom/itextpdf/text/pdf/FontDetails;

    if-nez v1, :cond_0

    .line 1779
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v4, "font.and.size.must.be.set.before.writing.any.text"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1780
    :cond_0
    const/4 v1, 0x0

    cmpl-float v1, p5, v1

    if-nez v1, :cond_2

    .line 1781
    packed-switch p1, :pswitch_data_0

    .line 1789
    :goto_0
    invoke-virtual {p0, p3, p4}, Lcom/itextpdf/text/pdf/PdfContentByte;->setTextMatrix(FF)V

    .line 1790
    if-eqz p6, :cond_1

    .line 1791
    invoke-virtual {p0, p2}, Lcom/itextpdf/text/pdf/PdfContentByte;->showTextKerned(Ljava/lang/String;)V

    .line 1819
    :goto_1
    return-void

    .line 1783
    :pswitch_0
    move/from16 v0, p6

    invoke-virtual {p0, p2, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getEffectiveStringWidth(Ljava/lang/String;Z)F

    move-result v1

    const/high16 v4, 0x4000

    div-float/2addr v1, v4

    sub-float/2addr p3, v1

    .line 1784
    goto :goto_0

    .line 1786
    :pswitch_1
    move/from16 v0, p6

    invoke-virtual {p0, p2, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getEffectiveStringWidth(Ljava/lang/String;Z)F

    move-result v1

    sub-float/2addr p3, v1

    goto :goto_0

    .line 1793
    :cond_1
    invoke-virtual {p0, p2}, Lcom/itextpdf/text/pdf/PdfContentByte;->showText(Ljava/lang/String;)V

    goto :goto_1

    .line 1796
    :cond_2
    move/from16 v0, p5

    float-to-double v4, v0

    const-wide v6, 0x400921fb54442d18L

    mul-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L

    div-double v8, v4, v6

    .line 1797
    .local v8, alpha:D
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v2, v4

    .line 1798
    .local v2, cos:F
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 1800
    .local v3, sin:F
    packed-switch p1, :pswitch_data_1

    .line 1812
    :goto_2
    neg-float v4, v3

    move-object v1, p0

    move v5, v2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/itextpdf/text/pdf/PdfContentByte;->setTextMatrix(FFFFFF)V

    .line 1813
    if-eqz p6, :cond_3

    .line 1814
    invoke-virtual {p0, p2}, Lcom/itextpdf/text/pdf/PdfContentByte;->showTextKerned(Ljava/lang/String;)V

    .line 1817
    :goto_3
    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->setTextMatrix(FF)V

    goto :goto_1

    .line 1802
    :pswitch_2
    move/from16 v0, p6

    invoke-virtual {p0, p2, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getEffectiveStringWidth(Ljava/lang/String;Z)F

    move-result v1

    const/high16 v4, 0x4000

    div-float v10, v1, v4

    .line 1803
    .local v10, len:F
    mul-float v1, v10, v2

    sub-float/2addr p3, v1

    .line 1804
    mul-float v1, v10, v3

    sub-float/2addr p4, v1

    .line 1805
    goto :goto_2

    .line 1807
    .end local v10           #len:F
    :pswitch_3
    move/from16 v0, p6

    invoke-virtual {p0, p2, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getEffectiveStringWidth(Ljava/lang/String;Z)F

    move-result v10

    .line 1808
    .restart local v10       #len:F
    mul-float v1, v10, v2

    sub-float/2addr p3, v1

    .line 1809
    mul-float v1, v10, v3

    sub-float/2addr p4, v1

    goto :goto_2

    .line 1816
    .end local v10           #len:F
    :cond_3
    invoke-virtual {p0, p2}, Lcom/itextpdf/text/pdf/PdfContentByte;->showText(Ljava/lang/String;)V

    goto :goto_3

    .line 1781
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1800
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public add(Lcom/itextpdf/text/pdf/PdfContentByte;)V
    .locals 3
    .parameter "other"

    .prologue
    .line 260
    iget-object v0, p1, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    iget-object v1, p1, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    if-eq v0, v1, :cond_0

    .line 261
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "inconsistent.writers.are.you.mixing.two.documents"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    iget-object v1, p1, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Lcom/itextpdf/text/pdf/ByteBuffer;)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 263
    return-void
.end method

.method addAnnotation(Lcom/itextpdf/text/pdf/PdfAnnotation;)V
    .locals 1
    .parameter "annot"

    .prologue
    .line 2952
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfWriter;->addAnnotation(Lcom/itextpdf/text/pdf/PdfAnnotation;)V

    .line 2953
    return-void
.end method

.method public addImage(Lcom/itextpdf/text/Image;)V
    .locals 1
    .parameter "image"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 1144
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->addImage(Lcom/itextpdf/text/Image;Z)V

    .line 1145
    return-void
.end method

.method public addImage(Lcom/itextpdf/text/Image;FFFFFF)V
    .locals 9
    .parameter "image"
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"
    .parameter "e"
    .parameter "f"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 1177
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/text/pdf/PdfContentByte;->addImage(Lcom/itextpdf/text/Image;FFFFFFZ)V

    .line 1178
    return-void
.end method

.method public addImage(Lcom/itextpdf/text/Image;FFFFFFZ)V
    .locals 39
    .parameter "image"
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"
    .parameter "e"
    .parameter "f"
    .parameter "inlineImage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 1208
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getLayer()Lcom/itextpdf/text/pdf/PdfOCG;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1209
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getLayer()Lcom/itextpdf/text/pdf/PdfOCG;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->beginLayer(Lcom/itextpdf/text/pdf/PdfOCG;)V

    .line 1210
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->isImgTemplate()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1211
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfWriter;->addDirectImageSimple(Lcom/itextpdf/text/Image;)Lcom/itextpdf/text/pdf/PdfName;

    .line 1212
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getTemplateData()Lcom/itextpdf/text/pdf/PdfTemplate;

    move-result-object v5

    .line 1213
    .local v5, template:Lcom/itextpdf/text/pdf/PdfTemplate;
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfTemplate;->getWidth()F

    move-result v38

    .line 1214
    .local v38, w:F
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfTemplate;->getHeight()F

    move-result v23

    .line 1215
    .local v23, h:F
    div-float v6, p2, v38

    div-float v7, p3, v38

    div-float v8, p4, v23

    div-float v9, p5, v23

    move-object/from16 v4, p0

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-virtual/range {v4 .. v11}, Lcom/itextpdf/text/pdf/PdfContentByte;->addTemplate(Lcom/itextpdf/text/pdf/PdfTemplate;FFFFFF)V

    .line 1282
    .end local v5           #template:Lcom/itextpdf/text/pdf/PdfTemplate;
    .end local v23           #h:F
    .end local v38           #w:F
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->hasBorders()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1283
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->saveState()V

    .line 1284
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getWidth()F

    move-result v38

    .line 1285
    .restart local v38       #w:F
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getHeight()F

    move-result v23

    .line 1286
    .restart local v23       #h:F
    div-float v7, p2, v38

    div-float v8, p3, v38

    div-float v9, p4, v23

    div-float v10, p5, v23

    move-object/from16 v6, p0

    move/from16 v11, p6

    move/from16 v12, p7

    invoke-virtual/range {v6 .. v12}, Lcom/itextpdf/text/pdf/PdfContentByte;->concatCTM(FFFFFF)V

    .line 1287
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/text/pdf/PdfContentByte;->rectangle(Lcom/itextpdf/text/Rectangle;)V

    .line 1288
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->restoreState()V

    .line 1290
    .end local v23           #h:F
    .end local v38           #w:F
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getLayer()Lcom/itextpdf/text/pdf/PdfOCG;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1291
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->endLayer()V

    .line 1292
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getAnnotation()Lcom/itextpdf/text/Annotation;

    move-result-object v14

    .line 1293
    .local v14, annot:Lcom/itextpdf/text/Annotation;
    if-nez v14, :cond_b

    .line 1320
    :goto_1
    return-void

    .line 1218
    .end local v14           #annot:Lcom/itextpdf/text/Annotation;
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string v6, "q "

    invoke-virtual {v4, v6}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1219
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    const/16 v6, 0x20

    invoke-virtual {v4, v6}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1220
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    const/16 v6, 0x20

    invoke-virtual {v4, v6}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1221
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    const/16 v6, 0x20

    invoke-virtual {v4, v6}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1222
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    const/16 v6, 0x20

    invoke-virtual {v4, v6}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1223
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    const/16 v6, 0x20

    invoke-virtual {v4, v6}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1224
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    move/from16 v0, p7

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    const-string v6, " cm"

    invoke-virtual {v4, v6}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1225
    if-eqz p8, :cond_9

    .line 1226
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string v6, "\nBI\n"

    invoke-virtual {v4, v6}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1227
    new-instance v31, Lcom/itextpdf/text/pdf/PdfImage;

    const-string v4, ""

    const/4 v6, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v6}, Lcom/itextpdf/text/pdf/PdfImage;-><init>(Lcom/itextpdf/text/Image;Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfIndirectReference;)V

    .line 1228
    .local v31, pimage:Lcom/itextpdf/text/pdf/PdfImage;
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/itextpdf/text/ImgJBIG2;

    if-eqz v4, :cond_4

    .line 1229
    move-object/from16 v0, p1

    check-cast v0, Lcom/itextpdf/text/ImgJBIG2;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/itextpdf/text/ImgJBIG2;->getGlobalBytes()[B

    move-result-object v22

    .line 1230
    .local v22, globals:[B
    if-eqz v22, :cond_4

    .line 1231
    new-instance v19, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct/range {v19 .. v19}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 1232
    .local v19, decodeparms:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->JBIG2GLOBALS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/itextpdf/text/pdf/PdfWriter;->getReferenceJBIG2Globals([B)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1233
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->DECODEPARMS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Lcom/itextpdf/text/pdf/PdfImage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1236
    .end local v19           #decodeparms:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v22           #globals:[B
    :cond_4
    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/pdf/PdfImage;->getKeys()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/itextpdf/text/pdf/PdfName;

    .line 1237
    .local v21, element:Lcom/itextpdf/text/pdf/PdfName;
    move-object/from16 v0, v21

    check-cast v0, Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v26, v0

    .line 1238
    .local v26, key:Lcom/itextpdf/text/pdf/PdfName;
    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfImage;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v37

    .line 1239
    .local v37, value:Lcom/itextpdf/text/pdf/PdfObject;
    sget-object v4, Lcom/itextpdf/text/pdf/PdfContentByte;->abrev:Ljava/util/HashMap;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    .line 1240
    .local v34, s:Ljava/lang/String;
    if-eqz v34, :cond_5

    .line 1242
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1243
    const/16 v17, 0x1

    .line 1244
    .local v17, check:Z
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->COLORSPACE:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual/range {v37 .. v37}, Lcom/itextpdf/text/pdf/PdfObject;->isArray()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1245
    move-object/from16 v0, v37

    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    move-object/from16 v16, v0

    .line 1246
    .local v16, ar:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_6

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->INDEXED:Lcom/itextpdf/text/pdf/PdfName;

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/PdfArray;->getAsName(I)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfObject;->isName()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfObject;->isNumber()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x3

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfObject;->isString()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1252
    const/16 v17, 0x0

    .line 1256
    .end local v16           #ar:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_6
    if-eqz v17, :cond_7

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->COLORSPACE:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual/range {v37 .. v37}, Lcom/itextpdf/text/pdf/PdfObject;->isName()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1257
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfWriter;->getColorspaceName()Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v18

    .line 1258
    .local v18, cs:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getPageResources()Lcom/itextpdf/text/pdf/PageResources;

    move-result-object v32

    .line 1259
    .local v32, prs:Lcom/itextpdf/text/pdf/PageResources;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v4

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Lcom/itextpdf/text/pdf/PageResources;->addColor(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;

    .line 1260
    move-object/from16 v37, v18

    .line 1262
    .end local v18           #cs:Lcom/itextpdf/text/pdf/PdfName;
    .end local v32           #prs:Lcom/itextpdf/text/pdf/PageResources;
    :cond_7
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    move-object/from16 v0, v37

    invoke-virtual {v0, v4, v6}, Lcom/itextpdf/text/pdf/PdfObject;->toPdf(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/io/OutputStream;)V

    .line 1263
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 1317
    .end local v17           #check:Z
    .end local v21           #element:Lcom/itextpdf/text/pdf/PdfName;
    .end local v24           #i$:Ljava/util/Iterator;
    .end local v26           #key:Lcom/itextpdf/text/pdf/PdfName;
    .end local v31           #pimage:Lcom/itextpdf/text/pdf/PdfImage;
    .end local v34           #s:Ljava/lang/String;
    .end local v37           #value:Lcom/itextpdf/text/pdf/PdfObject;
    :catch_0
    move-exception v20

    .line 1318
    .local v20, ee:Ljava/lang/Exception;
    new-instance v4, Lcom/itextpdf/text/DocumentException;

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/Exception;)V

    throw v4

    .line 1265
    .end local v20           #ee:Ljava/lang/Exception;
    .restart local v24       #i$:Ljava/util/Iterator;
    .restart local v31       #pimage:Lcom/itextpdf/text/pdf/PdfImage;
    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string v6, "ID\n"

    invoke-virtual {v4, v6}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1266
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfImage;->writeContent(Ljava/io/OutputStream;)V

    .line 1267
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string v6, "\nEI\nQ"

    invoke-virtual {v4, v6}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v4, v6}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    goto/16 :goto_0

    .line 1271
    .end local v24           #i$:Ljava/util/Iterator;
    .end local v31           #pimage:Lcom/itextpdf/text/pdf/PdfImage;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getPageResources()Lcom/itextpdf/text/pdf/PageResources;

    move-result-object v32

    .line 1272
    .restart local v32       #prs:Lcom/itextpdf/text/pdf/PageResources;
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getImageMask()Lcom/itextpdf/text/Image;

    move-result-object v29

    .line 1273
    .local v29, maskImage:Lcom/itextpdf/text/Image;
    if-eqz v29, :cond_a

    .line 1274
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfWriter;->addDirectImageSimple(Lcom/itextpdf/text/Image;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v30

    .line 1275
    .local v30, name:Lcom/itextpdf/text/pdf/PdfName;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfWriter;->getImageReference(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v4

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v4}, Lcom/itextpdf/text/pdf/PageResources;->addXObject(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;

    .line 1277
    .end local v30           #name:Lcom/itextpdf/text/pdf/PdfName;
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfWriter;->addDirectImageSimple(Lcom/itextpdf/text/Image;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v30

    .line 1278
    .restart local v30       #name:Lcom/itextpdf/text/pdf/PdfName;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfWriter;->getImageReference(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v4

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v4}, Lcom/itextpdf/text/pdf/PageResources;->addXObject(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v30

    .line 1279
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const/16 v6, 0x20

    invoke-virtual {v4, v6}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    invoke-virtual/range {v30 .. v30}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    const-string v6, " Do Q"

    invoke-virtual {v4, v6}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v4, v6}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    goto/16 :goto_0

    .line 1295
    .end local v29           #maskImage:Lcom/itextpdf/text/Image;
    .end local v30           #name:Lcom/itextpdf/text/pdf/PdfName;
    .end local v32           #prs:Lcom/itextpdf/text/pdf/PageResources;
    .restart local v14       #annot:Lcom/itextpdf/text/Annotation;
    :cond_b
    sget-object v4, Lcom/itextpdf/text/pdf/PdfContentByte;->unitRect:[F

    array-length v4, v4

    new-array v0, v4, [F

    move-object/from16 v33, v0

    .line 1296
    .local v33, r:[F
    const/16 v25, 0x0

    .local v25, k:I
    :goto_3
    sget-object v4, Lcom/itextpdf/text/pdf/PdfContentByte;->unitRect:[F

    array-length v4, v4

    move/from16 v0, v25

    if-ge v0, v4, :cond_c

    .line 1297
    sget-object v4, Lcom/itextpdf/text/pdf/PdfContentByte;->unitRect:[F

    aget v4, v4, v25

    mul-float v4, v4, p2

    sget-object v6, Lcom/itextpdf/text/pdf/PdfContentByte;->unitRect:[F

    add-int/lit8 v7, v25, 0x1

    aget v6, v6, v7

    mul-float v6, v6, p4

    add-float/2addr v4, v6

    add-float v4, v4, p6

    aput v4, v33, v25

    .line 1298
    add-int/lit8 v4, v25, 0x1

    sget-object v6, Lcom/itextpdf/text/pdf/PdfContentByte;->unitRect:[F

    aget v6, v6, v25

    mul-float v6, v6, p3

    sget-object v7, Lcom/itextpdf/text/pdf/PdfContentByte;->unitRect:[F

    add-int/lit8 v8, v25, 0x1

    aget v7, v7, v8

    mul-float v7, v7, p5

    add-float/2addr v6, v7

    add-float v6, v6, p7

    aput v6, v33, v4

    .line 1296
    add-int/lit8 v25, v25, 0x2

    goto :goto_3

    .line 1300
    :cond_c
    const/4 v4, 0x0

    aget v27, v33, v4

    .line 1301
    .local v27, llx:F
    const/4 v4, 0x1

    aget v28, v33, v4

    .line 1302
    .local v28, lly:F
    move/from16 v35, v27

    .line 1303
    .local v35, urx:F
    move/from16 v36, v28

    .line 1304
    .local v36, ury:F
    const/16 v25, 0x2

    :goto_4
    move-object/from16 v0, v33

    array-length v4, v0

    move/from16 v0, v25

    if-ge v0, v4, :cond_d

    .line 1305
    aget v4, v33, v25

    move/from16 v0, v27

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v27

    .line 1306
    add-int/lit8 v4, v25, 0x1

    aget v4, v33, v4

    move/from16 v0, v28

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v28

    .line 1307
    aget v4, v33, v25

    move/from16 v0, v35

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v35

    .line 1308
    add-int/lit8 v4, v25, 0x1

    aget v4, v33, v4

    move/from16 v0, v36

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v36

    .line 1304
    add-int/lit8 v25, v25, 0x2

    goto :goto_4

    .line 1310
    :cond_d
    new-instance v15, Lcom/itextpdf/text/Annotation;

    invoke-direct {v15, v14}, Lcom/itextpdf/text/Annotation;-><init>(Lcom/itextpdf/text/Annotation;)V

    .line 1311
    .end local v14           #annot:Lcom/itextpdf/text/Annotation;
    .local v15, annot:Lcom/itextpdf/text/Annotation;
    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v35

    move/from16 v3, v36

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/itextpdf/text/Annotation;->setDimensions(FFFF)V

    .line 1312
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    new-instance v6, Lcom/itextpdf/text/Rectangle;

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v35

    move/from16 v3, v36

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    invoke-static {v4, v15, v6}, Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;->convertAnnotation(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Annotation;Lcom/itextpdf/text/Rectangle;)Lcom/itextpdf/text/pdf/PdfAnnotation;

    move-result-object v13

    .line 1313
    .local v13, an:Lcom/itextpdf/text/pdf/PdfAnnotation;
    if-nez v13, :cond_e

    move-object v14, v15

    .line 1314
    .end local v15           #annot:Lcom/itextpdf/text/Annotation;
    .restart local v14       #annot:Lcom/itextpdf/text/Annotation;
    goto/16 :goto_1

    .line 1315
    .end local v14           #annot:Lcom/itextpdf/text/Annotation;
    .restart local v15       #annot:Lcom/itextpdf/text/Annotation;
    :cond_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/itextpdf/text/pdf/PdfContentByte;->addAnnotation(Lcom/itextpdf/text/pdf/PdfAnnotation;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v14, v15

    .line 1320
    .end local v15           #annot:Lcom/itextpdf/text/Annotation;
    .restart local v14       #annot:Lcom/itextpdf/text/Annotation;
    goto/16 :goto_1
.end method

.method public addImage(Lcom/itextpdf/text/Image;Lcom/itextpdf/awt/geom/AffineTransform;)V
    .locals 10
    .parameter "image"
    .parameter "transform"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1186
    const/4 v0, 0x6

    new-array v9, v0, [D

    .line 1187
    .local v9, matrix:[D
    invoke-virtual {p2, v9}, Lcom/itextpdf/awt/geom/AffineTransform;->getMatrix([D)V

    .line 1188
    aget-wide v0, v9, v8

    double-to-float v2, v0

    const/4 v0, 0x1

    aget-wide v0, v9, v0

    double-to-float v3, v0

    const/4 v0, 0x2

    aget-wide v0, v9, v0

    double-to-float v4, v0

    const/4 v0, 0x3

    aget-wide v0, v9, v0

    double-to-float v5, v0

    const/4 v0, 0x4

    aget-wide v0, v9, v0

    double-to-float v6, v0

    const/4 v0, 0x5

    aget-wide v0, v9, v0

    double-to-float v7, v0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/text/pdf/PdfContentByte;->addImage(Lcom/itextpdf/text/Image;FFFFFFZ)V

    .line 1190
    return-void
.end method

.method public addImage(Lcom/itextpdf/text/Image;Ljava/awt/geom/AffineTransform;)V
    .locals 2
    .parameter "image"
    .parameter "transform"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 3250
    const/4 v1, 0x6

    new-array v0, v1, [D

    .line 3251
    .local v0, matrix:[D
    invoke-virtual {p2, v0}, Ljava/awt/geom/AffineTransform;->getMatrix([D)V

    .line 3252
    new-instance v1, Lcom/itextpdf/awt/geom/AffineTransform;

    invoke-direct {v1, v0}, Lcom/itextpdf/awt/geom/AffineTransform;-><init>([D)V

    invoke-virtual {p0, p1, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->addImage(Lcom/itextpdf/text/Image;Lcom/itextpdf/awt/geom/AffineTransform;)V

    .line 3253
    return-void
.end method

.method public addImage(Lcom/itextpdf/text/Image;Z)V
    .locals 10
    .parameter "image"
    .parameter "inlineImage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x5

    const/4 v6, 0x4

    .line 1155
    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->hasAbsoluteY()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1156
    new-instance v0, Lcom/itextpdf/text/DocumentException;

    const-string v1, "the.image.must.have.absolute.positioning"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1157
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->matrix()[F

    move-result-object v9

    .line 1158
    .local v9, matrix:[F
    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getAbsoluteX()F

    move-result v0

    aget v1, v9, v6

    sub-float/2addr v0, v1

    aput v0, v9, v6

    .line 1159
    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getAbsoluteY()F

    move-result v0

    aget v1, v9, v7

    sub-float/2addr v0, v1

    aput v0, v9, v7

    .line 1160
    aget v2, v9, v2

    const/4 v0, 0x1

    aget v3, v9, v0

    const/4 v0, 0x2

    aget v4, v9, v0

    const/4 v0, 0x3

    aget v5, v9, v0

    aget v6, v9, v6

    aget v7, v9, v7

    move-object v0, p0

    move-object v1, p1

    move v8, p2

    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/text/pdf/PdfContentByte;->addImage(Lcom/itextpdf/text/Image;FFFFFFZ)V

    .line 1161
    return-void
.end method

.method public addOutline(Lcom/itextpdf/text/pdf/PdfOutline;Ljava/lang/String;)V
    .locals 1
    .parameter "outline"
    .parameter "name"

    .prologue
    .line 1714
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->checkWriter()V

    .line 1715
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfDocument;->addOutline(Lcom/itextpdf/text/pdf/PdfOutline;Ljava/lang/String;)V

    .line 1716
    return-void
.end method

.method public addPSXObject(Lcom/itextpdf/text/pdf/PdfPSXObject;)V
    .locals 4
    .parameter "psobject"

    .prologue
    .line 2103
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->checkWriter()V

    .line 2104
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/itextpdf/text/pdf/PdfWriter;->addDirectTemplateSimple(Lcom/itextpdf/text/pdf/PdfTemplate;Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v0

    .line 2105
    .local v0, name:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getPageResources()Lcom/itextpdf/text/pdf/PageResources;

    move-result-object v1

    .line 2106
    .local v1, prs:Lcom/itextpdf/text/pdf/PageResources;
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfPSXObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/itextpdf/text/pdf/PageResources;->addXObject(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v0

    .line 2107
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    const-string v3, " Do"

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    iget v3, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2108
    return-void
.end method

.method public addTemplate(Lcom/itextpdf/text/pdf/PdfTemplate;FF)V
    .locals 8
    .parameter "template"
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    .line 2171
    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v2

    move v6, p2

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/itextpdf/text/pdf/PdfContentByte;->addTemplate(Lcom/itextpdf/text/pdf/PdfTemplate;FFFFFF)V

    .line 2172
    return-void
.end method

.method public addTemplate(Lcom/itextpdf/text/pdf/PdfTemplate;FFFFFF)V
    .locals 5
    .parameter "template"
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"
    .parameter "e"
    .parameter "f"

    .prologue
    const/16 v4, 0x20

    .line 2122
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->checkWriter()V

    .line 2123
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfContentByte;->checkNoPattern(Lcom/itextpdf/text/pdf/PdfTemplate;)V

    .line 2124
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/itextpdf/text/pdf/PdfWriter;->addDirectTemplateSimple(Lcom/itextpdf/text/pdf/PdfTemplate;Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v0

    .line 2125
    .local v0, name:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getPageResources()Lcom/itextpdf/text/pdf/PageResources;

    move-result-object v1

    .line 2126
    .local v1, prs:Lcom/itextpdf/text/pdf/PageResources;
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfTemplate;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/itextpdf/text/pdf/PageResources;->addXObject(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v0

    .line 2127
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string v3, "q "

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2128
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v2, p2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2129
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v2, p3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2130
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v2, p4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2131
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v2, p5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2132
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v2, p6}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2133
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v2, p7}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    const-string v3, " cm "

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2134
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    const-string v3, " Do Q"

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    iget v3, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2135
    return-void
.end method

.method public addTemplate(Lcom/itextpdf/text/pdf/PdfTemplate;Lcom/itextpdf/awt/geom/AffineTransform;)V
    .locals 9
    .parameter "template"
    .parameter "transform"

    .prologue
    .line 2143
    const/4 v0, 0x6

    new-array v8, v0, [D

    .line 2144
    .local v8, matrix:[D
    invoke-virtual {p2, v8}, Lcom/itextpdf/awt/geom/AffineTransform;->getMatrix([D)V

    .line 2145
    const/4 v0, 0x0

    aget-wide v0, v8, v0

    double-to-float v2, v0

    const/4 v0, 0x1

    aget-wide v0, v8, v0

    double-to-float v3, v0

    const/4 v0, 0x2

    aget-wide v0, v8, v0

    double-to-float v4, v0

    const/4 v0, 0x3

    aget-wide v0, v8, v0

    double-to-float v5, v0

    const/4 v0, 0x4

    aget-wide v0, v8, v0

    double-to-float v6, v0

    const/4 v0, 0x5

    aget-wide v0, v8, v0

    double-to-float v7, v0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/itextpdf/text/pdf/PdfContentByte;->addTemplate(Lcom/itextpdf/text/pdf/PdfTemplate;FFFFFF)V

    .line 2147
    return-void
.end method

.method public addTemplate(Lcom/itextpdf/text/pdf/PdfTemplate;Ljava/awt/geom/AffineTransform;)V
    .locals 2
    .parameter "template"
    .parameter "transform"

    .prologue
    .line 3262
    const/4 v1, 0x6

    new-array v0, v1, [D

    .line 3263
    .local v0, matrix:[D
    invoke-virtual {p2, v0}, Ljava/awt/geom/AffineTransform;->getMatrix([D)V

    .line 3264
    new-instance v1, Lcom/itextpdf/awt/geom/AffineTransform;

    invoke-direct {v1, v0}, Lcom/itextpdf/awt/geom/AffineTransform;-><init>([D)V

    invoke-virtual {p0, p1, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->addTemplate(Lcom/itextpdf/text/pdf/PdfTemplate;Lcom/itextpdf/awt/geom/AffineTransform;)V

    .line 3265
    return-void
.end method

.method addTemplateReference(Lcom/itextpdf/text/pdf/PdfIndirectReference;Lcom/itextpdf/text/pdf/PdfName;FFFFFF)V
    .locals 4
    .parameter "template"
    .parameter "name"
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"
    .parameter "e"
    .parameter "f"

    .prologue
    const/16 v3, 0x20

    .line 2150
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->checkWriter()V

    .line 2151
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getPageResources()Lcom/itextpdf/text/pdf/PageResources;

    move-result-object v0

    .line 2152
    .local v0, prs:Lcom/itextpdf/text/pdf/PageResources;
    invoke-virtual {v0, p2, p1}, Lcom/itextpdf/text/pdf/PageResources;->addXObject(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object p2

    .line 2153
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string v2, "q "

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2154
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v1, p3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2155
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v1, p4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2156
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v1, p5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2157
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v1, p6}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2158
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v1, p7}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2159
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v1, p8}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v1

    const-string v2, " cm "

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2160
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v1

    const-string v2, " Do Q"

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2161
    return-void
.end method

.method public arc(FFFFFF)V
    .locals 10
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"
    .parameter "startAng"
    .parameter "extent"

    .prologue
    .line 1956
    invoke-static/range {p1 .. p6}, Lcom/itextpdf/text/pdf/PdfContentByte;->bezierArc(FFFFFF)Ljava/util/ArrayList;

    move-result-object v7

    .line 1957
    .local v7, ar:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[F>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1965
    :cond_0
    return-void

    .line 1959
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [F

    .line 1960
    .local v9, pt:[F
    const/4 v0, 0x0

    aget v0, v9, v0

    const/4 v1, 0x1

    aget v1, v9, v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveTo(FF)V

    .line 1961
    const/4 v8, 0x0

    .local v8, k:I
    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 1962
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #pt:[F
    check-cast v9, [F

    .line 1963
    .restart local v9       #pt:[F
    const/4 v0, 0x2

    aget v1, v9, v0

    const/4 v0, 0x3

    aget v2, v9, v0

    const/4 v0, 0x4

    aget v3, v9, v0

    const/4 v0, 0x5

    aget v4, v9, v0

    const/4 v0, 0x6

    aget v5, v9, v0

    const/4 v0, 0x7

    aget v6, v9, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->curveTo(FFFFFF)V

    .line 1961
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method public beginLayer(Lcom/itextpdf/text/pdf/PdfOCG;)V
    .locals 5
    .parameter "layer"

    .prologue
    .line 2897
    instance-of v2, p1, Lcom/itextpdf/text/pdf/PdfLayer;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Lcom/itextpdf/text/pdf/PdfLayer;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfLayer;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2898
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "a.title.is.not.a.layer"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2899
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->layerDepth:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 2900
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->layerDepth:Ljava/util/ArrayList;

    .line 2901
    :cond_1
    instance-of v2, p1, Lcom/itextpdf/text/pdf/PdfLayerMembership;

    if-eqz v2, :cond_2

    .line 2902
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->layerDepth:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2903
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/PdfContentByte;->beginLayer2(Lcom/itextpdf/text/pdf/PdfOCG;)V

    .line 2916
    :goto_0
    return-void

    .line 2906
    :cond_2
    const/4 v1, 0x0

    .local v1, n:I
    move-object v0, p1

    .line 2907
    check-cast v0, Lcom/itextpdf/text/pdf/PdfLayer;

    .line 2908
    .local v0, la:Lcom/itextpdf/text/pdf/PdfLayer;
    :goto_1
    if-eqz v0, :cond_4

    .line 2909
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfLayer;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 2910
    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->beginLayer2(Lcom/itextpdf/text/pdf/PdfOCG;)V

    .line 2911
    add-int/lit8 v1, v1, 0x1

    .line 2913
    :cond_3
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfLayer;->getParent()Lcom/itextpdf/text/pdf/PdfLayer;

    move-result-object v0

    goto :goto_1

    .line 2915
    :cond_4
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->layerDepth:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public beginMarkedContentSequence(Lcom/itextpdf/text/pdf/PdfName;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 3057
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->beginMarkedContentSequence(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfDictionary;Z)V

    .line 3058
    return-void
.end method

.method public beginMarkedContentSequence(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfDictionary;Z)V
    .locals 6
    .parameter "tag"
    .parameter "property"
    .parameter "inline"

    .prologue
    .line 3024
    if-nez p2, :cond_0

    .line 3025
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    const-string v5, " BMC"

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    iget v5, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 3026
    iget v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->mcDepth:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->mcDepth:I

    .line 3050
    :goto_0
    return-void

    .line 3029
    :cond_0
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 3030
    if-eqz p3, :cond_1

    .line 3032
    :try_start_0
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {p2, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->toPdf(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3048
    :goto_1
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string v5, " BDC"

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    iget v5, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 3049
    iget v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->mcDepth:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->mcDepth:I

    goto :goto_0

    .line 3034
    :catch_0
    move-exception v0

    .line 3035
    .local v0, e:Ljava/lang/Exception;
    new-instance v4, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v4, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v4

    .line 3039
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v4, p2}, Lcom/itextpdf/text/pdf/PdfWriter;->propertyExists(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3040
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    const/4 v5, 0x0

    invoke-virtual {v4, p2, v5}, Lcom/itextpdf/text/pdf/PdfWriter;->addSimpleProperty(Ljava/lang/Object;Lcom/itextpdf/text/pdf/PdfIndirectReference;)[Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    .line 3043
    .local v2, objs:[Lcom/itextpdf/text/pdf/PdfObject;
    :goto_2
    const/4 v4, 0x0

    aget-object v1, v2, v4

    check-cast v1, Lcom/itextpdf/text/pdf/PdfName;

    .line 3044
    .local v1, name:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getPageResources()Lcom/itextpdf/text/pdf/PageResources;

    move-result-object v3

    .line 3045
    .local v3, prs:Lcom/itextpdf/text/pdf/PageResources;
    const/4 v4, 0x1

    aget-object v4, v2, v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    invoke-virtual {v3, v1, v4}, Lcom/itextpdf/text/pdf/PageResources;->addProperty(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v1

    .line 3046
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    goto :goto_1

    .line 3042
    .end local v1           #name:Lcom/itextpdf/text/pdf/PdfName;
    .end local v2           #objs:[Lcom/itextpdf/text/pdf/PdfObject;
    .end local v3           #prs:Lcom/itextpdf/text/pdf/PageResources;
    :cond_2
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfWriter;->getPdfIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v5

    invoke-virtual {v4, p2, v5}, Lcom/itextpdf/text/pdf/PdfWriter;->addSimpleProperty(Ljava/lang/Object;Lcom/itextpdf/text/pdf/PdfIndirectReference;)[Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    .restart local v2       #objs:[Lcom/itextpdf/text/pdf/PdfObject;
    goto :goto_2
.end method

.method public beginMarkedContentSequence(Lcom/itextpdf/text/pdf/PdfStructureElement;)V
    .locals 9
    .parameter "struc"

    .prologue
    const/4 v8, 0x0

    .line 2973
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->K:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v4}, Lcom/itextpdf/text/pdf/PdfStructureElement;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    .line 2974
    .local v3, obj:Lcom/itextpdf/text/pdf/PdfObject;
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfDocument;->getMarkPoint()I

    move-result v2

    .line 2975
    .local v2, mark:I
    if-eqz v3, :cond_3

    .line 2976
    const/4 v0, 0x0

    .line 2977
    .local v0, ar:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfObject;->isNumber()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2978
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    .end local v0           #ar:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 2979
    .restart local v0       #ar:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 2980
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->K:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v4, v0}, Lcom/itextpdf/text/pdf/PdfStructureElement;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 2989
    :cond_0
    new-instance v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->MCR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v1, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 2990
    .local v1, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->PG:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfWriter;->getCurrentPage()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 2991
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->MCID:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v5, v2}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 2992
    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 2993
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfWriter;->getPageNumber()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Lcom/itextpdf/text/pdf/PdfStructureElement;->setPageMark(II)V

    .line 2999
    .end local v0           #ar:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v1           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    :goto_0
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfDocument;->incMarkPoint()V

    .line 3000
    iget v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->mcDepth:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->mcDepth:I

    .line 3001
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v5}, Lcom/itextpdf/text/pdf/PdfStructureElement;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfObject;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    const-string v5, " <</MCID "

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    const-string v5, ">> BDC"

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    iget v5, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 3002
    return-void

    .line 2982
    .restart local v0       #ar:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_1
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfObject;->isArray()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v0, v3

    .line 2983
    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    .line 2984
    invoke-virtual {v0, v8}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfObject;->isNumber()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2985
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "the.structure.has.kids"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2988
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "unknown.object.at.k.1"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2996
    .end local v0           #ar:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_3
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfWriter;->getPageNumber()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v4, v2}, Lcom/itextpdf/text/pdf/PdfStructureElement;->setPageMark(II)V

    .line 2997
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->PG:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfWriter;->getCurrentPage()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/itextpdf/text/pdf/PdfStructureElement;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_0
.end method

.method public beginText()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1348
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->inText:Z

    if-eqz v0, :cond_0

    .line 1349
    new-instance v0, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;

    const-string v1, "unbalanced.begin.end.text.operators"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1351
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->inText:Z

    .line 1352
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iput v1, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->xTLM:F

    .line 1353
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iput v1, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->yTLM:F

    .line 1354
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string v1, "BT"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1355
    return-void
.end method

.method checkNoPattern(Lcom/itextpdf/text/pdf/PdfTemplate;)V
    .locals 3
    .parameter "t"

    .prologue
    .line 2728
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfTemplate;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2729
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid.use.of.a.pattern.a.template.was.expected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2730
    :cond_0
    return-void
.end method

.method protected checkWriter()V
    .locals 3

    .prologue
    .line 2553
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    if-nez v0, :cond_0

    .line 2554
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the.writer.in.pdfcontentbyte.is.null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2555
    :cond_0
    return-void
.end method

.method public circle(FFF)V
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "r"

    .prologue
    .line 776
    const v7, 0x3f0d6388

    .line 777
    .local v7, b:F
    add-float v0, p1, p3

    invoke-virtual {p0, v0, p2}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveTo(FF)V

    .line 778
    add-float v1, p1, p3

    mul-float v0, p3, v7

    add-float v2, p2, v0

    mul-float v0, p3, v7

    add-float v3, p1, v0

    add-float v4, p2, p3

    add-float v6, p2, p3

    move-object v0, p0

    move v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->curveTo(FFFFFF)V

    .line 779
    mul-float v0, p3, v7

    sub-float v1, p1, v0

    add-float v2, p2, p3

    sub-float v3, p1, p3

    mul-float v0, p3, v7

    add-float v4, p2, v0

    sub-float v5, p1, p3

    move-object v0, p0

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->curveTo(FFFFFF)V

    .line 780
    sub-float v1, p1, p3

    mul-float v0, p3, v7

    sub-float v2, p2, v0

    mul-float v0, p3, v7

    sub-float v3, p1, v0

    sub-float v4, p2, p3

    sub-float v6, p2, p3

    move-object v0, p0

    move v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->curveTo(FFFFFF)V

    .line 781
    mul-float v0, p3, v7

    add-float v1, p1, v0

    sub-float v2, p2, p3

    add-float v3, p1, p3

    mul-float v0, p3, v7

    sub-float v4, p2, v0

    add-float v5, p1, p3

    move-object v0, p0

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->curveTo(FFFFFF)V

    .line 782
    return-void
.end method

.method public clip()V
    .locals 2

    .prologue
    .line 472
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string v1, "W"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 473
    return-void
.end method

.method public closePath()V
    .locals 3

    .prologue
    .line 1032
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->inText:Z

    if-eqz v0, :cond_0

    .line 1033
    new-instance v0, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;

    const-string v1, "path.construction.operator.inside.text.object"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1035
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string v1, "h"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1036
    return-void
.end method

.method public closePathEoFillStroke()V
    .locals 3

    .prologue
    .line 1131
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->inText:Z

    if-eqz v0, :cond_0

    .line 1132
    new-instance v0, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;

    const-string v1, "path.construction.operator.inside.text.object"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1134
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string v1, "b*"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1135
    return-void
.end method

.method public closePathFillStroke()V
    .locals 3

    .prologue
    .line 1109
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->inText:Z

    if-eqz v0, :cond_0

    .line 1110
    new-instance v0, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;

    const-string v1, "path.construction.operator.inside.text.object"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1112
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string v1, "b"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1113
    return-void
.end method

.method public closePathStroke()V
    .locals 3

    .prologue
    .line 1065
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->inText:Z

    if-eqz v0, :cond_0

    .line 1066
    new-instance v0, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;

    const-string v1, "path.construction.operator.inside.text.object"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1068
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string v1, "s"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1069
    return-void
.end method

.method public concatCTM(FFFFFF)V
    .locals 2
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"
    .parameter "e"
    .parameter "f"

    .prologue
    const/16 v1, 0x20

    .line 1843
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1844
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p6}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string v1, " cm"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1845
    return-void
.end method

.method public concatCTM(Lcom/itextpdf/awt/geom/AffineTransform;)V
    .locals 10
    .parameter "transform"

    .prologue
    .line 1852
    const/4 v0, 0x6

    new-array v7, v0, [D

    .line 1853
    .local v7, matrix:[D
    invoke-virtual {p1, v7}, Lcom/itextpdf/awt/geom/AffineTransform;->getMatrix([D)V

    .line 1854
    const/4 v0, 0x0

    aget-wide v0, v7, v0

    double-to-float v1, v0

    const/4 v0, 0x1

    aget-wide v2, v7, v0

    double-to-float v2, v2

    const/4 v0, 0x2

    aget-wide v3, v7, v0

    double-to-float v3, v3

    const/4 v0, 0x3

    aget-wide v4, v7, v0

    double-to-float v4, v4

    const/4 v0, 0x4

    aget-wide v5, v7, v0

    double-to-float v5, v5

    const/4 v0, 0x5

    aget-wide v8, v7, v0

    double-to-float v6, v8

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->concatCTM(FFFFFF)V

    .line 1856
    return-void
.end method

.method public concatCTM(Ljava/awt/geom/AffineTransform;)V
    .locals 2
    .parameter "transform"

    .prologue
    .line 3273
    const/4 v1, 0x6

    new-array v0, v1, [D

    .line 3274
    .local v0, matrix:[D
    invoke-virtual {p1, v0}, Ljava/awt/geom/AffineTransform;->getMatrix([D)V

    .line 3275
    new-instance v1, Lcom/itextpdf/awt/geom/AffineTransform;

    invoke-direct {v1, v0}, Lcom/itextpdf/awt/geom/AffineTransform;-><init>([D)V

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->concatCTM(Lcom/itextpdf/awt/geom/AffineTransform;)V

    .line 3276
    return-void
.end method

.method public createAppearance(FF)Lcom/itextpdf/text/pdf/PdfAppearance;
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2085
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->createAppearance(FFLcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfAppearance;

    move-result-object v0

    return-object v0
.end method

.method createAppearance(FFLcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfAppearance;
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "forcedName"

    .prologue
    .line 2089
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->checkWriter()V

    .line 2090
    new-instance v0, Lcom/itextpdf/text/pdf/PdfAppearance;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfAppearance;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 2091
    .local v0, template:Lcom/itextpdf/text/pdf/PdfAppearance;
    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfAppearance;->setWidth(F)V

    .line 2092
    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/PdfAppearance;->setHeight(F)V

    .line 2093
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v1, v0, p3}, Lcom/itextpdf/text/pdf/PdfWriter;->addDirectTemplateSimple(Lcom/itextpdf/text/pdf/PdfTemplate;Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    .line 2094
    return-object v0
.end method

.method public createGraphics(FF)Ljava/awt/Graphics2D;
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 3119
    new-instance v0, Lcom/itextpdf/awt/PdfGraphics2D;

    invoke-direct {v0, p0, p1, p2}, Lcom/itextpdf/awt/PdfGraphics2D;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;FF)V

    return-object v0
.end method

.method public createGraphics(FFLcom/itextpdf/awt/FontMapper;)Ljava/awt/Graphics2D;
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "fontMapper"

    .prologue
    .line 3197
    new-instance v0, Lcom/itextpdf/awt/PdfGraphics2D;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/itextpdf/awt/PdfGraphics2D;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;FFLcom/itextpdf/awt/FontMapper;)V

    return-object v0
.end method

.method public createGraphics(FFLcom/itextpdf/awt/FontMapper;ZF)Ljava/awt/Graphics2D;
    .locals 8
    .parameter "width"
    .parameter "height"
    .parameter "fontMapper"
    .parameter "convertImagesToJPEG"
    .parameter "quality"

    .prologue
    .line 3224
    new-instance v0, Lcom/itextpdf/awt/PdfGraphics2D;

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/awt/PdfGraphics2D;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;FFLcom/itextpdf/awt/FontMapper;ZZF)V

    return-object v0
.end method

.method public createGraphics(FFZF)Ljava/awt/Graphics2D;
    .locals 8
    .parameter "width"
    .parameter "height"
    .parameter "convertImagesToJPEG"
    .parameter "quality"

    .prologue
    .line 3144
    new-instance v0, Lcom/itextpdf/awt/PdfGraphics2D;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/awt/PdfGraphics2D;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;FFLcom/itextpdf/awt/FontMapper;ZZF)V

    return-object v0
.end method

.method public createGraphicsShapes(FF)Ljava/awt/Graphics2D;
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 3096
    new-instance v0, Lcom/itextpdf/awt/PdfGraphics2D;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/itextpdf/awt/PdfGraphics2D;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;FFZ)V

    return-object v0
.end method

.method public createGraphicsShapes(FFZF)Ljava/awt/Graphics2D;
    .locals 8
    .parameter "width"
    .parameter "height"
    .parameter "convertImagesToJPEG"
    .parameter "quality"

    .prologue
    .line 3171
    new-instance v0, Lcom/itextpdf/awt/PdfGraphics2D;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/awt/PdfGraphics2D;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;FFLcom/itextpdf/awt/FontMapper;ZZF)V

    return-object v0
.end method

.method public createPattern(FF)Lcom/itextpdf/text/pdf/PdfPatternPainter;
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2011
    invoke-virtual {p0, p1, p2, p1, p2}, Lcom/itextpdf/text/pdf/PdfContentByte;->createPattern(FFFF)Lcom/itextpdf/text/pdf/PdfPatternPainter;

    move-result-object v0

    return-object v0
.end method

.method public createPattern(FFFF)Lcom/itextpdf/text/pdf/PdfPatternPainter;
    .locals 4
    .parameter "width"
    .parameter "height"
    .parameter "xstep"
    .parameter "ystep"

    .prologue
    const/4 v2, 0x0

    .line 1991
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->checkWriter()V

    .line 1992
    cmpl-float v1, p3, v2

    if-eqz v1, :cond_0

    cmpl-float v1, p4, v2

    if-nez v1, :cond_1

    .line 1993
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "xstep.or.ystep.can.not.be.zero"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1994
    :cond_1
    new-instance v0, Lcom/itextpdf/text/pdf/PdfPatternPainter;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfPatternPainter;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 1995
    .local v0, painter:Lcom/itextpdf/text/pdf/PdfPatternPainter;
    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->setWidth(F)V

    .line 1996
    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->setHeight(F)V

    .line 1997
    invoke-virtual {v0, p3}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->setXStep(F)V

    .line 1998
    invoke-virtual {v0, p4}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->setYStep(F)V

    .line 1999
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v1, v0}, Lcom/itextpdf/text/pdf/PdfWriter;->addSimplePattern(Lcom/itextpdf/text/pdf/PdfPatternPainter;)Lcom/itextpdf/text/pdf/PdfName;

    .line 2000
    return-object v0
.end method

.method public createPattern(FFFFLcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/pdf/PdfPatternPainter;
    .locals 4
    .parameter "width"
    .parameter "height"
    .parameter "xstep"
    .parameter "ystep"
    .parameter "color"

    .prologue
    const/4 v2, 0x0

    .line 2027
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->checkWriter()V

    .line 2028
    cmpl-float v1, p3, v2

    if-eqz v1, :cond_0

    cmpl-float v1, p4, v2

    if-nez v1, :cond_1

    .line 2029
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "xstep.or.ystep.can.not.be.zero"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2030
    :cond_1
    new-instance v0, Lcom/itextpdf/text/pdf/PdfPatternPainter;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-direct {v0, v1, p5}, Lcom/itextpdf/text/pdf/PdfPatternPainter;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/BaseColor;)V

    .line 2031
    .local v0, painter:Lcom/itextpdf/text/pdf/PdfPatternPainter;
    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->setWidth(F)V

    .line 2032
    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->setHeight(F)V

    .line 2033
    invoke-virtual {v0, p3}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->setXStep(F)V

    .line 2034
    invoke-virtual {v0, p4}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->setYStep(F)V

    .line 2035
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v1, v0}, Lcom/itextpdf/text/pdf/PdfWriter;->addSimplePattern(Lcom/itextpdf/text/pdf/PdfPatternPainter;)Lcom/itextpdf/text/pdf/PdfName;

    .line 2036
    return-object v0
.end method

.method public createPattern(FFLcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/pdf/PdfPatternPainter;
    .locals 6
    .parameter "width"
    .parameter "height"
    .parameter "color"

    .prologue
    .line 2049
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/text/pdf/PdfContentByte;->createPattern(FFFFLcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/pdf/PdfPatternPainter;

    move-result-object v0

    return-object v0
.end method

.method public createPrinterGraphics(FFLcom/itextpdf/awt/FontMapper;Ljava/awt/print/PrinterJob;)Ljava/awt/Graphics2D;
    .locals 6
    .parameter "width"
    .parameter "height"
    .parameter "fontMapper"
    .parameter "printerJob"

    .prologue
    .line 3210
    new-instance v0, Lcom/itextpdf/awt/PdfPrinterGraphics2D;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/awt/PdfPrinterGraphics2D;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;FFLcom/itextpdf/awt/FontMapper;Ljava/awt/print/PrinterJob;)V

    return-object v0
.end method

.method public createPrinterGraphics(FFLcom/itextpdf/awt/FontMapper;ZFLjava/awt/print/PrinterJob;)Ljava/awt/Graphics2D;
    .locals 9
    .parameter "width"
    .parameter "height"
    .parameter "fontMapper"
    .parameter "convertImagesToJPEG"
    .parameter "quality"
    .parameter "printerJob"

    .prologue
    .line 3239
    new-instance v0, Lcom/itextpdf/awt/PdfPrinterGraphics2D;

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/itextpdf/awt/PdfPrinterGraphics2D;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;FFLcom/itextpdf/awt/FontMapper;ZZFLjava/awt/print/PrinterJob;)V

    return-object v0
.end method

.method public createPrinterGraphics(FFLjava/awt/print/PrinterJob;)Ljava/awt/Graphics2D;
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "printerJob"

    .prologue
    .line 3131
    new-instance v0, Lcom/itextpdf/awt/PdfPrinterGraphics2D;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/itextpdf/awt/PdfPrinterGraphics2D;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;FFLjava/awt/print/PrinterJob;)V

    return-object v0
.end method

.method public createPrinterGraphics(FFZFLjava/awt/print/PrinterJob;)Ljava/awt/Graphics2D;
    .locals 9
    .parameter "width"
    .parameter "height"
    .parameter "convertImagesToJPEG"
    .parameter "quality"
    .parameter "printerJob"

    .prologue
    .line 3158
    new-instance v0, Lcom/itextpdf/awt/PdfPrinterGraphics2D;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/itextpdf/awt/PdfPrinterGraphics2D;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;FFLcom/itextpdf/awt/FontMapper;ZZFLjava/awt/print/PrinterJob;)V

    return-object v0
.end method

.method public createPrinterGraphicsShapes(FFLjava/awt/print/PrinterJob;)Ljava/awt/Graphics2D;
    .locals 6
    .parameter "width"
    .parameter "height"
    .parameter "printerJob"

    .prologue
    .line 3108
    new-instance v0, Lcom/itextpdf/awt/PdfPrinterGraphics2D;

    const/4 v4, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/awt/PdfPrinterGraphics2D;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;FFZLjava/awt/print/PrinterJob;)V

    return-object v0
.end method

.method public createPrinterGraphicsShapes(FFZFLjava/awt/print/PrinterJob;)Ljava/awt/Graphics2D;
    .locals 9
    .parameter "width"
    .parameter "height"
    .parameter "convertImagesToJPEG"
    .parameter "quality"
    .parameter "printerJob"

    .prologue
    .line 3185
    new-instance v0, Lcom/itextpdf/awt/PdfPrinterGraphics2D;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/itextpdf/awt/PdfPrinterGraphics2D;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;FFLcom/itextpdf/awt/FontMapper;ZZFLjava/awt/print/PrinterJob;)V

    return-object v0
.end method

.method public createTemplate(FF)Lcom/itextpdf/text/pdf/PdfTemplate;
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2065
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->createTemplate(FFLcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfTemplate;

    move-result-object v0

    return-object v0
.end method

.method createTemplate(FFLcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfTemplate;
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "forcedName"

    .prologue
    .line 2069
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->checkWriter()V

    .line 2070
    new-instance v0, Lcom/itextpdf/text/pdf/PdfTemplate;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfTemplate;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 2071
    .local v0, template:Lcom/itextpdf/text/pdf/PdfTemplate;
    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfTemplate;->setWidth(F)V

    .line 2072
    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/PdfTemplate;->setHeight(F)V

    .line 2073
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v1, v0, p3}, Lcom/itextpdf/text/pdf/PdfWriter;->addDirectTemplateSimple(Lcom/itextpdf/text/pdf/PdfTemplate;Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    .line 2074
    return-object v0
.end method

.method public curveFromTo(FFFF)V
    .locals 3
    .parameter "x1"
    .parameter "y1"
    .parameter "x3"
    .parameter "y3"

    .prologue
    const/16 v1, 0x20

    .line 763
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->inText:Z

    if-eqz v0, :cond_0

    .line 764
    new-instance v0, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;

    const-string v1, "path.construction.operator.inside.text.object"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string v1, " y"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 767
    return-void
.end method

.method public curveTo(FFFF)V
    .locals 3
    .parameter "x2"
    .parameter "y2"
    .parameter "x3"
    .parameter "y3"

    .prologue
    const/16 v1, 0x20

    .line 747
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->inText:Z

    if-eqz v0, :cond_0

    .line 748
    new-instance v0, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;

    const-string v1, "path.construction.operator.inside.text.object"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 750
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string v1, " v"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 751
    return-void
.end method

.method public curveTo(FFFFFF)V
    .locals 3
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"
    .parameter "x3"
    .parameter "y3"

    .prologue
    const/16 v1, 0x20

    .line 731
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->inText:Z

    if-eqz v0, :cond_0

    .line 732
    new-instance v0, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;

    const-string v1, "path.construction.operator.inside.text.object"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 734
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p6}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string v1, " c"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 735
    return-void
.end method

.method public drawButton(FFFFLjava/lang/String;Lcom/itextpdf/text/pdf/BaseFont;F)V
    .locals 8
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"
    .parameter "text"
    .parameter "bf"
    .parameter "size"

    .prologue
    .line 2834
    cmpl-float v0, p1, p3

    if-lez v0, :cond_0

    move v6, p1

    .local v6, x:F
    move p1, p3

    move p3, v6

    .line 2835
    .end local v6           #x:F
    :cond_0
    cmpl-float v0, p2, p4

    if-lez v0, :cond_1

    move v7, p2

    .local v7, y:F
    move p2, p4

    move p4, v7

    .line 2837
    .end local v7           #y:F
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->saveState()V

    .line 2838
    new-instance v0, Lcom/itextpdf/text/BaseColor;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/text/BaseColor;-><init>(III)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorStroke(Lcom/itextpdf/text/BaseColor;)V

    .line 2839
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineWidth(F)V

    .line 2840
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineCap(I)V

    .line 2841
    sub-float v0, p3, p1

    sub-float v1, p4, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->rectangle(FFFF)V

    .line 2842
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->stroke()V

    .line 2844
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineWidth(F)V

    .line 2845
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineCap(I)V

    .line 2846
    new-instance v0, Lcom/itextpdf/text/BaseColor;

    const/16 v1, 0xc0

    const/16 v2, 0xc0

    const/16 v3, 0xc0

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/text/BaseColor;-><init>(III)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    .line 2847
    const/high16 v0, 0x3f00

    add-float/2addr v0, p1

    const/high16 v1, 0x3f00

    add-float/2addr v1, p2

    sub-float v2, p3, p1

    const/high16 v3, 0x3f80

    sub-float/2addr v2, v3

    sub-float v3, p4, p2

    const/high16 v4, 0x3f80

    sub-float/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfContentByte;->rectangle(FFFF)V

    .line 2848
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->fill()V

    .line 2850
    new-instance v0, Lcom/itextpdf/text/BaseColor;

    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/text/BaseColor;-><init>(III)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorStroke(Lcom/itextpdf/text/BaseColor;)V

    .line 2851
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineWidth(F)V

    .line 2852
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineCap(I)V

    .line 2853
    const/high16 v0, 0x3f80

    add-float/2addr v0, p1

    const/high16 v1, 0x3f80

    add-float/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveTo(FF)V

    .line 2854
    const/high16 v0, 0x3f80

    add-float/2addr v0, p1

    const/high16 v1, 0x3f80

    sub-float v1, p4, v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 2855
    const/high16 v0, 0x3f80

    sub-float v0, p3, v0

    const/high16 v1, 0x3f80

    sub-float v1, p4, v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 2856
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->stroke()V

    .line 2858
    new-instance v0, Lcom/itextpdf/text/BaseColor;

    const/16 v1, 0xa0

    const/16 v2, 0xa0

    const/16 v3, 0xa0

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/text/BaseColor;-><init>(III)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorStroke(Lcom/itextpdf/text/BaseColor;)V

    .line 2859
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineWidth(F)V

    .line 2860
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineCap(I)V

    .line 2861
    const/high16 v0, 0x3f80

    add-float/2addr v0, p1

    const/high16 v1, 0x3f80

    add-float/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveTo(FF)V

    .line 2862
    const/high16 v0, 0x3f80

    sub-float v0, p3, v0

    const/high16 v1, 0x3f80

    add-float/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 2863
    const/high16 v0, 0x3f80

    sub-float v0, p3, v0

    const/high16 v1, 0x3f80

    sub-float v1, p4, v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 2864
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->stroke()V

    .line 2866
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->resetRGBColorFill()V

    .line 2867
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->beginText()V

    .line 2868
    invoke-virtual {p0, p6, p7}, Lcom/itextpdf/text/pdf/PdfContentByte;->setFontAndSize(Lcom/itextpdf/text/pdf/BaseFont;F)V

    .line 2869
    const/4 v1, 0x1

    sub-float v0, p3, p1

    const/high16 v2, 0x4000

    div-float/2addr v0, v2

    add-float v3, p1, v0

    sub-float v0, p4, p2

    sub-float/2addr v0, p7

    const/high16 v2, 0x4000

    div-float/2addr v0, v2

    add-float v4, p2, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p5

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/text/pdf/PdfContentByte;->showTextAligned(ILjava/lang/String;FFF)V

    .line 2870
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->endText()V

    .line 2871
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->restoreState()V

    .line 2872
    return-void
.end method

.method public drawRadioField(FFFFZ)V
    .locals 9
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"
    .parameter "on"

    .prologue
    .line 2741
    cmpl-float v0, p1, p3

    if-lez v0, :cond_0

    move v7, p1

    .local v7, x:F
    move p1, p3

    move p3, v7

    .line 2742
    .end local v7           #x:F
    :cond_0
    cmpl-float v0, p2, p4

    if-lez v0, :cond_1

    move v8, p2

    .local v8, y:F
    move p2, p4

    move p4, v8

    .line 2743
    .end local v8           #y:F
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->saveState()V

    .line 2745
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineWidth(F)V

    .line 2746
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineCap(I)V

    .line 2747
    new-instance v0, Lcom/itextpdf/text/BaseColor;

    const/16 v1, 0xc0

    const/16 v2, 0xc0

    const/16 v3, 0xc0

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/text/BaseColor;-><init>(III)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorStroke(Lcom/itextpdf/text/BaseColor;)V

    .line 2748
    const/high16 v0, 0x3f80

    add-float v1, p1, v0

    const/high16 v0, 0x3f80

    add-float v2, p2, v0

    const/high16 v0, 0x3f80

    sub-float v3, p3, v0

    const/high16 v0, 0x3f80

    sub-float v4, p4, v0

    const/4 v5, 0x0

    const/high16 v6, 0x43b4

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->arc(FFFFFF)V

    .line 2749
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->stroke()V

    .line 2751
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineWidth(F)V

    .line 2752
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineCap(I)V

    .line 2753
    new-instance v0, Lcom/itextpdf/text/BaseColor;

    const/16 v1, 0xa0

    const/16 v2, 0xa0

    const/16 v3, 0xa0

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/text/BaseColor;-><init>(III)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorStroke(Lcom/itextpdf/text/BaseColor;)V

    .line 2754
    const/high16 v0, 0x3f00

    add-float v1, p1, v0

    const/high16 v0, 0x3f00

    add-float v2, p2, v0

    const/high16 v0, 0x3f00

    sub-float v3, p3, v0

    const/high16 v0, 0x3f00

    sub-float v4, p4, v0

    const/high16 v5, 0x4234

    const/high16 v6, 0x4334

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->arc(FFFFFF)V

    .line 2755
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->stroke()V

    .line 2757
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineWidth(F)V

    .line 2758
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineCap(I)V

    .line 2759
    new-instance v0, Lcom/itextpdf/text/BaseColor;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/text/BaseColor;-><init>(III)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorStroke(Lcom/itextpdf/text/BaseColor;)V

    .line 2760
    const/high16 v0, 0x3fc0

    add-float v1, p1, v0

    const/high16 v0, 0x3fc0

    add-float v2, p2, v0

    const/high16 v0, 0x3fc0

    sub-float v3, p3, v0

    const/high16 v0, 0x3fc0

    sub-float v4, p4, v0

    const/high16 v5, 0x4234

    const/high16 v6, 0x4334

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->arc(FFFFFF)V

    .line 2761
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->stroke()V

    .line 2762
    if-eqz p5, :cond_2

    .line 2764
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineWidth(F)V

    .line 2765
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineCap(I)V

    .line 2766
    new-instance v0, Lcom/itextpdf/text/BaseColor;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/text/BaseColor;-><init>(III)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    .line 2767
    const/high16 v0, 0x4080

    add-float v1, p1, v0

    const/high16 v0, 0x4080

    add-float v2, p2, v0

    const/high16 v0, 0x4080

    sub-float v3, p3, v0

    const/high16 v0, 0x4080

    sub-float v4, p4, v0

    const/4 v5, 0x0

    const/high16 v6, 0x43b4

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->arc(FFFFFF)V

    .line 2768
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->fill()V

    .line 2770
    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->restoreState()V

    .line 2771
    return-void
.end method

.method public drawTextField(FFFF)V
    .locals 11
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    const/high16 v10, 0x3fc0

    const/16 v9, 0xc0

    const/high16 v8, 0x4000

    const/4 v7, 0x0

    const/high16 v6, 0x3f80

    .line 2781
    cmpl-float v2, p1, p3

    if-lez v2, :cond_0

    move v0, p1

    .local v0, x:F
    move p1, p3

    move p3, v0

    .line 2782
    .end local v0           #x:F
    :cond_0
    cmpl-float v2, p2, p4

    if-lez v2, :cond_1

    move v1, p2

    .local v1, y:F
    move p2, p4

    move p4, v1

    .line 2784
    .end local v1           #y:F
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->saveState()V

    .line 2785
    new-instance v2, Lcom/itextpdf/text/BaseColor;

    invoke-direct {v2, v9, v9, v9}, Lcom/itextpdf/text/BaseColor;-><init>(III)V

    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorStroke(Lcom/itextpdf/text/BaseColor;)V

    .line 2786
    invoke-virtual {p0, v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineWidth(F)V

    .line 2787
    invoke-virtual {p0, v7}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineCap(I)V

    .line 2788
    sub-float v2, p3, p1

    sub-float v3, p4, p2

    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/itextpdf/text/pdf/PdfContentByte;->rectangle(FFFF)V

    .line 2789
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->stroke()V

    .line 2791
    invoke-virtual {p0, v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineWidth(F)V

    .line 2792
    invoke-virtual {p0, v7}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineCap(I)V

    .line 2793
    new-instance v2, Lcom/itextpdf/text/BaseColor;

    const/16 v3, 0xff

    const/16 v4, 0xff

    const/16 v5, 0xff

    invoke-direct {v2, v3, v4, v5}, Lcom/itextpdf/text/BaseColor;-><init>(III)V

    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    .line 2794
    const/high16 v2, 0x3f00

    add-float/2addr v2, p1

    const/high16 v3, 0x3f00

    add-float/2addr v3, p2

    sub-float v4, p3, p1

    sub-float/2addr v4, v6

    sub-float v5, p4, p2

    sub-float/2addr v5, v6

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/itextpdf/text/pdf/PdfContentByte;->rectangle(FFFF)V

    .line 2795
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->fill()V

    .line 2797
    new-instance v2, Lcom/itextpdf/text/BaseColor;

    invoke-direct {v2, v9, v9, v9}, Lcom/itextpdf/text/BaseColor;-><init>(III)V

    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorStroke(Lcom/itextpdf/text/BaseColor;)V

    .line 2798
    invoke-virtual {p0, v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineWidth(F)V

    .line 2799
    invoke-virtual {p0, v7}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineCap(I)V

    .line 2800
    add-float v2, p1, v6

    add-float v3, p2, v10

    invoke-virtual {p0, v2, v3}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveTo(FF)V

    .line 2801
    sub-float v2, p3, v10

    add-float v3, p2, v10

    invoke-virtual {p0, v2, v3}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 2802
    sub-float v2, p3, v10

    sub-float v3, p4, v6

    invoke-virtual {p0, v2, v3}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 2803
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->stroke()V

    .line 2805
    new-instance v2, Lcom/itextpdf/text/BaseColor;

    const/16 v3, 0xa0

    const/16 v4, 0xa0

    const/16 v5, 0xa0

    invoke-direct {v2, v3, v4, v5}, Lcom/itextpdf/text/BaseColor;-><init>(III)V

    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorStroke(Lcom/itextpdf/text/BaseColor;)V

    .line 2806
    invoke-virtual {p0, v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineWidth(F)V

    .line 2807
    invoke-virtual {p0, v7}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineCap(I)V

    .line 2808
    add-float v2, p1, v6

    add-float v3, p2, v6

    invoke-virtual {p0, v2, v3}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveTo(FF)V

    .line 2809
    add-float v2, p1, v6

    sub-float v3, p4, v6

    invoke-virtual {p0, v2, v3}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 2810
    sub-float v2, p3, v6

    sub-float v3, p4, v6

    invoke-virtual {p0, v2, v3}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 2811
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->stroke()V

    .line 2813
    new-instance v2, Lcom/itextpdf/text/BaseColor;

    invoke-direct {v2, v7, v7, v7}, Lcom/itextpdf/text/BaseColor;-><init>(III)V

    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorStroke(Lcom/itextpdf/text/BaseColor;)V

    .line 2814
    invoke-virtual {p0, v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineWidth(F)V

    .line 2815
    invoke-virtual {p0, v7}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineCap(I)V

    .line 2816
    add-float v2, p1, v8

    add-float v3, p2, v8

    invoke-virtual {p0, v2, v3}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveTo(FF)V

    .line 2817
    add-float v2, p1, v8

    sub-float v3, p4, v8

    invoke-virtual {p0, v2, v3}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 2818
    sub-float v2, p3, v8

    sub-float v3, p4, v8

    invoke-virtual {p0, v2, v3}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 2819
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->stroke()V

    .line 2820
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->restoreState()V

    .line 2821
    return-void
.end method

.method public ellipse(FFFF)V
    .locals 7
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 1976
    const/4 v5, 0x0

    const/high16 v6, 0x43b4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->arc(FFFFFF)V

    .line 1977
    return-void
.end method

.method public endLayer()V
    .locals 5

    .prologue
    .line 2929
    const/4 v0, 0x1

    .line 2930
    .local v0, n:I
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->layerDepth:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->layerDepth:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2931
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->layerDepth:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->layerDepth:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2932
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->layerDepth:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->layerDepth:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v1, v0

    .line 2936
    .end local v0           #n:I
    .local v1, n:I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1           #n:I
    .restart local v0       #n:I
    if-lez v1, :cond_1

    .line 2937
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string v3, "EMC"

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    iget v3, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    move v1, v0

    .end local v0           #n:I
    .restart local v1       #n:I
    goto :goto_0

    .line 2934
    .end local v1           #n:I
    .restart local v0       #n:I
    :cond_0
    new-instance v2, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;

    const-string v3, "unbalanced.layer.operators"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2938
    :cond_1
    return-void
.end method

.method public endMarkedContentSequence()V
    .locals 3

    .prologue
    .line 3008
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->mcDepth:I

    if-nez v0, :cond_0

    .line 3009
    new-instance v0, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;

    const-string v1, "unbalanced.begin.end.marked.content.operators"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3011
    :cond_0
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->mcDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->mcDepth:I

    .line 3012
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string v1, "EMC"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 3013
    return-void
.end method

.method public endText()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1361
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->inText:Z

    if-nez v0, :cond_0

    .line 1362
    new-instance v0, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;

    const-string v1, "unbalanced.begin.end.text.operators"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1364
    :cond_0
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->inText:Z

    .line 1365
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string v1, "ET"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1366
    return-void
.end method

.method public eoClip()V
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string v1, "W*"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 482
    return-void
.end method

.method public eoFill()V
    .locals 3

    .prologue
    .line 1087
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->inText:Z

    if-eqz v0, :cond_0

    .line 1088
    new-instance v0, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;

    const-string v1, "path.construction.operator.inside.text.object"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1090
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string v1, "f*"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1091
    return-void
.end method

.method public eoFillStroke()V
    .locals 3

    .prologue
    .line 1120
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->inText:Z

    if-eqz v0, :cond_0

    .line 1121
    new-instance v0, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;

    const-string v1, "path.construction.operator.inside.text.object"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1123
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string v1, "B*"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1124
    return-void
.end method

.method public fill()V
    .locals 3

    .prologue
    .line 1076
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->inText:Z

    if-eqz v0, :cond_0

    .line 1077
    new-instance v0, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;

    const-string v1, "path.construction.operator.inside.text.object"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1079
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string v1, "f"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1080
    return-void
.end method

.method public fillStroke()V
    .locals 3

    .prologue
    .line 1098
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->inText:Z

    if-eqz v0, :cond_0

    .line 1099
    new-instance v0, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;

    const-string v1, "path.construction.operator.inside.text.object"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1101
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string v1, "B"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1102
    return-void
.end method

.method public getCharacterSpacing()F
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget v0, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->charSpace:F

    return v0
.end method

.method public getDuplicate()Lcom/itextpdf/text/pdf/PdfContentByte;
    .locals 2

    .prologue
    .line 2632
    new-instance v0, Lcom/itextpdf/text/pdf/PdfContentByte;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    return-object v0
.end method

.method public getEffectiveStringWidth(Ljava/lang/String;Z)F
    .locals 8
    .parameter "text"
    .parameter "kerned"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1739
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget-object v4, v4, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->fontDetails:Lcom/itextpdf/text/pdf/FontDetails;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/FontDetails;->getBaseFont()Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v0

    .line 1742
    .local v0, bf:Lcom/itextpdf/text/pdf/BaseFont;
    if-eqz p2, :cond_3

    .line 1743
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget v4, v4, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->size:F

    invoke-virtual {v0, p1, v4}, Lcom/itextpdf/text/pdf/BaseFont;->getWidthPointKerned(Ljava/lang/String;F)F

    move-result v3

    .line 1747
    .local v3, w:F
    :goto_0
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget v4, v4, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->charSpace:F

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_0

    .line 1748
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget v4, v4, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->charSpace:F

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 1751
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/BaseFont;->getFontType()I

    move-result v1

    .line 1752
    .local v1, ft:I
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget v4, v4, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->wordSpace:F

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_4

    if-eqz v1, :cond_1

    if-eq v1, v7, :cond_1

    const/4 v4, 0x5

    if-ne v1, v4, :cond_4

    .line 1753
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_4

    .line 1754
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_2

    .line 1755
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget v4, v4, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->wordSpace:F

    add-float/2addr v3, v4

    .line 1753
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1745
    .end local v1           #ft:I
    .end local v2           #i:I
    .end local v3           #w:F
    :cond_3
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget v4, v4, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->size:F

    invoke-virtual {v0, p1, v4}, Lcom/itextpdf/text/pdf/BaseFont;->getWidthPoint(Ljava/lang/String;F)F

    move-result v3

    .restart local v3       #w:F
    goto :goto_0

    .line 1758
    .restart local v1       #ft:I
    :cond_4
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget v4, v4, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->scale:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x4059

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_5

    .line 1759
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget v4, v4, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->scale:F

    mul-float/2addr v4, v3

    const/high16 v5, 0x42c8

    div-float v3, v4, v5

    .line 1762
    :cond_5
    return v3
.end method

.method public getHorizontalScaling()F
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget v0, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->scale:F

    return v0
.end method

.method public getInternalBuffer()Lcom/itextpdf/text/pdf/ByteBuffer;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    return-object v0
.end method

.method public getLeading()F
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget v0, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->leading:F

    return v0
.end method

.method getPageResources()Lcom/itextpdf/text/pdf/PageResources;
    .locals 1

    .prologue
    .line 2875
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfDocument;->getPageResources()Lcom/itextpdf/text/pdf/PageResources;

    move-result-object v0

    return-object v0
.end method

.method public getPdfDocument()Lcom/itextpdf/text/pdf/PdfDocument;
    .locals 1

    .prologue
    .line 2596
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    return-object v0
.end method

.method public getPdfWriter()Lcom/itextpdf/text/pdf/PdfWriter;
    .locals 1

    .prologue
    .line 2588
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    return-object v0
.end method

.method public getRootOutline()Lcom/itextpdf/text/pdf/PdfOutline;
    .locals 1

    .prologue
    .line 1723
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->checkWriter()V

    .line 1724
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfDocument;->getRootOutline()Lcom/itextpdf/text/pdf/PdfOutline;

    move-result-object v0

    return-object v0
.end method

.method public getWordSpacing()F
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget v0, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->wordSpace:F

    return v0
.end method

.method public getXTLM()F
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget v0, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->xTLM:F

    return v0
.end method

.method public getYTLM()F
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget v0, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->yTLM:F

    return v0
.end method

.method public lineTo(FF)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 713
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->inText:Z

    if-eqz v0, :cond_0

    .line 714
    new-instance v0, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;

    const-string v1, "path.construction.operator.inside.text.object"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string v1, " l"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 717
    return-void
.end method

.method public localDestination(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfDestination;)Z
    .locals 1
    .parameter "name"
    .parameter "destination"

    .prologue
    .line 2622
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfDocument;->localDestination(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfDestination;)Z

    move-result v0

    return v0
.end method

.method public localGoto(Ljava/lang/String;FFFF)V
    .locals 6
    .parameter "name"
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    .line 2609
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/text/pdf/PdfDocument;->localGoto(Ljava/lang/String;FFFF)V

    .line 2610
    return-void
.end method

.method public moveText(FF)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1620
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget v1, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->xTLM:F

    add-float/2addr v1, p1

    iput v1, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->xTLM:F

    .line 1621
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget v1, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->yTLM:F

    add-float/2addr v1, p2

    iput v1, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->yTLM:F

    .line 1622
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string v1, " Td"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1623
    return-void
.end method

.method public moveTextWithLeading(FF)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1634
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget v1, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->xTLM:F

    add-float/2addr v1, p1

    iput v1, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->xTLM:F

    .line 1635
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget v1, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->yTLM:F

    add-float/2addr v1, p2

    iput v1, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->yTLM:F

    .line 1636
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    neg-float v1, p2

    iput v1, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->leading:F

    .line 1637
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string v1, " TD"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1638
    return-void
.end method

.method public moveTo(FF)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 698
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->inText:Z

    if-eqz v0, :cond_0

    .line 699
    new-instance v0, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;

    const-string v1, "path.construction.operator.inside.text.object"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string v1, " m"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 702
    return-void
.end method

.method public newPath()V
    .locals 3

    .prologue
    .line 1043
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->inText:Z

    if-eqz v0, :cond_0

    .line 1044
    new-instance v0, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;

    const-string v1, "path.construction.operator.inside.text.object"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1046
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string v1, "n"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1047
    return-void
.end method

.method public newlineShowText(FFLjava/lang/String;)V
    .locals 3
    .parameter "wordSpacing"
    .parameter "charSpacing"
    .parameter "text"

    .prologue
    .line 1558
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget v1, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->yTLM:F

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget v2, v2, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->leading:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->yTLM:F

    .line 1559
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1560
    invoke-direct {p0, p3}, Lcom/itextpdf/text/pdf/PdfContentByte;->showText2(Ljava/lang/String;)V

    .line 1561
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1565
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iput p2, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->charSpace:F

    .line 1566
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iput p1, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->wordSpace:F

    .line 1567
    return-void
.end method

.method public newlineShowText(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 1545
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget v1, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->yTLM:F

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget v2, v2, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->leading:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->yTLM:F

    .line 1546
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/PdfContentByte;->showText2(Ljava/lang/String;)V

    .line 1547
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1548
    return-void
.end method

.method public newlineText()V
    .locals 3

    .prologue
    .line 1644
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget v1, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->yTLM:F

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget v2, v2, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->leading:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->yTLM:F

    .line 1645
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string v1, "T*"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1646
    return-void
.end method

.method outputColorNumbers(Lcom/itextpdf/text/BaseColor;F)V
    .locals 6
    .parameter "color"
    .parameter "tint"

    .prologue
    const/high16 v5, 0x437f

    const/16 v4, 0x20

    .line 2396
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    const/4 v3, 0x1

    invoke-static {v2, v3, p1}, Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;->checkPDFXConformance(Lcom/itextpdf/text/pdf/PdfWriter;ILjava/lang/Object;)V

    .line 2397
    invoke-static {p1}, Lcom/itextpdf/text/pdf/ExtendedColor;->getType(Lcom/itextpdf/text/BaseColor;)I

    move-result v1

    .line 2398
    .local v1, type:I
    packed-switch v1, :pswitch_data_0

    .line 2419
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "invalid.color.type"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2400
    :pswitch_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {p1}, Lcom/itextpdf/text/BaseColor;->getRed()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2401
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2402
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {p1}, Lcom/itextpdf/text/BaseColor;->getGreen()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2403
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2404
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {p1}, Lcom/itextpdf/text/BaseColor;->getBlue()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2421
    .end local p1
    :goto_0
    return-void

    .line 2407
    .restart local p1
    :pswitch_1
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    check-cast p1, Lcom/itextpdf/text/pdf/GrayColor;

    .end local p1
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/GrayColor;->getGray()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    goto :goto_0

    .restart local p1
    :pswitch_2
    move-object v0, p1

    .line 2410
    check-cast v0, Lcom/itextpdf/text/pdf/CMYKColor;

    .line 2411
    .local v0, cmyk:Lcom/itextpdf/text/pdf/CMYKColor;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/CMYKColor;->getCyan()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/CMYKColor;->getMagenta()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2412
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/CMYKColor;->getYellow()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/CMYKColor;->getBlack()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    goto :goto_0

    .line 2416
    .end local v0           #cmyk:Lcom/itextpdf/text/pdf/CMYKColor;
    :pswitch_3
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v2, p2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    goto :goto_0

    .line 2398
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public paintShading(Lcom/itextpdf/text/pdf/PdfShading;)V
    .locals 5
    .parameter "shading"

    .prologue
    .line 2504
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v3, p1}, Lcom/itextpdf/text/pdf/PdfWriter;->addSimpleShading(Lcom/itextpdf/text/pdf/PdfShading;)V

    .line 2505
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getPageResources()Lcom/itextpdf/text/pdf/PageResources;

    move-result-object v2

    .line 2506
    .local v2, prs:Lcom/itextpdf/text/pdf/PageResources;
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfShading;->getShadingName()Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v3

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfShading;->getShadingReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/text/pdf/PageResources;->addShading(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v1

    .line 2507
    .local v1, name:Lcom/itextpdf/text/pdf/PdfName;
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v3

    const-string v4, " sh"

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v3

    iget v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2508
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfShading;->getColorDetails()Lcom/itextpdf/text/pdf/ColorDetails;

    move-result-object v0

    .line 2509
    .local v0, details:Lcom/itextpdf/text/pdf/ColorDetails;
    if-eqz v0, :cond_0

    .line 2510
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ColorDetails;->getColorName()Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v3

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ColorDetails;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/text/pdf/PageResources;->addColor(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;

    .line 2511
    :cond_0
    return-void
.end method

.method public paintShading(Lcom/itextpdf/text/pdf/PdfShadingPattern;)V
    .locals 1
    .parameter "shading"

    .prologue
    .line 2518
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfShadingPattern;->getShading()Lcom/itextpdf/text/pdf/PdfShading;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->paintShading(Lcom/itextpdf/text/pdf/PdfShading;)V

    .line 2519
    return-void
.end method

.method public rectangle(FFFF)V
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    const/16 v1, 0x20

    .line 796
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->inText:Z

    if-eqz v0, :cond_0

    .line 797
    new-instance v0, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;

    const-string v1, "path.construction.operator.inside.text.object"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string v1, " re"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 800
    return-void
.end method

.method public rectangle(Lcom/itextpdf/text/Rectangle;)V
    .locals 8
    .parameter "rectangle"

    .prologue
    .line 956
    invoke-virtual {p1}, Lcom/itextpdf/text/Rectangle;->getLeft()F

    move-result v2

    .line 957
    .local v2, x1:F
    invoke-virtual {p1}, Lcom/itextpdf/text/Rectangle;->getBottom()F

    move-result v4

    .line 958
    .local v4, y1:F
    invoke-virtual {p1}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v3

    .line 959
    .local v3, x2:F
    invoke-virtual {p1}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v5

    .line 962
    .local v5, y2:F
    invoke-virtual {p1}, Lcom/itextpdf/text/Rectangle;->getBackgroundColor()Lcom/itextpdf/text/BaseColor;

    move-result-object v0

    .line 963
    .local v0, background:Lcom/itextpdf/text/BaseColor;
    if-eqz v0, :cond_0

    .line 964
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->saveState()V

    .line 965
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    .line 966
    sub-float v6, v3, v2

    sub-float v7, v5, v4

    invoke-virtual {p0, v2, v4, v6, v7}, Lcom/itextpdf/text/pdf/PdfContentByte;->rectangle(FFFF)V

    .line 967
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->fill()V

    .line 968
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->restoreState()V

    .line 972
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/text/Rectangle;->hasBorders()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1024
    :cond_1
    :goto_0
    return-void

    .line 979
    :cond_2
    invoke-virtual {p1}, Lcom/itextpdf/text/Rectangle;->isUseVariableBorders()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 980
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfContentByte;->variableRectangle(Lcom/itextpdf/text/Rectangle;)V

    goto :goto_0

    .line 984
    :cond_3
    invoke-virtual {p1}, Lcom/itextpdf/text/Rectangle;->getBorderWidth()F

    move-result v6

    const/high16 v7, -0x4080

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_4

    .line 985
    invoke-virtual {p1}, Lcom/itextpdf/text/Rectangle;->getBorderWidth()F

    move-result v6

    invoke-virtual {p0, v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineWidth(F)V

    .line 989
    :cond_4
    invoke-virtual {p1}, Lcom/itextpdf/text/Rectangle;->getBorderColor()Lcom/itextpdf/text/BaseColor;

    move-result-object v1

    .line 990
    .local v1, color:Lcom/itextpdf/text/BaseColor;
    if-eqz v1, :cond_5

    .line 991
    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorStroke(Lcom/itextpdf/text/BaseColor;)V

    .line 995
    :cond_5
    const/16 v6, 0xf

    invoke-virtual {p1, v6}, Lcom/itextpdf/text/Rectangle;->hasBorder(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 996
    sub-float v6, v3, v2

    sub-float v7, v5, v4

    invoke-virtual {p0, v2, v4, v6, v7}, Lcom/itextpdf/text/pdf/PdfContentByte;->rectangle(FFFF)V

    .line 1018
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->stroke()V

    .line 1020
    if-eqz v1, :cond_1

    .line 1021
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->resetRGBColorStroke()V

    goto :goto_0

    .line 1000
    :cond_7
    const/16 v6, 0x8

    invoke-virtual {p1, v6}, Lcom/itextpdf/text/Rectangle;->hasBorder(I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1001
    invoke-virtual {p0, v3, v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveTo(FF)V

    .line 1002
    invoke-virtual {p0, v3, v5}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 1004
    :cond_8
    const/4 v6, 0x4

    invoke-virtual {p1, v6}, Lcom/itextpdf/text/Rectangle;->hasBorder(I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1005
    invoke-virtual {p0, v2, v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveTo(FF)V

    .line 1006
    invoke-virtual {p0, v2, v5}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 1008
    :cond_9
    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Lcom/itextpdf/text/Rectangle;->hasBorder(I)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1009
    invoke-virtual {p0, v2, v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveTo(FF)V

    .line 1010
    invoke-virtual {p0, v3, v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 1012
    :cond_a
    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Lcom/itextpdf/text/Rectangle;->hasBorder(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1013
    invoke-virtual {p0, v2, v5}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveTo(FF)V

    .line 1014
    invoke-virtual {p0, v3, v5}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    goto :goto_1
.end method

.method public remoteGoto(Ljava/lang/String;IFFFF)V
    .locals 7
    .parameter "filename"
    .parameter "page"
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    .line 2658
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfDocument;->remoteGoto(Ljava/lang/String;IFFFF)V

    .line 2659
    return-void
.end method

.method public remoteGoto(Ljava/lang/String;Ljava/lang/String;FFFF)V
    .locals 7
    .parameter "filename"
    .parameter "name"
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    .line 2645
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfDocument;->remoteGoto(Ljava/lang/String;Ljava/lang/String;FFFF)V

    .line 2646
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 1327
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->reset(Z)V

    .line 1328
    return-void
.end method

.method public reset(Z)V
    .locals 1
    .parameter "validateContent"

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->reset()V

    .line 1337
    if-eqz p1, :cond_0

    .line 1338
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->sanityCheck()V

    .line 1340
    :cond_0
    new-instance v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    .line 1341
    return-void
.end method

.method public resetCMYKColorFill()V
    .locals 2

    .prologue
    .line 658
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string v1, "0 0 0 1 k"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 659
    return-void
.end method

.method public resetCMYKColorStroke()V
    .locals 2

    .prologue
    .line 687
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string v1, "0 0 0 1 K"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 688
    return-void
.end method

.method public resetGrayFill()V
    .locals 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string v1, "0 g"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 503
    return-void
.end method

.method public resetGrayStroke()V
    .locals 2

    .prologue
    .line 523
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string v1, "0 G"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 524
    return-void
.end method

.method public resetRGBColorFill()V
    .locals 2

    .prologue
    .line 573
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string v1, "0 g"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 574
    return-void
.end method

.method public resetRGBColorStroke()V
    .locals 2

    .prologue
    .line 601
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string v1, "0 G"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 602
    return-void
.end method

.method public restoreState()V
    .locals 4

    .prologue
    .line 1382
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string v2, "Q"

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1383
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->stateList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 1384
    .local v0, idx:I
    if-gez v0, :cond_0

    .line 1385
    new-instance v1, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;

    const-string v2, "unbalanced.save.restore.state.operators"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1386
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->stateList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    .line 1387
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->stateList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1388
    return-void
.end method

.method public roundRectangle(FFFFF)V
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"
    .parameter "r"

    .prologue
    const/4 v1, 0x0

    .line 2670
    cmpg-float v0, p3, v1

    if-gez v0, :cond_0

    .line 2671
    add-float/2addr p1, p3

    .line 2672
    neg-float p3, p3

    .line 2674
    :cond_0
    cmpg-float v0, p4, v1

    if-gez v0, :cond_1

    .line 2675
    add-float/2addr p2, p4

    .line 2676
    neg-float p4, p4

    .line 2678
    :cond_1
    cmpg-float v0, p5, v1

    if-gez v0, :cond_2

    .line 2679
    neg-float p5, p5

    .line 2680
    :cond_2
    const v7, 0x3ee538ef

    .line 2681
    .local v7, b:F
    add-float v0, p1, p5

    invoke-virtual {p0, v0, p2}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveTo(FF)V

    .line 2682
    add-float v0, p1, p3

    sub-float/2addr v0, p5

    invoke-virtual {p0, v0, p2}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 2683
    add-float v0, p1, p3

    mul-float v1, p5, v7

    sub-float v1, v0, v1

    add-float v3, p1, p3

    mul-float v0, p5, v7

    add-float v4, p2, v0

    add-float v5, p1, p3

    add-float v6, p2, p5

    move-object v0, p0

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->curveTo(FFFFFF)V

    .line 2684
    add-float v0, p1, p3

    add-float v1, p2, p4

    sub-float/2addr v1, p5

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 2685
    add-float v1, p1, p3

    add-float v0, p2, p4

    mul-float v2, p5, v7

    sub-float v2, v0, v2

    add-float v0, p1, p3

    mul-float v3, p5, v7

    sub-float v3, v0, v3

    add-float v4, p2, p4

    add-float v0, p1, p3

    sub-float v5, v0, p5

    add-float v6, p2, p4

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->curveTo(FFFFFF)V

    .line 2686
    add-float v0, p1, p5

    add-float v1, p2, p4

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 2687
    mul-float v0, p5, v7

    add-float v1, p1, v0

    add-float v2, p2, p4

    add-float v0, p2, p4

    mul-float v3, p5, v7

    sub-float v4, v0, v3

    add-float v0, p2, p4

    sub-float v6, v0, p5

    move-object v0, p0

    move v3, p1

    move v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->curveTo(FFFFFF)V

    .line 2688
    add-float v0, p2, p5

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 2689
    mul-float v0, p5, v7

    add-float v2, p2, v0

    mul-float v0, p5, v7

    add-float v3, p1, v0

    add-float v5, p1, p5

    move-object v0, p0

    move v1, p1

    move v4, p2

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->curveTo(FFFFFF)V

    .line 2690
    return-void
.end method

.method public sanityCheck()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3072
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->mcDepth:I

    if-eqz v0, :cond_0

    .line 3073
    new-instance v0, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;

    const-string v1, "unbalanced.marked.content.operators"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3075
    :cond_0
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->inText:Z

    if-eqz v0, :cond_1

    .line 3076
    new-instance v0, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;

    const-string v1, "unbalanced.begin.end.text.operators"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3078
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->layerDepth:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->layerDepth:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3079
    new-instance v0, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;

    const-string v1, "unbalanced.layer.operators"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3081
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->stateList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3082
    new-instance v0, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;

    const-string v1, "unbalanced.save.restore.state.operators"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3084
    :cond_3
    return-void
.end method

.method public saveState()V
    .locals 3

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string v1, "q"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1374
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->stateList:Ljava/util/ArrayList;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1375
    return-void
.end method

.method public setAction(Lcom/itextpdf/text/pdf/PdfAction;FFFF)V
    .locals 6
    .parameter "action"
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    .line 2700
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/text/pdf/PdfDocument;->setAction(Lcom/itextpdf/text/pdf/PdfAction;FFFF)V

    .line 2701
    return-void
.end method

.method public setCMYKColorFill(IIII)V
    .locals 4
    .parameter "cyan"
    .parameter "magenta"
    .parameter "yellow"
    .parameter "black"

    .prologue
    const/16 v3, 0x20

    const/high16 v2, 0x437f

    .line 2193
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    and-int/lit16 v1, p1, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2194
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2195
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    and-int/lit16 v1, p2, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2196
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2197
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    and-int/lit16 v1, p3, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2198
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2199
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    and-int/lit16 v1, p4, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2200
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string v1, " k"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2201
    return-void
.end method

.method public setCMYKColorFillF(FFFF)V
    .locals 2
    .parameter "cyan"
    .parameter "magenta"
    .parameter "yellow"
    .parameter "black"

    .prologue
    .line 648
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/itextpdf/text/pdf/PdfContentByte;->HelperCMYK(FFFF)V

    .line 649
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string v1, " k"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 650
    return-void
.end method

.method public setCMYKColorStroke(IIII)V
    .locals 4
    .parameter "cyan"
    .parameter "magenta"
    .parameter "yellow"
    .parameter "black"

    .prologue
    const/16 v3, 0x20

    const/high16 v2, 0x437f

    .line 2220
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    and-int/lit16 v1, p1, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2221
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2222
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    and-int/lit16 v1, p2, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2223
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2224
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    and-int/lit16 v1, p3, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2225
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2226
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    and-int/lit16 v1, p4, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2227
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string v1, " K"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2228
    return-void
.end method

.method public setCMYKColorStrokeF(FFFF)V
    .locals 2
    .parameter "cyan"
    .parameter "magenta"
    .parameter "yellow"
    .parameter "black"

    .prologue
    .line 677
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/itextpdf/text/pdf/PdfContentByte;->HelperCMYK(FFFF)V

    .line 678
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string v1, " K"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 679
    return-void
.end method

.method public setCharacterSpacing(F)V
    .locals 2
    .parameter "charSpace"

    .prologue
    .line 1396
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iput p1, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->charSpace:F

    .line 1397
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string v1, " Tc"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1398
    return-void
.end method

.method public setColorFill(Lcom/itextpdf/text/BaseColor;)V
    .locals 9
    .parameter "color"

    .prologue
    .line 2315
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    const/4 v6, 0x1

    invoke-static {v5, v6, p1}, Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;->checkPDFXConformance(Lcom/itextpdf/text/pdf/PdfWriter;ILjava/lang/Object;)V

    .line 2316
    invoke-static {p1}, Lcom/itextpdf/text/pdf/ExtendedColor;->getType(Lcom/itextpdf/text/BaseColor;)I

    move-result v4

    .line 2317
    .local v4, type:I
    packed-switch v4, :pswitch_data_0

    .line 2343
    invoke-virtual {p1}, Lcom/itextpdf/text/BaseColor;->getRed()I

    move-result v5

    invoke-virtual {p1}, Lcom/itextpdf/text/BaseColor;->getGreen()I

    move-result v6

    invoke-virtual {p1}, Lcom/itextpdf/text/BaseColor;->getBlue()I

    move-result v7

    invoke-virtual {p0, v5, v6, v7}, Lcom/itextpdf/text/pdf/PdfContentByte;->setRGBColorFill(III)V

    .line 2345
    .end local p1
    :goto_0
    return-void

    .line 2319
    .restart local p1
    :pswitch_0
    check-cast p1, Lcom/itextpdf/text/pdf/GrayColor;

    .end local p1
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/GrayColor;->getGray()F

    move-result v5

    invoke-virtual {p0, v5}, Lcom/itextpdf/text/pdf/PdfContentByte;->setGrayFill(F)V

    goto :goto_0

    .restart local p1
    :pswitch_1
    move-object v0, p1

    .line 2323
    check-cast v0, Lcom/itextpdf/text/pdf/CMYKColor;

    .line 2324
    .local v0, cmyk:Lcom/itextpdf/text/pdf/CMYKColor;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/CMYKColor;->getCyan()F

    move-result v5

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/CMYKColor;->getMagenta()F

    move-result v6

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/CMYKColor;->getYellow()F

    move-result v7

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/CMYKColor;->getBlack()F

    move-result v8

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/itextpdf/text/pdf/PdfContentByte;->setCMYKColorFillF(FFFF)V

    goto :goto_0

    .end local v0           #cmyk:Lcom/itextpdf/text/pdf/CMYKColor;
    :pswitch_2
    move-object v3, p1

    .line 2328
    check-cast v3, Lcom/itextpdf/text/pdf/SpotColor;

    .line 2329
    .local v3, spot:Lcom/itextpdf/text/pdf/SpotColor;
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/SpotColor;->getPdfSpotColor()Lcom/itextpdf/text/pdf/PdfSpotColor;

    move-result-object v5

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/SpotColor;->getTint()F

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorFill(Lcom/itextpdf/text/pdf/PdfSpotColor;F)V

    goto :goto_0

    .end local v3           #spot:Lcom/itextpdf/text/pdf/SpotColor;
    :pswitch_3
    move-object v1, p1

    .line 2333
    check-cast v1, Lcom/itextpdf/text/pdf/PatternColor;

    .line 2334
    .local v1, pat:Lcom/itextpdf/text/pdf/PatternColor;
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PatternColor;->getPainter()Lcom/itextpdf/text/pdf/PdfPatternPainter;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/itextpdf/text/pdf/PdfContentByte;->setPatternFill(Lcom/itextpdf/text/pdf/PdfPatternPainter;)V

    goto :goto_0

    .end local v1           #pat:Lcom/itextpdf/text/pdf/PatternColor;
    :pswitch_4
    move-object v2, p1

    .line 2338
    check-cast v2, Lcom/itextpdf/text/pdf/ShadingColor;

    .line 2339
    .local v2, shading:Lcom/itextpdf/text/pdf/ShadingColor;
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/ShadingColor;->getPdfShadingPattern()Lcom/itextpdf/text/pdf/PdfShadingPattern;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/itextpdf/text/pdf/PdfContentByte;->setShadingFill(Lcom/itextpdf/text/pdf/PdfShadingPattern;)V

    goto :goto_0

    .line 2317
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setColorFill(Lcom/itextpdf/text/pdf/PdfSpotColor;F)V
    .locals 4
    .parameter "sp"
    .parameter "tint"

    .prologue
    .line 2353
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->checkWriter()V

    .line 2354
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v3, p1}, Lcom/itextpdf/text/pdf/PdfWriter;->addSimple(Lcom/itextpdf/text/pdf/PdfSpotColor;)Lcom/itextpdf/text/pdf/ColorDetails;

    move-result-object v3

    iput-object v3, v2, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->colorDetails:Lcom/itextpdf/text/pdf/ColorDetails;

    .line 2355
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getPageResources()Lcom/itextpdf/text/pdf/PageResources;

    move-result-object v1

    .line 2356
    .local v1, prs:Lcom/itextpdf/text/pdf/PageResources;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget-object v2, v2, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->colorDetails:Lcom/itextpdf/text/pdf/ColorDetails;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/ColorDetails;->getColorName()Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v0

    .line 2357
    .local v0, name:Lcom/itextpdf/text/pdf/PdfName;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget-object v2, v2, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->colorDetails:Lcom/itextpdf/text/pdf/ColorDetails;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/ColorDetails;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/itextpdf/text/pdf/PageResources;->addColor(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v0

    .line 2358
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    const-string v3, " cs "

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    const-string v3, " scn"

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    iget v3, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2359
    return-void
.end method

.method public setColorStroke(Lcom/itextpdf/text/BaseColor;)V
    .locals 9
    .parameter "color"

    .prologue
    .line 2278
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    const/4 v6, 0x1

    invoke-static {v5, v6, p1}, Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;->checkPDFXConformance(Lcom/itextpdf/text/pdf/PdfWriter;ILjava/lang/Object;)V

    .line 2279
    invoke-static {p1}, Lcom/itextpdf/text/pdf/ExtendedColor;->getType(Lcom/itextpdf/text/BaseColor;)I

    move-result v4

    .line 2280
    .local v4, type:I
    packed-switch v4, :pswitch_data_0

    .line 2306
    invoke-virtual {p1}, Lcom/itextpdf/text/BaseColor;->getRed()I

    move-result v5

    invoke-virtual {p1}, Lcom/itextpdf/text/BaseColor;->getGreen()I

    move-result v6

    invoke-virtual {p1}, Lcom/itextpdf/text/BaseColor;->getBlue()I

    move-result v7

    invoke-virtual {p0, v5, v6, v7}, Lcom/itextpdf/text/pdf/PdfContentByte;->setRGBColorStroke(III)V

    .line 2308
    .end local p1
    :goto_0
    return-void

    .line 2282
    .restart local p1
    :pswitch_0
    check-cast p1, Lcom/itextpdf/text/pdf/GrayColor;

    .end local p1
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/GrayColor;->getGray()F

    move-result v5

    invoke-virtual {p0, v5}, Lcom/itextpdf/text/pdf/PdfContentByte;->setGrayStroke(F)V

    goto :goto_0

    .restart local p1
    :pswitch_1
    move-object v0, p1

    .line 2286
    check-cast v0, Lcom/itextpdf/text/pdf/CMYKColor;

    .line 2287
    .local v0, cmyk:Lcom/itextpdf/text/pdf/CMYKColor;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/CMYKColor;->getCyan()F

    move-result v5

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/CMYKColor;->getMagenta()F

    move-result v6

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/CMYKColor;->getYellow()F

    move-result v7

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/CMYKColor;->getBlack()F

    move-result v8

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/itextpdf/text/pdf/PdfContentByte;->setCMYKColorStrokeF(FFFF)V

    goto :goto_0

    .end local v0           #cmyk:Lcom/itextpdf/text/pdf/CMYKColor;
    :pswitch_2
    move-object v3, p1

    .line 2291
    check-cast v3, Lcom/itextpdf/text/pdf/SpotColor;

    .line 2292
    .local v3, spot:Lcom/itextpdf/text/pdf/SpotColor;
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/SpotColor;->getPdfSpotColor()Lcom/itextpdf/text/pdf/PdfSpotColor;

    move-result-object v5

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/SpotColor;->getTint()F

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorStroke(Lcom/itextpdf/text/pdf/PdfSpotColor;F)V

    goto :goto_0

    .end local v3           #spot:Lcom/itextpdf/text/pdf/SpotColor;
    :pswitch_3
    move-object v1, p1

    .line 2296
    check-cast v1, Lcom/itextpdf/text/pdf/PatternColor;

    .line 2297
    .local v1, pat:Lcom/itextpdf/text/pdf/PatternColor;
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PatternColor;->getPainter()Lcom/itextpdf/text/pdf/PdfPatternPainter;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/itextpdf/text/pdf/PdfContentByte;->setPatternStroke(Lcom/itextpdf/text/pdf/PdfPatternPainter;)V

    goto :goto_0

    .end local v1           #pat:Lcom/itextpdf/text/pdf/PatternColor;
    :pswitch_4
    move-object v2, p1

    .line 2301
    check-cast v2, Lcom/itextpdf/text/pdf/ShadingColor;

    .line 2302
    .local v2, shading:Lcom/itextpdf/text/pdf/ShadingColor;
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/ShadingColor;->getPdfShadingPattern()Lcom/itextpdf/text/pdf/PdfShadingPattern;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/itextpdf/text/pdf/PdfContentByte;->setShadingStroke(Lcom/itextpdf/text/pdf/PdfShadingPattern;)V

    goto :goto_0

    .line 2280
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setColorStroke(Lcom/itextpdf/text/pdf/PdfSpotColor;F)V
    .locals 4
    .parameter "sp"
    .parameter "tint"

    .prologue
    .line 2367
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->checkWriter()V

    .line 2368
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v3, p1}, Lcom/itextpdf/text/pdf/PdfWriter;->addSimple(Lcom/itextpdf/text/pdf/PdfSpotColor;)Lcom/itextpdf/text/pdf/ColorDetails;

    move-result-object v3

    iput-object v3, v2, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->colorDetails:Lcom/itextpdf/text/pdf/ColorDetails;

    .line 2369
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getPageResources()Lcom/itextpdf/text/pdf/PageResources;

    move-result-object v1

    .line 2370
    .local v1, prs:Lcom/itextpdf/text/pdf/PageResources;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget-object v2, v2, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->colorDetails:Lcom/itextpdf/text/pdf/ColorDetails;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/ColorDetails;->getColorName()Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v0

    .line 2371
    .local v0, name:Lcom/itextpdf/text/pdf/PdfName;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget-object v2, v2, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->colorDetails:Lcom/itextpdf/text/pdf/ColorDetails;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/ColorDetails;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/itextpdf/text/pdf/PageResources;->addColor(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v0

    .line 2372
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    const-string v3, " CS "

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    const-string v3, " SCN"

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    iget v3, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2373
    return-void
.end method

.method public setDefaultColorspace(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V
    .locals 1
    .parameter "name"
    .parameter "obj"

    .prologue
    .line 2962
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getPageResources()Lcom/itextpdf/text/pdf/PageResources;

    move-result-object v0

    .line 2963
    .local v0, prs:Lcom/itextpdf/text/pdf/PageResources;
    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PageResources;->addDefaultColor(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 2964
    return-void
.end method

.method public setFlatness(F)V
    .locals 2
    .parameter "flatness"

    .prologue
    .line 329
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x42c8

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string v1, " i"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 332
    :cond_0
    return-void
.end method

.method public setFontAndSize(Lcom/itextpdf/text/pdf/BaseFont;F)V
    .locals 7
    .parameter "bf"
    .parameter "size"

    .prologue
    .line 1440
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->checkWriter()V

    .line 1441
    const v2, 0x38d1b717

    cmpg-float v2, p2, v2

    if-gez v2, :cond_0

    const v2, -0x472e48e9

    cmpl-float v2, p2, v2

    if-lez v2, :cond_0

    .line 1442
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "font.size.too.small.1"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1443
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iput p2, v2, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->size:F

    .line 1444
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v3, p1}, Lcom/itextpdf/text/pdf/PdfWriter;->addSimple(Lcom/itextpdf/text/pdf/BaseFont;)Lcom/itextpdf/text/pdf/FontDetails;

    move-result-object v3

    iput-object v3, v2, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->fontDetails:Lcom/itextpdf/text/pdf/FontDetails;

    .line 1445
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getPageResources()Lcom/itextpdf/text/pdf/PageResources;

    move-result-object v1

    .line 1446
    .local v1, prs:Lcom/itextpdf/text/pdf/PageResources;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget-object v2, v2, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->fontDetails:Lcom/itextpdf/text/pdf/FontDetails;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/FontDetails;->getFontName()Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v0

    .line 1447
    .local v0, name:Lcom/itextpdf/text/pdf/PdfName;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget-object v2, v2, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->fontDetails:Lcom/itextpdf/text/pdf/FontDetails;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/FontDetails;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/itextpdf/text/pdf/PageResources;->addFont(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v0

    .line 1448
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    const-string v3, " Tf"

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    iget v3, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1449
    return-void
.end method

.method public setGState(Lcom/itextpdf/text/pdf/PdfGState;)V
    .locals 5
    .parameter "gstate"

    .prologue
    .line 2882
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v3, p1}, Lcom/itextpdf/text/pdf/PdfWriter;->addSimpleExtGState(Lcom/itextpdf/text/pdf/PdfDictionary;)[Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    .line 2883
    .local v1, obj:[Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getPageResources()Lcom/itextpdf/text/pdf/PageResources;

    move-result-object v2

    .line 2884
    .local v2, prs:Lcom/itextpdf/text/pdf/PageResources;
    const/4 v3, 0x0

    aget-object v3, v1, v3

    check-cast v3, Lcom/itextpdf/text/pdf/PdfName;

    const/4 v4, 0x1

    aget-object v4, v1, v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/text/pdf/PageResources;->addExtGState(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v0

    .line 2885
    .local v0, name:Lcom/itextpdf/text/pdf/PdfName;
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v3

    const-string v4, " gs"

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v3

    iget v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2886
    return-void
.end method

.method public setGrayFill(F)V
    .locals 2
    .parameter "gray"

    .prologue
    .line 494
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string v1, " g"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 495
    return-void
.end method

.method public setGrayStroke(F)V
    .locals 2
    .parameter "gray"

    .prologue
    .line 515
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string v1, " G"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 516
    return-void
.end method

.method public setHorizontalScaling(F)V
    .locals 2
    .parameter "scale"

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iput p1, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->scale:F

    .line 1417
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string v1, " Tz"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1418
    return-void
.end method

.method public setLeading(F)V
    .locals 2
    .parameter "leading"

    .prologue
    .line 1429
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iput p1, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->leading:F

    .line 1430
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string v1, " TL"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1431
    return-void
.end method

.method public setLineCap(I)V
    .locals 2
    .parameter "style"

    .prologue
    .line 345
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string v1, " J"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 348
    :cond_0
    return-void
.end method

.method public setLineDash(F)V
    .locals 2
    .parameter "phase"

    .prologue
    .line 362
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string v1, "[] "

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string v1, " d"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 363
    return-void
.end method

.method public setLineDash(FF)V
    .locals 2
    .parameter "unitsOn"
    .parameter "phase"

    .prologue
    .line 378
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string v1, "["

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string v1, " d"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 379
    return-void
.end method

.method public setLineDash(FFF)V
    .locals 2
    .parameter "unitsOn"
    .parameter "unitsOff"
    .parameter "phase"

    .prologue
    .line 395
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string v1, "["

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string v1, " d"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 396
    return-void
.end method

.method public final setLineDash([FF)V
    .locals 3
    .parameter "array"
    .parameter "phase"

    .prologue
    .line 411
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string v2, "["

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 412
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 413
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 414
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 412
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 416
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v1

    const-string v2, " d"

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 417
    return-void
.end method

.method public setLineJoin(I)V
    .locals 2
    .parameter "style"

    .prologue
    .line 430
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string v1, " j"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 433
    :cond_0
    return-void
.end method

.method public setLineWidth(F)V
    .locals 2
    .parameter "w"

    .prologue
    .line 445
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string v1, " w"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 446
    return-void
.end method

.method public setLiteral(C)V
    .locals 1
    .parameter "c"

    .prologue
    .line 2714
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2715
    return-void
.end method

.method public setLiteral(F)V
    .locals 1
    .parameter "n"

    .prologue
    .line 2721
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2722
    return-void
.end method

.method public setLiteral(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 2707
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2708
    return-void
.end method

.method public setMiterLimit(F)V
    .locals 2
    .parameter "miterLimit"

    .prologue
    .line 460
    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string v1, " M"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 463
    :cond_0
    return-void
.end method

.method public setPatternFill(Lcom/itextpdf/text/pdf/PdfPatternPainter;)V
    .locals 4
    .parameter "p"

    .prologue
    .line 2380
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->isStencil()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2381
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->getDefaultColor()Lcom/itextpdf/text/BaseColor;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->setPatternFill(Lcom/itextpdf/text/pdf/PdfPatternPainter;Lcom/itextpdf/text/BaseColor;)V

    .line 2389
    :goto_0
    return-void

    .line 2384
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->checkWriter()V

    .line 2385
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getPageResources()Lcom/itextpdf/text/pdf/PageResources;

    move-result-object v1

    .line 2386
    .local v1, prs:Lcom/itextpdf/text/pdf/PageResources;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v2, p1}, Lcom/itextpdf/text/pdf/PdfWriter;->addSimplePattern(Lcom/itextpdf/text/pdf/PdfPatternPainter;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v0

    .line 2387
    .local v0, name:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/itextpdf/text/pdf/PageResources;->addPattern(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v0

    .line 2388
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->PATTERN:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    const-string v3, " cs "

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    const-string v3, " scn"

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    iget v3, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    goto :goto_0
.end method

.method public setPatternFill(Lcom/itextpdf/text/pdf/PdfPatternPainter;Lcom/itextpdf/text/BaseColor;)V
    .locals 2
    .parameter "p"
    .parameter "color"

    .prologue
    .line 2428
    invoke-static {p2}, Lcom/itextpdf/text/pdf/ExtendedColor;->getType(Lcom/itextpdf/text/BaseColor;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    move-object v0, p2

    .line 2429
    check-cast v0, Lcom/itextpdf/text/pdf/SpotColor;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/SpotColor;->getTint()F

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setPatternFill(Lcom/itextpdf/text/pdf/PdfPatternPainter;Lcom/itextpdf/text/BaseColor;F)V

    .line 2432
    :goto_0
    return-void

    .line 2431
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setPatternFill(Lcom/itextpdf/text/pdf/PdfPatternPainter;Lcom/itextpdf/text/BaseColor;F)V

    goto :goto_0
.end method

.method public setPatternFill(Lcom/itextpdf/text/pdf/PdfPatternPainter;Lcom/itextpdf/text/BaseColor;F)V
    .locals 7
    .parameter "p"
    .parameter "color"
    .parameter "tint"

    .prologue
    .line 2440
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->checkWriter()V

    .line 2441
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->isStencil()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2442
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "an.uncolored.pattern.was.expected"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2443
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getPageResources()Lcom/itextpdf/text/pdf/PageResources;

    move-result-object v3

    .line 2444
    .local v3, prs:Lcom/itextpdf/text/pdf/PageResources;
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v4, p1}, Lcom/itextpdf/text/pdf/PdfWriter;->addSimplePattern(Lcom/itextpdf/text/pdf/PdfPatternPainter;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v2

    .line 2445
    .local v2, name:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/itextpdf/text/pdf/PageResources;->addPattern(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v2

    .line 2446
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v4, p2}, Lcom/itextpdf/text/pdf/PdfWriter;->addSimplePatternColorspace(Lcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/pdf/ColorDetails;

    move-result-object v1

    .line 2447
    .local v1, csDetail:Lcom/itextpdf/text/pdf/ColorDetails;
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/ColorDetails;->getColorName()Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v4

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/ColorDetails;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/text/pdf/PageResources;->addColor(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v0

    .line 2448
    .local v0, cName:Lcom/itextpdf/text/pdf/PdfName;
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    const-string v5, " cs"

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    iget v5, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2449
    invoke-virtual {p0, p2, p3}, Lcom/itextpdf/text/pdf/PdfContentByte;->outputColorNumbers(Lcom/itextpdf/text/BaseColor;F)V

    .line 2450
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    const-string v5, " scn"

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    iget v5, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2451
    return-void
.end method

.method public setPatternStroke(Lcom/itextpdf/text/pdf/PdfPatternPainter;)V
    .locals 4
    .parameter "p"

    .prologue
    .line 2488
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->isStencil()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2489
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->getDefaultColor()Lcom/itextpdf/text/BaseColor;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->setPatternStroke(Lcom/itextpdf/text/pdf/PdfPatternPainter;Lcom/itextpdf/text/BaseColor;)V

    .line 2497
    :goto_0
    return-void

    .line 2492
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->checkWriter()V

    .line 2493
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getPageResources()Lcom/itextpdf/text/pdf/PageResources;

    move-result-object v1

    .line 2494
    .local v1, prs:Lcom/itextpdf/text/pdf/PageResources;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v2, p1}, Lcom/itextpdf/text/pdf/PdfWriter;->addSimplePattern(Lcom/itextpdf/text/pdf/PdfPatternPainter;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v0

    .line 2495
    .local v0, name:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/itextpdf/text/pdf/PageResources;->addPattern(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v0

    .line 2496
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->PATTERN:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    const-string v3, " CS "

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    const-string v3, " SCN"

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    iget v3, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    goto :goto_0
.end method

.method public setPatternStroke(Lcom/itextpdf/text/pdf/PdfPatternPainter;Lcom/itextpdf/text/BaseColor;)V
    .locals 2
    .parameter "p"
    .parameter "color"

    .prologue
    .line 2458
    invoke-static {p2}, Lcom/itextpdf/text/pdf/ExtendedColor;->getType(Lcom/itextpdf/text/BaseColor;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    move-object v0, p2

    .line 2459
    check-cast v0, Lcom/itextpdf/text/pdf/SpotColor;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/SpotColor;->getTint()F

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setPatternStroke(Lcom/itextpdf/text/pdf/PdfPatternPainter;Lcom/itextpdf/text/BaseColor;F)V

    .line 2462
    :goto_0
    return-void

    .line 2461
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setPatternStroke(Lcom/itextpdf/text/pdf/PdfPatternPainter;Lcom/itextpdf/text/BaseColor;F)V

    goto :goto_0
.end method

.method public setPatternStroke(Lcom/itextpdf/text/pdf/PdfPatternPainter;Lcom/itextpdf/text/BaseColor;F)V
    .locals 7
    .parameter "p"
    .parameter "color"
    .parameter "tint"

    .prologue
    .line 2470
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->checkWriter()V

    .line 2471
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->isStencil()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2472
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "an.uncolored.pattern.was.expected"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2473
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getPageResources()Lcom/itextpdf/text/pdf/PageResources;

    move-result-object v3

    .line 2474
    .local v3, prs:Lcom/itextpdf/text/pdf/PageResources;
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v4, p1}, Lcom/itextpdf/text/pdf/PdfWriter;->addSimplePattern(Lcom/itextpdf/text/pdf/PdfPatternPainter;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v2

    .line 2475
    .local v2, name:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/itextpdf/text/pdf/PageResources;->addPattern(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v2

    .line 2476
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v4, p2}, Lcom/itextpdf/text/pdf/PdfWriter;->addSimplePatternColorspace(Lcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/pdf/ColorDetails;

    move-result-object v1

    .line 2477
    .local v1, csDetail:Lcom/itextpdf/text/pdf/ColorDetails;
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/ColorDetails;->getColorName()Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v4

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/ColorDetails;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/text/pdf/PageResources;->addColor(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v0

    .line 2478
    .local v0, cName:Lcom/itextpdf/text/pdf/PdfName;
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    const-string v5, " CS"

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    iget v5, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2479
    invoke-virtual {p0, p2, p3}, Lcom/itextpdf/text/pdf/PdfContentByte;->outputColorNumbers(Lcom/itextpdf/text/BaseColor;F)V

    .line 2480
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    const-string v5, " SCN"

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    iget v5, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2481
    return-void
.end method

.method public setRGBColorFill(III)V
    .locals 4
    .parameter "red"
    .parameter "green"
    .parameter "blue"

    .prologue
    const/high16 v3, 0x437f

    .line 2248
    and-int/lit16 v0, p1, 0xff

    int-to-float v0, v0

    div-float/2addr v0, v3

    and-int/lit16 v1, p2, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v3

    and-int/lit16 v2, p3, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->HelperRGB(FFF)V

    .line 2249
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string v1, " rg"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2250
    return-void
.end method

.method public setRGBColorFillF(FFF)V
    .locals 2
    .parameter "red"
    .parameter "green"
    .parameter "blue"

    .prologue
    .line 564
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/text/pdf/PdfContentByte;->HelperRGB(FFF)V

    .line 565
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string v1, " rg"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 566
    return-void
.end method

.method public setRGBColorStroke(III)V
    .locals 4
    .parameter "red"
    .parameter "green"
    .parameter "blue"

    .prologue
    const/high16 v3, 0x437f

    .line 2269
    and-int/lit16 v0, p1, 0xff

    int-to-float v0, v0

    div-float/2addr v0, v3

    and-int/lit16 v1, p2, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v3

    and-int/lit16 v2, p3, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->HelperRGB(FFF)V

    .line 2270
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string v1, " RG"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2271
    return-void
.end method

.method public setRGBColorStrokeF(FFF)V
    .locals 2
    .parameter "red"
    .parameter "green"
    .parameter "blue"

    .prologue
    .line 591
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/text/pdf/PdfContentByte;->HelperRGB(FFF)V

    .line 592
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string v1, " RG"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 593
    return-void
.end method

.method public setShadingFill(Lcom/itextpdf/text/pdf/PdfShadingPattern;)V
    .locals 5
    .parameter "shading"

    .prologue
    .line 2526
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v3, p1}, Lcom/itextpdf/text/pdf/PdfWriter;->addSimpleShadingPattern(Lcom/itextpdf/text/pdf/PdfShadingPattern;)V

    .line 2527
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getPageResources()Lcom/itextpdf/text/pdf/PageResources;

    move-result-object v2

    .line 2528
    .local v2, prs:Lcom/itextpdf/text/pdf/PageResources;
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfShadingPattern;->getPatternName()Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v3

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfShadingPattern;->getPatternReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/text/pdf/PageResources;->addPattern(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v1

    .line 2529
    .local v1, name:Lcom/itextpdf/text/pdf/PdfName;
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->PATTERN:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v3

    const-string v4, " cs "

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v3

    const-string v4, " scn"

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v3

    iget v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2530
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfShadingPattern;->getColorDetails()Lcom/itextpdf/text/pdf/ColorDetails;

    move-result-object v0

    .line 2531
    .local v0, details:Lcom/itextpdf/text/pdf/ColorDetails;
    if-eqz v0, :cond_0

    .line 2532
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ColorDetails;->getColorName()Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v3

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ColorDetails;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/text/pdf/PageResources;->addColor(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;

    .line 2533
    :cond_0
    return-void
.end method

.method public setShadingStroke(Lcom/itextpdf/text/pdf/PdfShadingPattern;)V
    .locals 5
    .parameter "shading"

    .prologue
    .line 2540
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v3, p1}, Lcom/itextpdf/text/pdf/PdfWriter;->addSimpleShadingPattern(Lcom/itextpdf/text/pdf/PdfShadingPattern;)V

    .line 2541
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getPageResources()Lcom/itextpdf/text/pdf/PageResources;

    move-result-object v2

    .line 2542
    .local v2, prs:Lcom/itextpdf/text/pdf/PageResources;
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfShadingPattern;->getPatternName()Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v3

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfShadingPattern;->getPatternReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/text/pdf/PageResources;->addPattern(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v1

    .line 2543
    .local v1, name:Lcom/itextpdf/text/pdf/PdfName;
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->PATTERN:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v3

    const-string v4, " CS "

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v3

    const-string v4, " SCN"

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v3

    iget v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2544
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfShadingPattern;->getColorDetails()Lcom/itextpdf/text/pdf/ColorDetails;

    move-result-object v0

    .line 2545
    .local v0, details:Lcom/itextpdf/text/pdf/ColorDetails;
    if-eqz v0, :cond_0

    .line 2546
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ColorDetails;->getColorName()Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v3

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ColorDetails;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/text/pdf/PageResources;->addColor(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;

    .line 2547
    :cond_0
    return-void
.end method

.method public setTextMatrix(FF)V
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    .line 1610
    move-object v0, p0

    move v3, v2

    move v4, v1

    move v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->setTextMatrix(FFFFFF)V

    .line 1611
    return-void
.end method

.method public setTextMatrix(FFFFFF)V
    .locals 2
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v1, 0x20

    .line 1582
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iput p5, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->xTLM:F

    .line 1583
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iput p6, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->yTLM:F

    .line 1584
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p6}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string v1, " Tm"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1587
    return-void
.end method

.method public setTextMatrix(Lcom/itextpdf/awt/geom/AffineTransform;)V
    .locals 10
    .parameter "transform"

    .prologue
    .line 1595
    const/4 v0, 0x6

    new-array v7, v0, [D

    .line 1596
    .local v7, matrix:[D
    invoke-virtual {p1, v7}, Lcom/itextpdf/awt/geom/AffineTransform;->getMatrix([D)V

    .line 1597
    const/4 v0, 0x0

    aget-wide v0, v7, v0

    double-to-float v1, v0

    const/4 v0, 0x1

    aget-wide v2, v7, v0

    double-to-float v2, v2

    const/4 v0, 0x2

    aget-wide v3, v7, v0

    double-to-float v3, v3

    const/4 v0, 0x3

    aget-wide v4, v7, v0

    double-to-float v4, v4

    const/4 v0, 0x4

    aget-wide v5, v7, v0

    double-to-float v5, v5

    const/4 v0, 0x5

    aget-wide v8, v7, v0

    double-to-float v6, v8

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->setTextMatrix(FFFFFF)V

    .line 1599
    return-void
.end method

.method public setTextMatrix(Ljava/awt/geom/AffineTransform;)V
    .locals 2
    .parameter "transform"

    .prologue
    .line 3285
    const/4 v1, 0x6

    new-array v0, v1, [D

    .line 3286
    .local v0, matrix:[D
    invoke-virtual {p1, v0}, Ljava/awt/geom/AffineTransform;->getMatrix([D)V

    .line 3287
    new-instance v1, Lcom/itextpdf/awt/geom/AffineTransform;

    invoke-direct {v1, v0}, Lcom/itextpdf/awt/geom/AffineTransform;-><init>([D)V

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->setTextMatrix(Lcom/itextpdf/awt/geom/AffineTransform;)V

    .line 3288
    return-void
.end method

.method public setTextRenderingMode(I)V
    .locals 2
    .parameter "rendering"

    .prologue
    .line 1457
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string v1, " Tr"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1458
    return-void
.end method

.method public setTextRise(F)V
    .locals 2
    .parameter "rise"

    .prologue
    .line 1468
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string v1, " Ts"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1469
    return-void
.end method

.method public setWordSpacing(F)V
    .locals 2
    .parameter "wordSpace"

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iput p1, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->wordSpace:F

    .line 1407
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string v1, " Tw"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1408
    return-void
.end method

.method public showText(Lcom/itextpdf/text/pdf/PdfTextArray;)V
    .locals 7
    .parameter "text"

    .prologue
    .line 2562
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget-object v4, v4, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->fontDetails:Lcom/itextpdf/text/pdf/FontDetails;

    if-nez v4, :cond_0

    .line 2563
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "font.and.size.must.be.set.before.writing.any.text"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2564
    :cond_0
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string v5, "["

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2565
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfTextArray;->getArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 2566
    .local v0, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .line 2567
    .local v2, lastWasNumber:Z
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 2568
    .local v3, obj:Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 2569
    check-cast v3, Ljava/lang/String;

    .end local v3           #obj:Ljava/lang/Object;
    invoke-direct {p0, v3}, Lcom/itextpdf/text/pdf/PdfContentByte;->showText2(Ljava/lang/String;)V

    .line 2570
    const/4 v2, 0x0

    goto :goto_0

    .line 2573
    .restart local v3       #obj:Ljava/lang/Object;
    :cond_1
    if-eqz v2, :cond_2

    .line 2574
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2577
    :goto_1
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    check-cast v3, Ljava/lang/Float;

    .end local v3           #obj:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    goto :goto_0

    .line 2576
    .restart local v3       #obj:Ljava/lang/Object;
    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    .line 2580
    .end local v3           #obj:Ljava/lang/Object;
    :cond_3
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string v5, "]TJ"

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    iget v5, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2581
    return-void
.end method

.method public showText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 1490
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/PdfContentByte;->showText2(Ljava/lang/String;)V

    .line 1491
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string v1, "Tj"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1492
    return-void
.end method

.method public showTextAligned(ILjava/lang/String;FFF)V
    .locals 7
    .parameter "alignment"
    .parameter "text"
    .parameter "x"
    .parameter "y"
    .parameter "rotation"

    .prologue
    .line 1774
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->showTextAligned(ILjava/lang/String;FFFZ)V

    .line 1775
    return-void
.end method

.method public showTextAlignedKerned(ILjava/lang/String;FFF)V
    .locals 7
    .parameter "alignment"
    .parameter "text"
    .parameter "x"
    .parameter "y"
    .parameter "rotation"

    .prologue
    .line 1830
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->showTextAligned(ILjava/lang/String;FFFZ)V

    .line 1831
    return-void
.end method

.method public showTextKerned(Ljava/lang/String;)V
    .locals 4
    .parameter "text"

    .prologue
    .line 1530
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget-object v1, v1, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->fontDetails:Lcom/itextpdf/text/pdf/FontDetails;

    if-nez v1, :cond_0

    .line 1531
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "font.and.size.must.be.set.before.writing.any.text"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1532
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget-object v1, v1, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->fontDetails:Lcom/itextpdf/text/pdf/FontDetails;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/FontDetails;->getBaseFont()Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v0

    .line 1533
    .local v0, bf:Lcom/itextpdf/text/pdf/BaseFont;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/BaseFont;->hasKernPairs()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1534
    invoke-static {p1, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getKernArray(Ljava/lang/String;Lcom/itextpdf/text/pdf/BaseFont;)Lcom/itextpdf/text/pdf/PdfTextArray;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->showText(Lcom/itextpdf/text/pdf/PdfTextArray;)V

    .line 1537
    :goto_0
    return-void

    .line 1536
    :cond_1
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfContentByte;->showText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method size()I
    .locals 1

    .prologue
    .line 1654
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->size()I

    move-result v0

    return v0
.end method

.method public stroke()V
    .locals 3

    .prologue
    .line 1054
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->inText:Z

    if-eqz v0, :cond_0

    .line 1055
    new-instance v0, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;

    const-string v1, "path.construction.operator.inside.text.object"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1057
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string v1, "S"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1058
    return-void
.end method

.method public toPdf(Lcom/itextpdf/text/pdf/PdfWriter;)[B
    .locals 1
    .parameter "writer"

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->sanityCheck()V

    .line 248
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Lcom/itextpdf/awt/geom/AffineTransform;)V
    .locals 5
    .parameter "af"

    .prologue
    const/16 v4, 0x20

    .line 2945
    const/4 v1, 0x6

    new-array v0, v1, [D

    .line 2946
    .local v0, matrix:[D
    invoke-virtual {p1, v0}, Lcom/itextpdf/awt/geom/AffineTransform;->getMatrix([D)V

    .line 2947
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(D)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x1

    aget-wide v2, v0, v2

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(D)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x2

    aget-wide v2, v0, v2

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(D)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2948
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const/4 v2, 0x3

    aget-wide v2, v0, v2

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(D)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x4

    aget-wide v2, v0, v2

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(D)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x5

    aget-wide v2, v0, v2

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(D)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v1

    const-string v2, " cm"

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2949
    return-void
.end method

.method public transform(Ljava/awt/geom/AffineTransform;)V
    .locals 2
    .parameter "af"

    .prologue
    .line 3296
    const/4 v1, 0x6

    new-array v0, v1, [D

    .line 3297
    .local v0, matrix:[D
    invoke-virtual {p1, v0}, Ljava/awt/geom/AffineTransform;->getMatrix([D)V

    .line 3298
    new-instance v1, Lcom/itextpdf/awt/geom/AffineTransform;

    invoke-direct {v1, v0}, Lcom/itextpdf/awt/geom/AffineTransform;-><init>([D)V

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->transform(Lcom/itextpdf/awt/geom/AffineTransform;)V

    .line 3299
    return-void
.end method

.method public variableRectangle(Lcom/itextpdf/text/Rectangle;)V
    .locals 24
    .parameter "rect"

    .prologue
    .line 819
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v17

    .line 820
    .local v17, t:F
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Rectangle;->getBottom()F

    move-result v3

    .line 821
    .local v3, b:F
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v16

    .line 822
    .local v16, r:F
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Rectangle;->getLeft()F

    move-result v15

    .line 823
    .local v15, l:F
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Rectangle;->getBorderWidthTop()F

    move-result v21

    .line 824
    .local v21, wt:F
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Rectangle;->getBorderWidthBottom()F

    move-result v18

    .line 825
    .local v18, wb:F
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Rectangle;->getBorderWidthRight()F

    move-result v20

    .line 826
    .local v20, wr:F
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Rectangle;->getBorderWidthLeft()F

    move-result v19

    .line 827
    .local v19, wl:F
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Rectangle;->getBorderColorTop()Lcom/itextpdf/text/BaseColor;

    move-result-object v14

    .line 828
    .local v14, ct:Lcom/itextpdf/text/BaseColor;
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Rectangle;->getBorderColorBottom()Lcom/itextpdf/text/BaseColor;

    move-result-object v6

    .line 829
    .local v6, cb:Lcom/itextpdf/text/BaseColor;
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Rectangle;->getBorderColorRight()Lcom/itextpdf/text/BaseColor;

    move-result-object v13

    .line 830
    .local v13, cr:Lcom/itextpdf/text/BaseColor;
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Rectangle;->getBorderColorLeft()Lcom/itextpdf/text/BaseColor;

    move-result-object v11

    .line 831
    .local v11, cl:Lcom/itextpdf/text/BaseColor;
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->saveState()V

    .line 832
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineCap(I)V

    .line 833
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineJoin(I)V

    .line 834
    const/4 v12, 0x0

    .line 835
    .local v12, clw:F
    const/4 v8, 0x0

    .line 836
    .local v8, cdef:Z
    const/4 v7, 0x0

    .line 837
    .local v7, ccol:Lcom/itextpdf/text/BaseColor;
    const/4 v9, 0x0

    .line 838
    .local v9, cdefi:Z
    const/4 v10, 0x0

    .line 840
    .local v10, cfil:Lcom/itextpdf/text/BaseColor;
    const/16 v22, 0x0

    cmpl-float v22, v21, v22

    if-lez v22, :cond_0

    .line 841
    move/from16 v12, v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineWidth(F)V

    .line 842
    const/4 v8, 0x1

    .line 843
    if-nez v14, :cond_13

    .line 844
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->resetRGBColorStroke()V

    .line 847
    :goto_0
    move-object v7, v14

    .line 848
    const/high16 v22, 0x4000

    div-float v22, v21, v22

    sub-float v22, v17, v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v15, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveTo(FF)V

    .line 849
    const/high16 v22, 0x4000

    div-float v22, v21, v22

    sub-float v22, v17, v22

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 850
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->stroke()V

    .line 854
    :cond_0
    const/16 v22, 0x0

    cmpl-float v22, v18, v22

    if-lez v22, :cond_4

    .line 855
    cmpl-float v22, v18, v12

    if-eqz v22, :cond_1

    .line 856
    move/from16 v12, v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineWidth(F)V

    .line 857
    :cond_1
    if-eqz v8, :cond_2

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->compareColors(Lcom/itextpdf/text/BaseColor;Lcom/itextpdf/text/BaseColor;)Z

    move-result v22

    if-nez v22, :cond_3

    .line 858
    :cond_2
    const/4 v8, 0x1

    .line 859
    if-nez v6, :cond_14

    .line 860
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->resetRGBColorStroke()V

    .line 863
    :goto_1
    move-object v7, v6

    .line 865
    :cond_3
    const/high16 v22, 0x4000

    div-float v22, v18, v22

    add-float v22, v22, v3

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveTo(FF)V

    .line 866
    const/high16 v22, 0x4000

    div-float v22, v18, v22

    add-float v22, v22, v3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v15, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 867
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->stroke()V

    .line 871
    :cond_4
    const/16 v22, 0x0

    cmpl-float v22, v20, v22

    if-lez v22, :cond_a

    .line 872
    cmpl-float v22, v20, v12

    if-eqz v22, :cond_5

    .line 873
    move/from16 v12, v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineWidth(F)V

    .line 874
    :cond_5
    if-eqz v8, :cond_6

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v13}, Lcom/itextpdf/text/pdf/PdfContentByte;->compareColors(Lcom/itextpdf/text/BaseColor;Lcom/itextpdf/text/BaseColor;)Z

    move-result v22

    if-nez v22, :cond_7

    .line 875
    :cond_6
    const/4 v8, 0x1

    .line 876
    if-nez v13, :cond_15

    .line 877
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->resetRGBColorStroke()V

    .line 880
    :goto_2
    move-object v7, v13

    .line 882
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13}, Lcom/itextpdf/text/pdf/PdfContentByte;->compareColors(Lcom/itextpdf/text/BaseColor;Lcom/itextpdf/text/BaseColor;)Z

    move-result v5

    .line 883
    .local v5, bt:Z
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v13}, Lcom/itextpdf/text/pdf/PdfContentByte;->compareColors(Lcom/itextpdf/text/BaseColor;Lcom/itextpdf/text/BaseColor;)Z

    move-result v4

    .line 884
    .local v4, bb:Z
    const/high16 v22, 0x4000

    div-float v22, v20, v22

    sub-float v23, v16, v22

    if-eqz v5, :cond_16

    move/from16 v22, v17

    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveTo(FF)V

    .line 885
    const/high16 v22, 0x4000

    div-float v22, v20, v22

    sub-float v23, v16, v22

    if-eqz v4, :cond_17

    move/from16 v22, v3

    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 886
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->stroke()V

    .line 887
    if-eqz v5, :cond_8

    if-nez v4, :cond_a

    .line 888
    :cond_8
    const/4 v9, 0x1

    .line 889
    if-nez v13, :cond_18

    .line 890
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->resetRGBColorFill()V

    .line 893
    :goto_5
    move-object v10, v13

    .line 894
    if-nez v5, :cond_9

    .line 895
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveTo(FF)V

    .line 896
    sub-float v22, v17, v21

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 897
    sub-float v22, v16, v20

    sub-float v23, v17, v21

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 898
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->fill()V

    .line 900
    :cond_9
    if-nez v4, :cond_a

    .line 901
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v3}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveTo(FF)V

    .line 902
    add-float v22, v3, v18

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 903
    sub-float v22, v16, v20

    add-float v23, v3, v18

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 904
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->fill()V

    .line 910
    .end local v4           #bb:Z
    .end local v5           #bt:Z
    :cond_a
    const/16 v22, 0x0

    cmpl-float v22, v19, v22

    if-lez v22, :cond_12

    .line 911
    cmpl-float v22, v19, v12

    if-eqz v22, :cond_b

    .line 912
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineWidth(F)V

    .line 913
    :cond_b
    if-eqz v8, :cond_c

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v11}, Lcom/itextpdf/text/pdf/PdfContentByte;->compareColors(Lcom/itextpdf/text/BaseColor;Lcom/itextpdf/text/BaseColor;)Z

    move-result v22

    if-nez v22, :cond_d

    .line 914
    :cond_c
    if-nez v11, :cond_19

    .line 915
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->resetRGBColorStroke()V

    .line 919
    :cond_d
    :goto_6
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11}, Lcom/itextpdf/text/pdf/PdfContentByte;->compareColors(Lcom/itextpdf/text/BaseColor;Lcom/itextpdf/text/BaseColor;)Z

    move-result v5

    .line 920
    .restart local v5       #bt:Z
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v11}, Lcom/itextpdf/text/pdf/PdfContentByte;->compareColors(Lcom/itextpdf/text/BaseColor;Lcom/itextpdf/text/BaseColor;)Z

    move-result v4

    .line 921
    .restart local v4       #bb:Z
    const/high16 v22, 0x4000

    div-float v22, v19, v22

    add-float v23, v15, v22

    if-eqz v5, :cond_1a

    move/from16 v22, v17

    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveTo(FF)V

    .line 922
    const/high16 v22, 0x4000

    div-float v22, v19, v22

    add-float v23, v15, v22

    if-eqz v4, :cond_1b

    move/from16 v22, v3

    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 923
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->stroke()V

    .line 924
    if-eqz v5, :cond_e

    if-nez v4, :cond_12

    .line 925
    :cond_e
    if-eqz v9, :cond_f

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/itextpdf/text/pdf/PdfContentByte;->compareColors(Lcom/itextpdf/text/BaseColor;Lcom/itextpdf/text/BaseColor;)Z

    move-result v22

    if-nez v22, :cond_10

    .line 926
    :cond_f
    if-nez v11, :cond_1c

    .line 927
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->resetRGBColorFill()V

    .line 931
    :cond_10
    :goto_9
    if-nez v5, :cond_11

    .line 932
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveTo(FF)V

    .line 933
    sub-float v22, v17, v21

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v15, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 934
    add-float v22, v15, v19

    sub-float v23, v17, v21

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 935
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->fill()V

    .line 937
    :cond_11
    if-nez v4, :cond_12

    .line 938
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v3}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveTo(FF)V

    .line 939
    add-float v22, v3, v18

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v15, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 940
    add-float v22, v15, v19

    add-float v23, v3, v18

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 941
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->fill()V

    .line 945
    .end local v4           #bb:Z
    .end local v5           #bt:Z
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->restoreState()V

    .line 946
    return-void

    .line 846
    :cond_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorStroke(Lcom/itextpdf/text/BaseColor;)V

    goto/16 :goto_0

    .line 862
    :cond_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorStroke(Lcom/itextpdf/text/BaseColor;)V

    goto/16 :goto_1

    .line 879
    :cond_15
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorStroke(Lcom/itextpdf/text/BaseColor;)V

    goto/16 :goto_2

    .line 884
    .restart local v4       #bb:Z
    .restart local v5       #bt:Z
    :cond_16
    sub-float v22, v17, v21

    goto/16 :goto_3

    .line 885
    :cond_17
    add-float v22, v3, v18

    goto/16 :goto_4

    .line 892
    :cond_18
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    goto/16 :goto_5

    .line 917
    .end local v4           #bb:Z
    .end local v5           #bt:Z
    :cond_19
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorStroke(Lcom/itextpdf/text/BaseColor;)V

    goto/16 :goto_6

    .line 921
    .restart local v4       #bb:Z
    .restart local v5       #bt:Z
    :cond_1a
    sub-float v22, v17, v21

    goto/16 :goto_7

    .line 922
    :cond_1b
    add-float v22, v3, v18

    goto/16 :goto_8

    .line 929
    :cond_1c
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    goto :goto_9
.end method

.class public Lcom/itextpdf/awt/PdfGraphics2D;
.super Ljava/awt/Graphics2D;
.source "PdfGraphics2D.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/awt/PdfGraphics2D$1;,
        Lcom/itextpdf/awt/PdfGraphics2D$HyperLinkKey;,
        Lcom/itextpdf/awt/PdfGraphics2D$FakeComponent;,
        Lcom/itextpdf/awt/PdfGraphics2D$Kid;
    }
.end annotation


# static fields
.field public static final AFM_DIVISOR:I = 0x3e8

.field private static final CLIP:I = 0x3

.field private static final FILL:I = 0x1

.field private static final IDENTITY:Ljava/awt/geom/AffineTransform; = null

.field private static final STROKE:I = 0x2


# instance fields
.field private alpha:F

.field protected background:Ljava/awt/Color;

.field protected baseFont:Lcom/itextpdf/text/pdf/BaseFont;

.field protected baseFonts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/BaseFont;",
            ">;"
        }
    .end annotation
.end field

.field protected cb:Lcom/itextpdf/text/pdf/PdfContentByte;

.field protected clip:Ljava/awt/geom/Area;

.field private composite:Ljava/awt/Composite;

.field private convertImagesToJPEG:Z

.field protected currentFillGState:I

.field protected currentStrokeGState:I

.field private dg2:Ljava/awt/Graphics2D;

.field protected disposeCalled:Z

.field protected fillGState:[Lcom/itextpdf/text/pdf/PdfGState;

.field protected font:Ljava/awt/Font;

.field protected fontMapper:Lcom/itextpdf/awt/FontMapper;

.field protected fontSize:F

.field protected height:F

.field private jpegQuality:F

.field private kid:Z

.field private kids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/awt/PdfGraphics2D$Kid;",
            ">;"
        }
    .end annotation
.end field

.field private mediaTracker:Ljava/awt/MediaTracker;

.field private oldStroke:Ljava/awt/Stroke;

.field private onlyShapes:Z

.field protected originalStroke:Ljava/awt/Stroke;

.field protected paint:Ljava/awt/Paint;

.field private paintFill:Ljava/awt/Paint;

.field private paintStroke:Ljava/awt/Paint;

.field private realPaint:Ljava/awt/Paint;

.field protected rhints:Ljava/awt/RenderingHints;

.field protected strikethrough:Z

.field protected stroke:Ljava/awt/Stroke;

.field protected strokeGState:[Lcom/itextpdf/text/pdf/PdfGState;

.field private strokeOne:Ljava/awt/BasicStroke;

.field protected transform:Ljava/awt/geom/AffineTransform;

.field protected underline:Z

.field protected width:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    new-instance v0, Ljava/awt/geom/AffineTransform;

    invoke-direct {v0}, Ljava/awt/geom/AffineTransform;-><init>()V

    sput-object v0, Lcom/itextpdf/awt/PdfGraphics2D;->IDENTITY:Ljava/awt/geom/AffineTransform;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0xff

    const/4 v2, 0x0

    .line 210
    invoke-direct {p0}, Ljava/awt/Graphics2D;-><init>()V

    .line 119
    new-instance v0, Ljava/awt/BasicStroke;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v1}, Ljava/awt/BasicStroke;-><init>(F)V

    iput-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->strokeOne:Ljava/awt/BasicStroke;

    .line 134
    new-instance v0, Ljava/awt/RenderingHints;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/awt/RenderingHints;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->rhints:Ljava/awt/RenderingHints;

    .line 144
    iput-boolean v2, p0, Lcom/itextpdf/awt/PdfGraphics2D;->disposeCalled:Z

    .line 158
    iput-boolean v2, p0, Lcom/itextpdf/awt/PdfGraphics2D;->kid:Z

    .line 162
    iput-boolean v2, p0, Lcom/itextpdf/awt/PdfGraphics2D;->onlyShapes:Z

    .line 178
    iput v3, p0, Lcom/itextpdf/awt/PdfGraphics2D;->currentFillGState:I

    .line 179
    iput v3, p0, Lcom/itextpdf/awt/PdfGraphics2D;->currentStrokeGState:I

    .line 183
    iput-boolean v2, p0, Lcom/itextpdf/awt/PdfGraphics2D;->convertImagesToJPEG:Z

    .line 184
    const v0, 0x3f733333

    iput v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->jpegQuality:F

    .line 210
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfContentByte;FF)V
    .locals 8
    .parameter "cb"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v5, 0x0

    .line 213
    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, v5

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/awt/PdfGraphics2D;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;FFLcom/itextpdf/awt/FontMapper;ZZF)V

    .line 214
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfContentByte;FFLcom/itextpdf/awt/FontMapper;)V
    .locals 8
    .parameter "cb"
    .parameter "width"
    .parameter "height"
    .parameter "fontMapper"

    .prologue
    const/4 v5, 0x0

    .line 217
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v6, v5

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/awt/PdfGraphics2D;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;FFLcom/itextpdf/awt/FontMapper;ZZF)V

    .line 218
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfContentByte;FFLcom/itextpdf/awt/FontMapper;ZZF)V
    .locals 7
    .parameter "cb"
    .parameter "width"
    .parameter "height"
    .parameter "fontMapper"
    .parameter "onlyShapes"
    .parameter "convertImagesToJPEG"
    .parameter "quality"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x100

    const/16 v2, 0xff

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 228
    invoke-direct {p0}, Ljava/awt/Graphics2D;-><init>()V

    .line 119
    new-instance v0, Ljava/awt/BasicStroke;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v1}, Ljava/awt/BasicStroke;-><init>(F)V

    iput-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->strokeOne:Ljava/awt/BasicStroke;

    .line 134
    new-instance v0, Ljava/awt/RenderingHints;

    invoke-direct {v0, v6}, Ljava/awt/RenderingHints;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->rhints:Ljava/awt/RenderingHints;

    .line 144
    iput-boolean v3, p0, Lcom/itextpdf/awt/PdfGraphics2D;->disposeCalled:Z

    .line 158
    iput-boolean v3, p0, Lcom/itextpdf/awt/PdfGraphics2D;->kid:Z

    .line 162
    iput-boolean v3, p0, Lcom/itextpdf/awt/PdfGraphics2D;->onlyShapes:Z

    .line 178
    iput v2, p0, Lcom/itextpdf/awt/PdfGraphics2D;->currentFillGState:I

    .line 179
    iput v2, p0, Lcom/itextpdf/awt/PdfGraphics2D;->currentStrokeGState:I

    .line 183
    iput-boolean v3, p0, Lcom/itextpdf/awt/PdfGraphics2D;->convertImagesToJPEG:Z

    .line 184
    const v0, 0x3f733333

    iput v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->jpegQuality:F

    .line 229
    new-array v0, v5, [Lcom/itextpdf/text/pdf/PdfGState;

    iput-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->fillGState:[Lcom/itextpdf/text/pdf/PdfGState;

    .line 230
    new-array v0, v5, [Lcom/itextpdf/text/pdf/PdfGState;

    iput-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->strokeGState:[Lcom/itextpdf/text/pdf/PdfGState;

    .line 231
    iput-boolean p6, p0, Lcom/itextpdf/awt/PdfGraphics2D;->convertImagesToJPEG:Z

    .line 232
    iput p7, p0, Lcom/itextpdf/awt/PdfGraphics2D;->jpegQuality:F

    .line 233
    iput-boolean p5, p0, Lcom/itextpdf/awt/PdfGraphics2D;->onlyShapes:Z

    .line 234
    new-instance v0, Ljava/awt/geom/AffineTransform;

    invoke-direct {v0}, Ljava/awt/geom/AffineTransform;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    .line 235
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->baseFonts:Ljava/util/HashMap;

    .line 236
    if-nez p5, :cond_0

    .line 237
    iput-object p4, p0, Lcom/itextpdf/awt/PdfGraphics2D;->fontMapper:Lcom/itextpdf/awt/FontMapper;

    .line 238
    iget-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->fontMapper:Lcom/itextpdf/awt/FontMapper;

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Lcom/itextpdf/awt/DefaultFontMapper;

    invoke-direct {v0}, Lcom/itextpdf/awt/DefaultFontMapper;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->fontMapper:Lcom/itextpdf/awt/FontMapper;

    .line 241
    :cond_0
    sget-object v0, Ljava/awt/Color;->black:Ljava/awt/Color;

    iput-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->paint:Ljava/awt/Paint;

    .line 242
    sget-object v0, Ljava/awt/Color;->white:Ljava/awt/Color;

    iput-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->background:Ljava/awt/Color;

    .line 243
    new-instance v0, Ljava/awt/Font;

    const-string v1, "sanserif"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v3, v2}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/awt/PdfGraphics2D;->setFont(Ljava/awt/Font;)V

    .line 244
    iput-object p1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    .line 245
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfContentByte;->saveState()V

    .line 246
    iput p2, p0, Lcom/itextpdf/awt/PdfGraphics2D;->width:F

    .line 247
    iput p3, p0, Lcom/itextpdf/awt/PdfGraphics2D;->height:F

    .line 248
    new-instance v0, Ljava/awt/geom/Area;

    new-instance v1, Ljava/awt/geom/Rectangle2D$Float;

    invoke-direct {v1, v4, v4, p2, p3}, Ljava/awt/geom/Rectangle2D$Float;-><init>(FFFF)V

    invoke-direct {v0, v1}, Ljava/awt/geom/Area;-><init>(Ljava/awt/Shape;)V

    iput-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->clip:Ljava/awt/geom/Area;

    .line 249
    iget-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->clip:Ljava/awt/geom/Area;

    invoke-virtual {p0, v0}, Lcom/itextpdf/awt/PdfGraphics2D;->clip(Ljava/awt/Shape;)V

    .line 250
    iget-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->strokeOne:Ljava/awt/BasicStroke;

    iput-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->oldStroke:Ljava/awt/Stroke;

    iput-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->stroke:Ljava/awt/Stroke;

    iput-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->originalStroke:Ljava/awt/Stroke;

    .line 251
    iget-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->stroke:Ljava/awt/Stroke;

    invoke-direct {p0, v0, v6}, Lcom/itextpdf/awt/PdfGraphics2D;->setStrokeDiff(Ljava/awt/Stroke;Ljava/awt/Stroke;)V

    .line 252
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfContentByte;->saveState()V

    .line 253
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfContentByte;FFZ)V
    .locals 8
    .parameter "cb"
    .parameter "width"
    .parameter "height"
    .parameter "onlyShapes"

    .prologue
    .line 221
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/awt/PdfGraphics2D;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;FFLcom/itextpdf/awt/FontMapper;ZZF)V

    .line 222
    return-void
.end method

.method public static asPoints(DI)D
    .locals 4
    .parameter "d"
    .parameter "i"

    .prologue
    .line 335
    int-to-double v0, p2

    mul-double/2addr v0, p0

    const-wide v2, 0x408f400000000000L

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private checkNewPaint(Ljava/awt/Paint;)Z
    .locals 2
    .parameter "oldPaint"

    .prologue
    const/4 v0, 0x0

    .line 1634
    iget-object v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->paint:Ljava/awt/Paint;

    if-ne v1, p1, :cond_1

    .line 1636
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->paint:Ljava/awt/Paint;

    instance-of v1, v1, Ljava/awt/Color;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->paint:Ljava/awt/Paint;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private drawImage(Ljava/awt/Image;Ljava/awt/Image;Ljava/awt/geom/AffineTransform;Ljava/awt/Color;Ljava/awt/image/ImageObserver;)Z
    .locals 29
    .parameter "img"
    .parameter "mask"
    .parameter "xform"
    .parameter "bgColor"
    .parameter "obs"

    .prologue
    .line 1560
    if-nez p3, :cond_5

    .line 1561
    new-instance p3, Ljava/awt/geom/AffineTransform;

    .end local p3
    invoke-direct/range {p3 .. p3}, Ljava/awt/geom/AffineTransform;-><init>()V

    .line 1564
    .restart local p3
    :goto_0
    const-wide/16 v7, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/awt/Image;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result v3

    int-to-double v9, v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v7, v8, v9, v10}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    .line 1565
    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v3

    int-to-double v7, v3

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/awt/Image;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result v3

    int-to-double v9, v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v7, v8, v9, v10}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    .line 1567
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/awt/PdfGraphics2D;->normalizeMatrix()Ljava/awt/geom/AffineTransform;

    move-result-object v16

    .line 1568
    .local v16, inverse:Ljava/awt/geom/AffineTransform;
    const-wide/high16 v7, 0x3ff0

    const-wide/high16 v9, -0x4010

    invoke-static {v7, v8, v9, v10}, Ljava/awt/geom/AffineTransform;->getScaleInstance(DD)Ljava/awt/geom/AffineTransform;

    move-result-object v13

    .line 1569
    .local v13, flipper:Ljava/awt/geom/AffineTransform;
    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/awt/geom/AffineTransform;->concatenate(Ljava/awt/geom/AffineTransform;)V

    .line 1570
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/awt/geom/AffineTransform;->concatenate(Ljava/awt/geom/AffineTransform;)V

    .line 1572
    const/4 v3, 0x6

    new-array v0, v3, [D

    move-object/from16 v21, v0

    .line 1573
    .local v21, mx:[D
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/awt/geom/AffineTransform;->getMatrix([D)V

    .line 1574
    move-object/from16 v0, p0

    iget v3, v0, Lcom/itextpdf/awt/PdfGraphics2D;->currentFillGState:I

    const/16 v5, 0xff

    if-eq v3, v5, :cond_1

    .line 1575
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/awt/PdfGraphics2D;->fillGState:[Lcom/itextpdf/text/pdf/PdfGState;

    const/16 v5, 0xff

    aget-object v14, v3, v5

    .line 1576
    .local v14, gs:Lcom/itextpdf/text/pdf/PdfGState;
    if-nez v14, :cond_0

    .line 1577
    new-instance v14, Lcom/itextpdf/text/pdf/PdfGState;

    .end local v14           #gs:Lcom/itextpdf/text/pdf/PdfGState;
    invoke-direct {v14}, Lcom/itextpdf/text/pdf/PdfGState;-><init>()V

    .line 1578
    .restart local v14       #gs:Lcom/itextpdf/text/pdf/PdfGState;
    const/high16 v3, 0x3f80

    invoke-virtual {v14, v3}, Lcom/itextpdf/text/pdf/PdfGState;->setFillOpacity(F)V

    .line 1579
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/awt/PdfGraphics2D;->fillGState:[Lcom/itextpdf/text/pdf/PdfGState;

    const/16 v5, 0xff

    aput-object v14, v3, v5

    .line 1581
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v3, v14}, Lcom/itextpdf/text/pdf/PdfContentByte;->setGState(Lcom/itextpdf/text/pdf/PdfGState;)V

    .line 1585
    .end local v14           #gs:Lcom/itextpdf/text/pdf/PdfGState;
    :cond_1
    const/4 v15, 0x0

    .line 1586
    .local v15, image:Lcom/itextpdf/text/Image;
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/itextpdf/awt/PdfGraphics2D;->convertImagesToJPEG:Z

    if-nez v3, :cond_6

    .line 1587
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/itextpdf/text/Image;->getInstance(Ljava/awt/Image;Ljava/awt/Color;)Lcom/itextpdf/text/Image;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1611
    .end local v15           #image:Lcom/itextpdf/text/Image;
    .local v4, image:Lcom/itextpdf/text/Image;
    :goto_1
    if-eqz p2, :cond_2

    .line 1612
    const/4 v3, 0x0

    const/4 v5, 0x1

    :try_start_1
    move-object/from16 v0, p2

    invoke-static {v0, v3, v5}, Lcom/itextpdf/text/Image;->getInstance(Ljava/awt/Image;Ljava/awt/Color;Z)Lcom/itextpdf/text/Image;

    move-result-object v20

    .line 1613
    .local v20, msk:Lcom/itextpdf/text/Image;
    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/text/Image;->makeMask()V

    .line 1614
    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/Image;->setInverted(Z)V

    .line 1615
    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/Image;->setImageMask(Lcom/itextpdf/text/Image;)V

    .line 1617
    .end local v20           #msk:Lcom/itextpdf/text/Image;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    const/4 v5, 0x0

    aget-wide v7, v21, v5

    double-to-float v5, v7

    const/4 v7, 0x1

    aget-wide v7, v21, v7

    double-to-float v6, v7

    const/4 v7, 0x2

    aget-wide v7, v21, v7

    double-to-float v7, v7

    const/4 v8, 0x3

    aget-wide v8, v21, v8

    double-to-float v8, v8

    const/4 v9, 0x4

    aget-wide v9, v21, v9

    double-to-float v9, v9

    const/4 v10, 0x5

    aget-wide v25, v21, v10

    move-wide/from16 v0, v25

    double-to-float v10, v0

    invoke-virtual/range {v3 .. v10}, Lcom/itextpdf/text/pdf/PdfContentByte;->addImage(Lcom/itextpdf/text/Image;FFFFFF)V

    .line 1618
    sget-object v3, Lcom/itextpdf/awt/PdfGraphics2D$HyperLinkKey;->KEY_INSTANCE:Lcom/itextpdf/awt/PdfGraphics2D$HyperLinkKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/itextpdf/awt/PdfGraphics2D;->getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object v23

    .line 1619
    .local v23, url:Ljava/lang/Object;
    if-eqz v23, :cond_3

    sget-object v3, Lcom/itextpdf/awt/PdfGraphics2D$HyperLinkKey;->VALUE_HYPERLINKKEY_OFF:Ljava/lang/Object;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1620
    new-instance v6, Lcom/itextpdf/text/pdf/PdfAction;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Lcom/itextpdf/text/pdf/PdfAction;-><init>(Ljava/lang/String;)V

    .line 1621
    .local v6, action:Lcom/itextpdf/text/pdf/PdfAction;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    const/4 v3, 0x4

    aget-wide v7, v21, v3

    double-to-float v7, v7

    const/4 v3, 0x5

    aget-wide v8, v21, v3

    double-to-float v8, v8

    const/4 v3, 0x0

    aget-wide v9, v21, v3

    const/4 v3, 0x4

    aget-wide v25, v21, v3

    add-double v9, v9, v25

    double-to-float v9, v9

    const/4 v3, 0x3

    aget-wide v25, v21, v3

    const/4 v3, 0x5

    aget-wide v27, v21, v3

    add-double v25, v25, v27

    move-wide/from16 v0, v25

    double-to-float v10, v0

    invoke-virtual/range {v5 .. v10}, Lcom/itextpdf/text/pdf/PdfContentByte;->setAction(Lcom/itextpdf/text/pdf/PdfAction;FFFF)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1626
    .end local v6           #action:Lcom/itextpdf/text/pdf/PdfAction;
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/itextpdf/awt/PdfGraphics2D;->currentFillGState:I

    const/16 v5, 0xff

    if-eq v3, v5, :cond_4

    .line 1627
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/awt/PdfGraphics2D;->fillGState:[Lcom/itextpdf/text/pdf/PdfGState;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/awt/PdfGraphics2D;->currentFillGState:I

    aget-object v14, v3, v5

    .line 1628
    .restart local v14       #gs:Lcom/itextpdf/text/pdf/PdfGState;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v3, v14}, Lcom/itextpdf/text/pdf/PdfContentByte;->setGState(Lcom/itextpdf/text/pdf/PdfGState;)V

    .line 1630
    .end local v14           #gs:Lcom/itextpdf/text/pdf/PdfGState;
    :cond_4
    const/4 v3, 0x1

    return v3

    .line 1563
    .end local v4           #image:Lcom/itextpdf/text/Image;
    .end local v13           #flipper:Ljava/awt/geom/AffineTransform;
    .end local v16           #inverse:Ljava/awt/geom/AffineTransform;
    .end local v21           #mx:[D
    .end local v23           #url:Ljava/lang/Object;
    :cond_5
    new-instance v24, Ljava/awt/geom/AffineTransform;

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/awt/geom/AffineTransform;-><init>(Ljava/awt/geom/AffineTransform;)V

    .end local p3
    .local v24, xform:Ljava/awt/geom/AffineTransform;
    move-object/from16 p3, v24

    .end local v24           #xform:Ljava/awt/geom/AffineTransform;
    .restart local p3
    goto/16 :goto_0

    .line 1590
    .restart local v13       #flipper:Ljava/awt/geom/AffineTransform;
    .restart local v15       #image:Lcom/itextpdf/text/Image;
    .restart local v16       #inverse:Ljava/awt/geom/AffineTransform;
    .restart local v21       #mx:[D
    :cond_6
    :try_start_2
    new-instance v22, Ljava/awt/image/BufferedImage;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v3

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/awt/Image;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result v5

    const/4 v7, 0x1

    move-object/from16 v0, v22

    invoke-direct {v0, v3, v5, v7}, Ljava/awt/image/BufferedImage;-><init>(III)V

    .line 1591
    .local v22, scaled:Ljava/awt/image/BufferedImage;
    invoke-virtual/range {v22 .. v22}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v2

    .line 1592
    .local v2, g3:Ljava/awt/Graphics2D;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v6

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/awt/Image;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result v7

    const/4 v8, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IIIILjava/awt/image/ImageObserver;)Z

    .line 1593
    invoke-virtual {v2}, Ljava/awt/Graphics2D;->dispose()V

    .line 1595
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1596
    .local v11, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v19, Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;-><init>(Ljava/util/Locale;)V

    .line 1597
    .local v19, iwparam:Ljavax/imageio/ImageWriteParam;
    const/4 v3, 0x2

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljavax/imageio/ImageWriteParam;->setCompressionMode(I)V

    .line 1598
    move-object/from16 v0, p0

    iget v3, v0, Lcom/itextpdf/awt/PdfGraphics2D;->jpegQuality:F

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljavax/imageio/ImageWriteParam;->setCompressionQuality(F)V

    .line 1599
    const-string v3, "jpg"

    invoke-static {v3}, Ljavax/imageio/ImageIO;->getImageWritersByFormatName(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljavax/imageio/ImageWriter;

    .line 1600
    .local v18, iw:Ljavax/imageio/ImageWriter;
    invoke-static {v11}, Ljavax/imageio/ImageIO;->createImageOutputStream(Ljava/lang/Object;)Ljavax/imageio/stream/ImageOutputStream;

    move-result-object v17

    .line 1601
    .local v17, ios:Ljavax/imageio/stream/ImageOutputStream;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljavax/imageio/ImageWriter;->setOutput(Ljava/lang/Object;)V

    .line 1602
    const/4 v3, 0x0

    new-instance v5, Ljavax/imageio/IIOImage;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v22

    invoke-direct {v5, v0, v7, v8}, Ljavax/imageio/IIOImage;-><init>(Ljava/awt/image/RenderedImage;Ljava/util/List;Ljavax/imageio/metadata/IIOMetadata;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v5, v1}, Ljavax/imageio/ImageWriter;->write(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/IIOImage;Ljavax/imageio/ImageWriteParam;)V

    .line 1603
    invoke-virtual/range {v18 .. v18}, Ljavax/imageio/ImageWriter;->dispose()V

    .line 1604
    invoke-interface/range {v17 .. v17}, Ljavax/imageio/stream/ImageOutputStream;->close()V

    .line 1606
    invoke-virtual/range {v22 .. v22}, Ljava/awt/image/BufferedImage;->flush()V

    .line 1607
    const/16 v22, 0x0

    .line 1608
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lcom/itextpdf/text/Image;->getInstance([B)Lcom/itextpdf/text/Image;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v4

    .end local v15           #image:Lcom/itextpdf/text/Image;
    .restart local v4       #image:Lcom/itextpdf/text/Image;
    goto/16 :goto_1

    .line 1623
    .end local v2           #g3:Ljava/awt/Graphics2D;
    .end local v4           #image:Lcom/itextpdf/text/Image;
    .end local v11           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v17           #ios:Ljavax/imageio/stream/ImageOutputStream;
    .end local v18           #iw:Ljavax/imageio/ImageWriter;
    .end local v19           #iwparam:Ljavax/imageio/ImageWriteParam;
    .end local v22           #scaled:Ljava/awt/image/BufferedImage;
    .restart local v15       #image:Lcom/itextpdf/text/Image;
    :catch_0
    move-exception v12

    move-object v4, v15

    .line 1624
    .end local v15           #image:Lcom/itextpdf/text/Image;
    .restart local v4       #image:Lcom/itextpdf/text/Image;
    .local v12, ex:Ljava/lang/Exception;
    :goto_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1623
    .end local v12           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v12

    goto :goto_2
.end method

.method private followPath(Ljava/awt/Shape;I)V
    .locals 15
    .parameter "s"
    .parameter "drawType"

    .prologue
    .line 1455
    if-nez p1, :cond_1

    .line 1536
    :cond_0
    :goto_0
    return-void

    .line 1456
    :cond_1
    const/4 v1, 0x2

    move/from16 v0, p2

    if-ne v0, v1, :cond_2

    .line 1457
    iget-object v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->stroke:Ljava/awt/Stroke;

    instance-of v1, v1, Ljava/awt/BasicStroke;

    if-nez v1, :cond_2

    .line 1458
    iget-object v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->stroke:Ljava/awt/Stroke;

    move-object/from16 v0, p1

    invoke-interface {v1, v0}, Ljava/awt/Stroke;->createStrokedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p1

    .line 1459
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/awt/PdfGraphics2D;->followPath(Ljava/awt/Shape;I)V

    goto :goto_0

    .line 1463
    :cond_2
    const/4 v1, 0x2

    move/from16 v0, p2

    if-ne v0, v1, :cond_4

    .line 1464
    iget-object v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->stroke:Ljava/awt/Stroke;

    iget-object v2, p0, Lcom/itextpdf/awt/PdfGraphics2D;->oldStroke:Ljava/awt/Stroke;

    invoke-direct {p0, v1, v2}, Lcom/itextpdf/awt/PdfGraphics2D;->setStrokeDiff(Ljava/awt/Stroke;Ljava/awt/Stroke;)V

    .line 1465
    iget-object v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->stroke:Ljava/awt/Stroke;

    iput-object v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->oldStroke:Ljava/awt/Stroke;

    .line 1466
    invoke-direct {p0}, Lcom/itextpdf/awt/PdfGraphics2D;->setStrokePaint()V

    .line 1471
    :cond_3
    :goto_1
    const/4 v14, 0x0

    .line 1472
    .local v14, traces:I
    const/4 v1, 0x3

    move/from16 v0, p2

    if-ne v0, v1, :cond_5

    .line 1473
    sget-object v1, Lcom/itextpdf/awt/PdfGraphics2D;->IDENTITY:Ljava/awt/geom/AffineTransform;

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/awt/Shape;->getPathIterator(Ljava/awt/geom/AffineTransform;)Ljava/awt/geom/PathIterator;

    move-result-object v12

    .line 1476
    .local v12, points:Ljava/awt/geom/PathIterator;
    :goto_2
    const/4 v1, 0x6

    new-array v8, v1, [F

    .line 1477
    .local v8, coords:[F
    const/4 v1, 0x6

    new-array v9, v1, [D

    .line 1478
    .local v9, dcoords:[D
    :goto_3
    invoke-interface {v12}, Ljava/awt/geom/PathIterator;->isDone()Z

    move-result v1

    if-nez v1, :cond_a

    .line 1479
    add-int/lit8 v14, v14, 0x1

    .line 1481
    invoke-interface {v12, v9}, Ljava/awt/geom/PathIterator;->currentSegment([D)I

    move-result v13

    .line 1482
    .local v13, segtype:I
    const/4 v1, 0x4

    if-ne v13, v1, :cond_6

    const/4 v11, 0x0

    .line 1486
    .local v11, numpoints:I
    :goto_4
    const/4 v10, 0x0

    .local v10, i:I
    :goto_5
    mul-int/lit8 v1, v11, 0x2

    if-ge v10, v1, :cond_9

    .line 1487
    aget-wide v1, v9, v10

    double-to-float v1, v1

    aput v1, v8, v10

    .line 1486
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 1468
    .end local v8           #coords:[F
    .end local v9           #dcoords:[D
    .end local v10           #i:I
    .end local v11           #numpoints:I
    .end local v12           #points:Ljava/awt/geom/PathIterator;
    .end local v13           #segtype:I
    .end local v14           #traces:I
    :cond_4
    const/4 v1, 0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_3

    .line 1469
    invoke-direct {p0}, Lcom/itextpdf/awt/PdfGraphics2D;->setFillPaint()V

    goto :goto_1

    .line 1475
    .restart local v14       #traces:I
    :cond_5
    iget-object v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/awt/Shape;->getPathIterator(Ljava/awt/geom/AffineTransform;)Ljava/awt/geom/PathIterator;

    move-result-object v12

    .restart local v12       #points:Ljava/awt/geom/PathIterator;
    goto :goto_2

    .line 1482
    .restart local v8       #coords:[F
    .restart local v9       #dcoords:[D
    .restart local v13       #segtype:I
    :cond_6
    const/4 v1, 0x2

    if-ne v13, v1, :cond_7

    const/4 v11, 0x2

    goto :goto_4

    :cond_7
    const/4 v1, 0x3

    if-ne v13, v1, :cond_8

    const/4 v11, 0x3

    goto :goto_4

    :cond_8
    const/4 v11, 0x1

    goto :goto_4

    .line 1490
    .restart local v10       #i:I
    .restart local v11       #numpoints:I
    :cond_9
    invoke-direct {p0, v8}, Lcom/itextpdf/awt/PdfGraphics2D;->normalizeY([F)V

    .line 1491
    packed-switch v13, :pswitch_data_0

    .line 1512
    :goto_6
    invoke-interface {v12}, Ljava/awt/geom/PathIterator;->next()V

    goto :goto_3

    .line 1493
    :pswitch_0
    iget-object v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->closePath()V

    goto :goto_6

    .line 1497
    :pswitch_1
    iget-object v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    const/4 v2, 0x0

    aget v2, v8, v2

    const/4 v3, 0x1

    aget v3, v8, v3

    const/4 v4, 0x2

    aget v4, v8, v4

    const/4 v5, 0x3

    aget v5, v8, v5

    const/4 v6, 0x4

    aget v6, v8, v6

    const/4 v7, 0x5

    aget v7, v8, v7

    invoke-virtual/range {v1 .. v7}, Lcom/itextpdf/text/pdf/PdfContentByte;->curveTo(FFFFFF)V

    goto :goto_6

    .line 1501
    :pswitch_2
    iget-object v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    const/4 v2, 0x0

    aget v2, v8, v2

    const/4 v3, 0x1

    aget v3, v8, v3

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    goto :goto_6

    .line 1505
    :pswitch_3
    iget-object v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    const/4 v2, 0x0

    aget v2, v8, v2

    const/4 v3, 0x1

    aget v3, v8, v3

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveTo(FF)V

    goto :goto_6

    .line 1509
    :pswitch_4
    iget-object v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    const/4 v2, 0x0

    aget v2, v8, v2

    const/4 v3, 0x1

    aget v3, v8, v3

    const/4 v4, 0x2

    aget v4, v8, v4

    const/4 v5, 0x3

    aget v5, v8, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/itextpdf/text/pdf/PdfContentByte;->curveTo(FFFF)V

    goto :goto_6

    .line 1514
    .end local v10           #i:I
    .end local v11           #numpoints:I
    .end local v13           #segtype:I
    :cond_a
    packed-switch p2, :pswitch_data_1

    .line 1528
    if-nez v14, :cond_b

    .line 1529
    iget-object v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/itextpdf/text/pdf/PdfContentByte;->rectangle(FFFF)V

    .line 1530
    :cond_b
    invoke-interface {v12}, Ljava/awt/geom/PathIterator;->getWindingRule()I

    move-result v1

    if-nez v1, :cond_d

    .line 1531
    iget-object v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->eoClip()V

    .line 1534
    :goto_7
    iget-object v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->newPath()V

    goto/16 :goto_0

    .line 1516
    :pswitch_5
    if-lez v14, :cond_0

    .line 1517
    invoke-interface {v12}, Ljava/awt/geom/PathIterator;->getWindingRule()I

    move-result v1

    if-nez v1, :cond_c

    .line 1518
    iget-object v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->eoFill()V

    goto/16 :goto_0

    .line 1520
    :cond_c
    iget-object v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->fill()V

    goto/16 :goto_0

    .line 1524
    :pswitch_6
    if-lez v14, :cond_0

    .line 1525
    iget-object v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->stroke()V

    goto/16 :goto_0

    .line 1533
    :cond_d
    iget-object v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->clip()V

    goto :goto_7

    .line 1491
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1514
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getCachedBaseFont(Ljava/awt/Font;)Lcom/itextpdf/text/pdf/BaseFont;
    .locals 4
    .parameter "f"

    .prologue
    .line 1097
    iget-object v2, p0, Lcom/itextpdf/awt/PdfGraphics2D;->baseFonts:Ljava/util/HashMap;

    monitor-enter v2

    .line 1098
    :try_start_0
    iget-object v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->baseFonts:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/awt/Font;->getFontName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/BaseFont;

    .line 1099
    .local v0, bf:Lcom/itextpdf/text/pdf/BaseFont;
    if-nez v0, :cond_0

    .line 1100
    iget-object v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->fontMapper:Lcom/itextpdf/awt/FontMapper;

    invoke-interface {v1, p1}, Lcom/itextpdf/awt/FontMapper;->awtToPdf(Ljava/awt/Font;)Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v0

    .line 1101
    iget-object v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->baseFonts:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/awt/Font;->getFontName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    :cond_0
    monitor-exit v2

    return-object v0

    .line 1104
    .end local v0           #bf:Lcom/itextpdf/text/pdf/BaseFont;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getDG2()Ljava/awt/Graphics2D;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 201
    iget-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->dg2:Ljava/awt/Graphics2D;

    if-nez v0, :cond_0

    .line 202
    new-instance v0, Ljava/awt/image/BufferedImage;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v2, v1}, Ljava/awt/image/BufferedImage;-><init>(III)V

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->dg2:Ljava/awt/Graphics2D;

    .line 203
    iget-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->dg2:Ljava/awt/Graphics2D;

    sget-object v1, Ljava/awt/RenderingHints;->KEY_FRACTIONALMETRICS:Ljava/awt/RenderingHints$Key;

    sget-object v2, Ljava/awt/RenderingHints;->VALUE_FRACTIONALMETRICS_ON:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 204
    sget-object v0, Ljava/awt/RenderingHints;->KEY_FRACTIONALMETRICS:Ljava/awt/RenderingHints$Key;

    sget-object v1, Ljava/awt/RenderingHints;->VALUE_FRACTIONALMETRICS_ON:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/awt/PdfGraphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 205
    sget-object v0, Lcom/itextpdf/awt/PdfGraphics2D$HyperLinkKey;->KEY_INSTANCE:Lcom/itextpdf/awt/PdfGraphics2D$HyperLinkKey;

    sget-object v1, Lcom/itextpdf/awt/PdfGraphics2D$HyperLinkKey;->VALUE_HYPERLINKKEY_OFF:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/awt/PdfGraphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->dg2:Ljava/awt/Graphics2D;

    return-object v0
.end method

.method private internalDispose(Lcom/itextpdf/text/pdf/ByteBuffer;)V
    .locals 8
    .parameter "buf"

    .prologue
    .line 1425
    const/4 v4, 0x0

    .line 1426
    .local v4, last:I
    const/4 v5, 0x0

    .line 1427
    .local v5, pos:I
    iget-object v6, p0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->getInternalBuffer()Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    .line 1428
    .local v0, buf2:Lcom/itextpdf/text/pdf/ByteBuffer;
    iget-object v6, p0, Lcom/itextpdf/awt/PdfGraphics2D;->kids:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    .line 1429
    iget-object v6, p0, Lcom/itextpdf/awt/PdfGraphics2D;->kids:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/awt/PdfGraphics2D$Kid;

    .line 1430
    .local v3, kid:Lcom/itextpdf/awt/PdfGraphics2D$Kid;
    iget v5, v3, Lcom/itextpdf/awt/PdfGraphics2D$Kid;->pos:I

    .line 1431
    iget-object v1, v3, Lcom/itextpdf/awt/PdfGraphics2D$Kid;->graphics:Lcom/itextpdf/awt/PdfGraphics2D;

    .line 1432
    .local v1, g2:Lcom/itextpdf/awt/PdfGraphics2D;
    iget-object v6, v1, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->restoreState()V

    .line 1433
    iget-object v6, v1, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->restoreState()V

    .line 1434
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->getBuffer()[B

    move-result-object v6

    sub-int v7, v5, v4

    invoke-virtual {p1, v6, v4, v7}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([BII)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1435
    iget-object v6, v1, Lcom/itextpdf/awt/PdfGraphics2D;->dg2:Ljava/awt/Graphics2D;

    if-eqz v6, :cond_0

    .line 1436
    iget-object v6, v1, Lcom/itextpdf/awt/PdfGraphics2D;->dg2:Ljava/awt/Graphics2D;

    invoke-virtual {v6}, Ljava/awt/Graphics2D;->dispose()V

    .line 1437
    const/4 v6, 0x0

    iput-object v6, v1, Lcom/itextpdf/awt/PdfGraphics2D;->dg2:Ljava/awt/Graphics2D;

    .line 1439
    :cond_0
    invoke-direct {v1, p1}, Lcom/itextpdf/awt/PdfGraphics2D;->internalDispose(Lcom/itextpdf/text/pdf/ByteBuffer;)V

    .line 1440
    move v4, v5

    .line 1441
    goto :goto_0

    .line 1443
    .end local v1           #g2:Lcom/itextpdf/awt/PdfGraphics2D;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #kid:Lcom/itextpdf/awt/PdfGraphics2D$Kid;
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->getBuffer()[B

    move-result-object v6

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->size()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-virtual {p1, v6, v4, v7}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([BII)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1444
    return-void
.end method

.method private normalizeY(F)F
    .locals 1
    .parameter "y"

    .prologue
    .line 1539
    iget v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->height:F

    sub-float/2addr v0, p1

    return v0
.end method

.method private normalizeY([F)V
    .locals 4
    .parameter "coords"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 1543
    aget v0, p1, v1

    invoke-direct {p0, v0}, Lcom/itextpdf/awt/PdfGraphics2D;->normalizeY(F)F

    move-result v0

    aput v0, p1, v1

    .line 1544
    aget v0, p1, v2

    invoke-direct {p0, v0}, Lcom/itextpdf/awt/PdfGraphics2D;->normalizeY(F)F

    move-result v0

    aput v0, p1, v2

    .line 1545
    aget v0, p1, v3

    invoke-direct {p0, v0}, Lcom/itextpdf/awt/PdfGraphics2D;->normalizeY(F)F

    move-result v0

    aput v0, p1, v3

    .line 1546
    return-void
.end method

.method private setFillPaint()V
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    .line 1640
    iget-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->paintFill:Ljava/awt/Paint;

    invoke-direct {p0, v0}, Lcom/itextpdf/awt/PdfGraphics2D;->checkNewPaint(Ljava/awt/Paint;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1641
    iget-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->paint:Ljava/awt/Paint;

    iput-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->paintFill:Ljava/awt/Paint;

    .line 1642
    const/4 v1, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v6}, Lcom/itextpdf/awt/PdfGraphics2D;->setPaint(ZDDZ)V

    .line 1644
    :cond_0
    return-void
.end method

.method private setPaint(ZDDZ)V
    .locals 35
    .parameter "invert"
    .parameter "xoffset"
    .parameter "yoffset"
    .parameter "fill"

    .prologue
    .line 1654
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/awt/PdfGraphics2D;->paint:Ljava/awt/Paint;

    instance-of v5, v5, Ljava/awt/Color;

    if-eqz v5, :cond_5

    .line 1655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/awt/PdfGraphics2D;->paint:Ljava/awt/Paint;

    move-object/from16 v16, v0

    check-cast v16, Ljava/awt/Color;

    .line 1656
    .local v16, color:Ljava/awt/Color;
    invoke-virtual/range {v16 .. v16}, Ljava/awt/Color;->getAlpha()I

    move-result v13

    .line 1657
    .local v13, alpha:I
    if-eqz p6, :cond_2

    .line 1658
    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/awt/PdfGraphics2D;->currentFillGState:I

    if-eq v13, v5, :cond_1

    .line 1659
    move-object/from16 v0, p0

    iput v13, v0, Lcom/itextpdf/awt/PdfGraphics2D;->currentFillGState:I

    .line 1660
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/awt/PdfGraphics2D;->fillGState:[Lcom/itextpdf/text/pdf/PdfGState;

    aget-object v20, v5, v13

    .line 1661
    .local v20, gs:Lcom/itextpdf/text/pdf/PdfGState;
    if-nez v20, :cond_0

    .line 1662
    new-instance v20, Lcom/itextpdf/text/pdf/PdfGState;

    .end local v20           #gs:Lcom/itextpdf/text/pdf/PdfGState;
    invoke-direct/range {v20 .. v20}, Lcom/itextpdf/text/pdf/PdfGState;-><init>()V

    .line 1663
    .restart local v20       #gs:Lcom/itextpdf/text/pdf/PdfGState;
    int-to-float v5, v13

    const/high16 v6, 0x437f

    div-float/2addr v5, v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/PdfGState;->setFillOpacity(F)V

    .line 1664
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/awt/PdfGraphics2D;->fillGState:[Lcom/itextpdf/text/pdf/PdfGState;

    aput-object v20, v5, v13

    .line 1666
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setGState(Lcom/itextpdf/text/pdf/PdfGState;)V

    .line 1668
    .end local v20           #gs:Lcom/itextpdf/text/pdf/PdfGState;
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    new-instance v6, Lcom/itextpdf/text/BaseColor;

    invoke-virtual/range {v16 .. v16}, Ljava/awt/Color;->getRGB()I

    move-result v7

    invoke-direct {v6, v7}, Lcom/itextpdf/text/BaseColor;-><init>(I)V

    invoke-virtual {v5, v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    .line 1763
    .end local v13           #alpha:I
    .end local v16           #color:Ljava/awt/Color;
    :goto_0
    return-void

    .line 1671
    .restart local v13       #alpha:I
    .restart local v16       #color:Ljava/awt/Color;
    :cond_2
    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/awt/PdfGraphics2D;->currentStrokeGState:I

    if-eq v13, v5, :cond_4

    .line 1672
    move-object/from16 v0, p0

    iput v13, v0, Lcom/itextpdf/awt/PdfGraphics2D;->currentStrokeGState:I

    .line 1673
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/awt/PdfGraphics2D;->strokeGState:[Lcom/itextpdf/text/pdf/PdfGState;

    aget-object v20, v5, v13

    .line 1674
    .restart local v20       #gs:Lcom/itextpdf/text/pdf/PdfGState;
    if-nez v20, :cond_3

    .line 1675
    new-instance v20, Lcom/itextpdf/text/pdf/PdfGState;

    .end local v20           #gs:Lcom/itextpdf/text/pdf/PdfGState;
    invoke-direct/range {v20 .. v20}, Lcom/itextpdf/text/pdf/PdfGState;-><init>()V

    .line 1676
    .restart local v20       #gs:Lcom/itextpdf/text/pdf/PdfGState;
    int-to-float v5, v13

    const/high16 v6, 0x437f

    div-float/2addr v5, v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/PdfGState;->setStrokeOpacity(F)V

    .line 1677
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/awt/PdfGraphics2D;->strokeGState:[Lcom/itextpdf/text/pdf/PdfGState;

    aput-object v20, v5, v13

    .line 1679
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setGState(Lcom/itextpdf/text/pdf/PdfGState;)V

    .line 1681
    .end local v20           #gs:Lcom/itextpdf/text/pdf/PdfGState;
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    new-instance v6, Lcom/itextpdf/text/BaseColor;

    invoke-virtual/range {v16 .. v16}, Ljava/awt/Color;->getRGB()I

    move-result v7

    invoke-direct {v6, v7}, Lcom/itextpdf/text/BaseColor;-><init>(I)V

    invoke-virtual {v5, v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorStroke(Lcom/itextpdf/text/BaseColor;)V

    goto :goto_0

    .line 1684
    .end local v13           #alpha:I
    .end local v16           #color:Ljava/awt/Color;
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/awt/PdfGraphics2D;->paint:Ljava/awt/Paint;

    instance-of v5, v5, Ljava/awt/GradientPaint;

    if-eqz v5, :cond_7

    .line 1685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/awt/PdfGraphics2D;->paint:Ljava/awt/Paint;

    move-object/from16 v19, v0

    check-cast v19, Ljava/awt/GradientPaint;

    .line 1686
    .local v19, gp:Ljava/awt/GradientPaint;
    invoke-virtual/range {v19 .. v19}, Ljava/awt/GradientPaint;->getPoint1()Ljava/awt/geom/Point2D;

    move-result-object v27

    .line 1687
    .local v27, p1:Ljava/awt/geom/Point2D;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/awt/PdfGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    move-object/from16 v0, v27

    move-object/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Ljava/awt/geom/AffineTransform;->transform(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;

    .line 1688
    invoke-virtual/range {v19 .. v19}, Ljava/awt/GradientPaint;->getPoint2()Ljava/awt/geom/Point2D;

    move-result-object v28

    .line 1689
    .local v28, p2:Ljava/awt/geom/Point2D;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/awt/PdfGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    move-object/from16 v0, v28

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/awt/geom/AffineTransform;->transform(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;

    .line 1690
    invoke-virtual/range {v19 .. v19}, Ljava/awt/GradientPaint;->getColor1()Ljava/awt/Color;

    move-result-object v14

    .line 1691
    .local v14, c1:Ljava/awt/Color;
    invoke-virtual/range {v19 .. v19}, Ljava/awt/GradientPaint;->getColor2()Ljava/awt/Color;

    move-result-object v15

    .line 1692
    .local v15, c2:Ljava/awt/Color;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfContentByte;->getPdfWriter()Lcom/itextpdf/text/pdf/PdfWriter;

    move-result-object v3

    invoke-virtual/range {v27 .. v27}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v5

    double-to-float v4, v5

    invoke-virtual/range {v27 .. v27}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v5

    double-to-float v5, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/itextpdf/awt/PdfGraphics2D;->normalizeY(F)F

    move-result v5

    invoke-virtual/range {v28 .. v28}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual/range {v28 .. v28}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v7

    double-to-float v7, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/itextpdf/awt/PdfGraphics2D;->normalizeY(F)F

    move-result v7

    new-instance v8, Lcom/itextpdf/text/BaseColor;

    invoke-virtual {v14}, Ljava/awt/Color;->getRGB()I

    move-result v9

    invoke-direct {v8, v9}, Lcom/itextpdf/text/BaseColor;-><init>(I)V

    new-instance v9, Lcom/itextpdf/text/BaseColor;

    invoke-virtual {v15}, Ljava/awt/Color;->getRGB()I

    move-result v10

    invoke-direct {v9, v10}, Lcom/itextpdf/text/BaseColor;-><init>(I)V

    invoke-static/range {v3 .. v9}, Lcom/itextpdf/text/pdf/PdfShading;->simpleAxial(Lcom/itextpdf/text/pdf/PdfWriter;FFFFLcom/itextpdf/text/BaseColor;Lcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/pdf/PdfShading;

    move-result-object v31

    .line 1693
    .local v31, shading:Lcom/itextpdf/text/pdf/PdfShading;
    new-instance v29, Lcom/itextpdf/text/pdf/PdfShadingPattern;

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfShadingPattern;-><init>(Lcom/itextpdf/text/pdf/PdfShading;)V

    .line 1694
    .local v29, pat:Lcom/itextpdf/text/pdf/PdfShadingPattern;
    if-eqz p6, :cond_6

    .line 1695
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setShadingFill(Lcom/itextpdf/text/pdf/PdfShadingPattern;)V

    goto/16 :goto_0

    .line 1697
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setShadingStroke(Lcom/itextpdf/text/pdf/PdfShadingPattern;)V

    goto/16 :goto_0

    .line 1699
    .end local v14           #c1:Ljava/awt/Color;
    .end local v15           #c2:Ljava/awt/Color;
    .end local v19           #gp:Ljava/awt/GradientPaint;
    .end local v27           #p1:Ljava/awt/geom/Point2D;
    .end local v28           #p2:Ljava/awt/geom/Point2D;
    .end local v29           #pat:Lcom/itextpdf/text/pdf/PdfShadingPattern;
    .end local v31           #shading:Lcom/itextpdf/text/pdf/PdfShading;
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/awt/PdfGraphics2D;->paint:Ljava/awt/Paint;

    instance-of v5, v5, Ljava/awt/TexturePaint;

    if-eqz v5, :cond_a

    .line 1701
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/awt/PdfGraphics2D;->paint:Ljava/awt/Paint;

    move-object/from16 v32, v0

    check-cast v32, Ljava/awt/TexturePaint;

    .line 1702
    .local v32, tp:Ljava/awt/TexturePaint;
    invoke-virtual/range {v32 .. v32}, Ljava/awt/TexturePaint;->getImage()Ljava/awt/image/BufferedImage;

    move-result-object v22

    .line 1703
    .local v22, img:Ljava/awt/image/BufferedImage;
    invoke-virtual/range {v32 .. v32}, Ljava/awt/TexturePaint;->getAnchorRect()Ljava/awt/geom/Rectangle2D;

    move-result-object v30

    .line 1704
    .local v30, rect:Ljava/awt/geom/Rectangle2D;
    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-static {v0, v5}, Lcom/itextpdf/text/Image;->getInstance(Ljava/awt/Image;Ljava/awt/Color;)Lcom/itextpdf/text/Image;

    move-result-object v21

    .line 1705
    .local v21, image:Lcom/itextpdf/text/Image;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual/range {v21 .. v21}, Lcom/itextpdf/text/Image;->getWidth()F

    move-result v6

    invoke-virtual/range {v21 .. v21}, Lcom/itextpdf/text/Image;->getHeight()F

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/itextpdf/text/pdf/PdfContentByte;->createPattern(FF)Lcom/itextpdf/text/pdf/PdfPatternPainter;

    move-result-object v3

    .line 1706
    .local v3, pattern:Lcom/itextpdf/text/pdf/PdfPatternPainter;
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/awt/PdfGraphics2D;->normalizeMatrix()Ljava/awt/geom/AffineTransform;

    move-result-object v25

    .line 1707
    .local v25, inverse:Ljava/awt/geom/AffineTransform;
    invoke-virtual/range {v30 .. v30}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v5

    invoke-virtual/range {v30 .. v30}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v7

    move-object/from16 v0, v25

    invoke-virtual {v0, v5, v6, v7, v8}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    .line 1708
    invoke-virtual/range {v30 .. v30}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v5

    invoke-virtual/range {v21 .. v21}, Lcom/itextpdf/text/Image;->getWidth()F

    move-result v7

    float-to-double v7, v7

    div-double/2addr v5, v7

    invoke-virtual/range {v30 .. v30}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v7

    neg-double v7, v7

    invoke-virtual/range {v21 .. v21}, Lcom/itextpdf/text/Image;->getHeight()F

    move-result v9

    float-to-double v9, v9

    div-double/2addr v7, v9

    move-object/from16 v0, v25

    invoke-virtual {v0, v5, v6, v7, v8}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    .line 1709
    const/4 v5, 0x6

    new-array v0, v5, [D

    move-object/from16 v26, v0

    .line 1710
    .local v26, mx:[D
    invoke-virtual/range {v25 .. v26}, Ljava/awt/geom/AffineTransform;->getMatrix([D)V

    .line 1711
    const/4 v5, 0x0

    aget-wide v5, v26, v5

    double-to-float v4, v5

    const/4 v5, 0x1

    aget-wide v5, v26, v5

    double-to-float v5, v5

    const/4 v6, 0x2

    aget-wide v6, v26, v6

    double-to-float v6, v6

    const/4 v7, 0x3

    aget-wide v7, v26, v7

    double-to-float v7, v7

    const/4 v8, 0x4

    aget-wide v8, v26, v8

    double-to-float v8, v8

    const/4 v9, 0x5

    aget-wide v9, v26, v9

    double-to-float v9, v9

    invoke-virtual/range {v3 .. v9}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->setPatternMatrix(FFFFFF)V

    .line 1712
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Lcom/itextpdf/text/Image;->setAbsolutePosition(FF)V

    .line 1713
    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->addImage(Lcom/itextpdf/text/Image;)V

    .line 1714
    if-eqz p6, :cond_8

    .line 1715
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v5, v3}, Lcom/itextpdf/text/pdf/PdfContentByte;->setPatternFill(Lcom/itextpdf/text/pdf/PdfPatternPainter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1718
    .end local v3           #pattern:Lcom/itextpdf/text/pdf/PdfPatternPainter;
    .end local v21           #image:Lcom/itextpdf/text/Image;
    .end local v22           #img:Ljava/awt/image/BufferedImage;
    .end local v25           #inverse:Ljava/awt/geom/AffineTransform;
    .end local v26           #mx:[D
    .end local v30           #rect:Ljava/awt/geom/Rectangle2D;
    .end local v32           #tp:Ljava/awt/TexturePaint;
    :catch_0
    move-exception v17

    .line 1719
    .local v17, ex:Ljava/lang/Exception;
    if-eqz p6, :cond_9

    .line 1720
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    sget-object v6, Lcom/itextpdf/text/BaseColor;->GRAY:Lcom/itextpdf/text/BaseColor;

    invoke-virtual {v5, v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    goto/16 :goto_0

    .line 1717
    .end local v17           #ex:Ljava/lang/Exception;
    .restart local v3       #pattern:Lcom/itextpdf/text/pdf/PdfPatternPainter;
    .restart local v21       #image:Lcom/itextpdf/text/Image;
    .restart local v22       #img:Ljava/awt/image/BufferedImage;
    .restart local v25       #inverse:Ljava/awt/geom/AffineTransform;
    .restart local v26       #mx:[D
    .restart local v30       #rect:Ljava/awt/geom/Rectangle2D;
    .restart local v32       #tp:Ljava/awt/TexturePaint;
    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v5, v3}, Lcom/itextpdf/text/pdf/PdfContentByte;->setPatternStroke(Lcom/itextpdf/text/pdf/PdfPatternPainter;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1722
    .end local v3           #pattern:Lcom/itextpdf/text/pdf/PdfPatternPainter;
    .end local v21           #image:Lcom/itextpdf/text/Image;
    .end local v22           #img:Ljava/awt/image/BufferedImage;
    .end local v25           #inverse:Ljava/awt/geom/AffineTransform;
    .end local v26           #mx:[D
    .end local v30           #rect:Ljava/awt/geom/Rectangle2D;
    .end local v32           #tp:Ljava/awt/TexturePaint;
    .restart local v17       #ex:Ljava/lang/Exception;
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    sget-object v6, Lcom/itextpdf/text/BaseColor;->GRAY:Lcom/itextpdf/text/BaseColor;

    invoke-virtual {v5, v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorStroke(Lcom/itextpdf/text/BaseColor;)V

    goto/16 :goto_0

    .line 1727
    .end local v17           #ex:Ljava/lang/Exception;
    :cond_a
    const/16 v22, 0x0

    .line 1728
    .restart local v22       #img:Ljava/awt/image/BufferedImage;
    const/16 v34, 0x6

    .line 1729
    .local v34, type:I
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/awt/PdfGraphics2D;->paint:Ljava/awt/Paint;

    invoke-interface {v5}, Ljava/awt/Paint;->getTransparency()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b

    .line 1730
    const/16 v34, 0x5

    .line 1732
    :cond_b
    new-instance v23, Ljava/awt/image/BufferedImage;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/awt/PdfGraphics2D;->width:F

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/awt/PdfGraphics2D;->height:F

    float-to-int v6, v6

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-direct {v0, v5, v6, v1}, Ljava/awt/image/BufferedImage;-><init>(III)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1733
    .end local v22           #img:Ljava/awt/image/BufferedImage;
    .local v23, img:Ljava/awt/image/BufferedImage;
    :try_start_3
    invoke-virtual/range {v23 .. v23}, Ljava/awt/image/BufferedImage;->getGraphics()Ljava/awt/Graphics;

    move-result-object v18

    check-cast v18, Ljava/awt/Graphics2D;

    .line 1734
    .local v18, g:Ljava/awt/Graphics2D;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/awt/PdfGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/awt/Graphics2D;->transform(Ljava/awt/geom/AffineTransform;)V

    .line 1735
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/awt/PdfGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v5}, Ljava/awt/geom/AffineTransform;->createInverse()Ljava/awt/geom/AffineTransform;

    move-result-object v24

    .line 1736
    .local v24, inv:Ljava/awt/geom/AffineTransform;
    new-instance v4, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    invoke-virtual/range {v23 .. v23}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v9

    int-to-double v9, v9

    invoke-virtual/range {v23 .. v23}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v11

    int-to-double v11, v11

    invoke-direct/range {v4 .. v12}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    .line 1737
    .local v4, fillRect:Ljava/awt/Shape;
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object v4

    .line 1738
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/awt/PdfGraphics2D;->paint:Ljava/awt/Paint;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    .line 1739
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/awt/Graphics2D;->fill(Ljava/awt/Shape;)V

    .line 1740
    if-eqz p1, :cond_c

    .line 1741
    new-instance v33, Ljava/awt/geom/AffineTransform;

    invoke-direct/range {v33 .. v33}, Ljava/awt/geom/AffineTransform;-><init>()V

    .line 1742
    .local v33, tx:Ljava/awt/geom/AffineTransform;
    const-wide/high16 v5, 0x3ff0

    const-wide/high16 v7, -0x4010

    move-object/from16 v0, v33

    invoke-virtual {v0, v5, v6, v7, v8}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    .line 1743
    move-wide/from16 v0, p2

    neg-double v5, v0

    move-wide/from16 v0, p4

    neg-double v7, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v5, v6, v7, v8}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    .line 1744
    const/4 v5, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2, v5}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;Ljava/awt/geom/AffineTransform;Ljava/awt/image/ImageObserver;)Z

    .line 1746
    .end local v33           #tx:Ljava/awt/geom/AffineTransform;
    :cond_c
    invoke-virtual/range {v18 .. v18}, Ljava/awt/Graphics2D;->dispose()V

    .line 1747
    const/16 v18, 0x0

    .line 1748
    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-static {v0, v5}, Lcom/itextpdf/text/Image;->getInstance(Ljava/awt/Image;Ljava/awt/Color;)Lcom/itextpdf/text/Image;

    move-result-object v21

    .line 1749
    .restart local v21       #image:Lcom/itextpdf/text/Image;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/awt/PdfGraphics2D;->width:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/itextpdf/awt/PdfGraphics2D;->height:F

    invoke-virtual {v5, v6, v7}, Lcom/itextpdf/text/pdf/PdfContentByte;->createPattern(FF)Lcom/itextpdf/text/pdf/PdfPatternPainter;

    move-result-object v3

    .line 1750
    .restart local v3       #pattern:Lcom/itextpdf/text/pdf/PdfPatternPainter;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Lcom/itextpdf/text/Image;->setAbsolutePosition(FF)V

    .line 1751
    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->addImage(Lcom/itextpdf/text/Image;)V

    .line 1752
    if-eqz p6, :cond_d

    .line 1753
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v5, v3}, Lcom/itextpdf/text/pdf/PdfContentByte;->setPatternFill(Lcom/itextpdf/text/pdf/PdfPatternPainter;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 1756
    .end local v3           #pattern:Lcom/itextpdf/text/pdf/PdfPatternPainter;
    .end local v4           #fillRect:Ljava/awt/Shape;
    .end local v18           #g:Ljava/awt/Graphics2D;
    .end local v21           #image:Lcom/itextpdf/text/Image;
    .end local v24           #inv:Ljava/awt/geom/AffineTransform;
    :catch_1
    move-exception v17

    move-object/from16 v22, v23

    .line 1757
    .end local v23           #img:Ljava/awt/image/BufferedImage;
    .restart local v17       #ex:Ljava/lang/Exception;
    .restart local v22       #img:Ljava/awt/image/BufferedImage;
    :goto_1
    if-eqz p6, :cond_e

    .line 1758
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    sget-object v6, Lcom/itextpdf/text/BaseColor;->GRAY:Lcom/itextpdf/text/BaseColor;

    invoke-virtual {v5, v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    goto/16 :goto_0

    .line 1755
    .end local v17           #ex:Ljava/lang/Exception;
    .end local v22           #img:Ljava/awt/image/BufferedImage;
    .restart local v3       #pattern:Lcom/itextpdf/text/pdf/PdfPatternPainter;
    .restart local v4       #fillRect:Ljava/awt/Shape;
    .restart local v18       #g:Ljava/awt/Graphics2D;
    .restart local v21       #image:Lcom/itextpdf/text/Image;
    .restart local v23       #img:Ljava/awt/image/BufferedImage;
    .restart local v24       #inv:Ljava/awt/geom/AffineTransform;
    :cond_d
    :try_start_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v5, v3}, Lcom/itextpdf/text/pdf/PdfContentByte;->setPatternStroke(Lcom/itextpdf/text/pdf/PdfPatternPainter;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 1760
    .end local v3           #pattern:Lcom/itextpdf/text/pdf/PdfPatternPainter;
    .end local v4           #fillRect:Ljava/awt/Shape;
    .end local v18           #g:Ljava/awt/Graphics2D;
    .end local v21           #image:Lcom/itextpdf/text/Image;
    .end local v23           #img:Ljava/awt/image/BufferedImage;
    .end local v24           #inv:Ljava/awt/geom/AffineTransform;
    .restart local v17       #ex:Ljava/lang/Exception;
    .restart local v22       #img:Ljava/awt/image/BufferedImage;
    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    sget-object v6, Lcom/itextpdf/text/BaseColor;->GRAY:Lcom/itextpdf/text/BaseColor;

    invoke-virtual {v5, v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorStroke(Lcom/itextpdf/text/BaseColor;)V

    goto/16 :goto_0

    .line 1756
    .end local v17           #ex:Ljava/lang/Exception;
    :catch_2
    move-exception v17

    goto :goto_1
.end method

.method private setStrokeDiff(Ljava/awt/Stroke;Ljava/awt/Stroke;)V
    .locals 12
    .parameter "newStroke"
    .parameter "oldStroke"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 715
    if-ne p1, p2, :cond_1

    .line 789
    :cond_0
    :goto_0
    return-void

    .line 717
    :cond_1
    instance-of v7, p1, Ljava/awt/BasicStroke;

    if-eqz v7, :cond_0

    move-object v4, p1

    .line 719
    check-cast v4, Ljava/awt/BasicStroke;

    .line 720
    .local v4, nStroke:Ljava/awt/BasicStroke;
    instance-of v6, p2, Ljava/awt/BasicStroke;

    .line 721
    .local v6, oldOk:Z
    const/4 v5, 0x0

    .line 722
    .local v5, oStroke:Ljava/awt/BasicStroke;
    if-eqz v6, :cond_2

    move-object v5, p2

    .line 723
    check-cast v5, Ljava/awt/BasicStroke;

    .line 724
    :cond_2
    if-eqz v6, :cond_3

    invoke-virtual {v4}, Ljava/awt/BasicStroke;->getLineWidth()F

    move-result v7

    invoke-virtual {v5}, Ljava/awt/BasicStroke;->getLineWidth()F

    move-result v8

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_4

    .line 725
    :cond_3
    iget-object v7, p0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v4}, Ljava/awt/BasicStroke;->getLineWidth()F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineWidth(F)V

    .line 726
    :cond_4
    if-eqz v6, :cond_5

    invoke-virtual {v4}, Ljava/awt/BasicStroke;->getEndCap()I

    move-result v7

    invoke-virtual {v5}, Ljava/awt/BasicStroke;->getEndCap()I

    move-result v8

    if-eq v7, v8, :cond_6

    .line 727
    :cond_5
    invoke-virtual {v4}, Ljava/awt/BasicStroke;->getEndCap()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 735
    :pswitch_0
    iget-object v7, p0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v7, v10}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineCap(I)V

    .line 738
    :cond_6
    :goto_1
    if-eqz v6, :cond_7

    invoke-virtual {v4}, Ljava/awt/BasicStroke;->getLineJoin()I

    move-result v7

    invoke-virtual {v5}, Ljava/awt/BasicStroke;->getLineJoin()I

    move-result v8

    if-eq v7, v8, :cond_8

    .line 739
    :cond_7
    invoke-virtual {v4}, Ljava/awt/BasicStroke;->getLineJoin()I

    move-result v7

    packed-switch v7, :pswitch_data_1

    .line 747
    :pswitch_1
    iget-object v7, p0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v7, v10}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineJoin(I)V

    .line 750
    :cond_8
    :goto_2
    if-eqz v6, :cond_9

    invoke-virtual {v4}, Ljava/awt/BasicStroke;->getMiterLimit()F

    move-result v7

    invoke-virtual {v5}, Ljava/awt/BasicStroke;->getMiterLimit()F

    move-result v8

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_a

    .line 751
    :cond_9
    iget-object v7, p0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v4}, Ljava/awt/BasicStroke;->getMiterLimit()F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/itextpdf/text/pdf/PdfContentByte;->setMiterLimit(F)V

    .line 753
    :cond_a
    if-eqz v6, :cond_f

    .line 754
    invoke-virtual {v4}, Ljava/awt/BasicStroke;->getDashArray()[F

    move-result-object v7

    if-eqz v7, :cond_d

    .line 755
    invoke-virtual {v4}, Ljava/awt/BasicStroke;->getDashPhase()F

    move-result v7

    invoke-virtual {v5}, Ljava/awt/BasicStroke;->getDashPhase()F

    move-result v8

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_b

    .line 756
    const/4 v3, 0x1

    .line 773
    .local v3, makeDash:Z
    :goto_3
    if-eqz v3, :cond_0

    .line 774
    invoke-virtual {v4}, Ljava/awt/BasicStroke;->getDashArray()[F

    move-result-object v0

    .line 775
    .local v0, dash:[F
    if-nez v0, :cond_10

    .line 776
    iget-object v7, p0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    const-string v8, "[]0 d\n"

    invoke-virtual {v7, v8}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLiteral(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 729
    .end local v0           #dash:[F
    .end local v3           #makeDash:Z
    :pswitch_2
    iget-object v7, p0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v7, v9}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineCap(I)V

    goto :goto_1

    .line 732
    :pswitch_3
    iget-object v7, p0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v7, v11}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineCap(I)V

    goto :goto_1

    .line 741
    :pswitch_4
    iget-object v7, p0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v7, v9}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineJoin(I)V

    goto :goto_2

    .line 744
    :pswitch_5
    iget-object v7, p0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v7, v11}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineJoin(I)V

    goto :goto_2

    .line 758
    :cond_b
    invoke-virtual {v4}, Ljava/awt/BasicStroke;->getDashArray()[F

    move-result-object v7

    invoke-virtual {v5}, Ljava/awt/BasicStroke;->getDashArray()[F

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v7

    if-nez v7, :cond_c

    .line 759
    const/4 v3, 0x1

    .restart local v3       #makeDash:Z
    goto :goto_3

    .line 762
    .end local v3           #makeDash:Z
    :cond_c
    const/4 v3, 0x0

    .restart local v3       #makeDash:Z
    goto :goto_3

    .line 764
    .end local v3           #makeDash:Z
    :cond_d
    invoke-virtual {v5}, Ljava/awt/BasicStroke;->getDashArray()[F

    move-result-object v7

    if-eqz v7, :cond_e

    .line 765
    const/4 v3, 0x1

    .restart local v3       #makeDash:Z
    goto :goto_3

    .line 768
    .end local v3           #makeDash:Z
    :cond_e
    const/4 v3, 0x0

    .restart local v3       #makeDash:Z
    goto :goto_3

    .line 771
    .end local v3           #makeDash:Z
    :cond_f
    const/4 v3, 0x1

    .restart local v3       #makeDash:Z
    goto :goto_3

    .line 778
    .restart local v0       #dash:[F
    :cond_10
    iget-object v7, p0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    const/16 v8, 0x5b

    invoke-virtual {v7, v8}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLiteral(C)V

    .line 779
    array-length v2, v0

    .line 780
    .local v2, lim:I
    const/4 v1, 0x0

    .local v1, k:I
    :goto_4
    if-ge v1, v2, :cond_11

    .line 781
    iget-object v7, p0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    aget v8, v0, v1

    invoke-virtual {v7, v8}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLiteral(F)V

    .line 782
    iget-object v7, p0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLiteral(C)V

    .line 780
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 784
    :cond_11
    iget-object v7, p0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLiteral(C)V

    .line 785
    iget-object v7, p0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v4}, Ljava/awt/BasicStroke;->getDashPhase()F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLiteral(F)V

    .line 786
    iget-object v7, p0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    const-string v8, " d\n"

    invoke-virtual {v7, v8}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLiteral(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 727
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 739
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method private setStrokePaint()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 1647
    iget-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->paintStroke:Ljava/awt/Paint;

    invoke-direct {p0, v0}, Lcom/itextpdf/awt/PdfGraphics2D;->checkNewPaint(Ljava/awt/Paint;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1648
    iget-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->paint:Ljava/awt/Paint;

    iput-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->paintStroke:Ljava/awt/Paint;

    move-object v0, p0

    move-wide v4, v2

    move v6, v1

    .line 1649
    invoke-direct/range {v0 .. v6}, Lcom/itextpdf/awt/PdfGraphics2D;->setPaint(ZDDZ)V

    .line 1651
    :cond_0
    return-void
.end method

.method private transformStroke(Ljava/awt/Stroke;)Ljava/awt/Stroke;
    .locals 10
    .parameter "stroke"

    .prologue
    .line 702
    instance-of v0, p1, Ljava/awt/BasicStroke;

    if-nez v0, :cond_0

    .line 711
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    move-object v9, p1

    .line 704
    check-cast v9, Ljava/awt/BasicStroke;

    .line 705
    .local v9, st:Ljava/awt/BasicStroke;
    iget-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v0}, Ljava/awt/geom/AffineTransform;->getDeterminant()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v8, v0

    .line 706
    .local v8, scale:F
    invoke-virtual {v9}, Ljava/awt/BasicStroke;->getDashArray()[F

    move-result-object v5

    .line 707
    .local v5, dash:[F
    if-eqz v5, :cond_1

    .line 708
    const/4 v7, 0x0

    .local v7, k:I
    :goto_1
    array-length v0, v5

    if-ge v7, v0, :cond_1

    .line 709
    aget v0, v5, v7

    mul-float/2addr v0, v8

    aput v0, v5, v7

    .line 708
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 711
    .end local v7           #k:I
    :cond_1
    new-instance v0, Ljava/awt/BasicStroke;

    invoke-virtual {v9}, Ljava/awt/BasicStroke;->getLineWidth()F

    move-result v1

    mul-float/2addr v1, v8

    invoke-virtual {v9}, Ljava/awt/BasicStroke;->getEndCap()I

    move-result v2

    invoke-virtual {v9}, Ljava/awt/BasicStroke;->getLineJoin()I

    move-result v3

    invoke-virtual {v9}, Ljava/awt/BasicStroke;->getMiterLimit()F

    move-result v4

    invoke-virtual {v9}, Ljava/awt/BasicStroke;->getDashPhase()F

    move-result v6

    mul-float/2addr v6, v8

    invoke-direct/range {v0 .. v6}, Ljava/awt/BasicStroke;-><init>(FIIF[FF)V

    move-object p1, v0

    goto :goto_0
.end method

.method private declared-synchronized waitForImage(Ljava/awt/Image;)V
    .locals 3
    .parameter "image"

    .prologue
    .line 1766
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->mediaTracker:Ljava/awt/MediaTracker;

    if-nez v0, :cond_0

    .line 1767
    new-instance v0, Ljava/awt/MediaTracker;

    new-instance v1, Lcom/itextpdf/awt/PdfGraphics2D$FakeComponent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/itextpdf/awt/PdfGraphics2D$FakeComponent;-><init>(Lcom/itextpdf/awt/PdfGraphics2D$1;)V

    invoke-direct {v0, v1}, Ljava/awt/MediaTracker;-><init>(Ljava/awt/Component;)V

    iput-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->mediaTracker:Ljava/awt/MediaTracker;

    .line 1768
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->mediaTracker:Ljava/awt/MediaTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/awt/MediaTracker;->addImage(Ljava/awt/Image;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1770
    :try_start_1
    iget-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->mediaTracker:Ljava/awt/MediaTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/awt/MediaTracker;->waitForID(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1775
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->mediaTracker:Ljava/awt/MediaTracker;

    invoke-virtual {v0, p1}, Ljava/awt/MediaTracker;->removeImage(Ljava/awt/Image;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1776
    monitor-exit p0

    return-void

    .line 1766
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1772
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public addRenderingHints(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 845
    .local p1, hints:Ljava/util/Map;,"Ljava/util/Map<**>;"
    iget-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->rhints:Ljava/awt/RenderingHints;

    invoke-virtual {v0, p1}, Ljava/awt/RenderingHints;->putAll(Ljava/util/Map;)V

    .line 846
    return-void
.end method

.method public clearRect(IIII)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->paint:Ljava/awt/Paint;

    .line 1233
    .local v0, temp:Ljava/awt/Paint;
    iget-object v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->background:Ljava/awt/Color;

    invoke-virtual {p0, v1}, Lcom/itextpdf/awt/PdfGraphics2D;->setPaint(Ljava/awt/Paint;)V

    .line 1234
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/itextpdf/awt/PdfGraphics2D;->fillRect(IIII)V

    .line 1235
    invoke-virtual {p0, v0}, Lcom/itextpdf/awt/PdfGraphics2D;->setPaint(Ljava/awt/Paint;)V

    .line 1236
    return-void
.end method

.method public clip(Ljava/awt/Shape;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 1148
    if-nez p1, :cond_0

    .line 1149
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itextpdf/awt/PdfGraphics2D;->setClip(Ljava/awt/Shape;)V

    .line 1158
    :goto_0
    return-void

    .line 1152
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v0, p1}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p1

    .line 1153
    iget-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->clip:Ljava/awt/geom/Area;

    if-nez v0, :cond_1

    .line 1154
    new-instance v0, Ljava/awt/geom/Area;

    invoke-direct {v0, p1}, Ljava/awt/geom/Area;-><init>(Ljava/awt/Shape;)V

    iput-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->clip:Ljava/awt/geom/Area;

    .line 1157
    :goto_1
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/awt/PdfGraphics2D;->followPath(Ljava/awt/Shape;I)V

    goto :goto_0

    .line 1156
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->clip:Ljava/awt/geom/Area;

    new-instance v1, Ljava/awt/geom/Area;

    invoke-direct {v1, p1}, Ljava/awt/geom/Area;-><init>(Ljava/awt/Shape;)V

    invoke-virtual {v0, v1}, Ljava/awt/geom/Area;->intersect(Ljava/awt/geom/Area;)V

    goto :goto_1
.end method

.method public clipRect(IIII)V
    .locals 9
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1130
    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    int-to-double v1, p1

    int-to-double v3, p2

    int-to-double v5, p3

    int-to-double v7, p4

    invoke-direct/range {v0 .. v8}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    .line 1131
    .local v0, rect:Ljava/awt/geom/Rectangle2D;
    invoke-virtual {p0, v0}, Lcom/itextpdf/awt/PdfGraphics2D;->clip(Ljava/awt/Shape;)V

    .line 1132
    return-void
.end method

.method public copyArea(IIIIII)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 1200
    return-void
.end method

.method public create()Ljava/awt/Graphics;
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 992
    new-instance v0, Lcom/itextpdf/awt/PdfGraphics2D;

    invoke-direct {v0}, Lcom/itextpdf/awt/PdfGraphics2D;-><init>()V

    .line 993
    .local v0, g2:Lcom/itextpdf/awt/PdfGraphics2D;
    iget-object v1, v0, Lcom/itextpdf/awt/PdfGraphics2D;->rhints:Ljava/awt/RenderingHints;

    iget-object v2, p0, Lcom/itextpdf/awt/PdfGraphics2D;->rhints:Ljava/awt/RenderingHints;

    invoke-virtual {v1, v2}, Ljava/awt/RenderingHints;->putAll(Ljava/util/Map;)V

    .line 994
    iget-boolean v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->onlyShapes:Z

    iput-boolean v1, v0, Lcom/itextpdf/awt/PdfGraphics2D;->onlyShapes:Z

    .line 995
    new-instance v1, Ljava/awt/geom/AffineTransform;

    iget-object v2, p0, Lcom/itextpdf/awt/PdfGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-direct {v1, v2}, Ljava/awt/geom/AffineTransform;-><init>(Ljava/awt/geom/AffineTransform;)V

    iput-object v1, v0, Lcom/itextpdf/awt/PdfGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    .line 996
    iget-object v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->baseFonts:Ljava/util/HashMap;

    iput-object v1, v0, Lcom/itextpdf/awt/PdfGraphics2D;->baseFonts:Ljava/util/HashMap;

    .line 997
    iget-object v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->fontMapper:Lcom/itextpdf/awt/FontMapper;

    iput-object v1, v0, Lcom/itextpdf/awt/PdfGraphics2D;->fontMapper:Lcom/itextpdf/awt/FontMapper;

    .line 998
    iget-object v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->paint:Ljava/awt/Paint;

    iput-object v1, v0, Lcom/itextpdf/awt/PdfGraphics2D;->paint:Ljava/awt/Paint;

    .line 999
    iget-object v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->fillGState:[Lcom/itextpdf/text/pdf/PdfGState;

    iput-object v1, v0, Lcom/itextpdf/awt/PdfGraphics2D;->fillGState:[Lcom/itextpdf/text/pdf/PdfGState;

    .line 1000
    iget v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->currentFillGState:I

    iput v1, v0, Lcom/itextpdf/awt/PdfGraphics2D;->currentFillGState:I

    .line 1001
    iget-object v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->strokeGState:[Lcom/itextpdf/text/pdf/PdfGState;

    iput-object v1, v0, Lcom/itextpdf/awt/PdfGraphics2D;->strokeGState:[Lcom/itextpdf/text/pdf/PdfGState;

    .line 1002
    iget-object v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->background:Ljava/awt/Color;

    iput-object v1, v0, Lcom/itextpdf/awt/PdfGraphics2D;->background:Ljava/awt/Color;

    .line 1003
    iget-object v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->mediaTracker:Ljava/awt/MediaTracker;

    iput-object v1, v0, Lcom/itextpdf/awt/PdfGraphics2D;->mediaTracker:Ljava/awt/MediaTracker;

    .line 1004
    iget-boolean v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->convertImagesToJPEG:Z

    iput-boolean v1, v0, Lcom/itextpdf/awt/PdfGraphics2D;->convertImagesToJPEG:Z

    .line 1005
    iget v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->jpegQuality:F

    iput v1, v0, Lcom/itextpdf/awt/PdfGraphics2D;->jpegQuality:F

    .line 1006
    iget-object v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->font:Ljava/awt/Font;

    invoke-virtual {v0, v1}, Lcom/itextpdf/awt/PdfGraphics2D;->setFont(Ljava/awt/Font;)V

    .line 1007
    iget-object v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->getDuplicate()Lcom/itextpdf/text/pdf/PdfContentByte;

    move-result-object v1

    iput-object v1, v0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    .line 1008
    iget-object v1, v0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->saveState()V

    .line 1009
    iget v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->width:F

    iput v1, v0, Lcom/itextpdf/awt/PdfGraphics2D;->width:F

    .line 1010
    iget v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->height:F

    iput v1, v0, Lcom/itextpdf/awt/PdfGraphics2D;->height:F

    .line 1011
    new-instance v1, Ljava/awt/geom/Area;

    new-instance v2, Ljava/awt/geom/Rectangle2D$Float;

    iget v3, p0, Lcom/itextpdf/awt/PdfGraphics2D;->width:F

    iget v4, p0, Lcom/itextpdf/awt/PdfGraphics2D;->height:F

    invoke-direct {v2, v5, v5, v3, v4}, Ljava/awt/geom/Rectangle2D$Float;-><init>(FFFF)V

    invoke-direct {v1, v2}, Ljava/awt/geom/Area;-><init>(Ljava/awt/Shape;)V

    invoke-direct {v0, v1, v6}, Lcom/itextpdf/awt/PdfGraphics2D;->followPath(Ljava/awt/Shape;I)V

    .line 1012
    iget-object v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->clip:Ljava/awt/geom/Area;

    if-eqz v1, :cond_0

    .line 1013
    new-instance v1, Ljava/awt/geom/Area;

    iget-object v2, p0, Lcom/itextpdf/awt/PdfGraphics2D;->clip:Ljava/awt/geom/Area;

    invoke-direct {v1, v2}, Ljava/awt/geom/Area;-><init>(Ljava/awt/Shape;)V

    iput-object v1, v0, Lcom/itextpdf/awt/PdfGraphics2D;->clip:Ljava/awt/geom/Area;

    .line 1014
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->composite:Ljava/awt/Composite;

    iput-object v1, v0, Lcom/itextpdf/awt/PdfGraphics2D;->composite:Ljava/awt/Composite;

    .line 1015
    iget-object v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->stroke:Ljava/awt/Stroke;

    iput-object v1, v0, Lcom/itextpdf/awt/PdfGraphics2D;->stroke:Ljava/awt/Stroke;

    .line 1016
    iget-object v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->originalStroke:Ljava/awt/Stroke;

    iput-object v1, v0, Lcom/itextpdf/awt/PdfGraphics2D;->originalStroke:Ljava/awt/Stroke;

    .line 1017
    iget-object v1, v0, Lcom/itextpdf/awt/PdfGraphics2D;->strokeOne:Ljava/awt/BasicStroke;

    invoke-direct {v0, v1}, Lcom/itextpdf/awt/PdfGraphics2D;->transformStroke(Ljava/awt/Stroke;)Ljava/awt/Stroke;

    move-result-object v1

    check-cast v1, Ljava/awt/BasicStroke;

    iput-object v1, v0, Lcom/itextpdf/awt/PdfGraphics2D;->strokeOne:Ljava/awt/BasicStroke;

    .line 1018
    iget-object v1, v0, Lcom/itextpdf/awt/PdfGraphics2D;->strokeOne:Ljava/awt/BasicStroke;

    iput-object v1, v0, Lcom/itextpdf/awt/PdfGraphics2D;->oldStroke:Ljava/awt/Stroke;

    .line 1019
    iget-object v1, v0, Lcom/itextpdf/awt/PdfGraphics2D;->oldStroke:Ljava/awt/Stroke;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/awt/PdfGraphics2D;->setStrokeDiff(Ljava/awt/Stroke;Ljava/awt/Stroke;)V

    .line 1020
    iget-object v1, v0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->saveState()V

    .line 1021
    iget-object v1, v0, Lcom/itextpdf/awt/PdfGraphics2D;->clip:Ljava/awt/geom/Area;

    if-eqz v1, :cond_1

    .line 1022
    iget-object v1, v0, Lcom/itextpdf/awt/PdfGraphics2D;->clip:Ljava/awt/geom/Area;

    invoke-direct {v0, v1, v6}, Lcom/itextpdf/awt/PdfGraphics2D;->followPath(Ljava/awt/Shape;I)V

    .line 1023
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/itextpdf/awt/PdfGraphics2D;->kid:Z

    .line 1024
    iget-object v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->kids:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    .line 1025
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->kids:Ljava/util/ArrayList;

    .line 1026
    :cond_2
    iget-object v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->kids:Ljava/util/ArrayList;

    new-instance v2, Lcom/itextpdf/awt/PdfGraphics2D$Kid;

    iget-object v3, p0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfContentByte;->getInternalBuffer()Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->size()I

    move-result v3

    invoke-direct {v2, v3, v0}, Lcom/itextpdf/awt/PdfGraphics2D$Kid;-><init>(ILcom/itextpdf/awt/PdfGraphics2D;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1027
    return-object v0
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 1404
    iget-boolean v2, p0, Lcom/itextpdf/awt/PdfGraphics2D;->kid:Z

    if-eqz v2, :cond_1

    .line 1422
    :cond_0
    :goto_0
    return-void

    .line 1406
    :cond_1
    iget-boolean v2, p0, Lcom/itextpdf/awt/PdfGraphics2D;->disposeCalled:Z

    if-nez v2, :cond_0

    .line 1407
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/itextpdf/awt/PdfGraphics2D;->disposeCalled:Z

    .line 1408
    iget-object v2, p0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->restoreState()V

    .line 1409
    iget-object v2, p0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->restoreState()V

    .line 1410
    iget-object v2, p0, Lcom/itextpdf/awt/PdfGraphics2D;->dg2:Ljava/awt/Graphics2D;

    if-eqz v2, :cond_2

    .line 1411
    iget-object v2, p0, Lcom/itextpdf/awt/PdfGraphics2D;->dg2:Ljava/awt/Graphics2D;

    invoke-virtual {v2}, Ljava/awt/Graphics2D;->dispose()V

    .line 1412
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/itextpdf/awt/PdfGraphics2D;->dg2:Ljava/awt/Graphics2D;

    .line 1414
    :cond_2
    iget-object v2, p0, Lcom/itextpdf/awt/PdfGraphics2D;->kids:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1415
    new-instance v0, Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/ByteBuffer;-><init>()V

    .line 1416
    .local v0, buf:Lcom/itextpdf/text/pdf/ByteBuffer;
    invoke-direct {p0, v0}, Lcom/itextpdf/awt/PdfGraphics2D;->internalDispose(Lcom/itextpdf/text/pdf/ByteBuffer;)V

    .line 1417
    iget-object v2, p0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->getInternalBuffer()Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v1

    .line 1418
    .local v1, buf2:Lcom/itextpdf/text/pdf/ByteBuffer;
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->reset()V

    .line 1419
    invoke-virtual {v1, v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Lcom/itextpdf/text/pdf/ByteBuffer;)Lcom/itextpdf/text/pdf/ByteBuffer;

    goto :goto_0
.end method

.method protected doAttributes(Ljava/text/AttributedCharacterIterator;)V
    .locals 12
    .parameter "iter"

    .prologue
    const/4 v11, 0x1

    const/4 v8, 0x0

    .line 344
    iput-boolean v8, p0, Lcom/itextpdf/awt/PdfGraphics2D;->underline:Z

    .line 345
    iput-boolean v8, p0, Lcom/itextpdf/awt/PdfGraphics2D;->strikethrough:Z

    .line 346
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getAttributes()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/AttributedCharacterIterator$Attribute;

    .line 347
    .local v0, attribute:Ljava/text/AttributedCharacterIterator$Attribute;
    instance-of v8, v0, Ljava/awt/font/TextAttribute;

    if-eqz v8, :cond_0

    move-object v7, v0

    .line 349
    check-cast v7, Ljava/awt/font/TextAttribute;

    .line 350
    .local v7, textattribute:Ljava/awt/font/TextAttribute;
    sget-object v8, Ljava/awt/font/TextAttribute;->FONT:Ljava/awt/font/TextAttribute;

    invoke-virtual {v7, v8}, Ljava/awt/font/TextAttribute;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 351
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getAttributes()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/awt/Font;

    .line 352
    .local v2, font:Ljava/awt/Font;
    invoke-virtual {p0, v2}, Lcom/itextpdf/awt/PdfGraphics2D;->setFont(Ljava/awt/Font;)V

    goto :goto_0

    .line 354
    .end local v2           #font:Ljava/awt/Font;
    :cond_1
    sget-object v8, Ljava/awt/font/TextAttribute;->UNDERLINE:Ljava/awt/font/TextAttribute;

    invoke-virtual {v7, v8}, Ljava/awt/font/TextAttribute;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 355
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getAttributes()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Ljava/awt/font/TextAttribute;->UNDERLINE_ON:Ljava/lang/Integer;

    if-ne v8, v9, :cond_0

    .line 356
    iput-boolean v11, p0, Lcom/itextpdf/awt/PdfGraphics2D;->underline:Z

    goto :goto_0

    .line 358
    :cond_2
    sget-object v8, Ljava/awt/font/TextAttribute;->STRIKETHROUGH:Ljava/awt/font/TextAttribute;

    invoke-virtual {v7, v8}, Ljava/awt/font/TextAttribute;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 359
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getAttributes()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Ljava/awt/font/TextAttribute;->STRIKETHROUGH_ON:Ljava/lang/Boolean;

    if-ne v8, v9, :cond_0

    .line 360
    iput-boolean v11, p0, Lcom/itextpdf/awt/PdfGraphics2D;->strikethrough:Z

    goto :goto_0

    .line 362
    :cond_3
    sget-object v8, Ljava/awt/font/TextAttribute;->SIZE:Ljava/awt/font/TextAttribute;

    invoke-virtual {v7, v8}, Ljava/awt/font/TextAttribute;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 363
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getAttributes()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 364
    .local v6, obj:Ljava/lang/Object;
    instance-of v8, v6, Ljava/lang/Integer;

    if-eqz v8, :cond_4

    .line 365
    check-cast v6, Ljava/lang/Integer;

    .end local v6           #obj:Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 366
    .local v4, i:I
    invoke-virtual {p0}, Lcom/itextpdf/awt/PdfGraphics2D;->getFont()Ljava/awt/Font;

    move-result-object v8

    invoke-virtual {p0}, Lcom/itextpdf/awt/PdfGraphics2D;->getFont()Ljava/awt/Font;

    move-result-object v9

    invoke-virtual {v9}, Ljava/awt/Font;->getStyle()I

    move-result v9

    int-to-float v10, v4

    invoke-virtual {v8, v9, v10}, Ljava/awt/Font;->deriveFont(IF)Ljava/awt/Font;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/itextpdf/awt/PdfGraphics2D;->setFont(Ljava/awt/Font;)V

    goto/16 :goto_0

    .line 368
    .end local v4           #i:I
    .restart local v6       #obj:Ljava/lang/Object;
    :cond_4
    instance-of v8, v6, Ljava/lang/Float;

    if-eqz v8, :cond_0

    .line 369
    check-cast v6, Ljava/lang/Float;

    .end local v6           #obj:Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 370
    .local v1, f:F
    invoke-virtual {p0}, Lcom/itextpdf/awt/PdfGraphics2D;->getFont()Ljava/awt/Font;

    move-result-object v8

    invoke-virtual {p0}, Lcom/itextpdf/awt/PdfGraphics2D;->getFont()Ljava/awt/Font;

    move-result-object v9

    invoke-virtual {v9}, Ljava/awt/Font;->getStyle()I

    move-result v9

    invoke-virtual {v8, v9, v1}, Ljava/awt/Font;->deriveFont(IF)Ljava/awt/Font;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/itextpdf/awt/PdfGraphics2D;->setFont(Ljava/awt/Font;)V

    goto/16 :goto_0

    .line 373
    .end local v1           #f:F
    :cond_5
    sget-object v8, Ljava/awt/font/TextAttribute;->FOREGROUND:Ljava/awt/font/TextAttribute;

    invoke-virtual {v7, v8}, Ljava/awt/font/TextAttribute;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 374
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getAttributes()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/awt/Color;

    invoke-virtual {p0, v8}, Lcom/itextpdf/awt/PdfGraphics2D;->setColor(Ljava/awt/Color;)V

    goto/16 :goto_0

    .line 376
    :cond_6
    sget-object v8, Ljava/awt/font/TextAttribute;->FAMILY:Ljava/awt/font/TextAttribute;

    invoke-virtual {v7, v8}, Ljava/awt/font/TextAttribute;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 377
    invoke-virtual {p0}, Lcom/itextpdf/awt/PdfGraphics2D;->getFont()Ljava/awt/Font;

    move-result-object v2

    .line 378
    .restart local v2       #font:Ljava/awt/Font;
    invoke-virtual {v2}, Ljava/awt/Font;->getAttributes()Ljava/util/Map;

    move-result-object v3

    .line 379
    .local v3, fontAttributes:Ljava/util/Map;
    sget-object v8, Ljava/awt/font/TextAttribute;->FAMILY:Ljava/awt/font/TextAttribute;

    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getAttributes()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    invoke-virtual {v2, v3}, Ljava/awt/Font;->deriveFont(Ljava/util/Map;)Ljava/awt/Font;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/itextpdf/awt/PdfGraphics2D;->setFont(Ljava/awt/Font;)V

    goto/16 :goto_0

    .line 382
    .end local v2           #font:Ljava/awt/Font;
    .end local v3           #fontAttributes:Ljava/util/Map;
    :cond_7
    sget-object v8, Ljava/awt/font/TextAttribute;->POSTURE:Ljava/awt/font/TextAttribute;

    invoke-virtual {v7, v8}, Ljava/awt/font/TextAttribute;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 383
    invoke-virtual {p0}, Lcom/itextpdf/awt/PdfGraphics2D;->getFont()Ljava/awt/Font;

    move-result-object v2

    .line 384
    .restart local v2       #font:Ljava/awt/Font;
    invoke-virtual {v2}, Ljava/awt/Font;->getAttributes()Ljava/util/Map;

    move-result-object v3

    .line 385
    .restart local v3       #fontAttributes:Ljava/util/Map;
    sget-object v8, Ljava/awt/font/TextAttribute;->POSTURE:Ljava/awt/font/TextAttribute;

    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getAttributes()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    invoke-virtual {v2, v3}, Ljava/awt/Font;->deriveFont(Ljava/util/Map;)Ljava/awt/Font;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/itextpdf/awt/PdfGraphics2D;->setFont(Ljava/awt/Font;)V

    goto/16 :goto_0

    .line 388
    .end local v2           #font:Ljava/awt/Font;
    .end local v3           #fontAttributes:Ljava/util/Map;
    :cond_8
    sget-object v8, Ljava/awt/font/TextAttribute;->WEIGHT:Ljava/awt/font/TextAttribute;

    invoke-virtual {v7, v8}, Ljava/awt/font/TextAttribute;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 389
    invoke-virtual {p0}, Lcom/itextpdf/awt/PdfGraphics2D;->getFont()Ljava/awt/Font;

    move-result-object v2

    .line 390
    .restart local v2       #font:Ljava/awt/Font;
    invoke-virtual {v2}, Ljava/awt/Font;->getAttributes()Ljava/util/Map;

    move-result-object v3

    .line 391
    .restart local v3       #fontAttributes:Ljava/util/Map;
    sget-object v8, Ljava/awt/font/TextAttribute;->WEIGHT:Ljava/awt/font/TextAttribute;

    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getAttributes()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    invoke-virtual {v2, v3}, Ljava/awt/Font;->deriveFont(Ljava/util/Map;)Ljava/awt/Font;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/itextpdf/awt/PdfGraphics2D;->setFont(Ljava/awt/Font;)V

    goto/16 :goto_0

    .line 395
    .end local v0           #attribute:Ljava/text/AttributedCharacterIterator$Attribute;
    .end local v2           #font:Ljava/awt/Font;
    .end local v3           #fontAttributes:Ljava/util/Map;
    .end local v7           #textattribute:Ljava/awt/font/TextAttribute;
    :cond_9
    return-void
.end method

.method public draw(Ljava/awt/Shape;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 260
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/awt/PdfGraphics2D;->followPath(Ljava/awt/Shape;I)V

    .line 261
    return-void
.end method

.method public drawArc(IIIIII)V
    .locals 15
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "startAngle"
    .parameter "arcAngle"

    .prologue
    .line 1279
    new-instance v1, Ljava/awt/geom/Arc2D$Double;

    move/from16 v0, p1

    int-to-double v2, v0

    move/from16 v0, p2

    int-to-double v4, v0

    move/from16 v0, p3

    int-to-double v6, v0

    move/from16 v0, p4

    int-to-double v8, v0

    move/from16 v0, p5

    int-to-double v10, v0

    move/from16 v0, p6

    int-to-double v12, v0

    const/4 v14, 0x0

    invoke-direct/range {v1 .. v14}, Ljava/awt/geom/Arc2D$Double;-><init>(DDDDDDI)V

    .line 1280
    .local v1, arc:Ljava/awt/geom/Arc2D;
    invoke-virtual {p0, v1}, Lcom/itextpdf/awt/PdfGraphics2D;->draw(Ljava/awt/Shape;)V

    .line 1282
    return-void
.end method

.method public drawGlyphVector(Ljava/awt/font/GlyphVector;FF)V
    .locals 1
    .parameter "g"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 611
    invoke-virtual {p1, p2, p3}, Ljava/awt/font/GlyphVector;->getOutline(FF)Ljava/awt/Shape;

    move-result-object v0

    .line 612
    .local v0, s:Ljava/awt/Shape;
    invoke-virtual {p0, v0}, Lcom/itextpdf/awt/PdfGraphics2D;->fill(Ljava/awt/Shape;)V

    .line 613
    return-void
.end method

.method public drawImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImageOp;II)V
    .locals 2
    .parameter "img"
    .parameter "op"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 276
    move-object v0, p1

    .line 277
    .local v0, result:Ljava/awt/image/BufferedImage;
    if-eqz p2, :cond_0

    .line 278
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v1

    invoke-interface {p2, p1, v1}, Ljava/awt/image/BufferedImageOp;->createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    .line 279
    invoke-interface {p2, p1, v0}, Ljava/awt/image/BufferedImageOp;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    .line 281
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p3, p4, v1}, Lcom/itextpdf/awt/PdfGraphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    .line 282
    return-void
.end method

.method public drawImage(Ljava/awt/Image;IIIIIIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z
    .locals 25
    .parameter "img"
    .parameter "dx1"
    .parameter "dy1"
    .parameter "dx2"
    .parameter "dy2"
    .parameter "sx1"
    .parameter "sy1"
    .parameter "sx2"
    .parameter "sy2"
    .parameter "bgcolor"
    .parameter "observer"

    .prologue
    .line 1374
    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/awt/PdfGraphics2D;->waitForImage(Ljava/awt/Image;)V

    .line 1375
    move/from16 v0, p4

    int-to-double v2, v0

    move/from16 v0, p2

    int-to-double v6, v0

    sub-double v10, v2, v6

    .line 1376
    .local v10, dwidth:D
    move/from16 v0, p5

    int-to-double v2, v0

    move/from16 v0, p3

    int-to-double v6, v0

    sub-double v8, v2, v6

    .line 1377
    .local v8, dheight:D
    move/from16 v0, p8

    int-to-double v2, v0

    move/from16 v0, p6

    int-to-double v6, v0

    sub-double v19, v2, v6

    .line 1378
    .local v19, swidth:D
    move/from16 v0, p9

    int-to-double v2, v0

    move/from16 v0, p7

    int-to-double v6, v0

    sub-double v17, v2, v6

    .line 1381
    .local v17, sheight:D
    const-wide/16 v2, 0x0

    cmpl-double v2, v10, v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    cmpl-double v2, v8, v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    cmpl-double v2, v19, v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    cmpl-double v2, v17, v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 1396
    :goto_0
    return v2

    .line 1383
    :cond_1
    div-double v13, v10, v19

    .line 1384
    .local v13, scalex:D
    div-double v15, v8, v17

    .line 1386
    .local v15, scaley:D
    move/from16 v0, p6

    int-to-double v2, v0

    mul-double v21, v2, v13

    .line 1387
    .local v21, transx:D
    move/from16 v0, p7

    int-to-double v2, v0

    mul-double v23, v2, v15

    .line 1388
    .local v23, transy:D
    move/from16 v0, p2

    int-to-double v2, v0

    sub-double v2, v2, v21

    move/from16 v0, p3

    int-to-double v6, v0

    sub-double v6, v6, v23

    invoke-static {v2, v3, v6, v7}, Ljava/awt/geom/AffineTransform;->getTranslateInstance(DD)Ljava/awt/geom/AffineTransform;

    move-result-object v5

    .line 1389
    .local v5, tx:Ljava/awt/geom/AffineTransform;
    move-wide v0, v15

    invoke-virtual {v5, v13, v14, v0, v1}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    .line 1391
    new-instance v4, Ljava/awt/image/BufferedImage;

    move-object/from16 v0, p1

    move-object/from16 v1, p11

    invoke-virtual {v0, v1}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v2

    move-object/from16 v0, p1

    move-object/from16 v1, p11

    invoke-virtual {v0, v1}, Ljava/awt/Image;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result v3

    const/16 v6, 0xc

    invoke-direct {v4, v2, v3, v6}, Ljava/awt/image/BufferedImage;-><init>(III)V

    .line 1392
    .local v4, mask:Ljava/awt/image/BufferedImage;
    invoke-virtual {v4}, Ljava/awt/image/BufferedImage;->getGraphics()Ljava/awt/Graphics;

    move-result-object v12

    .line 1393
    .local v12, g:Ljava/awt/Graphics;
    move-wide/from16 v0, v19

    double-to-int v2, v0

    move-wide/from16 v0, v17

    double-to-int v3, v0

    move/from16 v0, p6

    move/from16 v1, p7

    invoke-virtual {v12, v0, v1, v2, v3}, Ljava/awt/Graphics;->fillRect(IIII)V

    .line 1394
    const/4 v6, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v7, p11

    invoke-direct/range {v2 .. v7}, Lcom/itextpdf/awt/PdfGraphics2D;->drawImage(Ljava/awt/Image;Ljava/awt/Image;Ljava/awt/geom/AffineTransform;Ljava/awt/Color;Ljava/awt/image/ImageObserver;)Z

    .line 1395
    invoke-virtual {v12}, Ljava/awt/Graphics;->dispose()V

    .line 1396
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public drawImage(Ljava/awt/Image;IIIIIIIILjava/awt/image/ImageObserver;)Z
    .locals 12
    .parameter "img"
    .parameter "dx1"
    .parameter "dy1"
    .parameter "dx2"
    .parameter "dy2"
    .parameter "sx1"
    .parameter "sy1"
    .parameter "sx2"
    .parameter "sy2"
    .parameter "observer"

    .prologue
    .line 1366
    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Lcom/itextpdf/awt/PdfGraphics2D;->drawImage(Ljava/awt/Image;IIIIIIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z

    move-result v0

    return v0
.end method

.method public drawImage(Ljava/awt/Image;IIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z
    .locals 11
    .parameter "img"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "bgcolor"
    .parameter "observer"

    .prologue
    .line 1353
    invoke-direct {p0, p1}, Lcom/itextpdf/awt/PdfGraphics2D;->waitForImage(Ljava/awt/Image;)V

    .line 1354
    int-to-double v1, p4

    move-object/from16 v0, p7

    invoke-virtual {p1, v0}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v3

    int-to-double v5, v3

    div-double v7, v1, v5

    .line 1355
    .local v7, scalex:D
    move/from16 v0, p5

    int-to-double v1, v0

    move-object/from16 v0, p7

    invoke-virtual {p1, v0}, Ljava/awt/Image;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result v3

    int-to-double v5, v3

    div-double v9, v1, v5

    .line 1356
    .local v9, scaley:D
    int-to-double v1, p2

    int-to-double v5, p3

    invoke-static {v1, v2, v5, v6}, Ljava/awt/geom/AffineTransform;->getTranslateInstance(DD)Ljava/awt/geom/AffineTransform;

    move-result-object v4

    .line 1357
    .local v4, tx:Ljava/awt/geom/AffineTransform;
    invoke-virtual {v4, v7, v8, v9, v10}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    .line 1358
    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/itextpdf/awt/PdfGraphics2D;->drawImage(Ljava/awt/Image;Ljava/awt/Image;Ljava/awt/geom/AffineTransform;Ljava/awt/Color;Ljava/awt/image/ImageObserver;)Z

    move-result v1

    return v1
.end method

.method public drawImage(Ljava/awt/Image;IIIILjava/awt/image/ImageObserver;)Z
    .locals 8
    .parameter "img"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "observer"

    .prologue
    .line 1336
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/itextpdf/awt/PdfGraphics2D;->drawImage(Ljava/awt/Image;IIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z

    move-result v0

    return v0
.end method

.method public drawImage(Ljava/awt/Image;IILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z
    .locals 8
    .parameter "img"
    .parameter "x"
    .parameter "y"
    .parameter "bgcolor"
    .parameter "observer"

    .prologue
    .line 1344
    invoke-direct {p0, p1}, Lcom/itextpdf/awt/PdfGraphics2D;->waitForImage(Ljava/awt/Image;)V

    .line 1345
    invoke-virtual {p1, p5}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v4

    invoke-virtual {p1, p5}, Ljava/awt/Image;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/itextpdf/awt/PdfGraphics2D;->drawImage(Ljava/awt/Image;IIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z

    move-result v0

    return v0
.end method

.method public drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z
    .locals 6
    .parameter "img"
    .parameter "x"
    .parameter "y"
    .parameter "observer"

    .prologue
    .line 1328
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/awt/PdfGraphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z

    move-result v0

    return v0
.end method

.method public drawImage(Ljava/awt/Image;Ljava/awt/geom/AffineTransform;Ljava/awt/image/ImageObserver;)Z
    .locals 6
    .parameter "img"
    .parameter "xform"
    .parameter "obs"

    .prologue
    const/4 v2, 0x0

    .line 268
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/awt/PdfGraphics2D;->drawImage(Ljava/awt/Image;Ljava/awt/Image;Ljava/awt/geom/AffineTransform;Ljava/awt/Color;Ljava/awt/image/ImageObserver;)Z

    move-result v0

    return v0
.end method

.method public drawLine(IIII)V
    .locals 9
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 1207
    new-instance v0, Ljava/awt/geom/Line2D$Double;

    int-to-double v1, p1

    int-to-double v3, p2

    int-to-double v5, p3

    int-to-double v7, p4

    invoke-direct/range {v0 .. v8}, Ljava/awt/geom/Line2D$Double;-><init>(DDDD)V

    .line 1208
    .local v0, line:Ljava/awt/geom/Line2D;
    invoke-virtual {p0, v0}, Lcom/itextpdf/awt/PdfGraphics2D;->draw(Ljava/awt/Shape;)V

    .line 1209
    return-void
.end method

.method public drawOval(IIII)V
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1261
    new-instance v0, Ljava/awt/geom/Ellipse2D$Float;

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/awt/geom/Ellipse2D$Float;-><init>(FFFF)V

    .line 1262
    .local v0, oval:Ljava/awt/geom/Ellipse2D;
    invoke-virtual {p0, v0}, Lcom/itextpdf/awt/PdfGraphics2D;->draw(Ljava/awt/Shape;)V

    .line 1263
    return-void
.end method

.method public drawPolygon([I[II)V
    .locals 1
    .parameter "xPoints"
    .parameter "yPoints"
    .parameter "nPoints"

    .prologue
    .line 1307
    new-instance v0, Ljava/awt/Polygon;

    invoke-direct {v0, p1, p2, p3}, Ljava/awt/Polygon;-><init>([I[II)V

    .line 1308
    .local v0, poly:Ljava/awt/Polygon;
    invoke-virtual {p0, v0}, Lcom/itextpdf/awt/PdfGraphics2D;->draw(Ljava/awt/Shape;)V

    .line 1309
    return-void
.end method

.method public drawPolyline([I[II)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "nPoints"

    .prologue
    .line 1298
    new-instance v0, Lcom/itextpdf/awt/geom/PolylineShape;

    invoke-direct {v0, p1, p2, p3}, Lcom/itextpdf/awt/geom/PolylineShape;-><init>([I[II)V

    .line 1299
    .local v0, polyline:Lcom/itextpdf/awt/geom/PolylineShape;
    invoke-virtual {p0, v0}, Lcom/itextpdf/awt/PdfGraphics2D;->draw(Ljava/awt/Shape;)V

    .line 1300
    return-void
.end method

.method public drawRect(IIII)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1216
    new-instance v0, Ljava/awt/Rectangle;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/awt/PdfGraphics2D;->draw(Ljava/awt/Shape;)V

    .line 1217
    return-void
.end method

.method public drawRenderableImage(Ljava/awt/image/renderable/RenderableImage;Ljava/awt/geom/AffineTransform;)V
    .locals 1
    .parameter "img"
    .parameter "xform"

    .prologue
    .line 317
    invoke-interface {p1}, Ljava/awt/image/renderable/RenderableImage;->createDefaultRendering()Ljava/awt/image/RenderedImage;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/itextpdf/awt/PdfGraphics2D;->drawRenderedImage(Ljava/awt/image/RenderedImage;Ljava/awt/geom/AffineTransform;)V

    .line 318
    return-void
.end method

.method public drawRenderedImage(Ljava/awt/image/RenderedImage;Ljava/awt/geom/AffineTransform;)V
    .locals 15
    .parameter "img"
    .parameter "xform"

    .prologue
    .line 289
    const/4 v5, 0x0

    .line 290
    .local v5, image:Ljava/awt/image/BufferedImage;
    move-object/from16 v0, p1

    instance-of v14, v0, Ljava/awt/image/BufferedImage;

    if-eqz v14, :cond_0

    move-object/from16 v5, p1

    .line 291
    check-cast v5, Ljava/awt/image/BufferedImage;

    .line 309
    :goto_0
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {p0, v5, v0, v14}, Lcom/itextpdf/awt/PdfGraphics2D;->drawImage(Ljava/awt/Image;Ljava/awt/geom/AffineTransform;Ljava/awt/image/ImageObserver;)Z

    .line 310
    return-void

    .line 293
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/awt/image/RenderedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v2

    .line 294
    .local v2, cm:Ljava/awt/image/ColorModel;
    invoke-interface/range {p1 .. p1}, Ljava/awt/image/RenderedImage;->getWidth()I

    move-result v13

    .line 295
    .local v13, width:I
    invoke-interface/range {p1 .. p1}, Ljava/awt/image/RenderedImage;->getHeight()I

    move-result v3

    .line 296
    .local v3, height:I
    invoke-virtual {v2, v13, v3}, Ljava/awt/image/ColorModel;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

    move-result-object v11

    .line 297
    .local v11, raster:Ljava/awt/image/WritableRaster;
    invoke-virtual {v2}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v6

    .line 298
    .local v6, isAlphaPremultiplied:Z
    new-instance v10, Ljava/util/Hashtable;

    invoke-direct {v10}, Ljava/util/Hashtable;-><init>()V

    .line 299
    .local v10, properties:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface/range {p1 .. p1}, Ljava/awt/image/RenderedImage;->getPropertyNames()[Ljava/lang/String;

    move-result-object v8

    .line 300
    .local v8, keys:[Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 301
    move-object v1, v8

    .local v1, arr$:[Ljava/lang/String;
    array-length v9, v1

    .local v9, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v9, :cond_1

    aget-object v7, v1, v4

    .line 302
    .local v7, key:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/awt/image/RenderedImage;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v10, v7, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 305
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v7           #key:Ljava/lang/String;
    .end local v9           #len$:I
    :cond_1
    new-instance v12, Ljava/awt/image/BufferedImage;

    invoke-direct {v12, v2, v11, v6, v10}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    .line 306
    .local v12, result:Ljava/awt/image/BufferedImage;
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/awt/image/RenderedImage;->copyData(Ljava/awt/image/WritableRaster;)Ljava/awt/image/WritableRaster;

    .line 307
    move-object v5, v12

    goto :goto_0
.end method

.method public drawRoundRect(IIIIII)V
    .locals 14
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "arcWidth"
    .parameter "arcHeight"

    .prologue
    .line 1243
    new-instance v1, Ljava/awt/geom/RoundRectangle2D$Double;

    int-to-double v2, p1

    move/from16 v0, p2

    int-to-double v4, v0

    move/from16 v0, p3

    int-to-double v6, v0

    move/from16 v0, p4

    int-to-double v8, v0

    move/from16 v0, p5

    int-to-double v10, v0

    move/from16 v0, p6

    int-to-double v12, v0

    invoke-direct/range {v1 .. v13}, Ljava/awt/geom/RoundRectangle2D$Double;-><init>(DDDDDD)V

    .line 1244
    .local v1, rect:Ljava/awt/geom/RoundRectangle2D;
    invoke-virtual {p0, v1}, Lcom/itextpdf/awt/PdfGraphics2D;->draw(Ljava/awt/Shape;)V

    .line 1245
    return-void
.end method

.method public drawString(Ljava/lang/String;FF)V
    .locals 48
    .parameter "s"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 402
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/awt/PdfGraphics2D;->setFillPaint()V

    .line 405
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/itextpdf/awt/PdfGraphics2D;->onlyShapes:Z

    if-eqz v3, :cond_2

    .line 406
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/awt/PdfGraphics2D;->font:Ljava/awt/Font;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/awt/PdfGraphics2D;->getFontRenderContext()Ljava/awt/font/FontRenderContext;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Ljava/awt/Font;->layoutGlyphVector(Ljava/awt/font/FontRenderContext;[CIII)Ljava/awt/font/GlyphVector;

    move-result-object v3

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v3, v1, v2}, Lcom/itextpdf/awt/PdfGraphics2D;->drawGlyphVector(Ljava/awt/font/GlyphVector;FF)V

    goto :goto_0

    .line 411
    :cond_2
    const/16 v40, 0x0

    .line 412
    .local v40, restoreTextRenderingMode:Z
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/awt/PdfGraphics2D;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v21

    .line 413
    .local v21, at:Ljava/awt/geom/AffineTransform;
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/awt/PdfGraphics2D;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v22

    .line 414
    .local v22, at2:Ljava/awt/geom/AffineTransform;
    move/from16 v0, p2

    float-to-double v6, v0

    move/from16 v0, p3

    float-to-double v8, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7, v8, v9}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    .line 415
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/awt/PdfGraphics2D;->font:Ljava/awt/Font;

    invoke-virtual {v3}, Ljava/awt/Font;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/awt/geom/AffineTransform;->concatenate(Ljava/awt/geom/AffineTransform;)V

    .line 416
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/itextpdf/awt/PdfGraphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    .line 417
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/awt/PdfGraphics2D;->normalizeMatrix()Ljava/awt/geom/AffineTransform;

    move-result-object v32

    .line 418
    .local v32, inverse:Ljava/awt/geom/AffineTransform;
    const-wide/high16 v6, 0x3ff0

    const-wide/high16 v8, -0x4010

    invoke-static {v6, v7, v8, v9}, Ljava/awt/geom/AffineTransform;->getScaleInstance(DD)Ljava/awt/geom/AffineTransform;

    move-result-object v27

    .line 419
    .local v27, flipper:Ljava/awt/geom/AffineTransform;
    move-object/from16 v0, v32

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/awt/geom/AffineTransform;->concatenate(Ljava/awt/geom/AffineTransform;)V

    .line 420
    const/4 v3, 0x6

    new-array v0, v3, [D

    move-object/from16 v37, v0

    .line 421
    .local v37, mx:[D
    move-object/from16 v0, v32

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/awt/geom/AffineTransform;->getMatrix([D)V

    .line 422
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfContentByte;->beginText()V

    .line 423
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/awt/PdfGraphics2D;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/itextpdf/awt/PdfGraphics2D;->fontSize:F

    invoke-virtual {v3, v6, v7}, Lcom/itextpdf/text/pdf/PdfContentByte;->setFontAndSize(Lcom/itextpdf/text/pdf/BaseFont;F)V

    .line 430
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/awt/PdfGraphics2D;->font:Ljava/awt/Font;

    invoke-virtual {v3}, Ljava/awt/Font;->isItalic()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/awt/PdfGraphics2D;->font:Ljava/awt/Font;

    invoke-virtual {v3}, Ljava/awt/Font;->getFontName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/awt/PdfGraphics2D;->font:Ljava/awt/Font;

    invoke-virtual {v6}, Ljava/awt/Font;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 431
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/awt/PdfGraphics2D;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    const/4 v6, 0x4

    const/high16 v7, 0x447a

    invoke-virtual {v3, v6, v7}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v19

    .line 432
    .local v19, angle:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/awt/PdfGraphics2D;->font:Ljava/awt/Font;

    invoke-virtual {v3}, Ljava/awt/Font;->getItalicAngle()F

    move-result v20

    .line 435
    .local v20, angle2:F
    const/4 v3, 0x0

    cmpl-float v3, v20, v3

    if-nez v3, :cond_13

    .line 439
    const/high16 v20, 0x4170

    .line 445
    :goto_1
    const/4 v3, 0x0

    cmpl-float v3, v19, v3

    if-nez v3, :cond_3

    .line 446
    const/4 v3, 0x2

    const/high16 v6, 0x42c8

    div-float v6, v20, v6

    float-to-double v6, v6

    aput-wide v6, v37, v3

    .line 449
    .end local v19           #angle:F
    .end local v20           #angle2:F
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    const/4 v6, 0x0

    aget-wide v6, v37, v6

    double-to-float v4, v6

    const/4 v6, 0x1

    aget-wide v6, v37, v6

    double-to-float v5, v6

    const/4 v6, 0x2

    aget-wide v6, v37, v6

    double-to-float v6, v6

    const/4 v7, 0x3

    aget-wide v7, v37, v7

    double-to-float v7, v7

    const/4 v8, 0x4

    aget-wide v8, v37, v8

    double-to-float v8, v8

    const/4 v9, 0x5

    aget-wide v9, v37, v9

    double-to-float v9, v9

    invoke-virtual/range {v3 .. v9}, Lcom/itextpdf/text/pdf/PdfContentByte;->setTextMatrix(FFFFFF)V

    .line 450
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/awt/PdfGraphics2D;->font:Ljava/awt/Font;

    invoke-virtual {v3}, Ljava/awt/Font;->getAttributes()Ljava/util/Map;

    move-result-object v3

    sget-object v6, Ljava/awt/font/TextAttribute;->WIDTH:Ljava/awt/font/TextAttribute;

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Float;

    .line 451
    .local v28, fontTextAttributeWidth:Ljava/lang/Float;
    if-nez v28, :cond_4

    sget-object v28, Ljava/awt/font/TextAttribute;->WIDTH_REGULAR:Ljava/lang/Float;

    .line 454
    :cond_4
    sget-object v3, Ljava/awt/font/TextAttribute;->WIDTH_REGULAR:Ljava/lang/Float;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 455
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    const/high16 v6, 0x42c8

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Float;->floatValue()F

    move-result v7

    div-float/2addr v6, v7

    invoke-virtual {v3, v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->setHorizontalScaling(F)V

    .line 459
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/awt/PdfGraphics2D;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/BaseFont;->getPostscriptFontName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v6, "bold"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_a

    .line 462
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/awt/PdfGraphics2D;->font:Ljava/awt/Font;

    invoke-virtual {v3}, Ljava/awt/Font;->getAttributes()Ljava/util/Map;

    move-result-object v3

    sget-object v6, Ljava/awt/font/TextAttribute;->WEIGHT:Ljava/awt/font/TextAttribute;

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Ljava/lang/Float;

    .line 463
    .local v45, weight:Ljava/lang/Float;
    if-nez v45, :cond_6

    .line 464
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/awt/PdfGraphics2D;->font:Ljava/awt/Font;

    invoke-virtual {v3}, Ljava/awt/Font;->isBold()Z

    move-result v3

    if-eqz v3, :cond_14

    sget-object v45, Ljava/awt/font/TextAttribute;->WEIGHT_BOLD:Ljava/lang/Float;

    .line 467
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/awt/PdfGraphics2D;->font:Ljava/awt/Font;

    invoke-virtual {v3}, Ljava/awt/Font;->isBold()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual/range {v45 .. v45}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sget-object v6, Ljava/awt/font/TextAttribute;->WEIGHT_SEMIBOLD:Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpl-float v3, v3, v6

    if-ltz v3, :cond_a

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/awt/PdfGraphics2D;->font:Ljava/awt/Font;

    invoke-virtual {v3}, Ljava/awt/Font;->getFontName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/awt/PdfGraphics2D;->font:Ljava/awt/Font;

    invoke-virtual {v6}, Ljava/awt/Font;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 470
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/awt/PdfGraphics2D;->font:Ljava/awt/Font;

    invoke-virtual {v3}, Ljava/awt/Font;->getSize2D()F

    move-result v3

    invoke-virtual/range {v45 .. v45}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sget-object v7, Ljava/awt/font/TextAttribute;->WEIGHT_REGULAR:Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    sub-float/2addr v6, v7

    mul-float/2addr v3, v6

    const/high16 v6, 0x41f0

    div-float v43, v3, v6

    .line 471
    .local v43, strokeWidth:F
    const/high16 v3, 0x3f80

    cmpl-float v3, v43, v3

    if-eqz v3, :cond_a

    .line 472
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/awt/PdfGraphics2D;->realPaint:Ljava/awt/Paint;

    instance-of v3, v3, Ljava/awt/Color;

    if-eqz v3, :cond_a

    .line 473
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->setTextRenderingMode(I)V

    .line 474
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    move/from16 v0, v43

    invoke-virtual {v3, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineWidth(F)V

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/awt/PdfGraphics2D;->realPaint:Ljava/awt/Paint;

    move-object/from16 v23, v0

    check-cast v23, Ljava/awt/Color;

    .line 476
    .local v23, color:Ljava/awt/Color;
    invoke-virtual/range {v23 .. v23}, Ljava/awt/Color;->getAlpha()I

    move-result v18

    .line 477
    .local v18, alpha:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/itextpdf/awt/PdfGraphics2D;->currentStrokeGState:I

    move/from16 v0, v18

    if-eq v0, v3, :cond_9

    .line 478
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/awt/PdfGraphics2D;->currentStrokeGState:I

    .line 479
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/awt/PdfGraphics2D;->strokeGState:[Lcom/itextpdf/text/pdf/PdfGState;

    aget-object v29, v3, v18

    .line 480
    .local v29, gs:Lcom/itextpdf/text/pdf/PdfGState;
    if-nez v29, :cond_8

    .line 481
    new-instance v29, Lcom/itextpdf/text/pdf/PdfGState;

    .end local v29           #gs:Lcom/itextpdf/text/pdf/PdfGState;
    invoke-direct/range {v29 .. v29}, Lcom/itextpdf/text/pdf/PdfGState;-><init>()V

    .line 482
    .restart local v29       #gs:Lcom/itextpdf/text/pdf/PdfGState;
    move/from16 v0, v18

    int-to-float v3, v0

    const/high16 v6, 0x437f

    div-float/2addr v3, v6

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfGState;->setStrokeOpacity(F)V

    .line 483
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/awt/PdfGraphics2D;->strokeGState:[Lcom/itextpdf/text/pdf/PdfGState;

    aput-object v29, v3, v18

    .line 485
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setGState(Lcom/itextpdf/text/pdf/PdfGState;)V

    .line 487
    .end local v29           #gs:Lcom/itextpdf/text/pdf/PdfGState;
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    new-instance v6, Lcom/itextpdf/text/BaseColor;

    invoke-virtual/range {v23 .. v23}, Ljava/awt/Color;->getRGB()I

    move-result v7

    invoke-direct {v6, v7}, Lcom/itextpdf/text/BaseColor;-><init>(I)V

    invoke-virtual {v3, v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorStroke(Lcom/itextpdf/text/BaseColor;)V

    .line 488
    const/16 v40, 0x1

    .line 494
    .end local v18           #alpha:I
    .end local v23           #color:Ljava/awt/Color;
    .end local v43           #strokeWidth:F
    .end local v45           #weight:Ljava/lang/Float;
    :cond_a
    const-wide/16 v46, 0x0

    .line 495
    .local v46, width:D
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/awt/PdfGraphics2D;->font:Ljava/awt/Font;

    invoke-virtual {v3}, Ljava/awt/Font;->getSize2D()F

    move-result v3

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_b

    .line 496
    const/high16 v3, 0x447a

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/awt/PdfGraphics2D;->font:Ljava/awt/Font;

    invoke-virtual {v6}, Ljava/awt/Font;->getSize2D()F

    move-result v6

    div-float v42, v3, v6

    .line 497
    .local v42, scale:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/awt/PdfGraphics2D;->font:Ljava/awt/Font;

    move/from16 v0, v42

    float-to-double v6, v0

    move/from16 v0, v42

    float-to-double v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/awt/geom/AffineTransform;->getScaleInstance(DD)Ljava/awt/geom/AffineTransform;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/awt/Font;->deriveFont(Ljava/awt/geom/AffineTransform;)Ljava/awt/Font;

    move-result-object v26

    .line 498
    .local v26, derivedFont:Ljava/awt/Font;
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/awt/PdfGraphics2D;->getFontRenderContext()Ljava/awt/font/FontRenderContext;

    move-result-object v3

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Ljava/awt/Font;->getStringBounds(Ljava/lang/String;Ljava/awt/font/FontRenderContext;)Ljava/awt/geom/Rectangle2D;

    move-result-object v3

    invoke-virtual {v3}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v46

    .line 499
    invoke-virtual/range {v26 .. v26}, Ljava/awt/Font;->isTransformed()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 500
    move/from16 v0, v42

    float-to-double v6, v0

    div-double v46, v46, v6

    .line 503
    .end local v26           #derivedFont:Ljava/awt/Font;
    .end local v42           #scale:F
    :cond_b
    sget-object v3, Lcom/itextpdf/awt/PdfGraphics2D$HyperLinkKey;->KEY_INSTANCE:Lcom/itextpdf/awt/PdfGraphics2D$HyperLinkKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/itextpdf/awt/PdfGraphics2D;->getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object v44

    .line 504
    .local v44, url:Ljava/lang/Object;
    if-eqz v44, :cond_d

    sget-object v3, Lcom/itextpdf/awt/PdfGraphics2D$HyperLinkKey;->VALUE_HYPERLINKKEY_OFF:Ljava/lang/Object;

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 506
    const/high16 v3, 0x447a

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/awt/PdfGraphics2D;->font:Ljava/awt/Font;

    invoke-virtual {v6}, Ljava/awt/Font;->getSize2D()F

    move-result v6

    div-float v42, v3, v6

    .line 507
    .restart local v42       #scale:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/awt/PdfGraphics2D;->font:Ljava/awt/Font;

    move/from16 v0, v42

    float-to-double v6, v0

    move/from16 v0, v42

    float-to-double v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/awt/geom/AffineTransform;->getScaleInstance(DD)Ljava/awt/geom/AffineTransform;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/awt/Font;->deriveFont(Ljava/awt/geom/AffineTransform;)Ljava/awt/Font;

    move-result-object v26

    .line 508
    .restart local v26       #derivedFont:Ljava/awt/Font;
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/awt/PdfGraphics2D;->getFontRenderContext()Ljava/awt/font/FontRenderContext;

    move-result-object v3

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Ljava/awt/Font;->getStringBounds(Ljava/lang/String;Ljava/awt/font/FontRenderContext;)Ljava/awt/geom/Rectangle2D;

    move-result-object v3

    invoke-virtual {v3}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v30

    .line 509
    .local v30, height:D
    invoke-virtual/range {v26 .. v26}, Ljava/awt/Font;->isTransformed()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 510
    move/from16 v0, v42

    float-to-double v6, v0

    div-double v30, v30, v6

    .line 511
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfContentByte;->getXTLM()F

    move-result v3

    float-to-double v0, v3

    move-wide/from16 v33, v0

    .line 512
    .local v33, leftX:D
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfContentByte;->getYTLM()F

    move-result v3

    float-to-double v0, v3

    move-wide/from16 v35, v0

    .line 513
    .local v35, leftY:D
    new-instance v4, Lcom/itextpdf/text/pdf/PdfAction;

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/itextpdf/text/pdf/PdfAction;-><init>(Ljava/lang/String;)V

    .line 514
    .local v4, action:Lcom/itextpdf/text/pdf/PdfAction;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    move-wide/from16 v0, v33

    double-to-float v5, v0

    move-wide/from16 v0, v35

    double-to-float v6, v0

    add-double v7, v33, v46

    double-to-float v7, v7

    add-double v8, v35, v30

    double-to-float v8, v8

    invoke-virtual/range {v3 .. v8}, Lcom/itextpdf/text/pdf/PdfContentByte;->setAction(Lcom/itextpdf/text/pdf/PdfAction;FFFF)V

    .line 516
    .end local v4           #action:Lcom/itextpdf/text/pdf/PdfAction;
    .end local v26           #derivedFont:Ljava/awt/Font;
    .end local v30           #height:D
    .end local v33           #leftX:D
    .end local v35           #leftY:D
    .end local v42           #scale:F
    :cond_d
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v6, 0x1

    if-le v3, v6, :cond_e

    .line 517
    move-wide/from16 v0, v46

    double-to-float v3, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/awt/PdfGraphics2D;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/itextpdf/awt/PdfGraphics2D;->fontSize:F

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v7}, Lcom/itextpdf/text/pdf/BaseFont;->getWidthPoint(Ljava/lang/String;F)F

    move-result v6

    sub-float/2addr v3, v6

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    div-float v17, v3, v6

    .line 518
    .local v17, adv:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setCharacterSpacing(F)V

    .line 520
    .end local v17           #adv:F
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->showText(Ljava/lang/String;)V

    .line 521
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v6, 0x1

    if-le v3, v6, :cond_f

    .line 522
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->setCharacterSpacing(F)V

    .line 524
    :cond_f
    sget-object v3, Ljava/awt/font/TextAttribute;->WIDTH_REGULAR:Ljava/lang/Float;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 525
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    const/high16 v6, 0x42c8

    invoke-virtual {v3, v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->setHorizontalScaling(F)V

    .line 528
    :cond_10
    if-eqz v40, :cond_11

    .line 529
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->setTextRenderingMode(I)V

    .line 532
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfContentByte;->endText()V

    .line 533
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/itextpdf/awt/PdfGraphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    .line 534
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/itextpdf/awt/PdfGraphics2D;->underline:Z

    if-eqz v3, :cond_12

    .line 537
    const/16 v16, 0x32

    .line 539
    .local v16, UnderlineThickness:I
    move/from16 v0, v16

    int-to-double v6, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/itextpdf/awt/PdfGraphics2D;->fontSize:F

    float-to-int v3, v3

    invoke-static {v6, v7, v3}, Lcom/itextpdf/awt/PdfGraphics2D;->asPoints(DI)D

    move-result-wide v24

    .line 540
    .local v24, d:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/awt/PdfGraphics2D;->originalStroke:Ljava/awt/Stroke;

    move-object/from16 v41, v0

    .line 541
    .local v41, savedStroke:Ljava/awt/Stroke;
    new-instance v3, Ljava/awt/BasicStroke;

    move-wide/from16 v0, v24

    double-to-float v6, v0

    invoke-direct {v3, v6}, Ljava/awt/BasicStroke;-><init>(F)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/itextpdf/awt/PdfGraphics2D;->setStroke(Ljava/awt/Stroke;)V

    .line 542
    move/from16 v0, p3

    float-to-double v6, v0

    move/from16 v0, v16

    int-to-double v8, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/itextpdf/awt/PdfGraphics2D;->fontSize:F

    float-to-int v3, v3

    invoke-static {v8, v9, v3}, Lcom/itextpdf/awt/PdfGraphics2D;->asPoints(DI)D

    move-result-wide v8

    add-double/2addr v6, v8

    double-to-float v0, v6

    move/from16 p3, v0

    .line 543
    new-instance v5, Ljava/awt/geom/Line2D$Double;

    move/from16 v0, p2

    float-to-double v6, v0

    move/from16 v0, p3

    float-to-double v8, v0

    move/from16 v0, p2

    float-to-double v10, v0

    add-double v10, v10, v46

    move/from16 v0, p3

    float-to-double v12, v0

    invoke-direct/range {v5 .. v13}, Ljava/awt/geom/Line2D$Double;-><init>(DDDD)V

    .line 544
    .local v5, line:Ljava/awt/geom/Line2D;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/itextpdf/awt/PdfGraphics2D;->draw(Ljava/awt/Shape;)V

    .line 545
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/itextpdf/awt/PdfGraphics2D;->setStroke(Ljava/awt/Stroke;)V

    .line 547
    .end local v5           #line:Ljava/awt/geom/Line2D;
    .end local v16           #UnderlineThickness:I
    .end local v24           #d:D
    .end local v41           #savedStroke:Ljava/awt/Stroke;
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/itextpdf/awt/PdfGraphics2D;->strikethrough:Z

    if-eqz v3, :cond_0

    .line 549
    const/16 v15, 0x32

    .line 550
    .local v15, StrikethroughThickness:I
    const/16 v14, 0x15e

    .line 552
    .local v14, StrikethroughPosition:I
    int-to-double v6, v15

    move-object/from16 v0, p0

    iget v3, v0, Lcom/itextpdf/awt/PdfGraphics2D;->fontSize:F

    float-to-int v3, v3

    invoke-static {v6, v7, v3}, Lcom/itextpdf/awt/PdfGraphics2D;->asPoints(DI)D

    move-result-wide v24

    .line 553
    .restart local v24       #d:D
    int-to-double v6, v14

    move-object/from16 v0, p0

    iget v3, v0, Lcom/itextpdf/awt/PdfGraphics2D;->fontSize:F

    float-to-int v3, v3

    invoke-static {v6, v7, v3}, Lcom/itextpdf/awt/PdfGraphics2D;->asPoints(DI)D

    move-result-wide v38

    .line 554
    .local v38, p:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/awt/PdfGraphics2D;->originalStroke:Ljava/awt/Stroke;

    move-object/from16 v41, v0

    .line 555
    .restart local v41       #savedStroke:Ljava/awt/Stroke;
    new-instance v3, Ljava/awt/BasicStroke;

    move-wide/from16 v0, v24

    double-to-float v6, v0

    invoke-direct {v3, v6}, Ljava/awt/BasicStroke;-><init>(F)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/itextpdf/awt/PdfGraphics2D;->setStroke(Ljava/awt/Stroke;)V

    .line 556
    move/from16 v0, p3

    float-to-double v6, v0

    int-to-double v8, v15

    move-object/from16 v0, p0

    iget v3, v0, Lcom/itextpdf/awt/PdfGraphics2D;->fontSize:F

    float-to-int v3, v3

    invoke-static {v8, v9, v3}, Lcom/itextpdf/awt/PdfGraphics2D;->asPoints(DI)D

    move-result-wide v8

    add-double/2addr v6, v8

    double-to-float v0, v6

    move/from16 p3, v0

    .line 557
    new-instance v5, Ljava/awt/geom/Line2D$Double;

    move/from16 v0, p2

    float-to-double v6, v0

    move/from16 v0, p3

    float-to-double v8, v0

    sub-double v8, v8, v38

    move/from16 v0, p2

    float-to-double v10, v0

    add-double v10, v10, v46

    move/from16 v0, p3

    float-to-double v12, v0

    sub-double v12, v12, v38

    invoke-direct/range {v5 .. v13}, Ljava/awt/geom/Line2D$Double;-><init>(DDDD)V

    .line 558
    .restart local v5       #line:Ljava/awt/geom/Line2D;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/itextpdf/awt/PdfGraphics2D;->draw(Ljava/awt/Shape;)V

    .line 559
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/itextpdf/awt/PdfGraphics2D;->setStroke(Ljava/awt/Stroke;)V

    goto/16 :goto_0

    .line 443
    .end local v5           #line:Ljava/awt/geom/Line2D;
    .end local v14           #StrikethroughPosition:I
    .end local v15           #StrikethroughThickness:I
    .end local v24           #d:D
    .end local v28           #fontTextAttributeWidth:Ljava/lang/Float;
    .end local v38           #p:D
    .end local v41           #savedStroke:Ljava/awt/Stroke;
    .end local v44           #url:Ljava/lang/Object;
    .end local v46           #width:D
    .restart local v19       #angle:F
    .restart local v20       #angle2:F
    :cond_13
    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v20, v0

    goto/16 :goto_1

    .line 464
    .end local v19           #angle:F
    .end local v20           #angle2:F
    .restart local v28       #fontTextAttributeWidth:Ljava/lang/Float;
    .restart local v45       #weight:Ljava/lang/Float;
    :cond_14
    sget-object v45, Ljava/awt/font/TextAttribute;->WEIGHT_REGULAR:Ljava/lang/Float;

    goto/16 :goto_2
.end method

.method public drawString(Ljava/lang/String;II)V
    .locals 2
    .parameter "s"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 325
    int-to-float v0, p2

    int-to-float v1, p3

    invoke-virtual {p0, p1, v0, v1}, Lcom/itextpdf/awt/PdfGraphics2D;->drawString(Ljava/lang/String;FF)V

    .line 326
    return-void
.end method

.method public drawString(Ljava/text/AttributedCharacterIterator;FF)V
    .locals 8
    .parameter "iter"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v7, 0x0

    .line 584
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 585
    .local v2, stringbuffer:Ljava/lang/StringBuffer;
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->first()C

    move-result v0

    .local v0, c:C
    :goto_0
    const v3, 0xffff

    if-eq v0, v3, :cond_2

    .line 587
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getIndex()I

    move-result v3

    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getRunStart()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 589
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 591
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p2, p3}, Lcom/itextpdf/awt/PdfGraphics2D;->drawString(Ljava/lang/String;FF)V

    .line 592
    invoke-virtual {p0}, Lcom/itextpdf/awt/PdfGraphics2D;->getFontMetrics()Ljava/awt/FontMetrics;

    move-result-object v1

    .line 593
    .local v1, fontmetrics:Ljava/awt/FontMetrics;
    float-to-double v3, p2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, p0}, Ljava/awt/FontMetrics;->getStringBounds(Ljava/lang/String;Ljava/awt/Graphics;)Ljava/awt/geom/Rectangle2D;

    move-result-object v5

    invoke-virtual {v5}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v5

    add-double/2addr v3, v5

    double-to-float p2, v3

    .line 594
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v2, v7, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 596
    .end local v1           #fontmetrics:Ljava/awt/FontMetrics;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/awt/PdfGraphics2D;->doAttributes(Ljava/text/AttributedCharacterIterator;)V

    .line 598
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 585
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->next()C

    move-result v0

    goto :goto_0

    .line 601
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p2, p3}, Lcom/itextpdf/awt/PdfGraphics2D;->drawString(Ljava/lang/String;FF)V

    .line 602
    iput-boolean v7, p0, Lcom/itextpdf/awt/PdfGraphics2D;->underline:Z

    .line 603
    iput-boolean v7, p0, Lcom/itextpdf/awt/PdfGraphics2D;->strikethrough:Z

    .line 604
    return-void
.end method

.method public drawString(Ljava/text/AttributedCharacterIterator;II)V
    .locals 2
    .parameter "iterator"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 569
    int-to-float v0, p2

    int-to-float v1, p3

    invoke-virtual {p0, p1, v0, v1}, Lcom/itextpdf/awt/PdfGraphics2D;->drawString(Ljava/text/AttributedCharacterIterator;FF)V

    .line 570
    return-void
.end method

.method public fill(Ljava/awt/Shape;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 620
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/awt/PdfGraphics2D;->followPath(Ljava/awt/Shape;I)V

    .line 621
    return-void
.end method

.method public fillArc(IIIIII)V
    .locals 15
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "startAngle"
    .parameter "arcAngle"

    .prologue
    .line 1289
    new-instance v1, Ljava/awt/geom/Arc2D$Double;

    move/from16 v0, p1

    int-to-double v2, v0

    move/from16 v0, p2

    int-to-double v4, v0

    move/from16 v0, p3

    int-to-double v6, v0

    move/from16 v0, p4

    int-to-double v8, v0

    move/from16 v0, p5

    int-to-double v10, v0

    move/from16 v0, p6

    int-to-double v12, v0

    const/4 v14, 0x2

    invoke-direct/range {v1 .. v14}, Ljava/awt/geom/Arc2D$Double;-><init>(DDDDDDI)V

    .line 1290
    .local v1, arc:Ljava/awt/geom/Arc2D;
    invoke-virtual {p0, v1}, Lcom/itextpdf/awt/PdfGraphics2D;->fill(Ljava/awt/Shape;)V

    .line 1291
    return-void
.end method

.method public fillOval(IIII)V
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1270
    new-instance v0, Ljava/awt/geom/Ellipse2D$Float;

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/awt/geom/Ellipse2D$Float;-><init>(FFFF)V

    .line 1271
    .local v0, oval:Ljava/awt/geom/Ellipse2D;
    invoke-virtual {p0, v0}, Lcom/itextpdf/awt/PdfGraphics2D;->fill(Ljava/awt/Shape;)V

    .line 1272
    return-void
.end method

.method public fillPolygon([I[II)V
    .locals 4
    .parameter "xPoints"
    .parameter "yPoints"
    .parameter "nPoints"

    .prologue
    .line 1316
    new-instance v1, Ljava/awt/Polygon;

    invoke-direct {v1}, Ljava/awt/Polygon;-><init>()V

    .line 1317
    .local v1, poly:Ljava/awt/Polygon;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 1318
    aget v2, p1, v0

    aget v3, p2, v0

    invoke-virtual {v1, v2, v3}, Ljava/awt/Polygon;->addPoint(II)V

    .line 1317
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1320
    :cond_0
    invoke-virtual {p0, v1}, Lcom/itextpdf/awt/PdfGraphics2D;->fill(Ljava/awt/Shape;)V

    .line 1321
    return-void
.end method

.method public fillRect(IIII)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1224
    new-instance v0, Ljava/awt/Rectangle;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/awt/PdfGraphics2D;->fill(Ljava/awt/Shape;)V

    .line 1225
    return-void
.end method

.method public fillRoundRect(IIIIII)V
    .locals 14
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "arcWidth"
    .parameter "arcHeight"

    .prologue
    .line 1252
    new-instance v1, Ljava/awt/geom/RoundRectangle2D$Double;

    int-to-double v2, p1

    move/from16 v0, p2

    int-to-double v4, v0

    move/from16 v0, p3

    int-to-double v6, v0

    move/from16 v0, p4

    int-to-double v8, v0

    move/from16 v0, p5

    int-to-double v10, v0

    move/from16 v0, p6

    int-to-double v12, v0

    invoke-direct/range {v1 .. v13}, Ljava/awt/geom/RoundRectangle2D$Double;-><init>(DDDDDD)V

    .line 1253
    .local v1, rect:Ljava/awt/geom/RoundRectangle2D;
    invoke-virtual {p0, v1}, Lcom/itextpdf/awt/PdfGraphics2D;->fill(Ljava/awt/Shape;)V

    .line 1254
    return-void
.end method

.method public getBackground()Ljava/awt/Color;
    .locals 1

    .prologue
    .line 965
    iget-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->background:Ljava/awt/Color;

    return-object v0
.end method

.method public getClip()Ljava/awt/Shape;
    .locals 3

    .prologue
    .line 1166
    :try_start_0
    iget-object v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v1}, Ljava/awt/geom/AffineTransform;->createInverse()Ljava/awt/geom/AffineTransform;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/awt/PdfGraphics2D;->clip:Ljava/awt/geom/Area;

    invoke-virtual {v1, v2}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;
    :try_end_0
    .catch Ljava/awt/geom/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1169
    :goto_0
    return-object v1

    .line 1168
    :catch_0
    move-exception v0

    .line 1169
    .local v0, e:Ljava/awt/geom/NoninvertibleTransformException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getClipBounds()Ljava/awt/Rectangle;
    .locals 1

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->clip:Ljava/awt/geom/Area;

    if-nez v0, :cond_0

    .line 1121
    const/4 v0, 0x0

    .line 1122
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/awt/PdfGraphics2D;->getClip()Ljava/awt/Shape;

    move-result-object v0

    invoke-interface {v0}, Ljava/awt/Shape;->getBounds()Ljava/awt/Rectangle;

    move-result-object v0

    goto :goto_0
.end method

.method public getColor()Ljava/awt/Color;
    .locals 1

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->paint:Ljava/awt/Paint;

    instance-of v0, v0, Ljava/awt/Color;

    if-eqz v0, :cond_0

    .line 1039
    iget-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->paint:Ljava/awt/Paint;

    check-cast v0, Ljava/awt/Color;

    .line 1041
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/awt/Color;->black:Ljava/awt/Color;

    goto :goto_0
.end method

.method public getComposite()Ljava/awt/Composite;
    .locals 1

    .prologue
    .line 949
    iget-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->composite:Ljava/awt/Composite;

    return-object v0
.end method

.method public getContent()Lcom/itextpdf/text/pdf/PdfContentByte;
    .locals 1

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    return-object v0
.end method

.method public getDeviceConfiguration()Ljava/awt/GraphicsConfiguration;
    .locals 1

    .prologue
    .line 643
    invoke-direct {p0}, Lcom/itextpdf/awt/PdfGraphics2D;->getDG2()Ljava/awt/Graphics2D;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/Graphics2D;->getDeviceConfiguration()Ljava/awt/GraphicsConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getFont()Ljava/awt/Font;
    .locals 1

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->font:Ljava/awt/Font;

    return-object v0
.end method

.method public getFontMetrics(Ljava/awt/Font;)Ljava/awt/FontMetrics;
    .locals 1
    .parameter "f"

    .prologue
    .line 1112
    invoke-direct {p0}, Lcom/itextpdf/awt/PdfGraphics2D;->getDG2()Ljava/awt/Graphics2D;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/awt/Graphics2D;->getFontMetrics(Ljava/awt/Font;)Ljava/awt/FontMetrics;

    move-result-object v0

    return-object v0
.end method

.method public getFontRenderContext()Ljava/awt/font/FontRenderContext;
    .locals 4

    .prologue
    .line 982
    sget-object v2, Ljava/awt/RenderingHints;->VALUE_TEXT_ANTIALIAS_ON:Ljava/lang/Object;

    sget-object v3, Ljava/awt/RenderingHints;->KEY_TEXT_ANTIALIASING:Ljava/awt/RenderingHints$Key;

    invoke-virtual {p0, v3}, Lcom/itextpdf/awt/PdfGraphics2D;->getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 983
    .local v0, antialias:Z
    sget-object v2, Ljava/awt/RenderingHints;->VALUE_FRACTIONALMETRICS_ON:Ljava/lang/Object;

    sget-object v3, Ljava/awt/RenderingHints;->KEY_FRACTIONALMETRICS:Ljava/awt/RenderingHints$Key;

    invoke-virtual {p0, v3}, Lcom/itextpdf/awt/PdfGraphics2D;->getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 984
    .local v1, fractions:Z
    new-instance v2, Ljava/awt/font/FontRenderContext;

    new-instance v3, Ljava/awt/geom/AffineTransform;

    invoke-direct {v3}, Ljava/awt/geom/AffineTransform;-><init>()V

    invoke-direct {v2, v3, v0, v1}, Ljava/awt/font/FontRenderContext;-><init>(Ljava/awt/geom/AffineTransform;ZZ)V

    return-object v2
.end method

.method public getPaint()Ljava/awt/Paint;
    .locals 1

    .prologue
    .line 937
    iget-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->realPaint:Ljava/awt/Paint;

    if-eqz v0, :cond_0

    .line 938
    iget-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->realPaint:Ljava/awt/Paint;

    .line 940
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->paint:Ljava/awt/Paint;

    goto :goto_0
.end method

.method public getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 828
    iget-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->rhints:Ljava/awt/RenderingHints;

    invoke-virtual {v0, p1}, Ljava/awt/RenderingHints;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRenderingHints()Ljava/awt/RenderingHints;
    .locals 1

    .prologue
    .line 853
    iget-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->rhints:Ljava/awt/RenderingHints;

    return-object v0
.end method

.method public getStroke()Ljava/awt/Stroke;
    .locals 1

    .prologue
    .line 973
    iget-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->originalStroke:Ljava/awt/Stroke;

    return-object v0
.end method

.method public getTransform()Ljava/awt/geom/AffineTransform;
    .locals 2

    .prologue
    .line 928
    new-instance v0, Ljava/awt/geom/AffineTransform;

    iget-object v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-direct {v0, v1}, Ljava/awt/geom/AffineTransform;-><init>(Ljava/awt/geom/AffineTransform;)V

    return-object v0
.end method

.method public hit(Ljava/awt/Rectangle;Ljava/awt/Shape;Z)Z
    .locals 9
    .parameter "rect"
    .parameter "s"
    .parameter "onStroke"

    .prologue
    .line 628
    if-eqz p3, :cond_0

    .line 629
    iget-object v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->stroke:Ljava/awt/Stroke;

    invoke-interface {v1, p2}, Ljava/awt/Stroke;->createStrokedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p2

    .line 631
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v1, p2}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p2

    .line 632
    new-instance v0, Ljava/awt/geom/Area;

    invoke-direct {v0, p2}, Ljava/awt/geom/Area;-><init>(Ljava/awt/Shape;)V

    .line 633
    .local v0, area:Ljava/awt/geom/Area;
    iget-object v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->clip:Ljava/awt/geom/Area;

    if-eqz v1, :cond_1

    .line 634
    iget-object v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->clip:Ljava/awt/geom/Area;

    invoke-virtual {v0, v1}, Ljava/awt/geom/Area;->intersect(Ljava/awt/geom/Area;)V

    .line 635
    :cond_1
    iget v1, p1, Ljava/awt/Rectangle;->x:I

    int-to-double v1, v1

    iget v3, p1, Ljava/awt/Rectangle;->y:I

    int-to-double v3, v3

    iget v5, p1, Ljava/awt/Rectangle;->width:I

    int-to-double v5, v5

    iget v7, p1, Ljava/awt/Rectangle;->height:I

    int-to-double v7, v7

    invoke-virtual/range {v0 .. v8}, Ljava/awt/geom/Area;->intersects(DDDD)Z

    move-result v1

    return v1
.end method

.method protected normalizeMatrix()Ljava/awt/geom/AffineTransform;
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 1549
    const/4 v2, 0x6

    new-array v0, v2, [D

    .line 1550
    .local v0, mx:[D
    invoke-static {v3, v4, v3, v4}, Ljava/awt/geom/AffineTransform;->getTranslateInstance(DD)Ljava/awt/geom/AffineTransform;

    move-result-object v1

    .line 1551
    .local v1, result:Ljava/awt/geom/AffineTransform;
    invoke-virtual {v1, v0}, Ljava/awt/geom/AffineTransform;->getMatrix([D)V

    .line 1552
    const/4 v2, 0x3

    const-wide/high16 v3, -0x4010

    aput-wide v3, v0, v2

    .line 1553
    const/4 v2, 0x5

    iget v3, p0, Lcom/itextpdf/awt/PdfGraphics2D;->height:F

    float-to-double v3, v3

    aput-wide v3, v0, v2

    .line 1554
    new-instance v1, Ljava/awt/geom/AffineTransform;

    .end local v1           #result:Ljava/awt/geom/AffineTransform;
    invoke-direct {v1, v0}, Ljava/awt/geom/AffineTransform;-><init>([D)V

    .line 1555
    .restart local v1       #result:Ljava/awt/geom/AffineTransform;
    iget-object v2, p0, Lcom/itextpdf/awt/PdfGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v1, v2}, Ljava/awt/geom/AffineTransform;->concatenate(Ljava/awt/geom/AffineTransform;)V

    .line 1556
    return-object v1
.end method

.method public rotate(D)V
    .locals 1
    .parameter "theta"

    .prologue
    .line 877
    iget-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v0, p1, p2}, Ljava/awt/geom/AffineTransform;->rotate(D)V

    .line 878
    return-void
.end method

.method public rotate(DDD)V
    .locals 7
    .parameter "theta"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 885
    iget-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Ljava/awt/geom/AffineTransform;->rotate(DDD)V

    .line 886
    return-void
.end method

.method public scale(DD)V
    .locals 1
    .parameter "sx"
    .parameter "sy"

    .prologue
    .line 893
    iget-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    .line 894
    iget-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->originalStroke:Ljava/awt/Stroke;

    invoke-direct {p0, v0}, Lcom/itextpdf/awt/PdfGraphics2D;->transformStroke(Ljava/awt/Stroke;)Ljava/awt/Stroke;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->stroke:Ljava/awt/Stroke;

    .line 895
    return-void
.end method

.method public setBackground(Ljava/awt/Color;)V
    .locals 0
    .parameter "color"

    .prologue
    .line 957
    iput-object p1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->background:Ljava/awt/Color;

    .line 958
    return-void
.end method

.method public setClip(IIII)V
    .locals 9
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1139
    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    int-to-double v1, p1

    int-to-double v3, p2

    int-to-double v5, p3

    int-to-double v7, p4

    invoke-direct/range {v0 .. v8}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    .line 1140
    .local v0, rect:Ljava/awt/geom/Rectangle2D;
    invoke-virtual {p0, v0}, Lcom/itextpdf/awt/PdfGraphics2D;->setClip(Ljava/awt/Shape;)V

    .line 1141
    return-void
.end method

.method public setClip(Ljava/awt/Shape;)V
    .locals 2
    .parameter "s"

    .prologue
    const/4 v1, 0x0

    .line 1178
    iget-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->restoreState()V

    .line 1179
    iget-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->saveState()V

    .line 1180
    if-eqz p1, :cond_0

    .line 1181
    iget-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v0, p1}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p1

    .line 1182
    :cond_0
    if-nez p1, :cond_1

    .line 1183
    iput-object v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->clip:Ljava/awt/geom/Area;

    .line 1189
    :goto_0
    iput-object v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->paintStroke:Ljava/awt/Paint;

    iput-object v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->paintFill:Ljava/awt/Paint;

    .line 1190
    const/16 v0, 0xff

    iput v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->currentStrokeGState:I

    iput v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->currentFillGState:I

    .line 1191
    iget-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->strokeOne:Ljava/awt/BasicStroke;

    iput-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->oldStroke:Ljava/awt/Stroke;

    .line 1192
    return-void

    .line 1186
    :cond_1
    new-instance v0, Ljava/awt/geom/Area;

    invoke-direct {v0, p1}, Ljava/awt/geom/Area;-><init>(Ljava/awt/Shape;)V

    iput-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->clip:Ljava/awt/geom/Area;

    .line 1187
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/awt/PdfGraphics2D;->followPath(Ljava/awt/Shape;I)V

    goto :goto_0
.end method

.method public setColor(Ljava/awt/Color;)V
    .locals 0
    .parameter "color"

    .prologue
    .line 1050
    invoke-virtual {p0, p1}, Lcom/itextpdf/awt/PdfGraphics2D;->setPaint(Ljava/awt/Paint;)V

    .line 1051
    return-void
.end method

.method public setComposite(Ljava/awt/Composite;)V
    .locals 8
    .parameter "comp"

    .prologue
    .line 653
    instance-of v2, p1, Ljava/awt/AlphaComposite;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 655
    check-cast v1, Ljava/awt/AlphaComposite;

    .line 657
    .local v1, composite:Ljava/awt/AlphaComposite;
    invoke-virtual {v1}, Ljava/awt/AlphaComposite;->getRule()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 659
    invoke-virtual {v1}, Ljava/awt/AlphaComposite;->getAlpha()F

    move-result v2

    iput v2, p0, Lcom/itextpdf/awt/PdfGraphics2D;->alpha:F

    .line 660
    iput-object v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->composite:Ljava/awt/Composite;

    .line 662
    iget-object v2, p0, Lcom/itextpdf/awt/PdfGraphics2D;->realPaint:Ljava/awt/Paint;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/itextpdf/awt/PdfGraphics2D;->realPaint:Ljava/awt/Paint;

    instance-of v2, v2, Ljava/awt/Color;

    if-eqz v2, :cond_0

    .line 664
    iget-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->realPaint:Ljava/awt/Paint;

    check-cast v0, Ljava/awt/Color;

    .line 665
    .local v0, c:Ljava/awt/Color;
    new-instance v2, Ljava/awt/Color;

    invoke-virtual {v0}, Ljava/awt/Color;->getRed()I

    move-result v3

    invoke-virtual {v0}, Ljava/awt/Color;->getGreen()I

    move-result v4

    invoke-virtual {v0}, Ljava/awt/Color;->getBlue()I

    move-result v5

    invoke-virtual {v0}, Ljava/awt/Color;->getAlpha()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/itextpdf/awt/PdfGraphics2D;->alpha:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/awt/Color;-><init>(IIII)V

    iput-object v2, p0, Lcom/itextpdf/awt/PdfGraphics2D;->paint:Ljava/awt/Paint;

    .line 675
    .end local v0           #c:Ljava/awt/Color;
    .end local v1           #composite:Ljava/awt/AlphaComposite;
    :cond_0
    :goto_0
    return-void

    .line 672
    :cond_1
    iput-object p1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->composite:Ljava/awt/Composite;

    .line 673
    const/high16 v2, 0x3f80

    iput v2, p0, Lcom/itextpdf/awt/PdfGraphics2D;->alpha:F

    goto :goto_0
.end method

.method public setFont(Ljava/awt/Font;)V
    .locals 1
    .parameter "f"

    .prologue
    .line 1083
    if-nez p1, :cond_1

    .line 1094
    :cond_0
    :goto_0
    return-void

    .line 1085
    :cond_1
    iget-boolean v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->onlyShapes:Z

    if-eqz v0, :cond_2

    .line 1086
    iput-object p1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->font:Ljava/awt/Font;

    goto :goto_0

    .line 1089
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->font:Ljava/awt/Font;

    if-eq p1, v0, :cond_0

    .line 1091
    iput-object p1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->font:Ljava/awt/Font;

    .line 1092
    invoke-virtual {p1}, Ljava/awt/Font;->getSize2D()F

    move-result v0

    iput v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->fontSize:F

    .line 1093
    invoke-direct {p0, p1}, Lcom/itextpdf/awt/PdfGraphics2D;->getCachedBaseFont(Ljava/awt/Font;)Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    goto :goto_0
.end method

.method public setPaint(Ljava/awt/Paint;)V
    .locals 8
    .parameter "paint"

    .prologue
    .line 683
    if-nez p1, :cond_1

    .line 699
    :cond_0
    :goto_0
    return-void

    .line 685
    :cond_1
    iput-object p1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->paint:Ljava/awt/Paint;

    .line 686
    iput-object p1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->realPaint:Ljava/awt/Paint;

    .line 688
    iget-object v2, p0, Lcom/itextpdf/awt/PdfGraphics2D;->composite:Ljava/awt/Composite;

    instance-of v2, v2, Ljava/awt/AlphaComposite;

    if-eqz v2, :cond_0

    instance-of v2, p1, Ljava/awt/Color;

    if-eqz v2, :cond_0

    .line 690
    iget-object v1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->composite:Ljava/awt/Composite;

    check-cast v1, Ljava/awt/AlphaComposite;

    .line 692
    .local v1, co:Ljava/awt/AlphaComposite;
    invoke-virtual {v1}, Ljava/awt/AlphaComposite;->getRule()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 693
    check-cast v0, Ljava/awt/Color;

    .line 694
    .local v0, c:Ljava/awt/Color;
    new-instance v2, Ljava/awt/Color;

    invoke-virtual {v0}, Ljava/awt/Color;->getRed()I

    move-result v3

    invoke-virtual {v0}, Ljava/awt/Color;->getGreen()I

    move-result v4

    invoke-virtual {v0}, Ljava/awt/Color;->getBlue()I

    move-result v5

    invoke-virtual {v0}, Ljava/awt/Color;->getAlpha()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/itextpdf/awt/PdfGraphics2D;->alpha:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/awt/Color;-><init>(IIII)V

    iput-object v2, p0, Lcom/itextpdf/awt/PdfGraphics2D;->paint:Ljava/awt/Paint;

    .line 695
    iput-object p1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->realPaint:Ljava/awt/Paint;

    goto :goto_0
.end method

.method public setPaintMode()V
    .locals 0

    .prologue
    .line 1057
    return-void
.end method

.method public setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 808
    if-eqz p2, :cond_0

    .line 809
    iget-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->rhints:Ljava/awt/RenderingHints;

    invoke-virtual {v0, p1, p2}, Ljava/awt/RenderingHints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    :goto_0
    return-void

    .line 811
    :cond_0
    instance-of v0, p1, Lcom/itextpdf/awt/PdfGraphics2D$HyperLinkKey;

    if-eqz v0, :cond_1

    .line 813
    iget-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->rhints:Ljava/awt/RenderingHints;

    sget-object v1, Lcom/itextpdf/awt/PdfGraphics2D$HyperLinkKey;->VALUE_HYPERLINKKEY_OFF:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/awt/RenderingHints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 817
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->rhints:Ljava/awt/RenderingHints;

    invoke-virtual {v0, p1}, Ljava/awt/RenderingHints;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setRenderingHints(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 836
    .local p1, hints:Ljava/util/Map;,"Ljava/util/Map<**>;"
    iget-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->rhints:Ljava/awt/RenderingHints;

    invoke-virtual {v0}, Ljava/awt/RenderingHints;->clear()V

    .line 837
    iget-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->rhints:Ljava/awt/RenderingHints;

    invoke-virtual {v0, p1}, Ljava/awt/RenderingHints;->putAll(Ljava/util/Map;)V

    .line 838
    return-void
.end method

.method public setStroke(Ljava/awt/Stroke;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 796
    iput-object p1, p0, Lcom/itextpdf/awt/PdfGraphics2D;->originalStroke:Ljava/awt/Stroke;

    .line 797
    invoke-direct {p0, p1}, Lcom/itextpdf/awt/PdfGraphics2D;->transformStroke(Ljava/awt/Stroke;)Ljava/awt/Stroke;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->stroke:Ljava/awt/Stroke;

    .line 798
    return-void
.end method

.method public setTransform(Ljava/awt/geom/AffineTransform;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 919
    new-instance v0, Ljava/awt/geom/AffineTransform;

    invoke-direct {v0, p1}, Ljava/awt/geom/AffineTransform;-><init>(Ljava/awt/geom/AffineTransform;)V

    iput-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    .line 920
    iget-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->originalStroke:Ljava/awt/Stroke;

    invoke-direct {p0, v0}, Lcom/itextpdf/awt/PdfGraphics2D;->transformStroke(Ljava/awt/Stroke;)Ljava/awt/Stroke;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->stroke:Ljava/awt/Stroke;

    .line 921
    return-void
.end method

.method public setXORMode(Ljava/awt/Color;)V
    .locals 0
    .parameter "c1"

    .prologue
    .line 1065
    return-void
.end method

.method public shear(DD)V
    .locals 1
    .parameter "shx"
    .parameter "shy"

    .prologue
    .line 902
    iget-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/awt/geom/AffineTransform;->shear(DD)V

    .line 903
    return-void
.end method

.method public transform(Ljava/awt/geom/AffineTransform;)V
    .locals 1
    .parameter "tx"

    .prologue
    .line 910
    iget-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v0, p1}, Ljava/awt/geom/AffineTransform;->concatenate(Ljava/awt/geom/AffineTransform;)V

    .line 911
    iget-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->originalStroke:Ljava/awt/Stroke;

    invoke-direct {p0, v0}, Lcom/itextpdf/awt/PdfGraphics2D;->transformStroke(Ljava/awt/Stroke;)Ljava/awt/Stroke;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->stroke:Ljava/awt/Stroke;

    .line 912
    return-void
.end method

.method public translate(DD)V
    .locals 1
    .parameter "tx"
    .parameter "ty"

    .prologue
    .line 869
    iget-object v0, p0, Lcom/itextpdf/awt/PdfGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    .line 870
    return-void
.end method

.method public translate(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 861
    int-to-double v0, p1

    int-to-double v2, p2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itextpdf/awt/PdfGraphics2D;->translate(DD)V

    .line 862
    return-void
.end method

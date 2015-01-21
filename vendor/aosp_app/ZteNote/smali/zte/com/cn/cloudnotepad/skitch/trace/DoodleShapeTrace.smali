.class public Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;
.super Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;
.source "DoodleShapeTrace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$zte$com$cn$cloudnotepad$skitch$trace$DoodleShapeTrace$ShapeType:[I


# instance fields
.field public degree:D

.field public mBounds:Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;

.field private mBoundsRect:Landroid/graphics/RectF;

.field public mPointFirst:Landroid/graphics/PointF;

.field public mPointLast:Landroid/graphics/PointF;

.field private mRect:Landroid/graphics/RectF;

.field public mType:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;


# direct methods
.method static synthetic $SWITCH_TABLE$zte$com$cn$cloudnotepad$skitch$trace$DoodleShapeTrace$ShapeType()[I
    .locals 3

    .prologue
    .line 12
    sget-object v0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->$SWITCH_TABLE$zte$com$cn$cloudnotepad$skitch$trace$DoodleShapeTrace$ShapeType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;->values()[Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;->ARROW:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;->ELLIPSE:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;->LINE:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;->RECT:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->$SWITCH_TABLE$zte$com$cn$cloudnotepad$skitch$trace$DoodleShapeTrace$ShapeType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;)V
    .locals 2
    .parameter "type"

    .prologue
    .line 30
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;-><init>()V

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->degree:D

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "in DoodleShapeTrace() , mTracePath = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mType:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;

    .line 33
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mRect:Landroid/graphics/RectF;

    .line 34
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointFirst:Landroid/graphics/PointF;

    .line 35
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointLast:Landroid/graphics/PointF;

    .line 37
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mBoundsRect:Landroid/graphics/RectF;

    .line 39
    invoke-virtual {p0, p1}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->setBoundsByType(Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;)V

    .line 40
    return-void
.end method


# virtual methods
.method public buildArrowPath(FFFFI)V
    .locals 12
    .parameter "sx"
    .parameter "sy"
    .parameter "ex"
    .parameter "ey"
    .parameter "alpha"

    .prologue
    .line 316
    const-wide/16 v1, 0x0

    .line 317
    .local v1, angle:D
    sub-float v8, p3, p1

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_0

    .line 318
    const-wide v1, 0x3ff921fb54442d18L

    .line 324
    :goto_0
    sub-float v8, p3, p1

    sub-float v9, p3, p1

    mul-float/2addr v8, v9

    sub-float v9, p4, p2

    .line 325
    sub-float v10, p4, p2

    mul-float/2addr v9, v10

    .line 324
    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    .line 325
    const/high16 v9, 0x4040

    .line 324
    div-float v3, v8, v9

    .line 326
    .local v3, len:F
    const/high16 v8, 0x4220

    invoke-static {v3, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 328
    const-wide v8, 0x400921fb54442d18L

    move/from16 v0, p5

    int-to-double v10, v0

    mul-double/2addr v8, v10

    const-wide v10, 0x4066800000000000L

    div-double/2addr v8, v10

    add-double/2addr v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v8, v3

    sub-float v4, p3, v8

    .line 329
    .local v4, p1_x:F
    const-wide v8, 0x400921fb54442d18L

    move/from16 v0, p5

    int-to-double v10, v0

    mul-double/2addr v8, v10

    const-wide v10, 0x4066800000000000L

    div-double/2addr v8, v10

    add-double/2addr v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v8, v3

    sub-float v5, p4, v8

    .line 331
    .local v5, p1_y:F
    const-wide v8, 0x400921fb54442d18L

    move/from16 v0, p5

    int-to-double v10, v0

    mul-double/2addr v8, v10

    const-wide v10, 0x4066800000000000L

    div-double/2addr v8, v10

    sub-double v8, v1, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v8, v3

    sub-float v6, p3, v8

    .line 332
    .local v6, p2_x:F
    const-wide v8, 0x400921fb54442d18L

    move/from16 v0, p5

    int-to-double v10, v0

    mul-double/2addr v8, v10

    const-wide v10, 0x4066800000000000L

    div-double/2addr v8, v10

    sub-double v8, v1, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v8, v3

    sub-float v7, p4, v8

    .line 334
    .local v7, p2_y:F
    iget-object v8, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPath:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    .line 335
    iget-object v8, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPath:Landroid/graphics/Path;

    invoke-virtual {v8, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 336
    iget-object v8, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPath:Landroid/graphics/Path;

    move/from16 v0, p4

    invoke-virtual {v8, p3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 337
    iget-object v8, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPath:Landroid/graphics/Path;

    invoke-virtual {v8, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 338
    iget-object v8, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPath:Landroid/graphics/Path;

    move/from16 v0, p4

    invoke-virtual {v8, p3, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 339
    iget-object v8, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPath:Landroid/graphics/Path;

    invoke-virtual {v8, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 340
    return-void

    .line 320
    .end local v3           #len:F
    .end local v4           #p1_x:F
    .end local v5           #p1_y:F
    .end local v6           #p2_x:F
    .end local v7           #p2_y:F
    :cond_0
    sub-float v8, p4, p2

    float-to-double v8, v8

    sub-float v10, p3, p1

    float-to-double v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    goto/16 :goto_0
.end method

.method public buildPath()V
    .locals 6

    .prologue
    .line 179
    const-string v0, "buildPath "

    invoke-static {p0, v0}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 181
    invoke-static {}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->$SWITCH_TABLE$zte$com$cn$cloudnotepad$skitch$trace$DoodleShapeTrace$ShapeType()[I

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mType:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 196
    :goto_0
    return-void

    .line 183
    :pswitch_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mRect:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto :goto_0

    .line 186
    :pswitch_1
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mRect:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto :goto_0

    .line 189
    :pswitch_2
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointFirst:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointFirst:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 190
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointLast:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointLast:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    .line 193
    :pswitch_3
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointFirst:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointFirst:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointLast:Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointLast:Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->y:F

    const/16 v5, 0x1e

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->buildArrowPath(FFFFI)V

    goto :goto_0

    .line 181
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public calcBounds()V
    .locals 4

    .prologue
    .line 89
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mBounds:Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;->setAnchorLen(F)V

    .line 90
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mType:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;

    sget-object v2, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;->LINE:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mType:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;

    sget-object v2, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;->ARROW:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;

    if-ne v1, v2, :cond_2

    .line 91
    :cond_0
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mBounds:Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;

    check-cast v1, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointFirst:Landroid/graphics/PointF;

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointLast:Landroid/graphics/PointF;

    invoke-virtual {v1, v2, v3}, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->setPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 101
    :cond_1
    :goto_0
    return-void

    .line 92
    :cond_2
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mType:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;

    sget-object v2, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;->ELLIPSE:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mType:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;

    sget-object v2, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;->RECT:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;

    if-ne v1, v2, :cond_1

    .line 93
    :cond_3
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mBoundsRect:Landroid/graphics/RectF;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 94
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    const/high16 v2, 0x4000

    div-float v0, v1, v2

    .line 95
    .local v0, padding:F
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mBoundsRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 96
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mBoundsRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 97
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mBoundsRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 98
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mBoundsRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 99
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mBounds:Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;

    check-cast v1, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mBoundsRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->setRect(Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method public continueTrace(FF)V
    .locals 4
    .parameter "fx"
    .parameter "fy"

    .prologue
    const/high16 v3, 0x4000

    .line 125
    invoke-super {p0, p1, p2}, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;->continueTrace(FF)V

    .line 126
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointLast:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->getLastX()F

    move-result v1

    add-float/2addr v1, p1

    div-float/2addr v1, v3

    .line 127
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->getLastY()F

    move-result v2

    add-float/2addr v2, p2

    div-float/2addr v2, v3

    .line 126
    invoke-virtual {p0, v0, v1, v2}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->setPointF(Landroid/graphics/PointF;FF)V

    .line 128
    return-void
.end method

.method public drawAL(FFFFLandroid/graphics/Canvas;)V
    .locals 42
    .parameter "sx"
    .parameter "sy"
    .parameter "ex"
    .parameter "ey"
    .parameter "canvas"

    .prologue
    .line 219
    const-wide/high16 v19, 0x4020

    .line 220
    .local v19, H:D
    const-wide/high16 v21, 0x400c

    .line 221
    .local v21, L:D
    const/16 v30, 0x0

    .line 222
    .local v30, x3:I
    const/16 v36, 0x0

    .line 223
    .local v36, y3:I
    const/16 v31, 0x0

    .line 224
    .local v31, x4:I
    const/16 v37, 0x0

    .line 225
    .local v37, y4:I
    div-double v3, v21, v19

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v6

    .line 226
    .local v6, awrad:D
    mul-double v3, v21, v21

    mul-double v11, v19, v19

    add-double/2addr v3, v11

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    .line 227
    .local v9, arraow_len:D
    sub-float v4, p3, p1

    sub-float v5, p4, p2

    const/4 v8, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->rotateVec(FFDZD)[D

    move-result-object v27

    .line 228
    .local v27, arrXY_1:[D
    sub-float v12, p3, p1

    sub-float v13, p4, p2

    neg-double v14, v6

    const/16 v16, 0x1

    move-object/from16 v11, p0

    move-wide/from16 v17, v9

    invoke-virtual/range {v11 .. v18}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->rotateVec(FFDZD)[D

    move-result-object v28

    .line 229
    .local v28, arrXY_2:[D
    move/from16 v0, p3

    float-to-double v3, v0

    const/4 v5, 0x0

    aget-wide v11, v27, v5

    sub-double v32, v3, v11

    .line 230
    .local v32, x_3:D
    move/from16 v0, p4

    float-to-double v3, v0

    const/4 v5, 0x1

    aget-wide v11, v27, v5

    sub-double v38, v3, v11

    .line 231
    .local v38, y_3:D
    move/from16 v0, p3

    float-to-double v3, v0

    const/4 v5, 0x0

    aget-wide v11, v28, v5

    sub-double v34, v3, v11

    .line 232
    .local v34, x_4:D
    move/from16 v0, p4

    float-to-double v3, v0

    const/4 v5, 0x1

    aget-wide v11, v28, v5

    sub-double v40, v3, v11

    .line 233
    .local v40, y_4:D
    new-instance v23, Ljava/lang/Double;

    move-object/from16 v0, v23

    move-wide/from16 v1, v32

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    .line 234
    .local v23, X3:Ljava/lang/Double;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Double;->intValue()I

    move-result v30

    .line 235
    new-instance v25, Ljava/lang/Double;

    move-object/from16 v0, v25

    move-wide/from16 v1, v38

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    .line 236
    .local v25, Y3:Ljava/lang/Double;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Double;->intValue()I

    move-result v36

    .line 237
    new-instance v24, Ljava/lang/Double;

    move-object/from16 v0, v24

    move-wide/from16 v1, v34

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    .line 238
    .local v24, X4:Ljava/lang/Double;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Double;->intValue()I

    move-result v31

    .line 239
    new-instance v26, Ljava/lang/Double;

    move-object/from16 v0, v26

    move-wide/from16 v1, v40

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    .line 240
    .local v26, Y4:Ljava/lang/Double;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Double;->intValue()I

    move-result v37

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v11, p5

    move/from16 v12, p1

    move/from16 v13, p2

    move/from16 v14, p3

    move/from16 v15, p4

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 243
    new-instance v29, Landroid/graphics/Path;

    invoke-direct/range {v29 .. v29}, Landroid/graphics/Path;-><init>()V

    .line 244
    .local v29, triangle:Landroid/graphics/Path;
    move-object/from16 v0, v29

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 245
    move/from16 v0, v30

    int-to-float v3, v0

    move/from16 v0, v36

    int-to-float v4, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 246
    move/from16 v0, v31

    int-to-float v3, v0

    move/from16 v0, v37

    int-to-float v4, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 247
    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Path;->close()V

    .line 248
    move-object/from16 v0, p0

    iget-object v3, v0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p5

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 250
    return-void
.end method

.method public drawArrow(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 214
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 216
    return-void
.end method

.method public drawArrow(Landroid/graphics/Canvas;FFFF)V
    .locals 24
    .parameter "canvas"
    .parameter "sx"
    .parameter "sy"
    .parameter "ex"
    .parameter "ey"

    .prologue
    .line 270
    sub-float v19, p4, p2

    sub-float v20, p4, p2

    mul-float v19, v19, v20

    sub-float v20, p5, p3

    .line 271
    sub-float v21, p5, p3

    mul-float v20, v20, v21

    .line 270
    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v15, v0

    .line 273
    .local v15, length:F
    const-wide v3, 0x3fe0c152382d7365L

    .line 274
    .local v3, angle:D
    const/high16 v19, 0x4040

    div-float v18, v15, v19

    .line 276
    .local v18, side_len:F
    const/4 v13, 0x0

    .line 277
    .local v13, arr_top_x:F
    move v14, v15

    .line 279
    .local v14, arr_top_y:F
    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v19, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    mul-float v7, v19, v20

    .line 280
    .local v7, arr_left_outer_x:F
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v18

    sub-float v8, v15, v19

    .line 282
    .local v8, arr_left_outer_y:F
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    mul-float v11, v18, v19

    .line 283
    .local v11, arr_right_outer_x:F
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v18

    sub-float v12, v15, v19

    .line 285
    .local v12, arr_right_outer_y:F
    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v19, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    const/high16 v20, 0x4000

    div-float v5, v19, v20

    .line 286
    .local v5, arr_left_inner_x:F
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v18

    .line 287
    const/high16 v20, 0x4040

    mul-float v19, v19, v20

    const/high16 v20, 0x4080

    div-float v19, v19, v20

    .line 286
    sub-float v6, v15, v19

    .line 289
    .local v6, arr_left_inner_y:F
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v18

    const/high16 v20, 0x4000

    div-float v9, v19, v20

    .line 290
    .local v9, arr_right_inner_x:F
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v18

    .line 291
    const/high16 v20, 0x4040

    mul-float v19, v19, v20

    const/high16 v20, 0x4080

    div-float v19, v19, v20

    .line 290
    sub-float v10, v15, v19

    .line 293
    .local v10, arr_right_inner_y:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPath:Landroid/graphics/Path;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Path;->reset()V

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPath:Landroid/graphics/Path;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Path;->moveTo(FF)V

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPath:Landroid/graphics/Path;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPath:Landroid/graphics/Path;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPath:Landroid/graphics/Path;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPath:Landroid/graphics/Path;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPath:Landroid/graphics/Path;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    sget-object v20, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 303
    new-instance v16, Landroid/graphics/Matrix;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Matrix;-><init>()V

    .line 304
    .local v16, matrix:Landroid/graphics/Matrix;
    sub-float v19, p4, p2

    sub-float v20, p5, p3

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->atan(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v17, v0

    .line 305
    .local v17, rotDegree:F
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "rotate degree : "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/high16 v20, 0x4334

    mul-float v20, v20, v17

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x400921fb54442d18L

    div-double v20, v20, v22

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 307
    move-object/from16 v0, v16

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPath:Landroid/graphics/Path;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPath:Landroid/graphics/Path;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 311
    return-void
.end method

.method public drawBounds(Landroid/graphics/Canvas;F)V
    .locals 1
    .parameter "canvas"
    .parameter "scale"

    .prologue
    .line 146
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->calcBounds()V

    .line 147
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mBounds:Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;

    invoke-virtual {v0, p1}, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;->draw(Landroid/graphics/Canvas;)V

    .line 148
    return-void
.end method

.method public drawShape(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 199
    invoke-static {}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->$SWITCH_TABLE$zte$com$cn$cloudnotepad$skitch$trace$DoodleShapeTrace$ShapeType()[I

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mType:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 209
    :goto_0
    return-void

    .line 203
    :pswitch_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 206
    :pswitch_1
    invoke-virtual {p0, p1}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->drawArrow(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 199
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public drawTrace(Landroid/graphics/Canvas;F)V
    .locals 5
    .parameter "canvas"
    .parameter "scale"

    .prologue
    const/4 v3, 0x1

    .line 152
    const-string v2, "in DoodleShapeTrace drawTrace() "

    invoke-static {p0, v2}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0, p1}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->setValidEndPoint(Landroid/graphics/Canvas;)V

    .line 154
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->setRectF()V

    .line 155
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->buildPath()V

    .line 157
    new-instance v2, Landroid/graphics/PaintFlagsDrawFilter;

    invoke-direct {v2, v3, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 158
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 159
    .local v0, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v0, p2, p2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 160
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 161
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 162
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    .line 163
    .local v1, width:F
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPaint:Landroid/graphics/Paint;

    mul-float v3, v1, p2

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 165
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 166
    iget-wide v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->degree:D

    double-to-float v2, v2

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 168
    invoke-virtual {p0, p1}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->drawShape(Landroid/graphics/Canvas;)V

    .line 170
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 172
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 175
    return-void
.end method

.method public getBounds()Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mBounds:Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;

    return-object v0
.end method

.method public getShapeTracePath()Landroid/graphics/Path;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointFirst:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointLast:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointFirst:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointLast:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 139
    const/4 v0, 0x1

    .line 141
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public rotateVec(FFDZD)[D
    .locals 13
    .parameter "px"
    .parameter "py"
    .parameter "ang"
    .parameter "isChLen"
    .parameter "newLen"

    .prologue
    .line 255
    const/4 v7, 0x2

    new-array v2, v7, [D

    .line 257
    .local v2, mathstr:[D
    float-to-double v7, p1

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    float-to-double v9, p2

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double/2addr v9, v11

    sub-double v3, v7, v9

    .line 258
    .local v3, vx:D
    float-to-double v7, p1

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    float-to-double v9, p2

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v9, v11

    add-double v5, v7, v9

    .line 259
    .local v5, vy:D
    if-eqz p5, :cond_0

    .line 260
    mul-double v7, v3, v3

    mul-double v9, v5, v5

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 261
    .local v0, d:D
    div-double v7, v3, v0

    mul-double v3, v7, p6

    .line 262
    div-double v7, v5, v0

    mul-double v5, v7, p6

    .line 263
    const/4 v7, 0x0

    aput-wide v3, v2, v7

    .line 264
    const/4 v7, 0x1

    aput-wide v5, v2, v7

    .line 266
    .end local v0           #d:D
    :cond_0
    return-object v2
.end method

.method public setBoundsByType(Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 79
    sget-object v0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;->LINE:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;->ARROW:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;

    if-ne p1, v0, :cond_2

    .line 80
    :cond_0
    new-instance v0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;

    invoke-direct {v0}, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mBounds:Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;

    .line 84
    :cond_1
    :goto_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mBounds:Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;

    invoke-virtual {v0, p0}, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;->setDoodleShapeTrace(Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;)V

    .line 85
    return-void

    .line 81
    :cond_2
    sget-object v0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;->ELLIPSE:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;

    if-eq p1, v0, :cond_3

    sget-object v0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;->RECT:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;

    if-ne p1, v0, :cond_1

    .line 82
    :cond_3
    new-instance v0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;

    invoke-direct {v0}, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mBounds:Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;

    goto :goto_0
.end method

.method public setPointF(Landroid/graphics/PointF;FF)V
    .locals 0
    .parameter "point"
    .parameter "fx"
    .parameter "fy"

    .prologue
    .line 111
    iput p2, p1, Landroid/graphics/PointF;->x:F

    .line 112
    iput p3, p1, Landroid/graphics/PointF;->y:F

    .line 113
    return-void
.end method

.method public setRectF()V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointFirst:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointLast:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 105
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointFirst:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointLast:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 106
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointFirst:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointLast:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 107
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointFirst:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointLast:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 108
    return-void
.end method

.method public setValidEndPoint(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 117
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    const/high16 v2, 0x4000

    div-float v0, v1, v2

    .line 118
    .local v0, padding:F
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointLast:Landroid/graphics/PointF;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointLast:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 119
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    .line 118
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 120
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointLast:Landroid/graphics/PointF;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointLast:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 121
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    .line 120
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 122
    return-void
.end method

.method public startTrace(FF)V
    .locals 1
    .parameter "fx"
    .parameter "fy"

    .prologue
    .line 131
    invoke-super {p0, p1, p2}, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;->startTrace(FF)V

    .line 132
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointFirst:Landroid/graphics/PointF;

    invoke-virtual {p0, v0, p1, p2}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->setPointF(Landroid/graphics/PointF;FF)V

    .line 133
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointLast:Landroid/graphics/PointF;

    invoke-virtual {p0, v0, p1, p2}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->setPointF(Landroid/graphics/PointF;FF)V

    .line 134
    return-void
.end method

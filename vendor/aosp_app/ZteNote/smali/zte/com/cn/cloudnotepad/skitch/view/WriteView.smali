.class public Lzte/com/cn/cloudnotepad/skitch/view/WriteView;
.super Landroid/widget/ImageView;
.source "WriteView.java"

# interfaces
.implements Lzte/com/cn/cloudnotepad/skitch/iface/IWrite;
.implements Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts$HandWrite;


# instance fields
.field public curTrace:Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;

.field private mBaseTime:J

.field private mDotBitmap:Landroid/graphics/Bitmap;

.field private mHandWriteCanvas:Lzte/com/cn/cloudnotepad/skitch/iface/IHandWrite;

.field private mMonitor:Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;

.field private mOldColor:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPaperBitmap:Landroid/graphics/Bitmap;

.field private mPaperCanvas:Landroid/graphics/Canvas;

.field private mPointList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private mSpeedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private traceManager:Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    const/high16 v0, -0x100

    iput v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mOldColor:I

    .line 59
    invoke-virtual {p0, p1}, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->init(Landroid/content/Context;)V

    .line 60
    return-void
.end method

.method private drawBitmapCanvas()V
    .locals 41

    .prologue
    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mPointList:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v35

    const/16 v36, 0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_1

    .line 282
    :cond_0
    return-void

    .line 246
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mPointList:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mPointList:Ljava/util/ArrayList;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v36

    add-int/lit8 v36, v36, -0x2

    invoke-virtual/range {v35 .. v36}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    .line 247
    .local v5, P1:Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mPointList:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mPointList:Ljava/util/ArrayList;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v36

    add-int/lit8 v36, v36, -0x1

    invoke-virtual/range {v35 .. v36}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    .line 248
    .local v6, P2:Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mSpeedList:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mPointList:Ljava/util/ArrayList;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v36

    add-int/lit8 v36, v36, -0x2

    invoke-virtual/range {v35 .. v36}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/Float;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 249
    .local v7, S1:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mSpeedList:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mPointList:Ljava/util/ArrayList;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v36

    add-int/lit8 v36, v36, -0x1

    invoke-virtual/range {v35 .. v36}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/Float;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .line 250
    .local v9, S2:F
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->getPointSize(F)F

    move-result v8

    .line 251
    .local v8, S1_Size:F
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->getPointSize(F)F

    move-result v10

    .line 252
    .local v10, S2_Size:F
    iget v0, v6, Landroid/graphics/PointF;->x:F

    move/from16 v35, v0

    iget v0, v5, Landroid/graphics/PointF;->x:F

    move/from16 v36, v0

    sub-float v35, v35, v36

    move/from16 v0, v35

    float-to-double v0, v0

    move-wide/from16 v35, v0

    const-wide/high16 v37, 0x4000

    invoke-static/range {v35 .. v38}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v35

    iget v0, v6, Landroid/graphics/PointF;->y:F

    move/from16 v37, v0

    iget v0, v5, Landroid/graphics/PointF;->y:F

    move/from16 v38, v0

    sub-float v37, v37, v38

    move/from16 v0, v37

    float-to-double v0, v0

    move-wide/from16 v37, v0

    const-wide/high16 v39, 0x4000

    invoke-static/range {v37 .. v40}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v37

    add-double v35, v35, v37

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v15

    .line 253
    .local v15, distance:D
    double-to-int v0, v15

    move/from16 v35, v0

    div-int/lit8 v17, v35, 0x2

    .line 254
    .local v17, halfDis:I
    iget v0, v6, Landroid/graphics/PointF;->x:F

    move/from16 v35, v0

    iget v0, v5, Landroid/graphics/PointF;->x:F

    move/from16 v36, v0

    sub-float v35, v35, v36

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v36, v0

    div-float v33, v35, v36

    .line 255
    .local v33, xRation:F
    iget v0, v6, Landroid/graphics/PointF;->y:F

    move/from16 v35, v0

    iget v0, v5, Landroid/graphics/PointF;->y:F

    move/from16 v36, v0

    sub-float v35, v35, v36

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v36, v0

    div-float v34, v35, v36

    .line 256
    .local v34, yRation:F
    sub-float v35, v10, v8

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v36, v0

    div-float v28, v35, v36

    .line 257
    .local v28, sizeRation:F
    const/16 v18, 0x0

    .local v18, j:I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    .line 258
    iget v0, v5, Landroid/graphics/PointF;->x:F

    move/from16 v35, v0

    const/high16 v36, 0x4000

    div-float v36, v8, v36

    sub-float v19, v35, v36

    .line 259
    .local v19, l1:F
    const/high16 v35, 0x4000

    div-float v35, v28, v35

    sub-float v20, v33, v35

    .line 260
    .local v20, l2:F
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v35, v0

    mul-float v21, v20, v35

    .line 261
    .local v21, l3:F
    add-float v35, v19, v21

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v22, v0

    .line 262
    .local v22, left:I
    iget v0, v5, Landroid/graphics/PointF;->y:F

    move/from16 v35, v0

    const/high16 v36, 0x4000

    div-float v36, v8, v36

    sub-float v29, v35, v36

    .line 263
    .local v29, t1:F
    const/high16 v35, 0x4000

    div-float v35, v28, v35

    sub-float v30, v34, v35

    .line 264
    .local v30, t2:F
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v35, v0

    mul-float v31, v30, v35

    .line 265
    .local v31, t3:F
    add-float v35, v29, v31

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v32, v0

    .line 267
    .local v32, top:I
    iget v0, v5, Landroid/graphics/PointF;->x:F

    move/from16 v35, v0

    const/high16 v36, 0x4000

    div-float v36, v8, v36

    add-float v23, v35, v36

    .line 268
    .local v23, r1:F
    const/high16 v35, 0x4000

    div-float v35, v28, v35

    add-float v24, v33, v35

    .line 269
    .local v24, r2:F
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v35, v0

    mul-float v25, v24, v35

    .line 270
    .local v25, r3:F
    add-float v35, v23, v25

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v27, v0

    .line 272
    .local v27, right:I
    iget v0, v5, Landroid/graphics/PointF;->y:F

    move/from16 v35, v0

    const/high16 v36, 0x4000

    div-float v36, v8, v36

    add-float v11, v35, v36

    .line 273
    .local v11, b1:F
    const/high16 v35, 0x4000

    div-float v35, v28, v35

    add-float v12, v34, v35

    .line 274
    .local v12, b2:F
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v35, v0

    mul-float v13, v12, v35

    .line 275
    .local v13, b3:F
    add-float v35, v11, v13

    move/from16 v0, v35

    float-to-int v14, v0

    .line 276
    .local v14, bottom:I
    new-instance v26, Landroid/graphics/Rect;

    move-object/from16 v0, v26

    move/from16 v1, v22

    move/from16 v2, v32

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 277
    .local v26, rect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mPaperCanvas:Landroid/graphics/Canvas;

    move-object/from16 v35, v0

    if-eqz v35, :cond_2

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mPaperCanvas:Landroid/graphics/Canvas;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mDotBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v26

    move-object/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 280
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->invalidate(Landroid/graphics/Rect;)V

    .line 257
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0
.end method

.method private drawBrush()V
    .locals 6

    .prologue
    .line 221
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mPointList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_0

    .line 222
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mSpeedList:Ljava/util/ArrayList;

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mPointList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 223
    .local v0, speed1:F
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mSpeedList:Ljava/util/ArrayList;

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mPointList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 224
    .local v1, speed2:F
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mSpeedList:Ljava/util/ArrayList;

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mPointList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 225
    .local v2, speed3:F
    add-float v3, v0, v2

    cmpl-float v3, v1, v3

    if-lez v3, :cond_0

    .line 226
    add-float v3, v0, v2

    const/high16 v4, 0x4000

    div-float v1, v3, v4

    .line 227
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mSpeedList:Ljava/util/ArrayList;

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mPointList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 230
    .end local v0           #speed1:F
    .end local v1           #speed2:F
    .end local v2           #speed3:F
    :cond_0
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->drawBitmapCanvas()V

    .line 231
    return-void
.end method

.method private getBitmapWithTopPadding(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "bitmap"
    .parameter "top_padding"

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/2addr v3, p2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 91
    .local v1, newBitmap:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 92
    .local v0, canvas:Landroid/graphics/Canvas;
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 93
    const/4 v2, 0x0

    int-to-float v3, p2

    const/4 v4, 0x0

    invoke-virtual {v0, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 94
    return-object v1
.end method

.method private getPointSize(F)F
    .locals 5
    .parameter "speed"

    .prologue
    .line 234
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mHandWriteCanvas:Lzte/com/cn/cloudnotepad/skitch/iface/IHandWrite;

    invoke-interface {v4}, Lzte/com/cn/cloudnotepad/skitch/iface/IHandWrite;->getPaintWidth()F

    move-result v3

    .line 235
    .local v3, paintWidth:F
    const/high16 v4, 0x4000

    mul-float v0, v3, v4

    .line 236
    .local v0, f1:F
    const/high16 v4, 0x4100

    mul-float v1, v4, p1

    .line 237
    .local v1, f2:F
    sub-float v2, v0, v1

    .line 239
    .local v2, f3:F
    cmpg-float v4, v2, v3

    if-gez v4, :cond_0

    .end local v3           #paintWidth:F
    :goto_0
    return v3

    .restart local v3       #paintWidth:F
    :cond_0
    move v3, v2

    goto :goto_0
.end method

.method private getSpeed(Landroid/graphics/PointF;Landroid/graphics/PointF;J)F
    .locals 18
    .parameter "paramPointF1"
    .parameter "paramPointF2"
    .parameter "paramLong"

    .prologue
    .line 208
    move-object/from16 v0, p2

    iget v10, v0, Landroid/graphics/PointF;->x:F

    .line 209
    .local v10, f1:F
    move-object/from16 v0, p1

    iget v11, v0, Landroid/graphics/PointF;->x:F

    .line 210
    .local v11, f2:F
    sub-float v14, v10, v11

    float-to-double v14, v14

    const-wide/high16 v16, 0x4000

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 211
    .local v2, d1:D
    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/PointF;->y:F

    .line 212
    .local v12, f3:F
    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/PointF;->y:F

    .line 213
    .local v13, f4:F
    sub-float v14, v12, v13

    float-to-double v14, v14

    const-wide/high16 v16, 0x4000

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .line 214
    .local v4, d2:D
    add-double v14, v2, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 215
    .local v6, d3:D
    move-wide/from16 v0, p3

    long-to-double v8, v0

    .line 216
    .local v8, d4:D
    div-double v14, v6, v8

    double-to-float v14, v14

    return v14
.end method

.method private setBrushStyle()V
    .locals 8

    .prologue
    .line 288
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02000b

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 289
    .local v4, srcBitmap:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mDotBitmap:Landroid/graphics/Bitmap;

    if-nez v5, :cond_0

    .line 290
    iput-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mDotBitmap:Landroid/graphics/Bitmap;

    .line 292
    :cond_0
    iget v5, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mOldColor:I

    iget-object v6, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mHandWriteCanvas:Lzte/com/cn/cloudnotepad/skitch/iface/IHandWrite;

    invoke-interface {v6}, Lzte/com/cn/cloudnotepad/skitch/iface/IHandWrite;->getPaintColor()I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 293
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mHandWriteCanvas:Lzte/com/cn/cloudnotepad/skitch/iface/IHandWrite;

    invoke-interface {v5}, Lzte/com/cn/cloudnotepad/skitch/iface/IHandWrite;->getPaintColor()I

    move-result v5

    iput v5, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mOldColor:I

    .line 295
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 296
    .local v1, destbitmap:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-lt v2, v5, :cond_2

    .line 305
    iput-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mDotBitmap:Landroid/graphics/Bitmap;

    .line 324
    .end local v1           #destbitmap:Landroid/graphics/Bitmap;
    .end local v2           #i:I
    :cond_1
    return-void

    .line 297
    .restart local v1       #destbitmap:Landroid/graphics/Bitmap;
    .restart local v2       #i:I
    :cond_2
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-lt v3, v5, :cond_3

    .line 296
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 298
    :cond_3
    invoke-virtual {v4, v2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    .line 300
    .local v0, color:I
    if-eqz v0, :cond_4

    .line 301
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mHandWriteCanvas:Lzte/com/cn/cloudnotepad/skitch/iface/IHandWrite;

    invoke-interface {v5}, Lzte/com/cn/cloudnotepad/skitch/iface/IHandWrite;->getPaintColor()I

    move-result v5

    invoke-virtual {v1, v2, v3, v5}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 297
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public clearScreen()V
    .locals 4

    .prologue
    .line 198
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 199
    .local v0, rect:Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 200
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mPaperBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 201
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mPaperBitmap:Landroid/graphics/Bitmap;

    .line 202
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mPaperBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mPaperCanvas:Landroid/graphics/Canvas;

    .line 203
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->invalidate()V

    .line 204
    return-void
.end method

.method protected createTraceTool()Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Lzte/com/cn/cloudnotepad/skitch/trace/HandWriteTrace;

    invoke-direct {v0}, Lzte/com/cn/cloudnotepad/skitch/trace/HandWriteTrace;-><init>()V

    .line 65
    .local v0, penTrace:Lzte/com/cn/cloudnotepad/skitch/trace/HandWriteTrace;
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mHandWriteCanvas:Lzte/com/cn/cloudnotepad/skitch/iface/IHandWrite;

    invoke-interface {v1}, Lzte/com/cn/cloudnotepad/skitch/iface/IHandWrite;->getPaintWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/skitch/trace/HandWriteTrace;->setWidth(F)V

    .line 66
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mHandWriteCanvas:Lzte/com/cn/cloudnotepad/skitch/iface/IHandWrite;

    invoke-interface {v1}, Lzte/com/cn/cloudnotepad/skitch/iface/IHandWrite;->getPaintColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/skitch/trace/HandWriteTrace;->setColor(I)V

    .line 67
    return-object v0
.end method

.method public finishWrite()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mMonitor:Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;->writeStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mMonitor:Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;->finishWrite()V

    .line 75
    :cond_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mPaperBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mPaperBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mPaperBitmap:Landroid/graphics/Bitmap;

    .line 79
    :cond_1
    return-void
.end method

.method public getCharacter(Lzte/com/cn/cloudnotepad/skitch/iface/IWrite$IGetBitmap;)V
    .locals 1
    .parameter "iGetBitmap"

    .prologue
    .line 84
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mPaperBitmap:Landroid/graphics/Bitmap;

    invoke-interface {p1, v0}, Lzte/com/cn/cloudnotepad/skitch/iface/IWrite$IGetBitmap;->onBitmapObtained(Landroid/graphics/Bitmap;)V

    .line 85
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->clearScreen()V

    .line 86
    return-void
.end method

.method protected getTraceManager()Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->traceManager:Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;

    return-object v0
.end method

.method public init(FII)V
    .locals 3
    .parameter "density"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v2, 0x1

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mPointList:Ljava/util/ArrayList;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mSpeedList:Ljava/util/ArrayList;

    .line 106
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mPaint:Landroid/graphics/Paint;

    .line 107
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 108
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 110
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 112
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 116
    new-instance v0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;

    invoke-direct {v0}, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->traceManager:Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;

    .line 117
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 174
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 175
    if-eqz p1, :cond_0

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mPaperBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 177
    :try_start_0
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mPaperBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onFinishWrite()V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 345
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 346
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mPaperBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 347
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mPaperBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mPaperBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v1, p2, :cond_0

    .line 348
    const-string v1, "in onsizeChanged(), no need to create mBitmap"

    invoke-static {p0, v1}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    :goto_0
    return-void

    .line 351
    :cond_0
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mPaperBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 352
    const/4 v1, 0x0

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mPaperBitmap:Landroid/graphics/Bitmap;

    .line 353
    const-string v1, "in onSizeChanged(), recycle mBitmap"

    invoke-static {p0, v1}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    :cond_1
    :try_start_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mPaperBitmap:Landroid/graphics/Bitmap;

    .line 358
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mPaperBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mPaperCanvas:Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v1, "create bitmap of the canvas out of memory"

    invoke-static {p0, v1}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStartWrite()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "event"

    .prologue
    .line 130
    const/4 v0, 0x1

    .line 131
    .local v0, result:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 132
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 133
    .local v6, y:F
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mMonitor:Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;

    if-eqz v7, :cond_0

    .line 135
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mMonitor:Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {v7, v8}, Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;->touch(I)V

    .line 137
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 164
    const/4 v0, 0x0

    .line 167
    :goto_0
    return v0

    .line 140
    :pswitch_0
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->setBrushStyle()V

    .line 141
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mPointList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 142
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mSpeedList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 143
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mPointList:Ljava/util/ArrayList;

    new-instance v8, Landroid/graphics/PointF;

    invoke-direct {v8, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mSpeedList:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    iput-wide v7, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mBaseTime:J

    .line 146
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->drawBrush()V

    goto :goto_0

    .line 149
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    .line 150
    .local v1, time:J
    iget-object v8, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mSpeedList:Ljava/util/ArrayList;

    new-instance v9, Landroid/graphics/PointF;

    invoke-direct {v9, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v7, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mPointList:Ljava/util/ArrayList;

    iget-object v10, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mPointList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    iget-wide v10, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mBaseTime:J

    sub-long v10, v1, v10

    invoke-direct {p0, v9, v7, v10, v11}, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->getSpeed(Landroid/graphics/PointF;Landroid/graphics/PointF;J)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mPointList:Ljava/util/ArrayList;

    new-instance v8, Landroid/graphics/PointF;

    invoke-direct {v8, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    iput-wide v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mBaseTime:J

    .line 153
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->drawBrush()V

    goto :goto_0

    .line 156
    .end local v1           #time:J
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    .line 157
    .local v3, timeUp:J
    iget-object v8, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mSpeedList:Ljava/util/ArrayList;

    new-instance v9, Landroid/graphics/PointF;

    invoke-direct {v9, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v7, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mPointList:Ljava/util/ArrayList;

    iget-object v10, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mPointList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    iget-wide v10, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mBaseTime:J

    sub-long v10, v3, v10

    invoke-direct {p0, v9, v7, v10, v11}, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->getSpeed(Landroid/graphics/PointF;Landroid/graphics/PointF;J)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mPointList:Ljava/util/ArrayList;

    new-instance v8, Landroid/graphics/PointF;

    invoke-direct {v8, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    iput-wide v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mBaseTime:J

    .line 160
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->drawBrush()V

    .line 161
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->traceManager:Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;

    iget-object v8, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->curTrace:Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;

    invoke-interface {v7, v8}, Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;->addTrace(Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;)V

    goto/16 :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setHandWriteCanvas(Lzte/com/cn/cloudnotepad/skitch/iface/IHandWrite;)V
    .locals 0
    .parameter "iHandWrite"

    .prologue
    .line 187
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mHandWriteCanvas:Lzte/com/cn/cloudnotepad/skitch/iface/IHandWrite;

    .line 188
    return-void
.end method

.method public setTouchMonitor(Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;)V
    .locals 0
    .parameter "monitor"

    .prologue
    .line 192
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteView;->mMonitor:Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;

    .line 193
    return-void
.end method

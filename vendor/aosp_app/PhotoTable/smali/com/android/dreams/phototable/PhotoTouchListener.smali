.class public Lcom/android/dreams/phototable/PhotoTouchListener;
.super Ljava/lang/Object;
.source "PhotoTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final INVALID_POINTER:I = -0x1

.field private static final MAX_POINTER_COUNT:I = 0x14

.field private static final TAG:Ljava/lang/String; = "PhotoTouchListener"


# instance fields
.field private mA:I

.field private mB:I

.field private final mBeta:F

.field private mDX:F

.field private mDY:F

.field private final mEnableFling:Z

.field private mInitialTargetA:F

.field private mInitialTargetX:F

.field private mInitialTargetY:F

.field private mInitialTouchA:F

.field private mInitialTouchTime:J

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mLastEventTime:J

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private final mManualImageRotation:Z

.field private final mTable:Lcom/android/dreams/phototable/PhotoTable;

.field private final mTableRatio:F

.field private final mTapTimeout:I

.field private final mTouchSlop:I

.field private pts:[F

.field private tmp:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/dreams/phototable/PhotoTable;)V
    .locals 5
    .parameter "context"
    .parameter "table"

    .prologue
    const/16 v4, 0x14

    const/4 v2, -0x1

    const v3, 0x49742400

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput v2, p0, Lcom/android/dreams/phototable/PhotoTouchListener;->mA:I

    .line 56
    iput v2, p0, Lcom/android/dreams/phototable/PhotoTouchListener;->mB:I

    .line 57
    new-array v2, v4, [F

    iput-object v2, p0, Lcom/android/dreams/phototable/PhotoTouchListener;->pts:[F

    .line 58
    new-array v2, v4, [F

    iput-object v2, p0, Lcom/android/dreams/phototable/PhotoTouchListener;->tmp:[F

    .line 61
    iput-object p2, p0, Lcom/android/dreams/phototable/PhotoTouchListener;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    .line 62
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 63
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/dreams/phototable/PhotoTouchListener;->mTouchSlop:I

    .line 64
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    iput v2, p0, Lcom/android/dreams/phototable/PhotoTouchListener;->mTapTimeout:I

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 66
    .local v1, resources:Landroid/content/res/Resources;
    const v2, 0x7f08000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/dreams/phototable/PhotoTouchListener;->mBeta:F

    .line 67
    const v2, 0x7f080008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/dreams/phototable/PhotoTouchListener;->mTableRatio:F

    .line 68
    const v2, 0x7f090001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/dreams/phototable/PhotoTouchListener;->mEnableFling:Z

    .line 69
    const/high16 v2, 0x7f09

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/dreams/phototable/PhotoTouchListener;->mManualImageRotation:Z

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/dreams/phototable/PhotoTouchListener;)Lcom/android/dreams/phototable/PhotoTable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTouchListener;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    return-object v0
.end method

.method private getAngle(Landroid/view/View;Landroid/view/MotionEvent;)F
    .locals 8
    .parameter "target"
    .parameter "ev"

    .prologue
    .line 74
    const/4 v1, 0x0

    .line 75
    .local v1, alpha:F
    iget v3, p0, Lcom/android/dreams/phototable/PhotoTouchListener;->mA:I

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 76
    .local v0, a:I
    iget v3, p0, Lcom/android/dreams/phototable/PhotoTouchListener;->mB:I

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 77
    .local v2, b:I
    if-ltz v0, :cond_0

    if-ltz v2, :cond_0

    .line 78
    iget-object v3, p0, Lcom/android/dreams/phototable/PhotoTouchListener;->pts:[F

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/dreams/phototable/PhotoTouchListener;->pts:[F

    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    aget v4, v4, v5

    sub-float/2addr v3, v4

    float-to-double v3, v3

    iget-object v5, p0, Lcom/android/dreams/phototable/PhotoTouchListener;->pts:[F

    mul-int/lit8 v6, v0, 0x2

    aget v5, v5, v6

    iget-object v6, p0, Lcom/android/dreams/phototable/PhotoTouchListener;->pts:[F

    mul-int/lit8 v7, v2, 0x2

    aget v6, v6, v7

    sub-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    const-wide v5, 0x4066800000000000L

    mul-double/2addr v3, v5

    const-wide v5, 0x400921fb54442d18L

    div-double/2addr v3, v5

    double-to-float v1, v3

    .line 82
    :cond_0
    return v1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 267
    return-void
.end method

.method private resetTouch(Landroid/view/View;)V
    .locals 1
    .parameter "target"

    .prologue
    const/high16 v0, -0x4080

    .line 86
    iput v0, p0, Lcom/android/dreams/phototable/PhotoTouchListener;->mInitialTouchX:F

    .line 87
    iput v0, p0, Lcom/android/dreams/phototable/PhotoTouchListener;->mInitialTouchY:F

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/dreams/phototable/PhotoTouchListener;->mInitialTouchA:F

    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/dreams/phototable/PhotoTouchListener;->mInitialTargetX:F

    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/dreams/phototable/PhotoTouchListener;->mInitialTargetY:F

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v0

    iput v0, p0, Lcom/android/dreams/phototable/PhotoTouchListener;->mInitialTargetA:F

    .line 92
    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/View;FF)V
    .locals 26
    .parameter "target"
    .parameter "dX"
    .parameter "dY"

    .prologue
    .line 95
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mEnableFling:Z

    move/from16 v16, v0

    if-nez v16, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "fling "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/dreams/phototable/PhotoTouchListener;->log(Ljava/lang/String;)V

    .line 101
    const/high16 v16, 0x4270

    div-float p2, p2, v16

    .line 102
    const/high16 v16, 0x4270

    div-float p3, p3, v16

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->pts:[F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v12, v16, v17

    .line 106
    .local v12, x0:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->pts:[F

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget v14, v16, v17

    .line 109
    .local v14, y0:F
    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move/from16 v0, p3

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v11, v0

    .line 111
    .local v11, v:F
    const/16 v16, 0x0

    cmpl-float v16, v11, v16

    if-eqz v16, :cond_0

    .line 116
    const-wide/high16 v16, 0x3ff0

    float-to-double v0, v11

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->log(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mBeta:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->log(D)D

    move-result-wide v20

    div-double v18, v18, v20

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v4, v0

    .line 118
    .local v4, n:F
    const-wide/16 v16, 0x0

    float-to-double v0, v11

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3ff0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mBeta:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    float-to-double v0, v4

    move-wide/from16 v24, v0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    sub-double v20, v20, v22

    mul-double v18, v18, v20

    const/high16 v20, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mBeta:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v8, v0

    .line 121
    .local v8, s:F
    mul-float v16, v8, p2

    div-float v16, v16, v11

    add-float v13, v12, v16

    .line 122
    .local v13, x1:F
    mul-float v16, v8, p3

    div-float v16, v16, v11

    add-float v15, v14, v16

    .line 124
    .local v15, y1:F
    const v16, 0x7f0b0001

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->floatValue()F

    move-result v7

    .line 125
    .local v7, photoWidth:F
    const/high16 v16, 0x7f0b

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->floatValue()F

    move-result v6

    .line 126
    .local v6, photoHeight:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v10, v0

    .line 127
    .local v10, tableWidth:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v9, v0

    .line 128
    .local v9, tableHeight:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mTableRatio:F

    move/from16 v16, v0

    mul-float v16, v16, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mTableRatio:F

    move/from16 v17, v0

    mul-float v17, v17, v6

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(FF)F

    move-result v16

    const/high16 v17, 0x4000

    div-float v3, v16, v17

    .line 130
    .local v3, halfShortSide:F
    move-object/from16 v5, p1

    .line 131
    .local v5, photo:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    sub-float v17, v13, v12

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewPropertyAnimator;->xBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    sub-float v17, v15, v14

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewPropertyAnimator;->yBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    const/high16 v17, 0x447a

    mul-float v17, v17, v4

    const/high16 v18, 0x4270

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    invoke-virtual/range {v16 .. v18}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    new-instance v17, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v18, 0x4000

    invoke-direct/range {v17 .. v18}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 137
    .local v2, animator:Landroid/view/ViewPropertyAnimator;
    add-float v16, v15, v3

    const/16 v17, 0x0

    cmpg-float v16, v16, v17

    if-ltz v16, :cond_2

    sub-float v16, v15, v3

    cmpl-float v16, v16, v9

    if-gtz v16, :cond_2

    add-float v16, v13, v3

    const/16 v17, 0x0

    cmpg-float v16, v16, v17

    if-ltz v16, :cond_2

    sub-float v16, v13, v3

    cmpl-float v16, v16, v10

    if-lez v16, :cond_0

    .line 139
    :cond_2
    const-string v16, "fling away"

    invoke-static/range {v16 .. v16}, Lcom/android/dreams/phototable/PhotoTouchListener;->log(Ljava/lang/String;)V

    .line 140
    new-instance v16, Lcom/android/dreams/phototable/PhotoTouchListener$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/android/dreams/phototable/PhotoTouchListener$1;-><init>(Lcom/android/dreams/phototable/PhotoTouchListener;Landroid/view/View;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 21
    .parameter "target"
    .parameter "ev"

    .prologue
    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    .line 154
    .local v5, action:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    const/16 v17, 0xa

    move/from16 v0, v17

    if-ge v9, v0, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v9, v0, :cond_0

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->pts:[F

    move-object/from16 v17, v0

    mul-int/lit8 v18, v9, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v19

    aput v19, v17, v18

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->pts:[F

    move-object/from16 v17, v0

    mul-int/lit8 v18, v9, 0x2

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v19

    aput v19, v17, v18

    .line 154
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->pts:[F

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 160
    packed-switch v5, :pswitch_data_0

    .line 260
    :cond_1
    :goto_1
    :pswitch_0
    const/16 v17, 0x1

    return v17

    .line 162
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/dreams/phototable/PhotoTable;->moveToBackOfQueue(Landroid/view/View;)V

    .line 163
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/dreams/phototable/PhotoTouchListener;->mInitialTouchTime:J

    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v17

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/dreams/phototable/PhotoTouchListener;->mA:I

    .line 165
    invoke-direct/range {p0 .. p1}, Lcom/android/dreams/phototable/PhotoTouchListener;->resetTouch(Landroid/view/View;)V

    goto :goto_1

    .line 169
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mB:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 170
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v17

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/dreams/phototable/PhotoTouchListener;->mB:I

    .line 171
    invoke-direct/range {p0 .. p2}, Lcom/android/dreams/phototable/PhotoTouchListener;->getAngle(Landroid/view/View;Landroid/view/MotionEvent;)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/dreams/phototable/PhotoTouchListener;->mInitialTouchA:F

    goto :goto_1

    .line 176
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mB:I

    move/from16 v17, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 177
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/dreams/phototable/PhotoTouchListener;->mB:I

    .line 178
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRotation()F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/dreams/phototable/PhotoTouchListener;->mInitialTargetA:F

    .line 180
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mA:I

    move/from16 v17, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 181
    const-string v17, "primary went up!"

    invoke-static/range {v17 .. v17}, Lcom/android/dreams/phototable/PhotoTouchListener;->log(Ljava/lang/String;)V

    .line 182
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mB:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/dreams/phototable/PhotoTouchListener;->mA:I

    .line 183
    invoke-direct/range {p0 .. p1}, Lcom/android/dreams/phototable/PhotoTouchListener;->resetTouch(Landroid/view/View;)V

    .line 184
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/dreams/phototable/PhotoTouchListener;->mB:I

    goto/16 :goto_1

    .line 189
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mA:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 190
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mA:I

    move/from16 v17, v0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    .line 191
    .local v10, idx:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->pts:[F

    move-object/from16 v17, v0

    mul-int/lit8 v18, v10, 0x2

    aget v13, v17, v18

    .line 192
    .local v13, x:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->pts:[F

    move-object/from16 v17, v0

    mul-int/lit8 v18, v10, 0x2

    add-int/lit8 v18, v18, 0x1

    aget v15, v17, v18

    .line 193
    .local v15, y:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mInitialTouchX:F

    move/from16 v17, v0

    const/high16 v18, -0x4080

    cmpl-float v17, v17, v18

    if-nez v17, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mInitialTouchY:F

    move/from16 v17, v0

    const/high16 v18, -0x4080

    cmpl-float v17, v17, v18

    if-nez v17, :cond_3

    .line 194
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mInitialTouchX:F

    .line 195
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mInitialTouchY:F

    .line 212
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/dreams/phototable/PhotoTable;->getSelected()Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_1

    .line 213
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 215
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mInitialTargetX:F

    move/from16 v17, v0

    add-float v17, v17, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mInitialTouchX:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 216
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mInitialTargetY:F

    move/from16 v17, v0

    add-float v17, v17, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mInitialTouchY:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 217
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mManualImageRotation:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mB:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 218
    invoke-direct/range {p0 .. p2}, Lcom/android/dreams/phototable/PhotoTouchListener;->getAngle(Landroid/view/View;Landroid/view/MotionEvent;)F

    move-result v4

    .line 219
    .local v4, a:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mInitialTargetA:F

    move/from16 v17, v0

    add-float v17, v17, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mInitialTouchA:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    goto/16 :goto_1

    .line 197
    .end local v4           #a:F
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mLastEventTime:J

    move-wide/from16 v19, v0

    sub-long v17, v17, v19

    move-wide/from16 v0, v17

    long-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x447a

    div-float v8, v17, v18

    .line 198
    .local v8, dt:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mLastTouchX:F

    move/from16 v17, v0

    sub-float v17, v13, v17

    div-float v11, v17, v8

    .line 199
    .local v11, tmpDX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mLastTouchY:F

    move/from16 v17, v0

    sub-float v17, v15, v17

    div-float v12, v17, v8

    .line 200
    .local v12, tmpDY:F
    const/16 v17, 0x0

    cmpl-float v17, v8, v17

    if-lez v17, :cond_5

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v17

    const/high16 v18, 0x40a0

    cmpl-float v17, v17, v18

    if-gtz v17, :cond_4

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v17

    const/high16 v18, 0x40a0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_5

    .line 202
    :cond_4
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mDX:F

    .line 203
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mDY:F

    .line 205
    :cond_5
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "move "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mDX:F

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mDY:F

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/dreams/phototable/PhotoTouchListener;->log(Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/dreams/phototable/PhotoTouchListener;->mLastEventTime:J

    .line 208
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mLastTouchX:F

    .line 209
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mLastTouchY:F

    goto/16 :goto_2

    .line 228
    .end local v8           #dt:F
    .end local v10           #idx:I
    .end local v11           #tmpDX:F
    .end local v12           #tmpDY:F
    .end local v13           #x:F
    .end local v15           #y:F
    :pswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mA:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 229
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mA:I

    move/from16 v17, v0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    .line 230
    .restart local v10       #idx:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->pts:[F

    move-object/from16 v17, v0

    mul-int/lit8 v18, v10, 0x2

    aget v14, v17, v18

    .line 231
    .local v14, x0:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->pts:[F

    move-object/from16 v17, v0

    mul-int/lit8 v18, v10, 0x2

    add-int/lit8 v18, v18, 0x1

    aget v16, v17, v18

    .line 232
    .local v16, y0:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mInitialTouchX:F

    move/from16 v17, v0

    const/high16 v18, -0x4080

    cmpl-float v17, v17, v18

    if-nez v17, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mInitialTouchY:F

    move/from16 v17, v0

    const/high16 v18, -0x4080

    cmpl-float v17, v17, v18

    if-nez v17, :cond_6

    .line 233
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mInitialTouchX:F

    .line 234
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/dreams/phototable/PhotoTouchListener;->mInitialTouchY:F

    .line 236
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mInitialTouchX:F

    move/from16 v17, v0

    sub-float v17, v14, v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mInitialTouchY:F

    move/from16 v19, v0

    sub-float v19, v16, v19

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    .line 238
    .local v6, distance:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/dreams/phototable/PhotoTable;->getSelected()Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_7

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/dreams/phototable/PhotoTable;->dropOnTable(Landroid/view/View;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/dreams/phototable/PhotoTable;->clearSelection()V

    .line 249
    :goto_3
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/dreams/phototable/PhotoTouchListener;->mA:I

    .line 250
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/dreams/phototable/PhotoTouchListener;->mB:I

    goto/16 :goto_1

    .line 241
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mInitialTouchTime:J

    move-wide/from16 v19, v0

    sub-long v17, v17, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mTapTimeout:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    cmp-long v17, v17, v19

    if-gez v17, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mTouchSlop:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    cmpg-double v17, v6, v17

    if-gez v17, :cond_8

    .line 244
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/dreams/phototable/PhotoTable;->setSelection(Landroid/view/View;)V

    goto :goto_3

    .line 247
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mDX:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mDY:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/dreams/phototable/PhotoTouchListener;->onFling(Landroid/view/View;FF)V

    goto :goto_3

    .line 256
    .end local v6           #distance:D
    .end local v10           #idx:I
    .end local v14           #x0:F
    .end local v16           #y0:F
    :pswitch_6
    const-string v17, "action cancel!"

    invoke-static/range {v17 .. v17}, Lcom/android/dreams/phototable/PhotoTouchListener;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 160
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.class public Lcom/android/soundrecorder/VUMeter;
.super Landroid/view/View;
.source "VUMeter.java"


# static fields
.field private static final ANIMATION_INTERVAL:J = 0x46L

.field private static final BASE_NUMBER:F = 32768.0f

.field private static final COLOR_NUMBER:I = 0x3c

.field private static final DROPOFF_STEP:F = 0.18f

.field private static final MAX_ANGLE:F = 2.7488937f

.field private static final MIN_ANGLE:F = 0.3926991f

.field private static final PIVOT_RADIUS:F = 3.5f

.field private static final PIVOT_Y_OFFSET:F = 10.0f

.field private static final SHADOW_OFFSET:F = 2.0f


# instance fields
.field private final mContext:Landroid/content/Context;

.field public mCurrentAngle:F

.field private mPaint:Landroid/graphics/Paint;

.field private mRecorder:Lcom/android/soundrecorder/Recorder;

.field private mShadow:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 108
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 109
    iput-object p1, p0, Lcom/android/soundrecorder/VUMeter;->mContext:Landroid/content/Context;

    .line 110
    invoke-direct {p0}, Lcom/android/soundrecorder/VUMeter;->init()V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 123
    iput-object p1, p0, Lcom/android/soundrecorder/VUMeter;->mContext:Landroid/content/Context;

    .line 124
    invoke-direct {p0}, Lcom/android/soundrecorder/VUMeter;->init()V

    .line 125
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 183
    iget-object v1, p0, Lcom/android/soundrecorder/VUMeter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 184
    .local v0, background:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/soundrecorder/VUMeter;->mPaint:Landroid/graphics/Paint;

    .line 186
    iget-object v1, p0, Lcom/android/soundrecorder/VUMeter;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 187
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/soundrecorder/VUMeter;->mShadow:Landroid/graphics/Paint;

    .line 188
    iget-object v1, p0, Lcom/android/soundrecorder/VUMeter;->mShadow:Landroid/graphics/Paint;

    const/16 v2, 0x3c

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 189
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/soundrecorder/VUMeter;->mRecorder:Lcom/android/soundrecorder/Recorder;

    .line 190
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/soundrecorder/VUMeter;->mCurrentAngle:F

    .line 191
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19
    .parameter "canvas"

    .prologue
    .line 140
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 142
    const v12, 0x3ec90fdb

    .line 143
    .local v12, minAngle:F
    const v11, 0x402fede0

    .line 145
    .local v11, maxAngle:F
    const v7, 0x3ec90fdb

    .line 146
    .local v7, angle:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/soundrecorder/VUMeter;->mRecorder:Lcom/android/soundrecorder/Recorder;

    if-eqz v1, :cond_0

    .line 147
    const v1, 0x4016cbe5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/soundrecorder/VUMeter;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v2}, Lcom/android/soundrecorder/Recorder;->getMaxAmplitude()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x4700

    div-float/2addr v1, v2

    add-float/2addr v7, v1

    .line 150
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/soundrecorder/VUMeter;->mCurrentAngle:F

    cmpl-float v1, v7, v1

    if-lez v1, :cond_2

    .line 151
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/soundrecorder/VUMeter;->mCurrentAngle:F

    .line 156
    :goto_0
    const v1, 0x402fede0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/soundrecorder/VUMeter;->mCurrentAngle:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/soundrecorder/VUMeter;->mCurrentAngle:F

    .line 158
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v0, v1

    move/from16 v16, v0

    .line 159
    .local v16, w:F
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v9, v1

    .line 160
    .local v9, h:F
    const/high16 v1, 0x4000

    div-float v13, v16, v1

    .line 161
    .local v13, pivotX:F
    const/high16 v1, 0x4060

    sub-float v1, v9, v1

    const/high16 v2, 0x4120

    sub-float v14, v1, v2

    .line 162
    .local v14, pivotY:F
    const/high16 v1, 0x4080

    mul-float/2addr v1, v9

    const/high16 v2, 0x40a0

    div-float v10, v1, v2

    .line 163
    .local v10, l:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/soundrecorder/VUMeter;->mCurrentAngle:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v15, v1

    .line 164
    .local v15, sin:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/soundrecorder/VUMeter;->mCurrentAngle:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v8, v1

    .line 165
    .local v8, cos:F
    mul-float v1, v10, v8

    sub-float v17, v13, v1

    .line 166
    .local v17, x0:F
    mul-float v1, v10, v15

    sub-float v18, v14, v1

    .line 167
    .local v18, y0:F
    const/high16 v1, 0x4000

    add-float v2, v17, v1

    const/high16 v1, 0x4000

    add-float v3, v18, v1

    const/high16 v1, 0x4000

    add-float v4, v13, v1

    const/high16 v1, 0x4000

    add-float v5, v14, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/soundrecorder/VUMeter;->mShadow:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 169
    const/high16 v1, 0x4000

    add-float/2addr v1, v13

    const/high16 v2, 0x4000

    add-float/2addr v2, v14

    const/high16 v3, 0x4060

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/soundrecorder/VUMeter;->mShadow:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 170
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/soundrecorder/VUMeter;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    move v4, v13

    move v5, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 171
    const/high16 v1, 0x4060

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/soundrecorder/VUMeter;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/soundrecorder/VUMeter;->mRecorder:Lcom/android/soundrecorder/Recorder;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/soundrecorder/VUMeter;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v2}, Lcom/android/soundrecorder/Recorder;->getCurrentState()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 175
    const-wide/16 v1, 0x46

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->postInvalidateDelayed(J)V

    .line 177
    :cond_1
    return-void

    .line 153
    .end local v8           #cos:F
    .end local v9           #h:F
    .end local v10           #l:F
    .end local v13           #pivotX:F
    .end local v14           #pivotY:F
    .end local v15           #sin:F
    .end local v16           #w:F
    .end local v17           #x0:F
    .end local v18           #y0:F
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/soundrecorder/VUMeter;->mCurrentAngle:F

    const v2, 0x3e3851ec

    sub-float/2addr v1, v2

    invoke-static {v7, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/soundrecorder/VUMeter;->mCurrentAngle:F

    goto/16 :goto_0
.end method

.method public setRecorder(Lcom/android/soundrecorder/Recorder;)V
    .locals 0
    .parameter "recorder"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/soundrecorder/VUMeter;->mRecorder:Lcom/android/soundrecorder/Recorder;

    .line 135
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 136
    return-void
.end method

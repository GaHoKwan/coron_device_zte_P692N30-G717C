.class public Lcom/mediatek/mms/op09/ScaleDetector;
.super Ljava/lang/Object;
.source "ScaleDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mms/op09/ScaleDetector$SimpleOnScaleListener;,
        Lcom/mediatek/mms/op09/ScaleDetector$OnScaleListener;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "ScaleDetector"

.field private static final PRESSURE_THRESHOLD:F = 0.67f


# instance fields
.field private mActiveId0:I

.field private mActiveId1:I

.field private mActivity:Landroid/app/Activity;

.field private mCurrEvent:Landroid/view/MotionEvent;

.field private mCurrFingerDiffX:F

.field private mCurrFingerDiffY:F

.field private mCurrLen:F

.field private mCurrPressure:F

.field private mGestureInProgress:Z

.field private mInvalidGesture:Z

.field private mListener:Lcom/mediatek/mms/op09/ScaleDetector$OnScaleListener;

.field private mPrevEvent:Landroid/view/MotionEvent;

.field private mPrevFingerDiffX:F

.field private mPrevFingerDiffY:F

.field private mPrevLen:F

.field private mPrevPressure:F

.field private mScaleFactor:F


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/mediatek/mms/op09/ScaleDetector$OnScaleListener;)V
    .locals 0
    .parameter "activity"
    .parameter "listener"

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/mediatek/mms/op09/ScaleDetector;->mActivity:Landroid/app/Activity;

    .line 98
    iput-object p2, p0, Lcom/mediatek/mms/op09/ScaleDetector;->mListener:Lcom/mediatek/mms/op09/ScaleDetector$OnScaleListener;

    .line 99
    invoke-direct {p0}, Lcom/mediatek/mms/op09/ScaleDetector;->reset()V

    .line 100
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/mms/op09/ScaleDetector$OnScaleListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/mediatek/mms/op09/ScaleDetector;-><init>(Landroid/app/Activity;Lcom/mediatek/mms/op09/ScaleDetector$OnScaleListener;)V

    .line 93
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 80
    const-string v0, "ScaleDetector"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void
.end method

.method private reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 220
    iget-object v0, p0, Lcom/mediatek/mms/op09/ScaleDetector;->mPrevEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/mediatek/mms/op09/ScaleDetector;->mPrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 222
    iput-object v3, p0, Lcom/mediatek/mms/op09/ScaleDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/mediatek/mms/op09/ScaleDetector;->mCurrEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/mediatek/mms/op09/ScaleDetector;->mCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 226
    iput-object v3, p0, Lcom/mediatek/mms/op09/ScaleDetector;->mCurrEvent:Landroid/view/MotionEvent;

    .line 230
    :cond_1
    iput v1, p0, Lcom/mediatek/mms/op09/ScaleDetector;->mActiveId0:I

    .line 231
    iput v1, p0, Lcom/mediatek/mms/op09/ScaleDetector;->mActiveId1:I

    .line 232
    iput-boolean v2, p0, Lcom/mediatek/mms/op09/ScaleDetector;->mGestureInProgress:Z

    .line 233
    iput-boolean v2, p0, Lcom/mediatek/mms/op09/ScaleDetector;->mInvalidGesture:Z

    .line 234
    return-void
.end method

.method private setContext(Landroid/view/MotionEvent;)V
    .locals 21
    .parameter "curr"

    .prologue
    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mms/op09/ScaleDetector;->mCurrEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mms/op09/ScaleDetector;->mCurrEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->recycle()V

    .line 240
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/mms/op09/ScaleDetector;->mCurrEvent:Landroid/view/MotionEvent;

    .line 242
    const/high16 v19, -0x4080

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/mms/op09/ScaleDetector;->mCurrLen:F

    .line 243
    const/high16 v19, -0x4080

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/mms/op09/ScaleDetector;->mPrevLen:F

    .line 244
    const/high16 v19, -0x4080

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/mms/op09/ScaleDetector;->mScaleFactor:F

    .line 246
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/mms/op09/ScaleDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 248
    .local v10, prev:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/mms/op09/ScaleDetector;->mActiveId0:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    .line 249
    .local v11, prevIndex0:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/mms/op09/ScaleDetector;->mActiveId1:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    .line 250
    .local v12, prevIndex1:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/mms/op09/ScaleDetector;->mActiveId0:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 251
    .local v2, currIndex0:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/mms/op09/ScaleDetector;->mActiveId1:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 253
    .local v3, currIndex1:I
    if-ltz v11, :cond_1

    if-ltz v12, :cond_1

    if-ltz v2, :cond_1

    if-gez v3, :cond_3

    .line 254
    :cond_1
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mediatek/mms/op09/ScaleDetector;->mInvalidGesture:Z

    .line 255
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mediatek/mms/op09/ScaleDetector;->mGestureInProgress:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mms/op09/ScaleDetector;->mListener:Lcom/mediatek/mms/op09/ScaleDetector$OnScaleListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/mediatek/mms/op09/ScaleDetector$OnScaleListener;->onScaleEnd(Lcom/mediatek/mms/op09/ScaleDetector;)V

    .line 281
    :cond_2
    :goto_0
    return-void

    .line 261
    :cond_3
    invoke-virtual {v10, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    .line 262
    .local v15, px0:F
    invoke-virtual {v10, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    .line 263
    .local v17, py0:F
    invoke-virtual {v10, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    .line 264
    .local v16, px1:F
    invoke-virtual {v10, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    .line 265
    .local v18, py1:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 266
    .local v6, cx0:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 267
    .local v8, cy0:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 268
    .local v7, cx1:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .line 270
    .local v9, cy1:F
    sub-float v13, v16, v15

    .line 271
    .local v13, pvx:F
    sub-float v14, v18, v17

    .line 272
    .local v14, pvy:F
    sub-float v4, v7, v6

    .line 273
    .local v4, cvx:F
    sub-float v5, v9, v8

    .line 274
    .local v5, cvy:F
    move-object/from16 v0, p0

    iput v13, v0, Lcom/mediatek/mms/op09/ScaleDetector;->mPrevFingerDiffX:F

    .line 275
    move-object/from16 v0, p0

    iput v14, v0, Lcom/mediatek/mms/op09/ScaleDetector;->mPrevFingerDiffY:F

    .line 276
    move-object/from16 v0, p0

    iput v4, v0, Lcom/mediatek/mms/op09/ScaleDetector;->mCurrFingerDiffX:F

    .line 277
    move-object/from16 v0, p0

    iput v5, v0, Lcom/mediatek/mms/op09/ScaleDetector;->mCurrFingerDiffY:F

    .line 279
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v19

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v20

    add-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/mms/op09/ScaleDetector;->mCurrPressure:F

    .line 280
    invoke-virtual {v10, v11}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v19

    invoke-virtual {v10, v12}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v20

    add-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/mms/op09/ScaleDetector;->mPrevPressure:F

    goto :goto_0
.end method


# virtual methods
.method public getCurrentSpan()F
    .locals 4

    .prologue
    .line 292
    iget v2, p0, Lcom/mediatek/mms/op09/ScaleDetector;->mCurrLen:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 293
    iget v0, p0, Lcom/mediatek/mms/op09/ScaleDetector;->mCurrFingerDiffX:F

    .line 294
    .local v0, cvx:F
    iget v1, p0, Lcom/mediatek/mms/op09/ScaleDetector;->mCurrFingerDiffY:F

    .line 295
    .local v1, cvy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    iput v2, p0, Lcom/mediatek/mms/op09/ScaleDetector;->mCurrLen:F

    .line 297
    .end local v0           #cvx:F
    .end local v1           #cvy:F
    :cond_0
    iget v2, p0, Lcom/mediatek/mms/op09/ScaleDetector;->mCurrLen:F

    return v2
.end method

.method public getCurrentSpanX()F
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lcom/mediatek/mms/op09/ScaleDetector;->mCurrFingerDiffX:F

    return v0
.end method

.method public getCurrentSpanY()F
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Lcom/mediatek/mms/op09/ScaleDetector;->mCurrFingerDiffY:F

    return v0
.end method

.method public getPreviousSpan()F
    .locals 4

    .prologue
    .line 328
    iget v2, p0, Lcom/mediatek/mms/op09/ScaleDetector;->mPrevLen:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 329
    iget v0, p0, Lcom/mediatek/mms/op09/ScaleDetector;->mPrevFingerDiffX:F

    .line 330
    .local v0, pvx:F
    iget v1, p0, Lcom/mediatek/mms/op09/ScaleDetector;->mPrevFingerDiffY:F

    .line 331
    .local v1, pvy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    iput v2, p0, Lcom/mediatek/mms/op09/ScaleDetector;->mPrevLen:F

    .line 333
    .end local v0           #pvx:F
    .end local v1           #pvy:F
    :cond_0
    iget v2, p0, Lcom/mediatek/mms/op09/ScaleDetector;->mPrevLen:F

    return v2
.end method

.method public getPreviousSpanX()F
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Lcom/mediatek/mms/op09/ScaleDetector;->mPrevFingerDiffX:F

    return v0
.end method

.method public getPreviousSpanY()F
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Lcom/mediatek/mms/op09/ScaleDetector;->mPrevFingerDiffY:F

    return v0
.end method

.method public getScaleFactor()F
    .locals 2

    .prologue
    .line 364
    iget v0, p0, Lcom/mediatek/mms/op09/ScaleDetector;->mScaleFactor:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 365
    invoke-virtual {p0}, Lcom/mediatek/mms/op09/ScaleDetector;->getCurrentSpan()F

    move-result v0

    invoke-virtual {p0}, Lcom/mediatek/mms/op09/ScaleDetector;->getPreviousSpan()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/mediatek/mms/op09/ScaleDetector;->mScaleFactor:F

    .line 367
    :cond_0
    iget v0, p0, Lcom/mediatek/mms/op09/ScaleDetector;->mScaleFactor:F

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20
    .parameter "event"

    .prologue
    .line 110
    const/16 v18, 0x0

    .line 113
    .local v18, ret:Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    .line 115
    .local v10, action:I
    if-nez v10, :cond_0

    .line 116
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/mms/op09/ScaleDetector;->reset()V

    .line 120
    :cond_0
    packed-switch v10, :pswitch_data_0

    .line 209
    :cond_1
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mediatek/mms/op09/ScaleDetector;->mGestureInProgress:Z

    if-nez v2, :cond_2

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "return value is false, action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/mms/op09/ScaleDetector;->log(Ljava/lang/String;)V

    .line 214
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mediatek/mms/op09/ScaleDetector;->mGestureInProgress:Z

    return v2

    .line 123
    :pswitch_1
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mediatek/mms/op09/ScaleDetector;->mActiveId0:I

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_DOWN: count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/mms/op09/ScaleDetector;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v12

    .line 130
    .local v12, count:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v16

    .line 131
    .local v16, index:I
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v14

    .line 132
    .local v14, id:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_POINTER_DOWN: count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", actionId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/mms/op09/ScaleDetector;->log(Ljava/lang/String;)V

    .line 134
    const/4 v2, 0x2

    if-ne v12, v2, :cond_4

    .line 135
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mediatek/mms/op09/ScaleDetector;->mActiveId0:I

    .line 136
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mediatek/mms/op09/ScaleDetector;->mActiveId1:I

    .line 138
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/mms/op09/ScaleDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 139
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/mms/op09/ScaleDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/mms/op09/ScaleDetector;->mListener:Lcom/mediatek/mms/op09/ScaleDetector$OnScaleListener;

    if-eqz v2, :cond_3

    .line 142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/mms/op09/ScaleDetector;->mListener:Lcom/mediatek/mms/op09/ScaleDetector$OnScaleListener;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/mediatek/mms/op09/ScaleDetector$OnScaleListener;->onScaleStart(Lcom/mediatek/mms/op09/ScaleDetector;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mediatek/mms/op09/ScaleDetector;->mGestureInProgress:Z

    .line 143
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mediatek/mms/op09/ScaleDetector;->mGestureInProgress:Z

    if-eqz v2, :cond_3

    .line 145
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v11

    .line 146
    .local v11, cancle:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/mms/op09/ScaleDetector;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_3

    .line 147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/mms/op09/ScaleDetector;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 151
    .end local v11           #cancle:Landroid/view/MotionEvent;
    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mediatek/mms/op09/ScaleDetector;->mInvalidGesture:Z

    .line 154
    :cond_4
    const/4 v2, 0x2

    if-le v12, v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mediatek/mms/op09/ScaleDetector;->mInvalidGesture:Z

    if-nez v2, :cond_1

    .line 155
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mediatek/mms/op09/ScaleDetector;->mInvalidGesture:Z

    .line 156
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/mms/op09/ScaleDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 157
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mediatek/mms/op09/ScaleDetector;->mGestureInProgress:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/mms/op09/ScaleDetector;->mListener:Lcom/mediatek/mms/op09/ScaleDetector$OnScaleListener;

    if-eqz v2, :cond_1

    .line 158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/mms/op09/ScaleDetector;->mListener:Lcom/mediatek/mms/op09/ScaleDetector$OnScaleListener;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/mediatek/mms/op09/ScaleDetector$OnScaleListener;->onScaleEnd(Lcom/mediatek/mms/op09/ScaleDetector;)V

    goto/16 :goto_0

    .line 164
    .end local v12           #count:I
    .end local v14           #id:I
    .end local v16           #index:I
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mediatek/mms/op09/ScaleDetector;->mGestureInProgress:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mediatek/mms/op09/ScaleDetector;->mInvalidGesture:Z

    if-nez v2, :cond_1

    .line 165
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/mms/op09/ScaleDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 170
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/mms/op09/ScaleDetector;->mCurrPressure:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mediatek/mms/op09/ScaleDetector;->mPrevPressure:F

    div-float/2addr v2, v3

    const v3, 0x3f2b851f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/mms/op09/ScaleDetector;->mListener:Lcom/mediatek/mms/op09/ScaleDetector$OnScaleListener;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/mediatek/mms/op09/ScaleDetector$OnScaleListener;->onScale(Lcom/mediatek/mms/op09/ScaleDetector;)Z

    move-result v19

    .line 173
    .local v19, updatePrevious:Z
    if-eqz v19, :cond_1

    .line 174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/mms/op09/ScaleDetector;->mPrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 175
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/mms/op09/ScaleDetector;->mPrevEvent:Landroid/view/MotionEvent;

    goto/16 :goto_0

    .line 182
    .end local v19           #updatePrevious:Z
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v13

    .line 183
    .local v13, count2:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v17

    .line 184
    .local v17, index2:I
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    .line 185
    .local v15, id2:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_POINTER_UP, count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ActionId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/mms/op09/ScaleDetector;->log(Ljava/lang/String;)V

    .line 187
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mediatek/mms/op09/ScaleDetector;->mGestureInProgress:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    if-ne v13, v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mediatek/mms/op09/ScaleDetector;->mInvalidGesture:Z

    if-nez v2, :cond_1

    .line 188
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/mms/op09/ScaleDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/mms/op09/ScaleDetector;->mListener:Lcom/mediatek/mms/op09/ScaleDetector$OnScaleListener;

    if-eqz v2, :cond_5

    .line 190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/mms/op09/ScaleDetector;->mListener:Lcom/mediatek/mms/op09/ScaleDetector$OnScaleListener;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/mediatek/mms/op09/ScaleDetector$OnScaleListener;->onScaleEnd(Lcom/mediatek/mms/op09/ScaleDetector;)V

    .line 192
    :cond_5
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mediatek/mms/op09/ScaleDetector;->mInvalidGesture:Z

    goto/16 :goto_0

    .line 197
    .end local v13           #count2:I
    .end local v15           #id2:I
    .end local v17           #index2:I
    :pswitch_5
    const-string v2, "ACTION_UP"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/mms/op09/ScaleDetector;->log(Ljava/lang/String;)V

    .line 198
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/mms/op09/ScaleDetector;->reset()V

    goto/16 :goto_0

    .line 202
    :pswitch_6
    const-string v2, "ACTION_CANCEL"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/mms/op09/ScaleDetector;->log(Ljava/lang/String;)V

    .line 203
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/mms/op09/ScaleDetector;->reset()V

    goto/16 :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/mediatek/mms/op09/ScaleDetector;->mActivity:Landroid/app/Activity;

    .line 104
    return-void
.end method

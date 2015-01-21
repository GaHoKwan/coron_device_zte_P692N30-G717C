.class public Lcom/android/mms/ui/ScaleDetector;
.super Ljava/lang/Object;
.source "ScaleDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ScaleDetector$OnScaleListener;
    }
.end annotation


# static fields
.field private static LOGTAG:Ljava/lang/String; = null

.field private static final PRESSURE_THRESHOLD:F = 0.67f


# instance fields
.field private mActiveId0:I

.field private mActiveId1:I

.field private final mActivity:Landroid/app/Activity;

.field private mCurrEvent:Landroid/view/MotionEvent;

.field private mCurrFingerDiffX:F

.field private mCurrFingerDiffY:F

.field private mCurrLen:F

.field private mCurrPressure:F

.field private mGestureInProgress:Z

.field private mInvalidGesture:Z

.field private final mListener:Lcom/android/mms/ui/ScaleDetector$OnScaleListener;

.field private mPrevEvent:Landroid/view/MotionEvent;

.field private mPrevFingerDiffX:F

.field private mPrevFingerDiffY:F

.field private mPrevLen:F

.field private mPrevPressure:F

.field private mScaleFactor:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const-string v0, "ScaleDetector"

    sput-object v0, Lcom/android/mms/ui/ScaleDetector;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/mms/ui/ScaleDetector$OnScaleListener;)V
    .locals 0
    .parameter "activity"
    .parameter "listener"

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/android/mms/ui/ScaleDetector;->mActivity:Landroid/app/Activity;

    .line 132
    iput-object p2, p0, Lcom/android/mms/ui/ScaleDetector;->mListener:Lcom/android/mms/ui/ScaleDetector$OnScaleListener;

    .line 133
    invoke-direct {p0}, Lcom/android/mms/ui/ScaleDetector;->reset()V

    .line 134
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 127
    sget-object v0, Lcom/android/mms/ui/ScaleDetector;->LOGTAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void
.end method

.method private reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 243
    iget-object v0, p0, Lcom/android/mms/ui/ScaleDetector;->mPrevEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/mms/ui/ScaleDetector;->mPrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 245
    iput-object v3, p0, Lcom/android/mms/ui/ScaleDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ScaleDetector;->mCurrEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/android/mms/ui/ScaleDetector;->mCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 249
    iput-object v3, p0, Lcom/android/mms/ui/ScaleDetector;->mCurrEvent:Landroid/view/MotionEvent;

    .line 252
    :cond_1
    iput v1, p0, Lcom/android/mms/ui/ScaleDetector;->mActiveId0:I

    .line 253
    iput v1, p0, Lcom/android/mms/ui/ScaleDetector;->mActiveId1:I

    .line 254
    iput-boolean v2, p0, Lcom/android/mms/ui/ScaleDetector;->mGestureInProgress:Z

    .line 255
    iput-boolean v2, p0, Lcom/android/mms/ui/ScaleDetector;->mInvalidGesture:Z

    .line 256
    return-void
.end method

.method private setContext(Landroid/view/MotionEvent;)V
    .locals 21
    .parameter "curr"

    .prologue
    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ScaleDetector;->mCurrEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ScaleDetector;->mCurrEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->recycle()V

    .line 262
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/ScaleDetector;->mCurrEvent:Landroid/view/MotionEvent;

    .line 264
    const/high16 v19, -0x4080

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/ScaleDetector;->mCurrLen:F

    .line 265
    const/high16 v19, -0x4080

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/ScaleDetector;->mPrevLen:F

    .line 266
    const/high16 v19, -0x4080

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/ScaleDetector;->mScaleFactor:F

    .line 268
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/ui/ScaleDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 270
    .local v10, prev:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/ScaleDetector;->mActiveId0:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    .line 271
    .local v11, prevIndex0:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/ScaleDetector;->mActiveId1:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    .line 272
    .local v12, prevIndex1:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/ScaleDetector;->mActiveId0:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 273
    .local v2, currIndex0:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/ScaleDetector;->mActiveId1:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 275
    .local v3, currIndex1:I
    if-ltz v11, :cond_1

    if-ltz v12, :cond_1

    if-ltz v2, :cond_1

    if-gez v3, :cond_3

    .line 276
    :cond_1
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/ScaleDetector;->mInvalidGesture:Z

    .line 277
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/ScaleDetector;->mGestureInProgress:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ScaleDetector;->mListener:Lcom/android/mms/ui/ScaleDetector$OnScaleListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/android/mms/ui/ScaleDetector$OnScaleListener;->onScaleEnd(Lcom/android/mms/ui/ScaleDetector;)V

    .line 303
    :cond_2
    :goto_0
    return-void

    .line 283
    :cond_3
    invoke-virtual {v10, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    .line 284
    .local v15, px0:F
    invoke-virtual {v10, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    .line 285
    .local v17, py0:F
    invoke-virtual {v10, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    .line 286
    .local v16, px1:F
    invoke-virtual {v10, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    .line 287
    .local v18, py1:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 288
    .local v6, cx0:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 289
    .local v8, cy0:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 290
    .local v7, cx1:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .line 292
    .local v9, cy1:F
    sub-float v13, v16, v15

    .line 293
    .local v13, pvx:F
    sub-float v14, v18, v17

    .line 294
    .local v14, pvy:F
    sub-float v4, v7, v6

    .line 295
    .local v4, cvx:F
    sub-float v5, v9, v8

    .line 296
    .local v5, cvy:F
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/mms/ui/ScaleDetector;->mPrevFingerDiffX:F

    .line 297
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/mms/ui/ScaleDetector;->mPrevFingerDiffY:F

    .line 298
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/mms/ui/ScaleDetector;->mCurrFingerDiffX:F

    .line 299
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/mms/ui/ScaleDetector;->mCurrFingerDiffY:F

    .line 301
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v19

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v20

    add-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/ScaleDetector;->mCurrPressure:F

    .line 302
    invoke-virtual {v10, v11}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v19

    invoke-virtual {v10, v12}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v20

    add-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/ScaleDetector;->mPrevPressure:F

    goto :goto_0
.end method


# virtual methods
.method public getCurrentSpan()F
    .locals 4

    .prologue
    .line 311
    iget v2, p0, Lcom/android/mms/ui/ScaleDetector;->mCurrLen:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 312
    iget v0, p0, Lcom/android/mms/ui/ScaleDetector;->mCurrFingerDiffX:F

    .line 313
    .local v0, cvx:F
    iget v1, p0, Lcom/android/mms/ui/ScaleDetector;->mCurrFingerDiffY:F

    .line 314
    .local v1, cvy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/ScaleDetector;->mCurrLen:F

    .line 316
    .end local v0           #cvx:F
    .end local v1           #cvy:F
    :cond_0
    iget v2, p0, Lcom/android/mms/ui/ScaleDetector;->mCurrLen:F

    return v2
.end method

.method public getCurrentSpanX()F
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Lcom/android/mms/ui/ScaleDetector;->mCurrFingerDiffX:F

    return v0
.end method

.method public getCurrentSpanY()F
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Lcom/android/mms/ui/ScaleDetector;->mCurrFingerDiffY:F

    return v0
.end method

.method public getPreviousSpan()F
    .locals 4

    .prologue
    .line 343
    iget v2, p0, Lcom/android/mms/ui/ScaleDetector;->mPrevLen:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 344
    iget v0, p0, Lcom/android/mms/ui/ScaleDetector;->mPrevFingerDiffX:F

    .line 345
    .local v0, pvx:F
    iget v1, p0, Lcom/android/mms/ui/ScaleDetector;->mPrevFingerDiffY:F

    .line 346
    .local v1, pvy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/ScaleDetector;->mPrevLen:F

    .line 348
    .end local v0           #pvx:F
    .end local v1           #pvy:F
    :cond_0
    iget v2, p0, Lcom/android/mms/ui/ScaleDetector;->mPrevLen:F

    return v2
.end method

.method public getPreviousSpanX()F
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Lcom/android/mms/ui/ScaleDetector;->mPrevFingerDiffX:F

    return v0
.end method

.method public getPreviousSpanY()F
    .locals 1

    .prologue
    .line 366
    iget v0, p0, Lcom/android/mms/ui/ScaleDetector;->mPrevFingerDiffY:F

    return v0
.end method

.method public getScaleFactor()F
    .locals 2

    .prologue
    .line 376
    iget v0, p0, Lcom/android/mms/ui/ScaleDetector;->mScaleFactor:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 377
    invoke-virtual {p0}, Lcom/android/mms/ui/ScaleDetector;->getCurrentSpan()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/mms/ui/ScaleDetector;->getPreviousSpan()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/mms/ui/ScaleDetector;->mScaleFactor:F

    .line 379
    :cond_0
    iget v0, p0, Lcom/android/mms/ui/ScaleDetector;->mScaleFactor:F

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .parameter "event"

    .prologue
    .line 138
    const/16 v16, 0x0

    .line 140
    .local v16, ret:Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    .line 142
    .local v9, action:I
    if-nez v9, :cond_0

    .line 143
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ScaleDetector;->reset()V

    .line 146
    :cond_0
    packed-switch v9, :pswitch_data_0

    .line 233
    :cond_1
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/mms/ui/ScaleDetector;->mGestureInProgress:Z

    if-nez v1, :cond_2

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "return value is false, action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/mms/ui/ScaleDetector;->log(Ljava/lang/String;)V

    .line 238
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/mms/ui/ScaleDetector;->mGestureInProgress:Z

    return v1

    .line 149
    :pswitch_1
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/mms/ui/ScaleDetector;->mActiveId0:I

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_DOWN: count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/mms/ui/ScaleDetector;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    .line 155
    .local v11, count:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v14

    .line 156
    .local v14, index:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    .line 157
    .local v12, id:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_POINTER_DOWN: count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", actionId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/mms/ui/ScaleDetector;->log(Ljava/lang/String;)V

    .line 159
    const/4 v1, 0x2

    if-ne v11, v1, :cond_4

    .line 160
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/mms/ui/ScaleDetector;->mActiveId0:I

    .line 161
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/mms/ui/ScaleDetector;->mActiveId1:I

    .line 163
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/mms/ui/ScaleDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 164
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/ui/ScaleDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ScaleDetector;->mListener:Lcom/android/mms/ui/ScaleDetector$OnScaleListener;

    if-eqz v1, :cond_3

    .line 167
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ScaleDetector;->mListener:Lcom/android/mms/ui/ScaleDetector$OnScaleListener;

    move-object/from16 v0, p0

    invoke-interface {v1, v0}, Lcom/android/mms/ui/ScaleDetector$OnScaleListener;->onScaleStart(Lcom/android/mms/ui/ScaleDetector;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/mms/ui/ScaleDetector;->mGestureInProgress:Z

    .line 168
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/mms/ui/ScaleDetector;->mGestureInProgress:Z

    if-eqz v1, :cond_3

    .line 170
    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    .line 172
    .local v10, cancle:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ScaleDetector;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 175
    .end local v10           #cancle:Landroid/view/MotionEvent;
    :cond_3
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/mms/ui/ScaleDetector;->mInvalidGesture:Z

    .line 178
    :cond_4
    const/4 v1, 0x2

    if-le v11, v1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/mms/ui/ScaleDetector;->mInvalidGesture:Z

    if-nez v1, :cond_1

    .line 179
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/mms/ui/ScaleDetector;->mInvalidGesture:Z

    .line 180
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/ui/ScaleDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 181
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/mms/ui/ScaleDetector;->mGestureInProgress:Z

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ScaleDetector;->mListener:Lcom/android/mms/ui/ScaleDetector$OnScaleListener;

    if-eqz v1, :cond_1

    .line 182
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ScaleDetector;->mListener:Lcom/android/mms/ui/ScaleDetector$OnScaleListener;

    move-object/from16 v0, p0

    invoke-interface {v1, v0}, Lcom/android/mms/ui/ScaleDetector$OnScaleListener;->onScaleEnd(Lcom/android/mms/ui/ScaleDetector;)V

    goto/16 :goto_0

    .line 189
    .end local v11           #count:I
    .end local v12           #id:I
    .end local v14           #index:I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ScaleDetector;->mPrevEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/mms/ui/ScaleDetector;->mGestureInProgress:Z

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/mms/ui/ScaleDetector;->mInvalidGesture:Z

    if-nez v1, :cond_1

    .line 190
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/ui/ScaleDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 195
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/mms/ui/ScaleDetector;->mCurrPressure:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/ScaleDetector;->mPrevPressure:F

    div-float/2addr v1, v2

    const v2, 0x3f2b851f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 196
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ScaleDetector;->mListener:Lcom/android/mms/ui/ScaleDetector$OnScaleListener;

    move-object/from16 v0, p0

    invoke-interface {v1, v0}, Lcom/android/mms/ui/ScaleDetector$OnScaleListener;->onScale(Lcom/android/mms/ui/ScaleDetector;)Z

    move-result v17

    .line 198
    .local v17, updatePrevious:Z
    if-eqz v17, :cond_1

    .line 199
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ScaleDetector;->mPrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 200
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/mms/ui/ScaleDetector;->mPrevEvent:Landroid/view/MotionEvent;

    goto/16 :goto_0

    .line 207
    .end local v17           #updatePrevious:Z
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    .line 208
    .restart local v11       #count:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v15

    .line 209
    .local v15, index_:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v13

    .line 210
    .local v13, id_:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_POINTER_UP, count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ActionId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/mms/ui/ScaleDetector;->log(Ljava/lang/String;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ScaleDetector;->mPrevEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/mms/ui/ScaleDetector;->mGestureInProgress:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    if-ne v11, v1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/mms/ui/ScaleDetector;->mInvalidGesture:Z

    if-nez v1, :cond_1

    .line 213
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/ui/ScaleDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 214
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ScaleDetector;->mListener:Lcom/android/mms/ui/ScaleDetector$OnScaleListener;

    if-eqz v1, :cond_5

    .line 215
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ScaleDetector;->mListener:Lcom/android/mms/ui/ScaleDetector$OnScaleListener;

    move-object/from16 v0, p0

    invoke-interface {v1, v0}, Lcom/android/mms/ui/ScaleDetector$OnScaleListener;->onScaleEnd(Lcom/android/mms/ui/ScaleDetector;)V

    .line 217
    :cond_5
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/mms/ui/ScaleDetector;->mInvalidGesture:Z

    goto/16 :goto_0

    .line 223
    .end local v11           #count:I
    .end local v13           #id_:I
    .end local v15           #index_:I
    :pswitch_5
    const-string v1, "ACTION_UP"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/mms/ui/ScaleDetector;->log(Ljava/lang/String;)V

    .line 224
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ScaleDetector;->reset()V

    goto/16 :goto_0

    .line 228
    :pswitch_6
    const-string v1, "ACTION_CANCEL"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/mms/ui/ScaleDetector;->log(Ljava/lang/String;)V

    .line 229
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ScaleDetector;->reset()V

    goto/16 :goto_0

    .line 146
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

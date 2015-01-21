.class public Lcom/android/mms/ui/LevelControlLayout;
.super Landroid/view/ViewGroup;
.source "LevelControlLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/LevelControlLayout$OnScrollToScreenListener;
    }
.end annotation


# static fields
.field private static final SNAP_VELOCITY:I = 0x258

.field private static final TAG:Ljava/lang/String; = "ScrollControlLayout"

.field private static final TOUCH_STATE_REST:I = 0x0

.field private static final TOUCH_STATE_SCROLLING:I = 0x1


# instance fields
.field private mCanMove:Z

.field private mCurScreen:I

.field private mDefaultScreen:I

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mOnScrollToScreen:Lcom/android/mms/ui/LevelControlLayout$OnScrollToScreenListener;

.field private mScroller:Landroid/widget/Scroller;

.field private mTouchSlop:I

.field private mTouchState:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mms/ui/LevelControlLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x1

    .line 94
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    iput-boolean v0, p0, Lcom/android/mms/ui/LevelControlLayout;->mCanMove:Z

    .line 74
    iput v0, p0, Lcom/android/mms/ui/LevelControlLayout;->mDefaultScreen:I

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/LevelControlLayout;->mTouchState:I

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/LevelControlLayout;->mOnScrollToScreen:Lcom/android/mms/ui/LevelControlLayout$OnScrollToScreenListener;

    .line 95
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/LevelControlLayout;->mScroller:Landroid/widget/Scroller;

    .line 96
    iget v0, p0, Lcom/android/mms/ui/LevelControlLayout;->mDefaultScreen:I

    iput v0, p0, Lcom/android/mms/ui/LevelControlLayout;->mCurScreen:I

    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/LevelControlLayout;->mTouchSlop:I

    .line 98
    return-void
.end method

.method private doScrollAction(I)V
    .locals 1
    .parameter "whichScreen"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/mms/ui/LevelControlLayout;->mOnScrollToScreen:Lcom/android/mms/ui/LevelControlLayout$OnScrollToScreenListener;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/mms/ui/LevelControlLayout;->mOnScrollToScreen:Lcom/android/mms/ui/LevelControlLayout$OnScrollToScreenListener;

    invoke-interface {v0, p1}, Lcom/android/mms/ui/LevelControlLayout$OnScrollToScreenListener;->doAction(I)V

    .line 288
    :cond_0
    return-void
.end method


# virtual methods
.method public autoRecovery()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/mms/ui/LevelControlLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 176
    return-void
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/mms/ui/LevelControlLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/mms/ui/LevelControlLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/ui/LevelControlLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->scrollTo(II)V

    .line 183
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 185
    :cond_0
    return-void
.end method

.method public getCurScreen()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/android/mms/ui/LevelControlLayout;->mCurScreen:I

    return v0
.end method

.method public isScrolling()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/mms/ui/LevelControlLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 254
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 255
    .local v0, action:I
    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    iget v4, p0, Lcom/android/mms/ui/LevelControlLayout;->mTouchState:I

    if-eqz v4, :cond_1

    .line 281
    :cond_0
    :goto_0
    return v6

    .line 258
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 259
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 260
    .local v3, y:F
    packed-switch v0, :pswitch_data_0

    .line 281
    :cond_2
    :goto_1
    iget v4, p0, Lcom/android/mms/ui/LevelControlLayout;->mTouchState:I

    if-nez v4, :cond_0

    move v6, v5

    goto :goto_0

    .line 262
    :pswitch_0
    iput v1, p0, Lcom/android/mms/ui/LevelControlLayout;->mLastMotionX:F

    .line 263
    iput v3, p0, Lcom/android/mms/ui/LevelControlLayout;->mLastMotionY:F

    .line 264
    iget-object v4, p0, Lcom/android/mms/ui/LevelControlLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v5

    :goto_2
    iput v4, p0, Lcom/android/mms/ui/LevelControlLayout;->mTouchState:I

    goto :goto_1

    :cond_3
    move v4, v6

    goto :goto_2

    .line 267
    :pswitch_1
    iget v4, p0, Lcom/android/mms/ui/LevelControlLayout;->mLastMotionX:F

    sub-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v2, v4

    .line 268
    .local v2, xDiff:I
    iget v4, p0, Lcom/android/mms/ui/LevelControlLayout;->mTouchSlop:I

    if-le v2, v4, :cond_2

    .line 269
    iget v4, p0, Lcom/android/mms/ui/LevelControlLayout;->mLastMotionY:F

    sub-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v7, p0, Lcom/android/mms/ui/LevelControlLayout;->mLastMotionX:F

    sub-float/2addr v7, v1

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    div-float/2addr v4, v7

    const/high16 v7, 0x3f80

    cmpg-float v4, v4, v7

    if-gez v4, :cond_2

    .line 270
    iput v6, p0, Lcom/android/mms/ui/LevelControlLayout;->mTouchState:I

    goto :goto_1

    .line 276
    .end local v2           #xDiff:I
    :pswitch_2
    iput v5, p0, Lcom/android/mms/ui/LevelControlLayout;->mTouchState:I

    goto :goto_1

    .line 260
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 106
    const/4 v1, 0x0

    .line 107
    .local v1, childLeft:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 108
    .local v0, childCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 109
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 110
    .local v2, childView:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 111
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 112
    .local v3, childWidth:I
    const/4 v5, 0x0

    add-int v6, v1, v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v2, v1, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 114
    add-int/2addr v1, v3

    .line 108
    .end local v3           #childWidth:I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 117
    .end local v2           #childView:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v5, 0x4000

    .line 121
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 122
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 123
    .local v3, width:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 124
    .local v4, widthMode:I
    if-eq v4, v5, :cond_0

    .line 125
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "ScrollLayout only canmCurScreen run at EXACTLY mode!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 128
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 129
    .local v1, heightMode:I
    if-eq v1, v5, :cond_1

    .line 130
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "ScrollLayout only can run at EXACTLY mode!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 133
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 134
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 135
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroid/view/View;->measure(II)V

    .line 134
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 138
    :cond_2
    iget v5, p0, Lcom/android/mms/ui/LevelControlLayout;->mCurScreen:I

    mul-int/2addr v5, v3

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/view/View;->scrollTo(II)V

    .line 139
    iget v5, p0, Lcom/android/mms/ui/LevelControlLayout;->mCurScreen:I

    invoke-direct {p0, v5}, Lcom/android/mms/ui/LevelControlLayout;->doScrollAction(I)V

    .line 140
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 189
    iget-object v7, p0, Lcom/android/mms/ui/LevelControlLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v7, :cond_0

    .line 190
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/LevelControlLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 193
    :cond_0
    iget-boolean v7, p0, Lcom/android/mms/ui/LevelControlLayout;->mCanMove:Z

    if-nez v7, :cond_2

    .line 248
    :cond_1
    :goto_0
    return v10

    .line 197
    :cond_2
    iget-object v7, p0, Lcom/android/mms/ui/LevelControlLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 198
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 199
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 201
    .local v6, x:F
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 203
    :pswitch_0
    iget-object v7, p0, Lcom/android/mms/ui/LevelControlLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->isFinished()Z

    move-result v7

    if-nez v7, :cond_3

    .line 204
    iget-object v7, p0, Lcom/android/mms/ui/LevelControlLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->abortAnimation()V

    .line 206
    :cond_3
    iput v6, p0, Lcom/android/mms/ui/LevelControlLayout;->mLastMotionX:F

    goto :goto_0

    .line 209
    :pswitch_1
    iget v7, p0, Lcom/android/mms/ui/LevelControlLayout;->mLastMotionX:F

    sub-float/2addr v7, v6

    float-to-int v2, v7

    .line 210
    .local v2, deltaX:I
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 211
    .local v3, scrollX:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 212
    .local v1, childCount:I
    iput v6, p0, Lcom/android/mms/ui/LevelControlLayout;->mLastMotionX:F

    .line 214
    if-gez v2, :cond_4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-gt v7, v3, :cond_1

    :cond_4
    if-lez v2, :cond_5

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    mul-int/2addr v7, v8

    sub-int/2addr v7, v3

    if-gt v2, v7, :cond_1

    .line 218
    :cond_5
    invoke-virtual {p0, v2, v9}, Landroid/view/View;->scrollBy(II)V

    goto :goto_0

    .line 222
    .end local v1           #childCount:I
    .end local v2           #deltaX:I
    .end local v3           #scrollX:I
    :pswitch_2
    iget-object v4, p0, Lcom/android/mms/ui/LevelControlLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 223
    .local v4, velocityTrackers:Landroid/view/VelocityTracker;
    iget-object v7, p0, Lcom/android/mms/ui/LevelControlLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v8, 0x3e8

    invoke-virtual {v7, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 224
    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v7

    float-to-int v5, v7

    .line 225
    .local v5, velocityX:I
    const/16 v7, 0x258

    if-le v5, v7, :cond_7

    iget v7, p0, Lcom/android/mms/ui/LevelControlLayout;->mCurScreen:I

    if-lez v7, :cond_7

    .line 227
    const-string v7, "ScrollControlLayout"

    const-string v8, "snap left"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget v7, p0, Lcom/android/mms/ui/LevelControlLayout;->mCurScreen:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/LevelControlLayout;->snapToScreen(I)V

    .line 236
    :goto_1
    iget-object v7, p0, Lcom/android/mms/ui/LevelControlLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v7, :cond_6

    .line 237
    iget-object v7, p0, Lcom/android/mms/ui/LevelControlLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->recycle()V

    .line 238
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/mms/ui/LevelControlLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 240
    :cond_6
    iput v9, p0, Lcom/android/mms/ui/LevelControlLayout;->mTouchState:I

    goto :goto_0

    .line 229
    :cond_7
    const/16 v7, -0x258

    if-ge v5, v7, :cond_8

    iget v7, p0, Lcom/android/mms/ui/LevelControlLayout;->mCurScreen:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v7, v8, :cond_8

    .line 231
    iget v7, p0, Lcom/android/mms/ui/LevelControlLayout;->mCurScreen:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/LevelControlLayout;->snapToScreen(I)V

    goto :goto_1

    .line 233
    :cond_8
    invoke-virtual {p0}, Lcom/android/mms/ui/LevelControlLayout;->snapToDestination()V

    goto :goto_1

    .line 243
    .end local v4           #velocityTrackers:Landroid/view/VelocityTracker;
    .end local v5           #velocityX:I
    :pswitch_3
    iput v9, p0, Lcom/android/mms/ui/LevelControlLayout;->mTouchState:I

    goto/16 :goto_0

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setDefaultScreen(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 295
    iput p1, p0, Lcom/android/mms/ui/LevelControlLayout;->mCurScreen:I

    .line 296
    return-void
.end method

.method public setOnScrollToScreen(Lcom/android/mms/ui/LevelControlLayout$OnScrollToScreenListener;)V
    .locals 0
    .parameter "paramOnScrollToScreen"

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/mms/ui/LevelControlLayout;->mOnScrollToScreen:Lcom/android/mms/ui/LevelControlLayout$OnScrollToScreenListener;

    .line 292
    return-void
.end method

.method public setToScreen(I)V
    .locals 2
    .parameter "whichScreen"

    .prologue
    const/4 v1, 0x0

    .line 164
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 165
    iput p1, p0, Lcom/android/mms/ui/LevelControlLayout;->mCurScreen:I

    .line 166
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    mul-int/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->scrollTo(II)V

    .line 167
    invoke-direct {p0, p1}, Lcom/android/mms/ui/LevelControlLayout;->doScrollAction(I)V

    .line 168
    return-void
.end method

.method public setTouchMove(Z)V
    .locals 0
    .parameter "canMove"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/mms/ui/LevelControlLayout;->mCanMove:Z

    .line 144
    return-void
.end method

.method public snapToDestination()V
    .locals 4

    .prologue
    .line 147
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 148
    .local v1, screenWidth:I
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    div-int v0, v2, v1

    .line 149
    .local v0, destScreen:I
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/LevelControlLayout;->snapToScreen(I)V

    .line 150
    return-void
.end method

.method public snapToScreen(I)V
    .locals 6
    .parameter "whichScreen"

    .prologue
    const/4 v2, 0x0

    .line 153
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 154
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    mul-int/2addr v1, p1

    if-eq v0, v1, :cond_0

    .line 155
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    mul-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int v3, v0, v1

    .line 156
    .local v3, delta:I
    iget-object v0, p0, Lcom/android/mms/ui/LevelControlLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v5, v4, 0x2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 157
    iput p1, p0, Lcom/android/mms/ui/LevelControlLayout;->mCurScreen:I

    .line 158
    iget v0, p0, Lcom/android/mms/ui/LevelControlLayout;->mCurScreen:I

    invoke-direct {p0, v0}, Lcom/android/mms/ui/LevelControlLayout;->doScrollAction(I)V

    .line 159
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 161
    .end local v3           #delta:I
    :cond_0
    return-void
.end method

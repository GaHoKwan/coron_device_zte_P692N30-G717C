.class public Lcom/hf/UI/ScrollLayout;
.super Landroid/view/ViewGroup;
.source "ScrollLayout.java"


# static fields
.field private static final SNAP_VELOCITX:I = 0x258

.field private static final TOUCH_STATE_REST:I = 0x0

.field private static final TOUCH_STATE_SCROLLING:I = 0x1


# instance fields
.field private mLastMotionX:F

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
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/hf/UI/ScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/hf/UI/ScrollLayout;->mTouchState:I

    .line 54
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hf/UI/ScrollLayout;->mScroller:Landroid/widget/Scroller;

    .line 55
    invoke-virtual {p0}, Lcom/hf/UI/ScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/hf/UI/ScrollLayout;->mTouchSlop:I

    .line 56
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 0
    .parameter "child"

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 61
    return-void
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/hf/UI/ScrollLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/hf/UI/ScrollLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/hf/UI/ScrollLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/hf/UI/ScrollLayout;->scrollTo(II)V

    .line 191
    invoke-virtual {p0}, Lcom/hf/UI/ScrollLayout;->postInvalidate()V

    .line 193
    :cond_0
    return-void
.end method

.method public getChildWithTag(Ljava/lang/String;)Landroid/view/View;
    .locals 6
    .parameter "tag"

    .prologue
    .line 165
    const/4 v4, 0x0

    .line 166
    .local v4, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/hf/UI/ScrollLayout;->getChildCount()I

    move-result v2

    .line 167
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-lt v3, v2, :cond_0

    .line 177
    :goto_1
    return-object v4

    .line 168
    :cond_0
    invoke-virtual {p0, v3}, Lcom/hf/UI/ScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 170
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 171
    .local v1, childTag:Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 172
    move-object v4, v0

    .line 173
    goto :goto_1

    .line 167
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getCurScreenIndex()I
    .locals 1

    .prologue
    .line 147
    sget v0, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    return v0
.end method

.method public getCurrentScreen()Landroid/view/View;
    .locals 3

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/hf/UI/ScrollLayout;->getChildCount()I

    move-result v0

    .line 152
    .local v0, count:I
    const/4 v1, 0x0

    .line 153
    .local v1, index:I
    sget v2, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    if-lt v2, v0, :cond_0

    .line 154
    add-int/lit8 v1, v0, -0x1

    .line 161
    :goto_0
    invoke-virtual {p0, v1}, Lcom/hf/UI/ScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    return-object v2

    .line 155
    :cond_0
    sget v2, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    if-gez v2, :cond_1

    .line 156
    const/4 v1, 0x0

    .line 157
    goto :goto_0

    .line 158
    :cond_1
    sget v1, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 244
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 245
    .local v0, action:I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 246
    iget v3, p0, Lcom/hf/UI/ScrollLayout;->mTouchState:I

    if-eqz v3, :cond_1

    .line 270
    :cond_0
    :goto_0
    return v5

    .line 249
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 250
    .local v1, x:F
    packed-switch v0, :pswitch_data_0

    .line 270
    :cond_2
    :goto_1
    iget v3, p0, Lcom/hf/UI/ScrollLayout;->mTouchState:I

    if-nez v3, :cond_0

    move v5, v4

    goto :goto_0

    .line 252
    :pswitch_0
    iget v3, p0, Lcom/hf/UI/ScrollLayout;->mLastMotionX:F

    sub-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v2, v3

    .line 254
    .local v2, yDiff:I
    iget v3, p0, Lcom/hf/UI/ScrollLayout;->mTouchSlop:I

    if-le v2, v3, :cond_2

    .line 255
    iput v5, p0, Lcom/hf/UI/ScrollLayout;->mTouchState:I

    goto :goto_1

    .line 259
    .end local v2           #yDiff:I
    :pswitch_1
    iput v1, p0, Lcom/hf/UI/ScrollLayout;->mLastMotionX:F

    .line 261
    iget-object v3, p0, Lcom/hf/UI/ScrollLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    :goto_2
    iput v3, p0, Lcom/hf/UI/ScrollLayout;->mTouchState:I

    goto :goto_1

    :cond_3
    move v3, v5

    .line 262
    goto :goto_2

    .line 267
    :pswitch_2
    iput v4, p0, Lcom/hf/UI/ScrollLayout;->mTouchState:I

    goto :goto_1

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
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
    .line 65
    const/4 v2, 0x0

    .line 66
    .local v2, childWidth:I
    invoke-virtual {p0}, Lcom/hf/UI/ScrollLayout;->getChildCount()I

    move-result v0

    .line 67
    .local v0, childCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-lt v3, v0, :cond_0

    .line 76
    return-void

    .line 68
    :cond_0
    invoke-virtual {p0, v3}, Lcom/hf/UI/ScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 69
    .local v1, childView:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    .line 70
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 71
    .local v4, width:I
    const/4 v5, 0x0

    .line 72
    add-int v6, v2, v4

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 71
    invoke-virtual {v1, v2, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 73
    add-int/2addr v2, v4

    .line 67
    .end local v4           #width:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v5, 0x4000

    .line 81
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 82
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 83
    .local v3, width:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 85
    .local v4, widthMode:I
    if-eq v4, v5, :cond_0

    .line 86
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 87
    const-string v6, "ScrollLayout only canmCurScreen run at EXACTLY mode!"

    .line 86
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 90
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 92
    .local v1, heightMode:I
    if-eq v1, v5, :cond_1

    .line 93
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 94
    const-string v6, "ScrollLayout only can run at EXACTLY mode!"

    .line 93
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 98
    :cond_1
    invoke-virtual {p0}, Lcom/hf/UI/ScrollLayout;->getChildCount()I

    move-result v0

    .line 100
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v0, :cond_2

    .line 104
    sget v5, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    mul-int/2addr v5, v3

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/hf/UI/ScrollLayout;->scrollTo(II)V

    .line 106
    return-void

    .line 101
    :cond_2
    invoke-virtual {p0, v2}, Lcom/hf/UI/ScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroid/view/View;->measure(II)V

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    .line 197
    iget-object v5, p0, Lcom/hf/UI/ScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v5, :cond_0

    .line 198
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Lcom/hf/UI/ScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 200
    :cond_0
    iget-object v5, p0, Lcom/hf/UI/ScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 201
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 202
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 203
    .local v4, x:F
    packed-switch v0, :pswitch_data_0

    .line 238
    :goto_0
    const/4 v5, 0x1

    return v5

    .line 206
    :pswitch_0
    iget-object v5, p0, Lcom/hf/UI/ScrollLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-nez v5, :cond_1

    .line 207
    iget-object v5, p0, Lcom/hf/UI/ScrollLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->abortAnimation()V

    .line 209
    :cond_1
    iput v4, p0, Lcom/hf/UI/ScrollLayout;->mLastMotionX:F

    goto :goto_0

    .line 213
    :pswitch_1
    iget v5, p0, Lcom/hf/UI/ScrollLayout;->mLastMotionX:F

    sub-float/2addr v5, v4

    float-to-int v1, v5

    .line 214
    .local v1, deltaX:I
    iput v4, p0, Lcom/hf/UI/ScrollLayout;->mLastMotionX:F

    .line 215
    invoke-virtual {p0, v1, v7}, Lcom/hf/UI/ScrollLayout;->scrollBy(II)V

    goto :goto_0

    .line 219
    .end local v1           #deltaX:I
    :pswitch_2
    iget-object v2, p0, Lcom/hf/UI/ScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 220
    .local v2, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v5, 0x3e8

    invoke-virtual {v2, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 221
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    float-to-int v3, v5

    .line 223
    .local v3, velocityX:I
    const/16 v5, 0x258

    if-le v3, v5, :cond_2

    sget v5, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    if-lez v5, :cond_2

    .line 224
    sget v5, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Lcom/hf/UI/ScrollLayout;->snapToScreen(I)V

    .line 232
    :goto_1
    iput v7, p0, Lcom/hf/UI/ScrollLayout;->mTouchState:I

    goto :goto_0

    .line 225
    :cond_2
    const/16 v5, -0x258

    if-ge v3, v5, :cond_3

    .line 226
    sget v5, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    invoke-virtual {p0}, Lcom/hf/UI/ScrollLayout;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_3

    .line 228
    sget v5, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/hf/UI/ScrollLayout;->snapToScreen(I)V

    goto :goto_1

    .line 230
    :cond_3
    invoke-virtual {p0}, Lcom/hf/UI/ScrollLayout;->snapToDestination()V

    goto :goto_1

    .line 235
    .end local v2           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v3           #velocityX:I
    :pswitch_3
    iput v7, p0, Lcom/hf/UI/ScrollLayout;->mTouchState:I

    goto :goto_0

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setCurScreen(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 181
    sput p1, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    .line 182
    sget v0, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    invoke-virtual {p0}, Lcom/hf/UI/ScrollLayout;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/hf/UI/ScrollLayout;->scrollTo(II)V

    .line 183
    return-void
.end method

.method public setToScreen(I)V
    .locals 2
    .parameter "whichScreen"

    .prologue
    const/4 v1, 0x0

    .line 141
    invoke-virtual {p0}, Lcom/hf/UI/ScrollLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 142
    sput p1, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    .line 143
    invoke-virtual {p0}, Lcom/hf/UI/ScrollLayout;->getWidth()I

    move-result v0

    mul-int/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/hf/UI/ScrollLayout;->scrollTo(II)V

    .line 144
    return-void
.end method

.method public snapToDestination()V
    .locals 4

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/hf/UI/ScrollLayout;->getWidth()I

    move-result v1

    .line 119
    .local v1, screenWidth:I
    invoke-virtual {p0}, Lcom/hf/UI/ScrollLayout;->getScrollX()I

    move-result v2

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    div-int v0, v2, v1

    .line 121
    .local v0, destScreen:I
    invoke-virtual {p0, v0}, Lcom/hf/UI/ScrollLayout;->snapToScreen(I)V

    .line 123
    return-void
.end method

.method public snapToScreen(I)V
    .locals 7
    .parameter "whichScreen"

    .prologue
    const/4 v2, 0x0

    .line 129
    invoke-virtual {p0}, Lcom/hf/UI/ScrollLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 130
    invoke-virtual {p0}, Lcom/hf/UI/ScrollLayout;->getWidth()I

    move-result v6

    .line 131
    .local v6, width:I
    invoke-virtual {p0}, Lcom/hf/UI/ScrollLayout;->getScrollX()I

    move-result v1

    .line 132
    .local v1, scrollX:I
    mul-int v0, p1, v6

    if-eq v1, v0, :cond_0

    .line 133
    mul-int v0, p1, v6

    sub-int v3, v0, v1

    .line 134
    .local v3, delta:I
    iget-object v0, p0, Lcom/hf/UI/ScrollLayout;->mScroller:Landroid/widget/Scroller;

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 135
    sput p1, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    .line 136
    invoke-virtual {p0}, Lcom/hf/UI/ScrollLayout;->invalidate()V

    .line 138
    .end local v3           #delta:I
    :cond_0
    return-void
.end method

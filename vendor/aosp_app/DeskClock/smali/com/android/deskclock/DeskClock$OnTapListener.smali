.class public abstract Lcom/android/deskclock/DeskClock$OnTapListener;
.super Ljava/lang/Object;
.source "DeskClock.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/DeskClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnTapListener"
.end annotation


# instance fields
.field private final MAX_MOVEMENT_ALLOWED:F

.field private final MAX_TIME_ALLOWED:J

.field private final mGrayColor:I

.field private mLastTouchTime:J

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private final mMakePressedTextView:Landroid/widget/TextView;

.field private final mPressedColor:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/TextView;)V
    .locals 2
    .parameter "activity"
    .parameter "makePressedView"

    .prologue
    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/android/deskclock/DeskClock$OnTapListener;->MAX_MOVEMENT_ALLOWED:F

    .line 412
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/android/deskclock/DeskClock$OnTapListener;->MAX_TIME_ALLOWED:J

    .line 415
    iput-object p2, p0, Lcom/android/deskclock/DeskClock$OnTapListener;->mMakePressedTextView:Landroid/widget/TextView;

    .line 416
    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/android/deskclock/Utils;->getPressedColorId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/DeskClock$OnTapListener;->mPressedColor:I

    .line 417
    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/android/deskclock/Utils;->getGrayColorId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/DeskClock$OnTapListener;->mGrayColor:I

    .line 418
    return-void
.end method

.method private resetValues()V
    .locals 2

    .prologue
    const/high16 v0, -0x3e68

    .line 460
    iput v0, p0, Lcom/android/deskclock/DeskClock$OnTapListener;->mLastTouchX:F

    .line 461
    iput v0, p0, Lcom/android/deskclock/DeskClock$OnTapListener;->mLastTouchY:F

    .line 462
    const-wide/16 v0, -0x1f3

    iput-wide v0, p0, Lcom/android/deskclock/DeskClock$OnTapListener;->mLastTouchTime:J

    .line 463
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$OnTapListener;->mMakePressedTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$OnTapListener;->mMakePressedTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/deskclock/DeskClock$OnTapListener;->mGrayColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 466
    :cond_0
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "v"
    .parameter "e"

    .prologue
    const/high16 v8, 0x41a0

    .line 422
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 454
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock$OnTapListener;->resetValues()V

    .line 456
    :cond_0
    :goto_0
    const/4 v4, 0x0

    :goto_1
    return v4

    .line 424
    :pswitch_0
    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/deskclock/DeskClock$OnTapListener;->mLastTouchTime:J

    .line 425
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/android/deskclock/DeskClock$OnTapListener;->mLastTouchX:F

    .line 426
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/android/deskclock/DeskClock$OnTapListener;->mLastTouchY:F

    .line 427
    iget-object v4, p0, Lcom/android/deskclock/DeskClock$OnTapListener;->mMakePressedTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 428
    iget-object v4, p0, Lcom/android/deskclock/DeskClock$OnTapListener;->mMakePressedTextView:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/deskclock/DeskClock$OnTapListener;->mPressedColor:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 432
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/android/deskclock/DeskClock$OnTapListener;->mLastTouchX:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 433
    .local v2, xDiff:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/android/deskclock/DeskClock$OnTapListener;->mLastTouchY:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 434
    .local v3, yDiff:F
    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/deskclock/DeskClock$OnTapListener;->mLastTouchTime:J

    sub-long v0, v4, v6

    .line 435
    .local v0, timeDiff:J
    cmpg-float v4, v2, v8

    if-gez v4, :cond_2

    cmpg-float v4, v3, v8

    if-gez v4, :cond_2

    const-wide/16 v4, 0x1f4

    cmp-long v4, v0, v4

    if-gez v4, :cond_2

    .line 437
    iget-object v4, p0, Lcom/android/deskclock/DeskClock$OnTapListener;->mMakePressedTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 438
    iget-object p1, p0, Lcom/android/deskclock/DeskClock$OnTapListener;->mMakePressedTextView:Landroid/widget/TextView;

    .line 440
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/deskclock/DeskClock$OnTapListener;->processClick(Landroid/view/View;)V

    .line 441
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock$OnTapListener;->resetValues()V

    .line 442
    const/4 v4, 0x1

    goto :goto_1

    .line 444
    :cond_2
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock$OnTapListener;->resetValues()V

    goto :goto_0

    .line 447
    .end local v0           #timeDiff:J
    .end local v2           #xDiff:F
    .end local v3           #yDiff:F
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/android/deskclock/DeskClock$OnTapListener;->mLastTouchX:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 448
    .restart local v2       #xDiff:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/android/deskclock/DeskClock$OnTapListener;->mLastTouchY:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 449
    .restart local v3       #yDiff:F
    cmpl-float v4, v2, v8

    if-gez v4, :cond_3

    cmpl-float v4, v3, v8

    if-ltz v4, :cond_0

    .line 450
    :cond_3
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock$OnTapListener;->resetValues()V

    goto :goto_0

    .line 422
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected abstract processClick(Landroid/view/View;)V
.end method

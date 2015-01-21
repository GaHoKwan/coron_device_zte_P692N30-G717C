.class public Lzte/com/cn/cloudnotepad/ui/widget/MyScrollView;
.super Landroid/widget/ScrollView;
.source "MyScrollView.java"


# instance fields
.field private mPreX:F

.field private mPreY:F

.field private mXDistance:F

.field private mYDistance:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    .line 27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 44
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_1
    return v2

    .line 29
    :pswitch_1
    const/4 v2, 0x0

    iput v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/MyScrollView;->mYDistance:F

    iput v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/MyScrollView;->mXDistance:F

    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/MyScrollView;->mPreX:F

    .line 31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/MyScrollView;->mPreY:F

    goto :goto_0

    .line 34
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 35
    .local v0, curX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 36
    .local v1, curY:F
    iget v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/MyScrollView;->mXDistance:F

    iget v3, p0, Lzte/com/cn/cloudnotepad/ui/widget/MyScrollView;->mPreX:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/MyScrollView;->mXDistance:F

    .line 37
    iget v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/MyScrollView;->mYDistance:F

    iget v3, p0, Lzte/com/cn/cloudnotepad/ui/widget/MyScrollView;->mPreY:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/MyScrollView;->mYDistance:F

    .line 38
    iput v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/MyScrollView;->mPreX:F

    .line 39
    iput v1, p0, Lzte/com/cn/cloudnotepad/ui/widget/MyScrollView;->mPreY:F

    .line 40
    iget v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/MyScrollView;->mXDistance:F

    iget v3, p0, Lzte/com/cn/cloudnotepad/ui/widget/MyScrollView;->mYDistance:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 41
    const/4 v2, 0x0

    goto :goto_1

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

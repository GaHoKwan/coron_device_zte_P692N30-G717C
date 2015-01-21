.class Lcom/android/packageinstaller/CaffeinatedScrollView;
.super Landroid/widget/ScrollView;
.source "CaffeinatedScrollView.java"


# instance fields
.field private mBottomSlop:I

.field private mFullScrollAction:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method private checkFullScrollAction()V
    .locals 4

    .prologue
    .line 66
    iget-object v2, p0, Lcom/android/packageinstaller/CaffeinatedScrollView;->mFullScrollAction:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    .line 67
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 68
    .local v0, daBottom:I
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int v1, v2, v3

    .line 69
    .local v1, screenBottom:I
    sub-int v2, v0, v1

    iget v3, p0, Lcom/android/packageinstaller/CaffeinatedScrollView;->mBottomSlop:I

    if-ge v2, v3, :cond_0

    .line 70
    iget-object v2, p0, Lcom/android/packageinstaller/CaffeinatedScrollView;->mFullScrollAction:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 71
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/packageinstaller/CaffeinatedScrollView;->mFullScrollAction:Ljava/lang/Runnable;

    .line 74
    .end local v0           #daBottom:I
    .end local v1           #screenBottom:I
    :cond_0
    return-void
.end method


# virtual methods
.method public awakenScrollBars()Z
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 56
    invoke-direct {p0}, Lcom/android/packageinstaller/CaffeinatedScrollView;->checkFullScrollAction()V

    .line 57
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 61
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 62
    invoke-direct {p0}, Lcom/android/packageinstaller/CaffeinatedScrollView;->checkFullScrollAction()V

    .line 63
    return-void
.end method

.method public setFullScrollAction(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "action"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/packageinstaller/CaffeinatedScrollView;->mFullScrollAction:Ljava/lang/Runnable;

    .line 50
    const/high16 v0, 0x4080

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/packageinstaller/CaffeinatedScrollView;->mBottomSlop:I

    .line 51
    return-void
.end method

.class public Lcom/android/launcher2/DrawableStateProxyView;
.super Landroid/widget/LinearLayout;
.source "DrawableStateProxyView.java"


# instance fields
.field private mView:Landroid/view/View;

.field private mViewId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/DrawableStateProxyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/DrawableStateProxyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    sget-object v1, Lcom/android/launcher/R$styleable;->DrawableStateProxyView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 49
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/DrawableStateProxyView;->mViewId:I

    .line 50
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    invoke-virtual {p0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 53
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 3

    .prologue
    .line 57
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 59
    iget-object v1, p0, Lcom/android/launcher2/DrawableStateProxyView;->mView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 61
    .local v0, parent:Landroid/view/View;
    iget v1, p0, Lcom/android/launcher2/DrawableStateProxyView;->mViewId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/DrawableStateProxyView;->mView:Landroid/view/View;

    .line 63
    .end local v0           #parent:Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/DrawableStateProxyView;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 64
    iget-object v1, p0, Lcom/android/launcher2/DrawableStateProxyView;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->isHovered()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setHovered(Z)V

    .line 65
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

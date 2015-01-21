.class public Lcom/sohu/inputmethod/expression/ExpressionViewContainer;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:I

.field private a:Landroid/content/Context;

.field private a:Landroid/widget/ImageView;

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/sohu/inputmethod/expression/ExpressionViewContainer;->a:I

    .line 28
    iput-object p1, p0, Lcom/sohu/inputmethod/expression/ExpressionViewContainer;->a:Landroid/content/Context;

    .line 29
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/ImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/sohu/inputmethod/expression/ExpressionViewContainer;->a:Landroid/widget/ImageView;

    .line 75
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    const-string v0, "==================on layout================"

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/expression/ExpressionViewContainer;->a(Ljava/lang/String;)V

    .line 48
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 49
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionViewContainer;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionViewContainer;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionViewContainer;->a:Landroid/widget/ImageView;

    iget v1, p0, Lcom/sohu/inputmethod/expression/ExpressionViewContainer;->b:I

    iget v2, p0, Lcom/sohu/inputmethod/expression/ExpressionViewContainer;->c:I

    iget v3, p0, Lcom/sohu/inputmethod/expression/ExpressionViewContainer;->d:I

    iget v4, p0, Lcom/sohu/inputmethod/expression/ExpressionViewContainer;->e:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 52
    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x4000

    .line 38
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionViewContainer;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 39
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 40
    iget v1, p0, Lcom/sohu/inputmethod/expression/ExpressionViewContainer;->a:I

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 41
    invoke-super {p0, v0, v1}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 42
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setDeleteButtonPosition(IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    iput p1, p0, Lcom/sohu/inputmethod/expression/ExpressionViewContainer;->b:I

    .line 79
    iput p3, p0, Lcom/sohu/inputmethod/expression/ExpressionViewContainer;->d:I

    .line 80
    iput p2, p0, Lcom/sohu/inputmethod/expression/ExpressionViewContainer;->c:I

    .line 81
    iput p4, p0, Lcom/sohu/inputmethod/expression/ExpressionViewContainer;->e:I

    .line 82
    return-void
.end method

.method public setExpressionViewHeight(I)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput p1, p0, Lcom/sohu/inputmethod/expression/ExpressionViewContainer;->a:I

    .line 33
    invoke-virtual {p0}, Lcom/sohu/inputmethod/expression/ExpressionViewContainer;->requestLayout()V

    .line 34
    return-void
.end method

.class public Laow;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/sogou/ComposingView;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/sogou/ComposingView;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Laow;->a:Lcom/sohu/inputmethod/sogou/ComposingView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    const v3, 0x3c23d70a

    .line 114
    iget-object v0, p0, Laow;->a:Lcom/sohu/inputmethod/sogou/ComposingView;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/ComposingView;->a(Lcom/sohu/inputmethod/sogou/ComposingView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    cmpl-float v0, p3, v1

    if-lez v0, :cond_1

    .line 116
    iget-object v0, p0, Laow;->a:Lcom/sohu/inputmethod/sogou/ComposingView;

    iget-object v1, p0, Laow;->a:Lcom/sohu/inputmethod/sogou/ComposingView;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/ComposingView;->a(Lcom/sohu/inputmethod/sogou/ComposingView;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Laow;->a:Lcom/sohu/inputmethod/sogou/ComposingView;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/ComposingView;->a(Lcom/sohu/inputmethod/sogou/ComposingView;)F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/sogou/ComposingView;->a(Lcom/sohu/inputmethod/sogou/ComposingView;I)I

    .line 117
    iget-object v0, p0, Laow;->a:Lcom/sohu/inputmethod/sogou/ComposingView;

    mul-float v1, p3, v3

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/sogou/ComposingView;->b(Lcom/sohu/inputmethod/sogou/ComposingView;I)I

    .line 131
    :goto_0
    iget-object v0, p0, Laow;->a:Lcom/sohu/inputmethod/sogou/ComposingView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/ComposingView;->getScrollX()I

    move-result v0

    .line 132
    iget-object v1, p0, Laow;->a:Lcom/sohu/inputmethod/sogou/ComposingView;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/ComposingView;->b(Lcom/sohu/inputmethod/sogou/ComposingView;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Laow;->a:Lcom/sohu/inputmethod/sogou/ComposingView;

    invoke-static {v1, v0}, Lcom/sohu/inputmethod/sogou/ComposingView;->c(Lcom/sohu/inputmethod/sogou/ComposingView;I)I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 133
    :cond_0
    iget-object v0, p0, Laow;->a:Lcom/sohu/inputmethod/sogou/ComposingView;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/ComposingView;->a(Lcom/sohu/inputmethod/sogou/ComposingView;)V

    .line 137
    :goto_1
    return v4

    .line 119
    :cond_1
    iget-object v0, p0, Laow;->a:Lcom/sohu/inputmethod/sogou/ComposingView;

    invoke-static {v0, v2}, Lcom/sohu/inputmethod/sogou/ComposingView;->a(Lcom/sohu/inputmethod/sogou/ComposingView;I)I

    .line 120
    iget-object v0, p0, Laow;->a:Lcom/sohu/inputmethod/sogou/ComposingView;

    neg-float v1, p3

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/sogou/ComposingView;->b(Lcom/sohu/inputmethod/sogou/ComposingView;I)I

    goto :goto_0

    .line 123
    :cond_2
    cmpl-float v0, p3, v1

    if-lez v0, :cond_3

    .line 124
    iget-object v0, p0, Laow;->a:Lcom/sohu/inputmethod/sogou/ComposingView;

    invoke-static {v0, v2}, Lcom/sohu/inputmethod/sogou/ComposingView;->a(Lcom/sohu/inputmethod/sogou/ComposingView;I)I

    .line 125
    iget-object v0, p0, Laow;->a:Lcom/sohu/inputmethod/sogou/ComposingView;

    mul-float v1, p3, v3

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/sogou/ComposingView;->b(Lcom/sohu/inputmethod/sogou/ComposingView;I)I

    goto :goto_0

    .line 127
    :cond_3
    iget-object v0, p0, Laow;->a:Lcom/sohu/inputmethod/sogou/ComposingView;

    iget-object v1, p0, Laow;->a:Lcom/sohu/inputmethod/sogou/ComposingView;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/ComposingView;->a(Lcom/sohu/inputmethod/sogou/ComposingView;)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Laow;->a:Lcom/sohu/inputmethod/sogou/ComposingView;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/ComposingView;->b(Lcom/sohu/inputmethod/sogou/ComposingView;)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/sogou/ComposingView;->a(Lcom/sohu/inputmethod/sogou/ComposingView;I)I

    .line 128
    iget-object v0, p0, Laow;->a:Lcom/sohu/inputmethod/sogou/ComposingView;

    neg-float v1, p3

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/sogou/ComposingView;->b(Lcom/sohu/inputmethod/sogou/ComposingView;I)I

    goto :goto_0

    .line 136
    :cond_4
    iget-object v0, p0, Laow;->a:Lcom/sohu/inputmethod/sogou/ComposingView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/ComposingView;->invalidate()V

    goto :goto_1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Laow;->a:Lcom/sohu/inputmethod/sogou/ComposingView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/ComposingView;->getWidth()I

    .line 143
    iget-object v0, p0, Laow;->a:Lcom/sohu/inputmethod/sogou/ComposingView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/ComposingView;->getScrollX()I

    move-result v0

    .line 144
    float-to-int v1, p3

    add-int/2addr v0, v1

    .line 145
    iget-object v1, p0, Laow;->a:Lcom/sohu/inputmethod/sogou/ComposingView;

    invoke-static {v1, v0}, Lcom/sohu/inputmethod/sogou/ComposingView;->a(Lcom/sohu/inputmethod/sogou/ComposingView;I)I

    .line 146
    iget-object v1, p0, Laow;->a:Lcom/sohu/inputmethod/sogou/ComposingView;

    iget-object v2, p0, Laow;->a:Lcom/sohu/inputmethod/sogou/ComposingView;

    invoke-virtual {v2}, Lcom/sohu/inputmethod/sogou/ComposingView;->getScrollY()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/sohu/inputmethod/sogou/ComposingView;->scrollTo(II)V

    .line 148
    const/4 v0, 0x1

    return v0
.end method

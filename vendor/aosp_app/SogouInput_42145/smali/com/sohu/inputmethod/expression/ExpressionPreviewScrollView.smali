.class public Lcom/sohu/inputmethod/expression/ExpressionPreviewScrollView;
.super Landroid/widget/ScrollView;
.source "SourceFile"


# instance fields
.field private a:I

.field private a:Landroid/content/Context;

.field private final a:Ljava/lang/String;

.field private final a:Z

.field private b:I

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 13
    const-string v0, "ExpressionPreviewScrollView"

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewScrollView;->a:Ljava/lang/String;

    .line 14
    iput-boolean v1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewScrollView;->a:Z

    .line 16
    iput v1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewScrollView;->a:I

    .line 17
    iput v1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewScrollView;->b:I

    .line 18
    iput-boolean v2, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewScrollView;->b:Z

    .line 19
    iput-boolean v2, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewScrollView;->c:Z

    .line 24
    iput-object p1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewScrollView;->a:Landroid/content/Context;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const-string v0, "ExpressionPreviewScrollView"

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewScrollView;->a:Ljava/lang/String;

    .line 14
    iput-boolean v1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewScrollView;->a:Z

    .line 16
    iput v1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewScrollView;->a:I

    .line 17
    iput v1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewScrollView;->b:I

    .line 18
    iput-boolean v2, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewScrollView;->b:Z

    .line 19
    iput-boolean v2, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewScrollView;->c:Z

    .line 35
    iput-object p1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewScrollView;->a:Landroid/content/Context;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    const-string v0, "ExpressionPreviewScrollView"

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewScrollView;->a:Ljava/lang/String;

    .line 14
    iput-boolean v1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewScrollView;->a:Z

    .line 16
    iput v1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewScrollView;->a:I

    .line 17
    iput v1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewScrollView;->b:I

    .line 18
    iput-boolean v2, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewScrollView;->b:Z

    .line 19
    iput-boolean v2, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewScrollView;->c:Z

    .line 29
    iput-object p1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewScrollView;->a:Landroid/content/Context;

    .line 31
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewScrollView;->c:Z

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    .line 46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    .line 47
    packed-switch v0, :pswitch_data_0

    .line 72
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 49
    :pswitch_1
    iput v2, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewScrollView;->a:I

    .line 50
    iput v3, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewScrollView;->b:I

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewScrollView;->b:Z

    goto :goto_0

    .line 54
    :pswitch_2
    iget v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewScrollView;->a:I

    if-le v2, v0, :cond_2

    iget v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewScrollView;->a:I

    sub-int v0, v2, v0

    .line 55
    :goto_2
    iget v2, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewScrollView;->b:I

    if-le v3, v2, :cond_3

    iget v2, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewScrollView;->b:I

    sub-int v2, v3, v2

    .line 57
    :goto_3
    if-ge v2, v0, :cond_1

    .line 58
    iput-boolean v1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewScrollView;->b:Z

    .line 60
    :cond_1
    iget-boolean v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewScrollView;->b:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 61
    goto :goto_1

    .line 54
    :cond_2
    iget v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewScrollView;->a:I

    sub-int/2addr v0, v2

    goto :goto_2

    .line 55
    :cond_3
    iget v2, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewScrollView;->b:I

    sub-int/2addr v2, v3

    goto :goto_3

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewScrollView;->c:Z

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewScrollView;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->fY:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->fY:I

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewScrollView;->c:Z

    .line 89
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setNeedCollectVerticalScroll(Z)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewScrollView;->c:Z

    .line 94
    return-void
.end method

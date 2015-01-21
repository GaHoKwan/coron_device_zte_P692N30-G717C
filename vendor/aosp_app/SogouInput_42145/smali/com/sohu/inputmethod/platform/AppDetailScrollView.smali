.class public Lcom/sohu/inputmethod/platform/AppDetailScrollView;
.super Landroid/widget/ScrollView;
.source "SourceFile"


# instance fields
.field private a:I

.field private final a:Ljava/lang/String;

.field private final a:Z

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 11
    const-string v0, "AppDetailScrollView"

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailScrollView;->a:Ljava/lang/String;

    .line 12
    iput-boolean v1, p0, Lcom/sohu/inputmethod/platform/AppDetailScrollView;->a:Z

    .line 14
    iput v1, p0, Lcom/sohu/inputmethod/platform/AppDetailScrollView;->a:I

    .line 15
    iput v1, p0, Lcom/sohu/inputmethod/platform/AppDetailScrollView;->b:I

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    const-string v0, "AppDetailScrollView"

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailScrollView;->a:Ljava/lang/String;

    .line 12
    iput-boolean v1, p0, Lcom/sohu/inputmethod/platform/AppDetailScrollView;->a:Z

    .line 14
    iput v1, p0, Lcom/sohu/inputmethod/platform/AppDetailScrollView;->a:I

    .line 15
    iput v1, p0, Lcom/sohu/inputmethod/platform/AppDetailScrollView;->b:I

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 11
    const-string v0, "AppDetailScrollView"

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailScrollView;->a:Ljava/lang/String;

    .line 12
    iput-boolean v1, p0, Lcom/sohu/inputmethod/platform/AppDetailScrollView;->a:Z

    .line 14
    iput v1, p0, Lcom/sohu/inputmethod/platform/AppDetailScrollView;->a:I

    .line 15
    iput v1, p0, Lcom/sohu/inputmethod/platform/AppDetailScrollView;->b:I

    .line 24
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    .line 39
    packed-switch v0, :pswitch_data_0

    .line 60
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 41
    :pswitch_1
    iput v1, p0, Lcom/sohu/inputmethod/platform/AppDetailScrollView;->a:I

    .line 42
    iput v2, p0, Lcom/sohu/inputmethod/platform/AppDetailScrollView;->b:I

    goto :goto_0

    .line 45
    :pswitch_2
    iget v0, p0, Lcom/sohu/inputmethod/platform/AppDetailScrollView;->a:I

    if-le v1, v0, :cond_1

    iget v0, p0, Lcom/sohu/inputmethod/platform/AppDetailScrollView;->a:I

    sub-int v0, v1, v0

    .line 46
    :goto_2
    iget v1, p0, Lcom/sohu/inputmethod/platform/AppDetailScrollView;->b:I

    if-le v2, v1, :cond_2

    iget v1, p0, Lcom/sohu/inputmethod/platform/AppDetailScrollView;->b:I

    sub-int v1, v2, v1

    .line 48
    :goto_3
    if-ge v1, v0, :cond_0

    .line 49
    const/4 v0, 0x0

    goto :goto_1

    .line 45
    :cond_1
    iget v0, p0, Lcom/sohu/inputmethod/platform/AppDetailScrollView;->a:I

    sub-int/2addr v0, v1

    goto :goto_2

    .line 46
    :cond_2
    iget v1, p0, Lcom/sohu/inputmethod/platform/AppDetailScrollView;->b:I

    sub-int/2addr v1, v2

    goto :goto_3

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

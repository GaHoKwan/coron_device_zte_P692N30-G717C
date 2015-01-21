.class Lape;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lapc;

.field private a:[I


# direct methods
.method private constructor <init>(Lapc;)V
    .locals 1
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lape;->a:Lapc;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 83
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lape;->a:[I

    return-void
.end method

.method synthetic constructor <init>(Lapc;Lapd;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lape;-><init>(Lapc;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 0

    .prologue
    .line 86
    invoke-virtual {p0, p0}, Lape;->post(Ljava/lang/Runnable;)Z

    .line 87
    return-void
.end method

.method b()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lape;->a:Lapc;

    invoke-virtual {v0}, Lapc;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lape;->a:Lapc;

    invoke-virtual {v0}, Lapc;->dismiss()V

    .line 92
    :cond_0
    invoke-virtual {p0, p0}, Lape;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 93
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v1, -0x2

    const/4 v4, 0x1

    .line 96
    iget-object v0, p0, Lape;->a:Lapc;

    invoke-static {v0}, Lapc;->a(Lapc;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 98
    iget-object v0, p0, Lape;->a:Lapc;

    iget-object v1, p0, Lape;->a:Lapc;

    invoke-static {v1}, Lapc;->a(Lapc;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lapc;->setWidth(I)V

    .line 99
    iget-object v0, p0, Lape;->a:Lapc;

    iget-object v1, p0, Lape;->a:Lapc;

    invoke-static {v1}, Lapc;->a(Lapc;)Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lapc;->setHeight(I)V

    .line 101
    new-array v1, v5, [I

    .line 102
    iget-object v0, p0, Lape;->a:Lapc;

    invoke-static {v0}, Lapc;->b(Lapc;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lape;->a:[I

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 103
    iget-object v0, p0, Lape;->a:Lapc;

    invoke-static {v0}, Lapc;->b(Lapc;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 105
    iget-object v0, p0, Lape;->a:Lapc;

    invoke-static {v0}, Lapc;->a(Lapc;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    sget v2, Lafp;->a:F

    sget v3, Lafp;->b:F

    add-float/2addr v2, v3

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 107
    iget-object v0, p0, Lape;->a:Lapc;

    invoke-static {v0}, Lapc;->a(Lapc;)Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a()I

    move-result v0

    .line 108
    iget-object v2, p0, Lape;->a:Lapc;

    invoke-static {v2}, Lapc;->a(Lapc;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v2, v0

    .line 109
    iget-object v0, p0, Lape;->a:[I

    aget v0, v0, v4

    iget-object v3, p0, Lape;->a:Lapc;

    invoke-virtual {v3}, Lapc;->getHeight()I

    move-result v3

    sub-int v3, v0, v3

    iget-object v0, p0, Lape;->a:Lapc;

    invoke-static {v0}, Lapc;->b(Lapc;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a()I

    move-result v0

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    .line 110
    iget-object v3, p0, Lape;->a:Lapc;

    invoke-static {v3}, Lapc;->a(Lapc;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    aget v0, v1, v4

    iget-object v1, p0, Lape;->a:Lapc;

    invoke-static {v1}, Lapc;->a(Lapc;)I

    move-result v1

    sub-int/2addr v0, v1

    neg-int v0, v0

    iget-object v1, p0, Lape;->a:Lapc;

    invoke-virtual {v1}, Lapc;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 114
    :cond_0
    iget-object v1, p0, Lape;->a:Lapc;

    invoke-static {v1}, Lapc;->a(Lapc;)Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b()I

    move-result v1

    if-eq v1, v5, :cond_1

    iget-object v1, p0, Lape;->a:Lapc;

    invoke-static {v1}, Lapc;->a(Lapc;)Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    :cond_1
    iget-object v1, p0, Lape;->a:Lapc;

    invoke-static {v1}, Lapc;->a(Lapc;)Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->c()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 116
    iget-object v1, p0, Lape;->a:Lapc;

    invoke-virtual {v1}, Lapc;->dismiss()V

    .line 119
    :cond_2
    iget-object v1, p0, Lape;->a:Lapc;

    invoke-virtual {v1}, Lapc;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 120
    iget-object v1, p0, Lape;->a:Lapc;

    iget-object v3, p0, Lape;->a:Lapc;

    invoke-virtual {v3}, Lapc;->getWidth()I

    move-result v3

    iget-object v4, p0, Lape;->a:Lapc;

    invoke-virtual {v4}, Lapc;->getHeight()I

    move-result v4

    invoke-virtual {v1, v2, v0, v3, v4}, Lapc;->update(IIII)V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_3
    iget-object v1, p0, Lape;->a:Lapc;

    iget-object v3, p0, Lape;->a:Lapc;

    invoke-static {v3}, Lapc;->b(Lapc;)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x33

    invoke-virtual {v1, v3, v4, v2, v0}, Lapc;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method

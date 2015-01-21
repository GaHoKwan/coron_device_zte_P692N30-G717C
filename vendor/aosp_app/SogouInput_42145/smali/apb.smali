.class Lapb;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Laoz;

.field private a:[I


# direct methods
.method private constructor <init>(Laoz;)V
    .locals 1
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lapb;->a:Laoz;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 77
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lapb;->a:[I

    return-void
.end method

.method synthetic constructor <init>(Laoz;Lapa;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lapb;-><init>(Laoz;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 0

    .prologue
    .line 80
    invoke-virtual {p0, p0}, Lapb;->post(Ljava/lang/Runnable;)Z

    .line 81
    return-void
.end method

.method b()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lapb;->a:Laoz;

    invoke-virtual {v0}, Laoz;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lapb;->a:Laoz;

    invoke-virtual {v0}, Laoz;->dismiss()V

    .line 85
    :cond_0
    invoke-virtual {p0, p0}, Lapb;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 86
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, -0x2

    .line 89
    iget-object v0, p0, Lapb;->a:Laoz;

    invoke-static {v0}, Laoz;->a(Laoz;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/ViewGroup;->measure(II)V

    .line 90
    iget-object v0, p0, Lapb;->a:Laoz;

    iget-object v1, p0, Lapb;->a:Laoz;

    invoke-static {v1}, Laoz;->a(Laoz;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Laoz;->setWidth(I)V

    .line 91
    iget-object v0, p0, Lapb;->a:Laoz;

    iget-object v1, p0, Lapb;->a:Laoz;

    invoke-static {v1}, Laoz;->a(Laoz;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Laoz;->setHeight(I)V

    .line 93
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 94
    iget-object v0, p0, Lapb;->a:Laoz;

    invoke-static {v0}, Laoz;->a(Laoz;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lapb;->a:[I

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 95
    iget-object v0, p0, Lapb;->a:Laoz;

    invoke-static {v0}, Laoz;->a(Laoz;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 96
    iget-object v0, p0, Lapb;->a:Laoz;

    invoke-static {v0}, Laoz;->a(Laoz;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a()I

    move-result v0

    .line 97
    iget-object v2, p0, Lapb;->a:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 98
    iget-object v3, p0, Lapb;->a:[I

    aget v3, v3, v5

    iget-object v4, p0, Lapb;->a:Laoz;

    invoke-virtual {v4}, Laoz;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    .line 99
    iget-object v3, p0, Lapb;->a:Laoz;

    invoke-static {v3}, Laoz;->a(Laoz;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    aget v0, v1, v5

    iget-object v1, p0, Lapb;->a:Laoz;

    invoke-static {v1}, Laoz;->a(Laoz;)I

    move-result v1

    sub-int/2addr v0, v1

    neg-int v0, v0

    iget-object v1, p0, Lapb;->a:Laoz;

    invoke-virtual {v1}, Laoz;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 103
    :cond_0
    iget-object v1, p0, Lapb;->a:Laoz;

    invoke-virtual {v1}, Laoz;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    iget-object v1, p0, Lapb;->a:Laoz;

    iget-object v3, p0, Lapb;->a:Laoz;

    invoke-virtual {v3}, Laoz;->getWidth()I

    move-result v3

    iget-object v4, p0, Lapb;->a:Laoz;

    invoke-virtual {v4}, Laoz;->getHeight()I

    move-result v4

    invoke-virtual {v1, v2, v0, v3, v4}, Laoz;->update(IIII)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v1, p0, Lapb;->a:Laoz;

    iget-object v3, p0, Lapb;->a:Laoz;

    invoke-static {v3}, Laoz;->a(Laoz;)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x33

    invoke-virtual {v1, v3, v4, v2, v0}, Laoz;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method

.class Lajx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lajq;

.field final synthetic a:Landroid/view/View;


# direct methods
.method constructor <init>(Lajq;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 975
    iput-object p1, p0, Lajx;->a:Lajq;

    iput-object p2, p0, Lajx;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter
    .parameter

    .prologue
    .line 977
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 978
    if-nez v0, :cond_4

    .line 979
    iget-object v0, p0, Lajx;->a:Lajq;

    invoke-static {v0}, Lajq;->a(Lajq;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 980
    const/4 v0, 0x0

    .line 1021
    :goto_0
    return v0

    .line 983
    :cond_0
    iget-object v0, p0, Lajx;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 984
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v2, p0, Lajx;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int v5, v1, v2

    .line 985
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v2, p0, Lajx;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v4, v1, v2

    .line 987
    const/4 v3, 0x3

    .line 988
    const/4 v2, 0x2

    .line 990
    const/4 v1, 0x2

    new-array v6, v1, [I

    .line 991
    iget-object v1, p0, Lajx;->a:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 993
    const/4 v1, 0x0

    aget v1, v6, v1

    iget v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v7, v1, v7

    .line 994
    const/4 v1, 0x1

    aget v1, v6, v1

    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v1, v8

    .line 996
    iget-object v8, p0, Lajx;->a:Lajq;

    invoke-static {v8}, Lajq;->a(Lajq;)Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 997
    const/4 v8, 0x2

    new-array v8, v8, [I

    .line 998
    iget-object v9, p0, Lajx;->a:Lajq;

    invoke-static {v9}, Lajq;->a(Lajq;)Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->getLocationOnScreen([I)V

    .line 999
    const/4 v9, 0x1

    aget v9, v8, v9

    if-ge v1, v9, :cond_1

    .line 1000
    const/4 v2, 0x1

    aget v2, v8, v2

    sub-int v1, v2, v1

    sub-int/2addr v4, v1

    .line 1001
    const/4 v3, 0x1

    .line 1002
    const/4 v1, 0x1

    aget v1, v8, v1

    .line 1003
    const/4 v2, 0x0

    .line 1007
    :cond_1
    iget-object v8, p0, Lajx;->a:Lajq;

    invoke-static {v8}, Lajq;->a(Lajq;)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 1008
    const/4 v8, 0x2

    new-array v8, v8, [I

    .line 1009
    iget-object v9, p0, Lajx;->a:Lajq;

    invoke-static {v9}, Lajq;->a(Lajq;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1010
    const/4 v9, 0x1

    aget v9, v6, v9

    add-int/2addr v9, v4

    const/4 v10, 0x1

    aget v10, v8, v10

    if-le v9, v10, :cond_2

    .line 1011
    const/4 v3, 0x1

    aget v3, v8, v3

    const/4 v4, 0x1

    aget v4, v6, v4

    sub-int/2addr v3, v4

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int v4, v3, v0

    .line 1012
    const/4 v3, 0x2

    .line 1016
    :cond_2
    iget-object v0, p0, Lajx;->a:Lajq;

    invoke-static {v0}, Lajq;->a(Lajq;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v6, p0, Lajx;->a:Lajq;

    add-int/2addr v3, v4

    invoke-virtual {v6, v5, v3}, Lajq;->a(II)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1017
    iget-object v0, p0, Lajx;->a:Lajq;

    invoke-static {v0}, Lajq;->a(Lajq;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v3, p0, Lajx;->a:Landroid/view/View;

    const/16 v4, 0x33

    sub-int/2addr v1, v2

    invoke-virtual {v0, v3, v4, v7, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1021
    :cond_3
    :goto_1
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1018
    :cond_4
    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1019
    :cond_5
    iget-object v0, p0, Lajx;->a:Lajq;

    invoke-static {v0}, Lajq;->a(Lajq;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_1
.end method

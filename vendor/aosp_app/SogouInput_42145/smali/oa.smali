.class Loa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lnr;


# direct methods
.method constructor <init>(Lnr;)V
    .locals 0
    .parameter

    .prologue
    .line 588
    iput-object p1, p0, Loa;->a:Lnr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .parameter

    .prologue
    const/16 v3, 0x69

    const/16 v5, 0x8

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 593
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 594
    if-eqz v0, :cond_1

    .line 595
    iget-object v1, p0, Loa;->a:Lnr;

    invoke-static {v1, v2}, Lnr;->c(Lnr;Z)Z

    .line 596
    iget-object v1, p0, Loa;->a:Lnr;

    invoke-static {v1}, Lnr;->a(Lnr;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 597
    iget-object v1, p0, Loa;->a:Lnr;

    invoke-static {v1}, Lnr;->a(Lnr;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 599
    :cond_0
    iget-object v1, p0, Loa;->a:Lnr;

    invoke-static {v1}, Lnr;->b(Lnr;)V

    .line 600
    iget-object v1, p0, Loa;->a:Lnr;

    invoke-static {v1}, Lnr;->a(Lnr;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 601
    iget-object v1, p0, Loa;->a:Lnr;

    invoke-static {v1}, Lnr;->a(Lnr;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 602
    iget-object v1, p0, Loa;->a:Lnr;

    invoke-static {v1}, Lnr;->a(Lnr;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Loa;->a:Lnr;

    invoke-static {v2}, Lnr;->a(Lnr;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 603
    iget-object v1, p0, Loa;->a:Lnr;

    invoke-static {v1}, Lnr;->a(Lnr;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040004

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 604
    iget-object v2, p0, Loa;->a:Lnr;

    invoke-static {v2}, Lnr;->a(Lnr;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 605
    iget-object v1, p0, Loa;->a:Lnr;

    invoke-static {v1}, Lnr;->b(Lnr;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 607
    iget-object v1, p0, Loa;->a:Lnr;

    invoke-static {v1}, Lnr;->b(Lnr;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Loa;->a:Lnr;

    invoke-static {v2}, Lnr;->a(Lnr;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020058

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 608
    iget-object v1, p0, Loa;->a:Lnr;

    invoke-static {v1}, Lnr;->a(Lnr;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 609
    iget-object v1, p0, Loa;->a:Lnr;

    invoke-static {v1}, Lnr;->a(Lnr;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 610
    iget-object v1, p0, Loa;->a:Lnr;

    invoke-static {v1}, Lnr;->c(Lnr;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 611
    iget-object v1, p0, Loa;->a:Lnr;

    invoke-static {v1}, Lnr;->a(Lnr;)Lcom/sohu/inputmethod/expression/ExpressionTabScrollView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sohu/inputmethod/expression/ExpressionTabScrollView;->setCanScroll(Z)V

    .line 612
    iget-object v1, p0, Loa;->a:Lnr;

    iget-object v2, p0, Loa;->a:Lnr;

    iget-object v3, p0, Loa;->a:Lnr;

    invoke-static {v3}, Lnr;->a(Lnr;)Lcom/sohu/inputmethod/expression/ExpressionViewContainer;

    move-result-object v3

    invoke-static {v2, v3}, Lnr;->a(Lnr;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v1, v2}, Lnr;->a(Lnr;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 613
    iget-object v1, p0, Loa;->a:Lnr;

    iget-object v2, p0, Loa;->a:Lnr;

    iget-object v3, p0, Loa;->a:Lnr;

    invoke-static {v3}, Lnr;->a(Lnr;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-static {v2, v3}, Lnr;->a(Lnr;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v1, v2}, Lnr;->b(Lnr;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 615
    iget-object v1, p0, Loa;->a:Lnr;

    invoke-static {v1}, Lnr;->a(Lnr;)Lcom/sohu/inputmethod/expression/ExpressionTabScrollView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sohu/inputmethod/expression/ExpressionTabScrollView;->getScrollX()I

    move-result v1

    .line 616
    iget-object v2, p0, Loa;->a:Lnr;

    invoke-static {v2, v1}, Lnr;->a(Lnr;I)V

    .line 618
    iget-object v1, p0, Loa;->a:Lnr;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v1, v2}, Lnr;->c(Lnr;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 619
    iget-object v1, p0, Loa;->a:Lnr;

    invoke-static {v1}, Lnr;->c(Lnr;)Landroid/graphics/Rect;

    move-result-object v1

    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 620
    iget-object v1, p0, Loa;->a:Lnr;

    invoke-static {v1}, Lnr;->c(Lnr;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Loa;->a:Lnr;

    invoke-static {v2}, Lnr;->c(Lnr;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sget v3, Lnr;->o:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 621
    iget-object v1, p0, Loa;->a:Lnr;

    invoke-static {v1}, Lnr;->c(Lnr;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Loa;->a:Lnr;

    invoke-static {v2}, Lnr;->a(Lnr;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 622
    iget-object v1, p0, Loa;->a:Lnr;

    invoke-static {v1}, Lnr;->c(Lnr;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Loa;->a:Lnr;

    invoke-static {v2}, Lnr;->a(Lnr;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 624
    iget-object v1, p0, Loa;->a:Lnr;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v1, v2}, Lnr;->d(Lnr;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 625
    iget-object v1, p0, Loa;->a:Lnr;

    invoke-static {v1}, Lnr;->d(Lnr;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Loa;->a:Lnr;

    invoke-static {v2}, Lnr;->c(Lnr;)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 626
    iget-object v1, p0, Loa;->a:Lnr;

    invoke-static {v1}, Lnr;->d(Lnr;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Loa;->a:Lnr;

    invoke-static {v2}, Lnr;->c(Lnr;)I

    move-result v2

    sget v3, Lnr;->o:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 627
    iget-object v1, p0, Loa;->a:Lnr;

    invoke-static {v1}, Lnr;->d(Lnr;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Loa;->a:Lnr;

    invoke-static {v2}, Lnr;->a(Lnr;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 628
    iget-object v1, p0, Loa;->a:Lnr;

    invoke-static {v1}, Lnr;->d(Lnr;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Loa;->a:Lnr;

    invoke-static {v2}, Lnr;->a(Lnr;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 630
    iget-object v1, p0, Loa;->a:Lnr;

    invoke-static {v1, v0}, Lnr;->a(Lnr;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 631
    iget-object v2, p0, Loa;->a:Lnr;

    invoke-static {v2}, Lnr;->c(Lnr;)Landroid/widget/ImageView;

    move-result-object v2

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 632
    iget-object v2, p0, Loa;->a:Lnr;

    invoke-static {v2}, Lnr;->c(Lnr;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {v1}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 634
    iget-object v1, p0, Loa;->a:Lnr;

    invoke-static {v1, v0}, Lnr;->a(Lnr;Ljava/lang/String;)Ljava/lang/String;

    .line 635
    iget-object v0, p0, Loa;->a:Lnr;

    iget-object v1, p0, Loa;->a:Lnr;

    invoke-static {v1}, Lnr;->b(Lnr;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Loa;->a:Lnr;

    invoke-static {v2}, Lnr;->b(Lnr;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Lnr;->c(Lnr;I)I

    .line 636
    iget-object v0, p0, Loa;->a:Lnr;

    iget-object v1, p0, Loa;->a:Lnr;

    invoke-static {v1}, Lnr;->e(Lnr;)I

    move-result v1

    invoke-static {v0, v1}, Lnr;->a(Lnr;I)I

    .line 637
    iget-object v0, p0, Loa;->a:Lnr;

    iget-object v1, p0, Loa;->a:Lnr;

    invoke-static {v1}, Lnr;->e(Lnr;)I

    move-result v1

    invoke-static {v0, v1}, Lnr;->b(Lnr;I)I

    .line 638
    iget-object v0, p0, Loa;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Loa;->a:Lnr;

    invoke-static {v1}, Lnr;->e(Lnr;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 639
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 641
    iget-object v0, p0, Loa;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Loa;->a:Lnr;

    invoke-static {v1}, Lnr;->g(Lnr;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 642
    const v1, 0x7f02014f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 645
    :cond_1
    return v4
.end method

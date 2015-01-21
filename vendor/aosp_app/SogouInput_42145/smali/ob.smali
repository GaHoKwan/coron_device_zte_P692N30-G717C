.class Lob;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lnr;


# direct methods
.method constructor <init>(Lnr;)V
    .locals 0
    .parameter

    .prologue
    .line 649
    iput-object p1, p0, Lob;->a:Lnr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    .line 653
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 654
    iget-object v1, p0, Lob;->a:Lnr;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "click package name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnr;->a(Lnr;Ljava/lang/String;)V

    .line 655
    iget-object v1, p0, Lob;->a:Lnr;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "last package name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lob;->a:Lnr;

    invoke-static {v3}, Lnr;->d(Lnr;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnr;->a(Lnr;Ljava/lang/String;)V

    .line 656
    iget-object v1, p0, Lob;->a:Lnr;

    invoke-static {v1}, Lnr;->a(Lnr;)Lcom/sohu/inputmethod/sogou/SogouIME;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 657
    iget-object v1, p0, Lob;->a:Lnr;

    invoke-static {v1}, Lnr;->a(Lnr;)Lcom/sohu/inputmethod/sogou/SogouIME;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->t()V

    .line 659
    :cond_0
    if-eqz v0, :cond_1

    .line 660
    iget-object v1, p0, Lob;->a:Lnr;

    invoke-static {v1}, Lnr;->d(Lnr;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 696
    :cond_1
    :goto_0
    return-void

    .line 663
    :cond_2
    iget-object v1, p0, Lob;->a:Lnr;

    invoke-static {v1, v0}, Lnr;->b(Lnr;Ljava/lang/String;)Ljava/lang/String;

    .line 664
    iget-object v1, p0, Lob;->a:Lnr;

    iget-object v2, p0, Lob;->a:Lnr;

    invoke-static {v2}, Lnr;->b(Lnr;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lob;->a:Lnr;

    invoke-static {v3}, Lnr;->d(Lnr;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v1, v2}, Lnr;->d(Lnr;I)I

    .line 665
    iget-object v1, p0, Lob;->a:Lnr;

    invoke-static {v1}, Lnr;->a(Lnr;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lob;->a:Lnr;

    invoke-static {v2}, Lnr;->h(Lnr;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 666
    iget-object v2, p0, Lob;->a:Lnr;

    iget-object v3, p0, Lob;->a:Lnr;

    invoke-static {v3}, Lnr;->d(Lnr;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnr;->a(Lnr;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 667
    const v3, 0x7f02014f

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 668
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 669
    sget v3, Lnr;->f:I

    sget v4, Lnr;->g:I

    sget v5, Lnr;->f:I

    sget v6, Lnr;->g:I

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 671
    invoke-static {v2}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 673
    iget-object v1, p0, Lob;->a:Lnr;

    iget-object v2, p0, Lob;->a:Lnr;

    invoke-static {v2}, Lnr;->b(Lnr;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lob;->a:Lnr;

    invoke-static {v3}, Lnr;->a(Lnr;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v1, v2}, Lnr;->e(Lnr;I)I

    .line 674
    iget-object v1, p0, Lob;->a:Lnr;

    invoke-static {v1}, Lnr;->a(Lnr;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lob;->a:Lnr;

    invoke-static {v2}, Lnr;->g(Lnr;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 675
    iget-object v2, p0, Lob;->a:Lnr;

    iget-object v3, p0, Lob;->a:Lnr;

    invoke-static {v3}, Lnr;->a(Lnr;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnr;->a(Lnr;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 676
    iget-object v3, p0, Lob;->a:Lnr;

    invoke-static {v3}, Lnr;->a(Lnr;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02006a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 677
    invoke-static {v3}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 678
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 680
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 681
    sget v3, Lnr;->f:I

    sget v4, Lnr;->g:I

    sget v5, Lnr;->f:I

    sget v6, Lnr;->g:I

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 683
    invoke-static {v2}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 684
    iget-object v1, p0, Lob;->a:Lnr;

    iget-object v2, p0, Lob;->a:Lnr;

    invoke-static {v2}, Lnr;->a(Lnr;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnr;->c(Lnr;Ljava/lang/String;)Ljava/lang/String;

    .line 686
    const-string v1, "base"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 687
    iget-object v1, p0, Lob;->a:Lnr;

    iget-object v2, p0, Lob;->a:Lnr;

    invoke-static {v2, v0}, Lnr;->a(Lnr;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lnr;->a(Lnr;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 689
    :cond_3
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 690
    const/16 v2, 0x66

    iput v2, v1, Landroid/os/Message;->what:I

    .line 691
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 692
    iget-object v0, p0, Lob;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

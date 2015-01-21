.class Lis;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhd;


# instance fields
.field final synthetic a:Liq;


# direct methods
.method constructor <init>(Liq;)V
    .locals 0
    .parameter

    .prologue
    .line 560
    iput-object p1, p0, Lis;->a:Liq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Integer;Landroid/graphics/Bitmap;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 564
    iget-object v0, p0, Lis;->a:Liq;

    iget-object v0, v0, Liq;->a:Lim;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--------------position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "------------ bitmap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lim;->a(Lim;Ljava/lang/String;)V

    .line 565
    const/4 v0, 0x0

    .line 566
    iget-object v1, p0, Lis;->a:Liq;

    iget-object v1, v1, Liq;->a:Lim;

    invoke-static {v1}, Lim;->b(Lim;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lis;->a:Liq;

    iget-object v2, v2, Liq;->a:Lim;

    invoke-static {v2}, Lim;->b(Lim;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 567
    iget-object v0, p0, Lis;->a:Liq;

    iget-object v0, v0, Liq;->a:Lim;

    invoke-static {v0}, Lim;->b(Lim;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhk;

    .line 569
    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, v0, Lhk;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 589
    :cond_1
    :goto_0
    return-void

    .line 572
    :cond_2
    if-eqz p3, :cond_1

    iget-object v0, p0, Lis;->a:Liq;

    iget-object v0, v0, Liq;->a:Lim;

    invoke-static {v0}, Lim;->a(Lim;)Lcom/sogou/theme/ThemeListView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 573
    iget-object v0, p0, Lis;->a:Liq;

    iget-object v0, v0, Liq;->a:Lim;

    invoke-static {v0}, Lim;->a(Lim;)Lcom/sogou/theme/ThemeListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sogou/theme/ThemeListView;->getFirstVisiblePosition()I

    move-result v0

    .line 574
    iget-object v1, p0, Lis;->a:Liq;

    iget-object v1, v1, Liq;->a:Lim;

    invoke-static {v1}, Lim;->a(Lim;)Lcom/sogou/theme/ThemeListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sogou/theme/ThemeListView;->getLastVisiblePosition()I

    move-result v1

    .line 575
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lis;->a:Liq;

    iget-object v3, v3, Liq;->a:Lim;

    invoke-static {v3}, Lim;->a(Lim;)I

    move-result v3

    div-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    .line 576
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lis;->a:Liq;

    iget-object v4, v4, Liq;->a:Lim;

    invoke-static {v4}, Lim;->a(Lim;)I

    move-result v4

    rem-int/2addr v3, v4

    .line 577
    iget-object v4, p0, Lis;->a:Liq;

    iget-object v4, v4, Liq;->a:Lim;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "------------firstPosition = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "    lastPostion = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "     row = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "     index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lim;->a(Lim;Ljava/lang/String;)V

    .line 578
    if-lt v2, v0, :cond_1

    if-gt v2, v1, :cond_1

    .line 579
    sub-int v0, v2, v0

    .line 580
    iget-object v1, p0, Lis;->a:Liq;

    iget-object v1, v1, Liq;->a:Lim;

    invoke-static {v1}, Lim;->a(Lim;)Lcom/sogou/theme/ThemeListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sogou/theme/ThemeListView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 581
    iget-object v1, p0, Lis;->a:Liq;

    iget-object v1, v1, Liq;->a:Lim;

    invoke-static {v1}, Lim;->a(Lim;)Lcom/sogou/theme/ThemeListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sogou/theme/ThemeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 582
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 583
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 584
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljq;

    .line 585
    iget-object v0, v0, Ljq;->a:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

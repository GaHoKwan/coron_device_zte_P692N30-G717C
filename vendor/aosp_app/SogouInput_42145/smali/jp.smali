.class Ljp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhd;


# instance fields
.field final synthetic a:Ljn;


# direct methods
.method constructor <init>(Ljn;)V
    .locals 0
    .parameter

    .prologue
    .line 861
    iput-object p1, p0, Ljp;->a:Ljn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Integer;Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 865
    const/4 v0, 0x0

    .line 866
    iget-object v1, p0, Ljp;->a:Ljn;

    iget-object v1, v1, Ljn;->a:Ljf;

    invoke-static {v1}, Ljf;->c(Ljf;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 867
    iget-object v1, p0, Ljp;->a:Ljn;

    iget-object v1, v1, Ljn;->a:Ljf;

    invoke-static {v1}, Ljf;->b(Ljf;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Ljp;->a:Ljn;

    iget-object v2, v2, Ljn;->a:Ljf;

    invoke-static {v2}, Ljf;->b(Ljf;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 868
    iget-object v0, p0, Ljp;->a:Ljn;

    iget-object v0, v0, Ljn;->a:Ljf;

    invoke-static {v0}, Ljf;->b(Ljf;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhk;

    .line 875
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, v0, Lhk;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 894
    :cond_1
    :goto_1
    return-void

    .line 871
    :cond_2
    iget-object v1, p0, Ljp;->a:Ljn;

    iget-object v1, v1, Ljn;->a:Ljf;

    invoke-static {v1}, Ljf;->c(Ljf;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Ljp;->a:Ljn;

    iget-object v2, v2, Ljn;->a:Ljf;

    invoke-static {v2}, Ljf;->c(Ljf;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 872
    iget-object v0, p0, Ljp;->a:Ljn;

    iget-object v0, v0, Ljn;->a:Ljf;

    invoke-static {v0}, Ljf;->c(Ljf;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhk;

    goto :goto_0

    .line 877
    :cond_3
    if-eqz p3, :cond_1

    iget-object v0, p0, Ljp;->a:Ljn;

    iget-object v0, v0, Ljn;->a:Ljf;

    invoke-static {v0}, Ljf;->a(Ljf;)Lcom/sogou/theme/ThemeListView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 878
    iget-object v0, p0, Ljp;->a:Ljn;

    iget-object v0, v0, Ljn;->a:Ljf;

    invoke-static {v0}, Ljf;->a(Ljf;)Lcom/sogou/theme/ThemeListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sogou/theme/ThemeListView;->getFirstVisiblePosition()I

    move-result v0

    .line 879
    iget-object v1, p0, Ljp;->a:Ljn;

    iget-object v1, v1, Ljn;->a:Ljf;

    invoke-static {v1}, Ljf;->a(Ljf;)Lcom/sogou/theme/ThemeListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sogou/theme/ThemeListView;->getLastVisiblePosition()I

    move-result v1

    .line 880
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Ljp;->a:Ljn;

    iget-object v3, v3, Ljn;->a:Ljf;

    invoke-static {v3}, Ljf;->a(Ljf;)I

    move-result v3

    div-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    .line 881
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Ljp;->a:Ljn;

    iget-object v4, v4, Ljn;->a:Ljf;

    invoke-static {v4}, Ljf;->a(Ljf;)I

    move-result v4

    rem-int/2addr v3, v4

    .line 882
    if-lt v2, v0, :cond_1

    if-gt v2, v1, :cond_1

    .line 883
    sub-int v0, v2, v0

    .line 884
    iget-object v1, p0, Ljp;->a:Ljn;

    iget-object v1, v1, Ljn;->a:Ljf;

    invoke-static {v1}, Ljf;->c(Ljf;)Z

    move-result v1

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    .line 885
    :cond_4
    if-ltz v0, :cond_1

    iget-object v1, p0, Ljp;->a:Ljn;

    iget-object v1, v1, Ljn;->a:Ljf;

    invoke-static {v1}, Ljf;->a(Ljf;)Lcom/sogou/theme/ThemeListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sogou/theme/ThemeListView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 886
    iget-object v1, p0, Ljp;->a:Ljn;

    iget-object v1, v1, Ljn;->a:Ljf;

    invoke-static {v1}, Ljf;->a(Ljf;)Lcom/sogou/theme/ThemeListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sogou/theme/ThemeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 887
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 888
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 889
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljq;

    .line 890
    iget-object v0, v0, Ljq;->a:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Ljp;->a:Ljn;

    iget-object v2, v2, Ljn;->a:Ljf;

    invoke-static {v2}, Ljf;->a(Ljf;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1
.end method

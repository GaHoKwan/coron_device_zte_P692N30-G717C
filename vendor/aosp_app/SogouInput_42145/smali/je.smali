.class Lje;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhd;


# instance fields
.field final synthetic a:Ljc;


# direct methods
.method constructor <init>(Ljc;)V
    .locals 0
    .parameter

    .prologue
    .line 856
    iput-object p1, p0, Lje;->a:Ljc;

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
    .line 860
    iget-object v0, p0, Lje;->a:Ljc;

    iget-object v0, v0, Ljc;->a:Liu;

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

    invoke-static {v0, v1}, Liu;->b(Liu;Ljava/lang/String;)V

    .line 861
    const/4 v0, 0x0

    .line 862
    iget-object v1, p0, Lje;->a:Ljc;

    iget-object v1, v1, Ljc;->a:Liu;

    invoke-static {v1}, Liu;->b(Liu;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lje;->a:Ljc;

    iget-object v2, v2, Ljc;->a:Liu;

    invoke-static {v2}, Liu;->b(Liu;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 863
    iget-object v0, p0, Lje;->a:Ljc;

    iget-object v0, v0, Ljc;->a:Liu;

    invoke-static {v0}, Liu;->b(Liu;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhk;

    .line 865
    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, v0, Lhk;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 884
    :cond_1
    :goto_0
    return-void

    .line 867
    :cond_2
    if-eqz p3, :cond_1

    iget-object v0, p0, Lje;->a:Ljc;

    iget-object v0, v0, Ljc;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Lcom/sogou/theme/ThemeListView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 868
    iget-object v0, p0, Lje;->a:Ljc;

    iget-object v0, v0, Ljc;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Lcom/sogou/theme/ThemeListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sogou/theme/ThemeListView;->getFirstVisiblePosition()I

    move-result v0

    .line 869
    iget-object v1, p0, Lje;->a:Ljc;

    iget-object v1, v1, Ljc;->a:Liu;

    invoke-static {v1}, Liu;->a(Liu;)Lcom/sogou/theme/ThemeListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sogou/theme/ThemeListView;->getLastVisiblePosition()I

    move-result v1

    .line 870
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lje;->a:Ljc;

    iget-object v3, v3, Ljc;->a:Liu;

    invoke-static {v3}, Liu;->a(Liu;)I

    move-result v3

    div-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    .line 871
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lje;->a:Ljc;

    iget-object v4, v4, Ljc;->a:Liu;

    invoke-static {v4}, Liu;->a(Liu;)I

    move-result v4

    rem-int/2addr v3, v4

    .line 872
    iget-object v4, p0, Lje;->a:Ljc;

    iget-object v4, v4, Ljc;->a:Liu;

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

    invoke-static {v4, v5}, Liu;->b(Liu;Ljava/lang/String;)V

    .line 873
    if-lt v2, v0, :cond_1

    if-gt v2, v1, :cond_1

    .line 874
    sub-int v0, v2, v0

    .line 875
    if-ltz v0, :cond_1

    iget-object v1, p0, Lje;->a:Ljc;

    iget-object v1, v1, Ljc;->a:Liu;

    invoke-static {v1}, Liu;->a(Liu;)Lcom/sogou/theme/ThemeListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sogou/theme/ThemeListView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 876
    iget-object v1, p0, Lje;->a:Ljc;

    iget-object v1, v1, Ljc;->a:Liu;

    invoke-static {v1}, Liu;->a(Liu;)Lcom/sogou/theme/ThemeListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sogou/theme/ThemeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 877
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 878
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 879
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljq;

    .line 880
    iget-object v0, v0, Ljq;->a:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

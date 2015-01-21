.class Lcom/autonavi/xmgd/navigator/it;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/it;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const v6, 0x7f07007d

    const-wide v7, 0x412e848000000000L

    const/4 v5, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/it;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->n(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)I

    move-result v0

    if-ne v0, p3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/it;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->o(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/it;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "0/0"

    aput-object v4, v3, v1

    invoke-virtual {v2, v6, v3}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/it;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->p(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/it;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v2, v6, v3}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/it;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v0, p3}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->b(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;I)I

    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/it;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/it;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v2}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->q(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Lcom/autonavi/xmgd/controls/c;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->a(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;Lcom/autonavi/xmgd/controls/c;)Lcom/autonavi/xmgd/controls/c;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/it;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/it;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v2}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->q(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Lcom/autonavi/xmgd/controls/c;

    move-result-object v2

    iget-object v2, v2, Lcom/autonavi/xmgd/controls/c;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->a(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;Ljava/lang/String;)Ljava/lang/String;

    :goto_1
    new-array v2, v5, [Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/it;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->l(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/autonavi/xmgd/naviservice/e;->a([Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    new-instance v0, Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-direct {v0, v1, v1}, Lcom/autonavi/xm/navigation/server/GCoord;-><init>(II)V

    aget-object v3, v2, v1

    if-eqz v3, :cond_4

    aget-object v0, v2, v1

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;->CenterCoord:Lcom/autonavi/xm/navigation/server/GCoord;

    move-object v4, v0

    :goto_2
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/it;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v0, v5}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->a(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;Z)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/it;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->a(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/it;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-virtual {v0, v5}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->showDialog(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/it;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->m(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Lcom/autonavi/xmgd/controls/c;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/it;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->m(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Lcom/autonavi/xmgd/controls/c;

    move-result-object v0

    iget v0, v0, Lcom/autonavi/xmgd/controls/c;->e:I

    :goto_3
    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/it;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->l(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/it;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v2}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->h(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v0, v2}, Lcom/autonavi/xmgd/naviservice/e;->a(Lcom/autonavi/xm/navigation/server/GCoord;ILjava/lang/String;)Z

    goto/16 :goto_0

    :cond_1
    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/it;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/it;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->q(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Lcom/autonavi/xmgd/controls/c;

    move-result-object v0

    iget-object v0, v0, Lcom/autonavi/xmgd/controls/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/controls/c;

    invoke-static {v2, v0}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->a(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;Lcom/autonavi/xmgd/controls/c;)Lcom/autonavi/xmgd/controls/c;

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/it;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/it;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v3}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->q(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Lcom/autonavi/xmgd/controls/c;

    move-result-object v3

    iget-object v3, v3, Lcom/autonavi/xmgd/controls/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/it;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->q(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Lcom/autonavi/xmgd/controls/c;

    move-result-object v0

    iget-object v0, v0, Lcom/autonavi/xmgd/controls/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/controls/c;

    iget-object v0, v0, Lcom/autonavi/xmgd/controls/c;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->a(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/it;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->c(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Lcom/autonavi/xmgd/c/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/c/i;->g()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/it;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->c(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Lcom/autonavi/xmgd/c/i;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/it;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->h(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x186a0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget v3, v4, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    int-to-double v5, v3

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    iget v4, v4, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    int-to-double v4, v4

    div-double/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/autonavi/xmgd/navigator/it;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v5}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->i(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/xmgd/c/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/it;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->e(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Lcom/autonavi/xmgd/controls/u;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xmgd/controls/u;->a([Lcom/autonavi/xmgd/c/k;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/it;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->j(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Lcom/autonavi/xmgd/view/GDPageableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/view/GDPageableListView;->startSearch()V

    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto/16 :goto_3

    :cond_4
    move-object v4, v0

    goto/16 :goto_2
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method

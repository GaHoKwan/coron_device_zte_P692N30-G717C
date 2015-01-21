.class Lcom/autonavi/xmgd/navigator/is;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/is;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 7

    const-wide v5, 0x412e848000000000L

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/is;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v1, p1}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->a(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;I)V

    if-ne p1, v3, :cond_4

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/is;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->b(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)I

    move-result v1

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/is;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->c(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Lcom/autonavi/xmgd/c/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/c/i;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/is;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->d(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/is;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v1, v0}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->a(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;Z)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/is;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->e(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Lcom/autonavi/xmgd/controls/u;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xmgd/controls/u;->a([Lcom/autonavi/xmgd/c/k;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/is;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->f(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)I

    move-result v0

    int-to-float v0, v0

    float-to-double v0, v0

    div-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/is;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->g(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)I

    move-result v0

    int-to-float v0, v0

    float-to-double v0, v0

    div-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/is;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->c(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Lcom/autonavi/xmgd/c/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/c/i;->g()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/is;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->c(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Lcom/autonavi/xmgd/c/i;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/is;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->h(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x186a0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/autonavi/xmgd/navigator/is;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v5}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->i(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/xmgd/c/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/is;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->j(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Lcom/autonavi/xmgd/view/GDPageableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/view/GDPageableListView;->startSearch()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/is;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->k(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Lcom/autonavi/xmgd/c/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/c/l;->f()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/is;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->b(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)I

    move-result v1

    if-ne v1, v3, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/is;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->k(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Lcom/autonavi/xmgd/c/l;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/is;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->h(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/is;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v2}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->l(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/autonavi/xmgd/naviservice/e;->C()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/autonavi/xmgd/c/l;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/is;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->j(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Lcom/autonavi/xmgd/view/GDPageableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/view/GDPageableListView;->startSearch()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/is;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->k(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Lcom/autonavi/xmgd/c/l;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/is;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v2}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->h(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/is;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v3}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->l(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v3

    invoke-interface {v3}, Lcom/autonavi/xmgd/naviservice/e;->C()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/autonavi/xmgd/c/l;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/is;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->b(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)I

    move-result v1

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/is;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->d(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/is;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v1, v0}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->a(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;Z)Z

    new-array v1, v3, [Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/is;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v2}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->l(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/autonavi/xmgd/naviservice/e;->a([Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    new-instance v2, Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-direct {v2, v0, v0}, Lcom/autonavi/xm/navigation/server/GCoord;-><init>(II)V

    aget-object v2, v1, v0

    if-nez v2, :cond_5

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const v1, 0x7f070073

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    goto/16 :goto_0

    :cond_5
    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;->CenterCoord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/is;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-virtual {v2, v3}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->showDialog(I)V

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/is;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v2}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->m(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Lcom/autonavi/xmgd/controls/c;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/is;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->m(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Lcom/autonavi/xmgd/controls/c;

    move-result-object v0

    iget v0, v0, Lcom/autonavi/xmgd/controls/c;->e:I

    :cond_6
    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/is;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v2}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->l(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v2

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/is;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v3}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->h(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v0, v3}, Lcom/autonavi/xmgd/naviservice/e;->a(Lcom/autonavi/xm/navigation/server/GCoord;ILjava/lang/String;)Z

    goto/16 :goto_0
.end method

.class Lcom/autonavi/xmgd/navigator/ic;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/ic;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-wide v4, 0x412e848000000000L

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ic;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->dismissDialog(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ic;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->b(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ic;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->f(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)I

    move-result v0

    int-to-float v0, v0

    float-to-double v0, v0

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ic;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->g(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)I

    move-result v0

    int-to-float v0, v0

    float-to-double v0, v0

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ic;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->c(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)Lcom/autonavi/xmgd/c/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/c/i;->g()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ic;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->c(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)Lcom/autonavi/xmgd/c/i;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ic;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->h(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x186a0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/autonavi/xmgd/navigator/ic;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-static {v5}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->i(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/xmgd/c/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ic;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->j(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)Lcom/autonavi/xmgd/view/GDPageableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/view/GDPageableListView;->startSearch()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ic;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->b(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ic;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->k(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)Lcom/autonavi/xmgd/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/c/l;->g()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ic;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->k(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)Lcom/autonavi/xmgd/c/l;

    move-result-object v1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ic;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->h(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ic;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->A(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/c/n;

    iget v0, v0, Lcom/autonavi/xmgd/c/n;->b:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0, v3}, Lcom/autonavi/xmgd/c/l;->a(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ic;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->j(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)Lcom/autonavi/xmgd/view/GDPageableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/view/GDPageableListView;->startSearch()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ic;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->k(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)Lcom/autonavi/xmgd/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/c/l;->g()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ic;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->k(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)Lcom/autonavi/xmgd/c/l;

    move-result-object v1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ic;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->h(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ic;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->A(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/c/n;

    iget v0, v0, Lcom/autonavi/xmgd/c/n;->b:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/autonavi/xmgd/c/l;->a(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ic;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->j(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)Lcom/autonavi/xmgd/view/GDPageableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/view/GDPageableListView;->startSearch()V

    goto :goto_0
.end method

.class Lcom/autonavi/xmgd/navigator/io;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/io;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const-wide v7, 0x412e848000000000L

    const v6, 0x186a0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/io;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v0, v5}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->b(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;Z)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/io;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->z(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/io;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->o(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/io;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    const v2, 0x7f07007d

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "0/0"

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/io;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->a(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;[Lcom/autonavi/xmgd/c/k;)[Lcom/autonavi/xmgd/c/k;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/io;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->e(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Lcom/autonavi/xmgd/controls/u;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/io;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->y(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)[Lcom/autonavi/xmgd/c/k;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xmgd/controls/u;->a([Lcom/autonavi/xmgd/c/k;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/io;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->e(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Lcom/autonavi/xmgd/controls/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/controls/u;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/io;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->b(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)I

    move-result v0

    if-ne v0, v10, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/io;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->f(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)I

    move-result v0

    int-to-float v0, v0

    float-to-double v0, v0

    div-double/2addr v0, v7

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/io;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->g(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)I

    move-result v0

    int-to-float v0, v0

    float-to-double v0, v0

    div-double/2addr v0, v7

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/io;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->c(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Lcom/autonavi/xmgd/c/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/c/i;->g()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/io;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->c(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Lcom/autonavi/xmgd/c/i;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/io;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->h(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/autonavi/xmgd/navigator/io;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v5}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->i(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/xmgd/c/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/io;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->j(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Lcom/autonavi/xmgd/view/GDPageableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/view/GDPageableListView;->startSearch()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/io;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->b(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)I

    move-result v0

    if-ne v0, v9, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/io;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->k(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Lcom/autonavi/xmgd/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/c/l;->g()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/io;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->k(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Lcom/autonavi/xmgd/c/l;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/io;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->h(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v10}, Lcom/autonavi/xmgd/c/l;->a(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/io;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->j(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Lcom/autonavi/xmgd/view/GDPageableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/view/GDPageableListView;->startSearch()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/io;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->k(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Lcom/autonavi/xmgd/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/c/l;->g()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/io;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->k(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Lcom/autonavi/xmgd/c/l;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/io;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->h(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Lcom/autonavi/xmgd/c/l;->a(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/io;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->j(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)Lcom/autonavi/xmgd/view/GDPageableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/view/GDPageableListView;->startSearch()V

    goto :goto_0
.end method
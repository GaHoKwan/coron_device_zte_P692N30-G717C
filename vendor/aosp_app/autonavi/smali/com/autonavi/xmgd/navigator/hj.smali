.class Lcom/autonavi/xmgd/navigator/hj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/view/View;

.field private synthetic b:Lcom/autonavi/xmgd/navigator/SearchForRoute;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/SearchForRoute;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/hj;->b:Lcom/autonavi/xmgd/navigator/SearchForRoute;

    iput-object p2, p0, Lcom/autonavi/xmgd/navigator/hj;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/hj;->b:Lcom/autonavi/xmgd/navigator/SearchForRoute;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchForRoute;->l(Lcom/autonavi/xmgd/navigator/SearchForRoute;)Lcom/autonavi/xmgd/controls/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/controls/q;->a()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/hj;->b:Lcom/autonavi/xmgd/navigator/SearchForRoute;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchForRoute;->m(Lcom/autonavi/xmgd/navigator/SearchForRoute;)Lcom/autonavi/xmgd/navigator/hv;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/hv;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/hj;->b:Lcom/autonavi/xmgd/navigator/SearchForRoute;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchForRoute;->m(Lcom/autonavi/xmgd/navigator/SearchForRoute;)Lcom/autonavi/xmgd/navigator/hv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/navigator/hv;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/hj;->b:Lcom/autonavi/xmgd/navigator/SearchForRoute;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchForRoute;->n(Lcom/autonavi/xmgd/navigator/SearchForRoute;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/hj;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    return-void
.end method

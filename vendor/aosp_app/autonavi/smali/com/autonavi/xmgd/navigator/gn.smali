.class Lcom/autonavi/xmgd/navigator/gn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/view/View;

.field private synthetic b:Lcom/autonavi/xmgd/navigator/SearchActivity;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/SearchActivity;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/gn;->b:Lcom/autonavi/xmgd/navigator/SearchActivity;

    iput-object p2, p0, Lcom/autonavi/xmgd/navigator/gn;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/gn;->b:Lcom/autonavi/xmgd/navigator/SearchActivity;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchActivity;->i(Lcom/autonavi/xmgd/navigator/SearchActivity;)Lcom/autonavi/xmgd/controls/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/controls/q;->a()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/gn;->b:Lcom/autonavi/xmgd/navigator/SearchActivity;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchActivity;->j(Lcom/autonavi/xmgd/navigator/SearchActivity;)Lcom/autonavi/xmgd/navigator/hc;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/hc;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/gn;->b:Lcom/autonavi/xmgd/navigator/SearchActivity;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchActivity;->j(Lcom/autonavi/xmgd/navigator/SearchActivity;)Lcom/autonavi/xmgd/navigator/hc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/navigator/hc;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/gn;->b:Lcom/autonavi/xmgd/navigator/SearchActivity;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchActivity;->k(Lcom/autonavi/xmgd/navigator/SearchActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/gn;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    return-void
.end method

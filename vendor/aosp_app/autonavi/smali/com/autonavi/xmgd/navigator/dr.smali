.class Lcom/autonavi/xmgd/navigator/dr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/MyNavigate;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/MyNavigate;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/dr;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dr;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/MyNavigate;->removeDialog(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dr;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->o(Lcom/autonavi/xmgd/navigator/MyNavigate;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/f/n;

    invoke-interface {v0}, Lcom/autonavi/xmgd/f/n;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dr;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->n(Lcom/autonavi/xmgd/navigator/MyNavigate;)Lcom/autonavi/xmgd/e/k;

    move-result-object v0

    iget v0, v0, Lcom/autonavi/xmgd/e/k;->lAdminCode:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/dr;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/MyNavigate;->n(Lcom/autonavi/xmgd/navigator/MyNavigate;)Lcom/autonavi/xmgd/e/k;

    move-result-object v1

    iget-object v1, v1, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/naviservice/q;->a(Lcom/autonavi/xm/navigation/server/GCoord;)I

    move-result v0

    :cond_0
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/naviservice/q;->d(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dr;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/MyNavigate;->showDialog(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dr;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->o(Lcom/autonavi/xmgd/navigator/MyNavigate;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/f/n;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/dr;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/MyNavigate;->k(Lcom/autonavi/xmgd/navigator/MyNavigate;)Lcom/autonavi/xmgd/f/z;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/f/n;->a(Lcom/autonavi/xmgd/f/z;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dr;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->o(Lcom/autonavi/xmgd/navigator/MyNavigate;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/f/n;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/dr;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/MyNavigate;->k(Lcom/autonavi/xmgd/navigator/MyNavigate;)Lcom/autonavi/xmgd/f/z;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/f/n;->a(Lcom/autonavi/xmgd/f/z;)V

    goto :goto_0
.end method

.class Lcom/autonavi/xmgd/navigator/ed;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/MyNavigate;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/MyNavigate;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/ed;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xmgd/application/NaviApplication;->userid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/naviservice/q;->v(Ljava/lang/String;)Lcom/autonavi/xmgd/e/c;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ed;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    new-instance v2, Lcom/autonavi/xmgd/f/z;

    invoke-direct {v2}, Lcom/autonavi/xmgd/f/z;-><init>()V

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/navigator/MyNavigate;->a(Lcom/autonavi/xmgd/navigator/MyNavigate;Lcom/autonavi/xmgd/f/z;)Lcom/autonavi/xmgd/f/z;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ed;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/MyNavigate;->k(Lcom/autonavi/xmgd/navigator/MyNavigate;)Lcom/autonavi/xmgd/f/z;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/autonavi/xmgd/f/z;->a(I)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ed;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/MyNavigate;->k(Lcom/autonavi/xmgd/navigator/MyNavigate;)Lcom/autonavi/xmgd/f/z;

    move-result-object v1

    new-array v2, v4, [Lcom/autonavi/xmgd/e/k;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/autonavi/xmgd/f/z;->a([Lcom/autonavi/xmgd/e/k;)V

    invoke-static {}, Lcom/autonavi/xmgd/controls/ab;->a()Lcom/autonavi/xmgd/controls/ab;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/controls/ab;->a(Lcom/autonavi/xmgd/e/k;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "poi"

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/ed;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v2}, Lcom/autonavi/xmgd/navigator/MyNavigate;->k(Lcom/autonavi/xmgd/navigator/MyNavigate;)Lcom/autonavi/xmgd/f/z;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ed;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/MyNavigate;->l(Lcom/autonavi/xmgd/navigator/MyNavigate;)I

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-class v2, Lcom/autonavi/xmgd/f/y;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/autonavi/xmgd/f/u;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/autonavi/xmgd/f/b;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/autonavi/xmgd/f/c;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/autonavi/xmgd/f/q;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/autonavi/xmgd/f/l;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/autonavi/xmgd/f/g;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/autonavi/xmgd/f/h;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/autonavi/xmgd/f/r;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/autonavi/xmgd/f/s;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/autonavi/xmgd/f/w;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "IPoiOperator"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/autonavi/xmgd/controls/ab;->a()Lcom/autonavi/xmgd/controls/ab;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/controls/ab;->c(Landroid/os/Bundle;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ed;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    const-class v2, Lcom/autonavi/xmgd/navigator/PoiDetail;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/autonavi/xmgd/controls/s;->a()Lcom/autonavi/xmgd/controls/s;

    move-result-object v1

    const-class v2, Lcom/autonavi/xmgd/navigator/PoiDetail;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/autonavi/xmgd/controls/s;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ed;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ed;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->finish()V

    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ed;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/MyNavigate;->l(Lcom/autonavi/xmgd/navigator/MyNavigate;)I

    move-result v1

    if-ne v1, v4, :cond_0

    const-string v1, "IPoiOperator"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const v1, 0x7f07009c

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    goto :goto_1
.end method

.class Lcom/autonavi/xmgd/navigator/dg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/MyNavigate;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/MyNavigate;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/dg;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dg;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->l(Lcom/autonavi/xmgd/navigator/MyNavigate;)I

    move-result v0

    if-ne v0, v3, :cond_0

    :goto_0
    return v3

    :cond_0
    if-gt p3, v3, :cond_6

    if-nez p3, :cond_4

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dg;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xmgd/application/NaviApplication;->userid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/autonavi/xmgd/naviservice/q;->v(Ljava/lang/String;)Lcom/autonavi/xmgd/e/c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/navigator/MyNavigate;->a(Lcom/autonavi/xmgd/navigator/MyNavigate;Lcom/autonavi/xmgd/e/k;)Lcom/autonavi/xmgd/e/k;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dg;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->n(Lcom/autonavi/xmgd/navigator/MyNavigate;)Lcom/autonavi/xmgd/e/k;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const v1, 0x7f07009c

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dg;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    new-instance v1, Lcom/autonavi/xmgd/f/z;

    invoke-direct {v1}, Lcom/autonavi/xmgd/f/z;-><init>()V

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/navigator/MyNavigate;->a(Lcom/autonavi/xmgd/navigator/MyNavigate;Lcom/autonavi/xmgd/f/z;)Lcom/autonavi/xmgd/f/z;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dg;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->k(Lcom/autonavi/xmgd/navigator/MyNavigate;)Lcom/autonavi/xmgd/f/z;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/autonavi/xmgd/f/z;->a(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dg;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->k(Lcom/autonavi/xmgd/navigator/MyNavigate;)Lcom/autonavi/xmgd/f/z;

    move-result-object v0

    new-array v1, v3, [Lcom/autonavi/xmgd/e/k;

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/dg;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v2}, Lcom/autonavi/xmgd/navigator/MyNavigate;->n(Lcom/autonavi/xmgd/navigator/MyNavigate;)Lcom/autonavi/xmgd/e/k;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/f/z;->a([Lcom/autonavi/xmgd/e/k;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dg;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/navigator/MyNavigate;->a(Lcom/autonavi/xmgd/navigator/MyNavigate;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dg;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->o(Lcom/autonavi/xmgd/navigator/MyNavigate;)Ljava/util/ArrayList;

    move-result-object v0

    const-class v1, Lcom/autonavi/xmgd/f/y;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dg;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->o(Lcom/autonavi/xmgd/navigator/MyNavigate;)Ljava/util/ArrayList;

    move-result-object v0

    const-class v1, Lcom/autonavi/xmgd/f/b;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dg;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->o(Lcom/autonavi/xmgd/navigator/MyNavigate;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/f/n;

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/dg;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v2}, Lcom/autonavi/xmgd/navigator/MyNavigate;->p(Lcom/autonavi/xmgd/navigator/MyNavigate;)Lcom/autonavi/xmgd/f/o;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/autonavi/xmgd/f/n;->a(Lcom/autonavi/xmgd/f/o;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dg;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/MyNavigate;->showDialog(I)V

    goto/16 :goto_0

    :cond_4
    if-ne p3, v3, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dg;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xmgd/application/NaviApplication;->userid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/autonavi/xmgd/naviservice/q;->w(Ljava/lang/String;)Lcom/autonavi/xmgd/e/c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/navigator/MyNavigate;->a(Lcom/autonavi/xmgd/navigator/MyNavigate;Lcom/autonavi/xmgd/e/k;)Lcom/autonavi/xmgd/e/k;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dg;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->n(Lcom/autonavi/xmgd/navigator/MyNavigate;)Lcom/autonavi/xmgd/e/k;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const v1, 0x7f07009e

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dg;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    new-instance v1, Lcom/autonavi/xmgd/f/z;

    invoke-direct {v1}, Lcom/autonavi/xmgd/f/z;-><init>()V

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/navigator/MyNavigate;->a(Lcom/autonavi/xmgd/navigator/MyNavigate;Lcom/autonavi/xmgd/f/z;)Lcom/autonavi/xmgd/f/z;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dg;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->k(Lcom/autonavi/xmgd/navigator/MyNavigate;)Lcom/autonavi/xmgd/f/z;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/autonavi/xmgd/f/z;->a(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dg;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->k(Lcom/autonavi/xmgd/navigator/MyNavigate;)Lcom/autonavi/xmgd/f/z;

    move-result-object v0

    new-array v1, v3, [Lcom/autonavi/xmgd/e/k;

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/dg;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v2}, Lcom/autonavi/xmgd/navigator/MyNavigate;->n(Lcom/autonavi/xmgd/navigator/MyNavigate;)Lcom/autonavi/xmgd/e/k;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/f/z;->a([Lcom/autonavi/xmgd/e/k;)V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/dg;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dg;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->m(Lcom/autonavi/xmgd/navigator/MyNavigate;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v2, p3, -0x2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/e/k;

    invoke-static {v1, v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->a(Lcom/autonavi/xmgd/navigator/MyNavigate;Lcom/autonavi/xmgd/e/k;)Lcom/autonavi/xmgd/e/k;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dg;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    new-instance v1, Lcom/autonavi/xmgd/f/z;

    invoke-direct {v1}, Lcom/autonavi/xmgd/f/z;-><init>()V

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/navigator/MyNavigate;->a(Lcom/autonavi/xmgd/navigator/MyNavigate;Lcom/autonavi/xmgd/f/z;)Lcom/autonavi/xmgd/f/z;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dg;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->k(Lcom/autonavi/xmgd/navigator/MyNavigate;)Lcom/autonavi/xmgd/f/z;

    move-result-object v0

    add-int/lit8 v1, p3, -0x2

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/f/z;->a(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dg;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->k(Lcom/autonavi/xmgd/navigator/MyNavigate;)Lcom/autonavi/xmgd/f/z;

    move-result-object v1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dg;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->m(Lcom/autonavi/xmgd/navigator/MyNavigate;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/dg;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v2}, Lcom/autonavi/xmgd/navigator/MyNavigate;->m(Lcom/autonavi/xmgd/navigator/MyNavigate;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/autonavi/xmgd/e/k;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xmgd/e/k;

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/f/z;->a([Lcom/autonavi/xmgd/e/k;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dg;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/navigator/MyNavigate;->a(Lcom/autonavi/xmgd/navigator/MyNavigate;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :try_start_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dg;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->o(Lcom/autonavi/xmgd/navigator/MyNavigate;)Ljava/util/ArrayList;

    move-result-object v0

    const-class v1, Lcom/autonavi/xmgd/f/j;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dg;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->o(Lcom/autonavi/xmgd/navigator/MyNavigate;)Ljava/util/ArrayList;

    move-result-object v0

    const-class v1, Lcom/autonavi/xmgd/f/y;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dg;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->o(Lcom/autonavi/xmgd/navigator/MyNavigate;)Ljava/util/ArrayList;

    move-result-object v0

    const-class v1, Lcom/autonavi/xmgd/f/b;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dg;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->o(Lcom/autonavi/xmgd/navigator/MyNavigate;)Ljava/util/ArrayList;

    move-result-object v0

    const-class v1, Lcom/autonavi/xmgd/f/h;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dg;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->o(Lcom/autonavi/xmgd/navigator/MyNavigate;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/f/n;

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/dg;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v2}, Lcom/autonavi/xmgd/navigator/MyNavigate;->p(Lcom/autonavi/xmgd/navigator/MyNavigate;)Lcom/autonavi/xmgd/f/o;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/autonavi/xmgd/f/n;->a(Lcom/autonavi/xmgd/f/o;)V
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_4

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto/16 :goto_3

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_3
.end method

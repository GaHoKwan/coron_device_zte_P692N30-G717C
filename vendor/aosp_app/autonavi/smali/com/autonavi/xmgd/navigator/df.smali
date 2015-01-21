.class Lcom/autonavi/xmgd/navigator/df;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/MyNavigate;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/MyNavigate;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/df;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v1, 0x1

    if-nez p3, :cond_5

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/df;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->l(Lcom/autonavi/xmgd/navigator/MyNavigate;)I

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xmgd/application/NaviApplication;->userid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/naviservice/q;->v(Ljava/lang/String;)Lcom/autonavi/xmgd/e/c;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const v1, 0x7f07009c

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/autonavi/xmgd/controls/ab;->a()Lcom/autonavi/xmgd/controls/ab;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/controls/ab;->a(Lcom/autonavi/xmgd/e/k;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.autonavi.xmgd.navigator_new.action.set_dest"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/df;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/df;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->finish()V

    invoke-static {}, Lcom/autonavi/xmgd/controls/s;->a()Lcom/autonavi/xmgd/controls/s;

    move-result-object v0

    const-class v1, Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/controls/s;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/df;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->l(Lcom/autonavi/xmgd/navigator/MyNavigate;)I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xmgd/application/NaviApplication;->userid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/naviservice/q;->v(Ljava/lang/String;)Lcom/autonavi/xmgd/e/c;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/xmgd/controls/af;->a()Lcom/autonavi/xmgd/controls/af;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/controls/af;->a(Lcom/autonavi/xmgd/e/k;)V

    :try_start_0
    invoke-static {}, Lcom/autonavi/xmgd/controls/s;->a()Lcom/autonavi/xmgd/controls/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/controls/s;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/df;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    const-string v1, "\u4ece\u8fd4\u56de\u6808\u4e2d\u53d6\u51fa\u7a7a\u7c7b\u540d"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/df;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->finish()V

    goto :goto_0

    :cond_4
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/df;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/df;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/MyNavigate;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    :cond_5
    if-ne p3, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/df;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->l(Lcom/autonavi/xmgd/navigator/MyNavigate;)I

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xmgd/application/NaviApplication;->userid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/naviservice/q;->w(Ljava/lang/String;)Lcom/autonavi/xmgd/e/c;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const v1, 0x7f07009e

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/autonavi/xmgd/controls/ab;->a()Lcom/autonavi/xmgd/controls/ab;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/controls/ab;->a(Lcom/autonavi/xmgd/e/k;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.autonavi.xmgd.navigator_new.action.set_dest"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/df;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/df;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->finish()V

    invoke-static {}, Lcom/autonavi/xmgd/controls/s;->a()Lcom/autonavi/xmgd/controls/s;

    move-result-object v0

    const-class v1, Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/controls/s;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/df;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->l(Lcom/autonavi/xmgd/navigator/MyNavigate;)I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xmgd/application/NaviApplication;->userid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/naviservice/q;->w(Ljava/lang/String;)Lcom/autonavi/xmgd/e/c;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/xmgd/controls/af;->a()Lcom/autonavi/xmgd/controls/af;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/controls/af;->a(Lcom/autonavi/xmgd/e/k;)V

    :try_start_2
    invoke-static {}, Lcom/autonavi/xmgd/controls/s;->a()Lcom/autonavi/xmgd/controls/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/controls/s;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/df;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/df;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/MyNavigate;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/df;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->finish()V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_2
.end method

.class Lcom/autonavi/xmgd/navigator/ec;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/MyNavigate;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/MyNavigate;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/ec;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    sget-boolean v0, Lcom/autonavi/xmgd/user/GDAccount_Global;->isLogin:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ec;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/MyNavigate;->showDialog(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ec;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ec;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/MyNavigate;->d(Lcom/autonavi/xmgd/navigator/MyNavigate;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/navigator/MyNavigate;->a(Lcom/autonavi/xmgd/navigator/MyNavigate;I)I

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ec;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/MyNavigate;->showDialog(I)V

    const-string v0, "lkx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MyNavigate.this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/ec;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ec;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->f(Lcom/autonavi/xmgd/navigator/MyNavigate;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ec;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->h(Lcom/autonavi/xmgd/navigator/MyNavigate;)Lcom/autonavi/xmgd/i/f;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ec;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/MyNavigate;->g(Lcom/autonavi/xmgd/navigator/MyNavigate;)Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xmgd/application/NaviApplication;->userid:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/autonavi/xmgd/naviservice/e;->e(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/i/f;->a(Ljava/util/ArrayList;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ec;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->f(Lcom/autonavi/xmgd/navigator/MyNavigate;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ec;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->i(Lcom/autonavi/xmgd/navigator/MyNavigate;)Lcom/autonavi/xmgd/i/j;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ec;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/MyNavigate;->g(Lcom/autonavi/xmgd/navigator/MyNavigate;)Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xmgd/application/NaviApplication;->userid:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/autonavi/xmgd/naviservice/e;->j(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/i/j;->a(Ljava/util/ArrayList;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ec;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->f(Lcom/autonavi/xmgd/navigator/MyNavigate;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ec;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->j(Lcom/autonavi/xmgd/navigator/MyNavigate;)Lcom/autonavi/xmgd/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ec;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/MyNavigate;->g(Lcom/autonavi/xmgd/navigator/MyNavigate;)Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xmgd/application/NaviApplication;->userid:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/autonavi/xmgd/naviservice/e;->o(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/i/a;->a(Ljava/util/ArrayList;)Z

    goto/16 :goto_0
.end method

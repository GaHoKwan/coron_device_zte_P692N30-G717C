.class Lcom/autonavi/xmgd/navigator/ce;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/Map;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/ce;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ce;->a:Lcom/autonavi/xmgd/navigator/Map;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/Map;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ce;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->d(Lcom/autonavi/xmgd/navigator/Map;)[Lcom/autonavi/xmgd/e/k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ce;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->d(Lcom/autonavi/xmgd/navigator/Map;)[Lcom/autonavi/xmgd/e/k;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/autonavi/xmgd/application/NaviApplication;->setExternalAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ce;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->e(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/c/l;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ce;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->e(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/c/l;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ce;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/c/l;->b(Lcom/autonavi/xmgd/c/h;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ce;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->e(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/c/l;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ce;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/Map;->f(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/view/GDPageableListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/c/l;->b(Lcom/autonavi/xmgd/c/h;)V

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ce;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->d(Lcom/autonavi/xmgd/navigator/Map;)[Lcom/autonavi/xmgd/e/k;

    move-result-object v0

    array-length v0, v0

    if-ge p3, v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ce;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->d(Lcom/autonavi/xmgd/navigator/Map;)[Lcom/autonavi/xmgd/e/k;

    move-result-object v0

    aget-object v0, v0, p3

    invoke-virtual {v0}, Lcom/autonavi/xmgd/e/k;->toUIPoi()Lcom/autonavi/xmgd/e/k;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/xmgd/controls/ab;->a()Lcom/autonavi/xmgd/controls/ab;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/controls/ab;->a(Lcom/autonavi/xmgd/e/k;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ce;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/autonavi/xmgd/logic/b;->d(Lcom/autonavi/xmgd/e/k;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ce;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/autonavi/xmgd/logic/b;->L()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.autonavi.xmgd.navigator_new.action.move_map"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ce;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/navigator/Map;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/autonavi/xmgd/application/NaviApplication;->getExternalAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

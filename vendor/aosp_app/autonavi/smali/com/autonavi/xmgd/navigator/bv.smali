.class Lcom/autonavi/xmgd/navigator/bv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/Map;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/bv;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/bv;->a:Lcom/autonavi/xmgd/navigator/Map;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/Map;->dismissDialog(I)V

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/bv;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/naviservice/q;->b(Lcom/autonavi/xmgd/naviservice/g;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/autonavi/xmgd/controls/ab;->a()Lcom/autonavi/xmgd/controls/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/controls/ab;->f()[Lcom/autonavi/xmgd/e/k;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    :goto_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/autonavi/xmgd/application/NaviApplication;->setExternalAction(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_1
    array-length v1, v0

    if-ge p3, v1, :cond_0

    aget-object v1, v0, p3

    invoke-static {}, Lcom/autonavi/xmgd/controls/ab;->a()Lcom/autonavi/xmgd/controls/ab;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/autonavi/xmgd/controls/ab;->a(Lcom/autonavi/xmgd/e/k;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/autonavi/xmgd/application/NaviApplication;->getExternalAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.autonavi.xmgd.action.NAVIGATE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v0, "com.autonavi.xmgd.navigator_new.action.set_dest"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/bv;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/Map;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    const-string v3, "com.autonavi.xmgd.action.SHOWMAP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "com.autonavi.xmgd.navigator_new.action.show_map_pois"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Lcom/autonavi/xmgd/f/z;

    invoke-direct {v3}, Lcom/autonavi/xmgd/f/z;-><init>()V

    invoke-virtual {v3, v0}, Lcom/autonavi/xmgd/f/z;->a([Lcom/autonavi/xmgd/e/k;)V

    invoke-virtual {v3, p3}, Lcom/autonavi/xmgd/f/z;->a(I)V

    const-string v0, "poi_union"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

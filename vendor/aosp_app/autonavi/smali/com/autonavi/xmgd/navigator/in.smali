.class Lcom/autonavi/xmgd/navigator/in;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/in;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/in;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->y(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)[Lcom/autonavi/xmgd/c/k;

    move-result-object v0

    aget-object v0, v0, p3

    invoke-virtual {v0}, Lcom/autonavi/xmgd/c/k;->a()Lcom/autonavi/xmgd/e/k;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/xmgd/controls/af;->a()Lcom/autonavi/xmgd/controls/af;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/controls/af;->a(Lcom/autonavi/xmgd/e/k;)V

    :try_start_0
    invoke-static {}, Lcom/autonavi/xmgd/controls/s;->a()Lcom/autonavi/xmgd/controls/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/controls/s;->b()Ljava/lang/Object;

    invoke-static {}, Lcom/autonavi/xmgd/controls/s;->a()Lcom/autonavi/xmgd/controls/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/controls/s;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/in;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    const-string v1, "\u4ece\u8fd4\u56de\u6808\u4e2d\u53d6\u51fa\u7a7a\u7c7b\u540d"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/in;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->finish()V

    return v3

    :cond_1
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/in;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/in;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

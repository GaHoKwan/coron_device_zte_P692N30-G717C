.class Lcom/autonavi/xmgd/navigator/cz;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/autonavi/xmgd/navigator/Map;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lcom/autonavi/xmgd/navigator/Map;Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/cz;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/cz;->b:Landroid/view/View;

    invoke-static {p1, p2}, Lcom/autonavi/xmgd/navigator/Map;->a(Lcom/autonavi/xmgd/navigator/Map;Landroid/content/Context;)Landroid/content/Context;

    iput-object p3, p0, Lcom/autonavi/xmgd/navigator/cz;->b:Landroid/view/View;

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/cz;->c()V

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/cz;->d()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cz;->b:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic a(Lcom/autonavi/xmgd/navigator/cz;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cz;->d:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic b(Lcom/autonavi/xmgd/navigator/cz;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cz;->e:Landroid/widget/Button;

    return-object v0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cz;->a:Lcom/autonavi/xmgd/navigator/Map;

    const v1, 0x7f0c00c1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/Map;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/cz;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cz;->a:Lcom/autonavi/xmgd/navigator/Map;

    const v1, 0x7f0c00bf

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/Map;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/autonavi/xmgd/navigator/da;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/da;-><init>(Lcom/autonavi/xmgd/navigator/cz;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cz;->a:Lcom/autonavi/xmgd/navigator/Map;

    const v1, 0x7f0c00c8

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/Map;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/cz;->d:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cz;->d:Landroid/widget/Button;

    new-instance v1, Lcom/autonavi/xmgd/navigator/db;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/db;-><init>(Lcom/autonavi/xmgd/navigator/cz;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cz;->a:Lcom/autonavi/xmgd/navigator/Map;

    const v1, 0x7f0c00ca

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/Map;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/cz;->e:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cz;->e:Landroid/widget/Button;

    new-instance v1, Lcom/autonavi/xmgd/navigator/dc;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/dc;-><init>(Lcom/autonavi/xmgd/navigator/cz;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cz;->a:Lcom/autonavi/xmgd/navigator/Map;

    const v1, 0x7f0c00c9

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/Map;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/cz;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cz;->f:Landroid/widget/Button;

    new-instance v1, Lcom/autonavi/xmgd/navigator/dd;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/dd;-><init>(Lcom/autonavi/xmgd/navigator/cz;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic c(Lcom/autonavi/xmgd/navigator/cz;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/cz;->e()V

    return-void
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cz;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cz;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/b;->K()I

    move-result v0

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/autonavi/xmgd/naviservice/q;->b(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/cz;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/autonavi/xmgd/navigator/cz;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/cz;->f()V

    return-void
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cz;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->a(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/navigator/ck;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/ck;->e(Lcom/autonavi/xmgd/navigator/ck;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cz;->f:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cz;->f:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cz;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->k(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/h;->d()V

    :cond_1
    return-void
.end method

.method static synthetic e(Lcom/autonavi/xmgd/navigator/cz;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/cz;->g()V

    return-void
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cz;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->a(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/navigator/ck;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/ck;->e(Lcom/autonavi/xmgd/navigator/ck;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cz;->f:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cz;->f:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cz;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->k(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/h;->e()V

    :cond_1
    return-void
.end method

.method static synthetic f(Lcom/autonavi/xmgd/navigator/cz;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/cz;->d()V

    return-void
.end method

.method private g()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cz;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->k(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/h;->c()I

    move-result v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.autonavi.xmgd.navigator_new.action.avoid_road"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "avoidIndex"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cz;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->w(Lcom/autonavi/xmgd/navigator/Map;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cz;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->i(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/naviservice/e;->a(I)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cz;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->k(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/h;->f()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cz;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cz;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->m(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/view/MapView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/view/MapView;->setUserLayoutVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cz;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->U(Lcom/autonavi/xmgd/navigator/Map;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cz;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->a(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/navigator/ck;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/ck;->f(Lcom/autonavi/xmgd/navigator/ck;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cz;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->K(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/navigator/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/navigator/ct;->a()V

    return-void
.end method

.method public a(IZ)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cz;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->i(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/autonavi/xmgd/naviservice/e;->a(I)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cz;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->i(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/e;->o()Lcom/autonavi/xm/navigation/server/GStatus;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cz;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->i(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ZOOM_200_M:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/naviservice/e;->b(Lcom/autonavi/xm/navigation/server/map/GZoomLevel;)Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cz;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->k(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/h;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/autonavi/xmgd/logic/h;->a(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cz;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cz;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->m(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/view/MapView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/view/MapView;->setUserLayoutVisibility(I)V

    return-void
.end method

.method public b()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cz;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->k(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/h;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cz;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->k(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/h;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cz;->d:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cz;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->k(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/h;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cz;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cz;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->k(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/h;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cz;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->k(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/h;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cz;->f:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cz;->d:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cz;->e:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cz;->f:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2
.end method

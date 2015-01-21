.class public Lcom/autonavi/xmgd/navigator/GDGuide;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcom/autonavi/xmgd/view/MultiScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    const v0, 0x7f030029

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/GDGuide;->a:Lcom/autonavi/xmgd/view/MultiScreen;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/autonavi/xmgd/view/MultiScreen;->addView(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic a(Lcom/autonavi/xmgd/navigator/GDGuide;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/GDGuide;->d()V

    return-void
.end method

.method private b()V
    .locals 3

    const v0, 0x7f03002a

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/GDGuide;->a:Lcom/autonavi/xmgd/view/MultiScreen;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/autonavi/xmgd/view/MultiScreen;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private c()V
    .locals 3

    const v0, 0x7f03002b

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0c009b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v2, Lcom/autonavi/xmgd/navigator/as;

    invoke-direct {v2, p0}, Lcom/autonavi/xmgd/navigator/as;-><init>(Lcom/autonavi/xmgd/navigator/GDGuide;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/GDGuide;->a:Lcom/autonavi/xmgd/view/MultiScreen;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xmgd/view/MultiScreen;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private d()V
    .locals 3

    sget-object v0, Lcom/autonavi/xmgd/application/NaviApplication;->cache_autonavi:Landroid/content/SharedPreferences;

    const-string v1, "ignore_warn"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/autonavi/xmgd/navigator/Warn;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/GDGuide;->startActivity(Landroid/content/Intent;)V

    :goto_0
    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/GDGuide;->finish()V

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/autonavi/xmgd/navigator/Map;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/GDGuide;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030028

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/GDGuide;->setContentView(I)V

    const v0, 0x7f0c009a

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/GDGuide;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/MultiScreen;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/GDGuide;->a:Lcom/autonavi/xmgd/view/MultiScreen;

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/GDGuide;->a()V

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/GDGuide;->b()V

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/GDGuide;->c()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/GDGuide;->a:Lcom/autonavi/xmgd/view/MultiScreen;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/MultiScreen;->setCanMoveInVertical(Z)V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/GDGuide;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/GDGuide;->a:Lcom/autonavi/xmgd/view/MultiScreen;

    const/high16 v1, 0x4100

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/MultiScreen;->setScrollSpeedFactor(F)V

    :goto_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/GDGuide;->a:Lcom/autonavi/xmgd/view/MultiScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/MultiScreen;->setCurrentScreen(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/GDGuide;->a:Lcom/autonavi/xmgd/view/MultiScreen;

    const/high16 v1, 0x4080

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/MultiScreen;->setScrollSpeedFactor(F)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

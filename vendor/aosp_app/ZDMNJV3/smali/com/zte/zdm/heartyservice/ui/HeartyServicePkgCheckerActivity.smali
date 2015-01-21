.class public Lcom/zte/zdm/heartyservice/ui/HeartyServicePkgCheckerActivity;
.super Landroid/app/Activity;


# static fields
.field private static final a:Ljava/lang/String; = "HeartyService"

.field private static d:Lcom/zte/zdm/heartyservice/ui/HeartyServicePkgCheckerActivity;


# instance fields
.field private b:Landroid/widget/Button;

.field private c:Lcom/zte/zdm/heartyservice/ui/InflateAnimation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/zte/zdm/heartyservice/ui/HeartyServicePkgCheckerActivity;->d:Lcom/zte/zdm/heartyservice/ui/HeartyServicePkgCheckerActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static a()Lcom/zte/zdm/heartyservice/ui/HeartyServicePkgCheckerActivity;
    .locals 1

    sget-object v0, Lcom/zte/zdm/heartyservice/ui/HeartyServicePkgCheckerActivity;->d:Lcom/zte/zdm/heartyservice/ui/HeartyServicePkgCheckerActivity;

    return-object v0
.end method

.method private c()V
    .locals 2

    const v0, 0x7f0d0061

    invoke-virtual {p0, v0}, Lcom/zte/zdm/heartyservice/ui/HeartyServicePkgCheckerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/zdm/heartyservice/ui/HeartyServicePkgCheckerActivity;->b:Landroid/widget/Button;

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/ui/HeartyServicePkgCheckerActivity;->b:Landroid/widget/Button;

    new-instance v1, Lcom/zte/zdm/heartyservice/ui/h;

    invoke-direct {v1, p0}, Lcom/zte/zdm/heartyservice/ui/h;-><init>(Lcom/zte/zdm/heartyservice/ui/HeartyServicePkgCheckerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    sget-object v0, Lcom/zte/zdm/heartyservice/ui/HeartyServicePkgCheckerActivity;->d:Lcom/zte/zdm/heartyservice/ui/HeartyServicePkgCheckerActivity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zte/zdm/heartyservice/ui/HeartyServicePkgCheckerActivity;->d:Lcom/zte/zdm/heartyservice/ui/HeartyServicePkgCheckerActivity;

    invoke-virtual {v0}, Lcom/zte/zdm/heartyservice/ui/HeartyServicePkgCheckerActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "HeartyService"

    const-string v1, "HeartyServicePkgCheckerActivity->onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lcom/zte/zdm/heartyservice/ui/HeartyServicePkgCheckerActivity;->d:Lcom/zte/zdm/heartyservice/ui/HeartyServicePkgCheckerActivity;

    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/zte/zdm/heartyservice/ui/HeartyServicePkgCheckerActivity;->setContentView(I)V

    const v0, 0x7f0d0060

    invoke-virtual {p0, v0}, Lcom/zte/zdm/heartyservice/ui/HeartyServicePkgCheckerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;

    iput-object v0, p0, Lcom/zte/zdm/heartyservice/ui/HeartyServicePkgCheckerActivity;->c:Lcom/zte/zdm/heartyservice/ui/InflateAnimation;

    const v0, 0x7f0d0058

    invoke-virtual {p0, v0}, Lcom/zte/zdm/heartyservice/ui/HeartyServicePkgCheckerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/zte/zdm/heartyservice/core/a;->a()Lcom/zte/zdm/heartyservice/core/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/heartyservice/core/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/zte/zdm/heartyservice/ui/HeartyServicePkgCheckerActivity;->c()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "HeartyService"

    const-string v1, "HeartyServicePkgCheckerActivity->onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const-string v0, "HeartyService"

    const-string v1, "HeartyServicePkgCheckerActivity->onKeyDown: back key pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/zte/zdm/heartyservice/ui/HeartyServicePkgCheckerActivity;->finish()V

    invoke-static {}, Lcom/zte/zdm/heartyservice/core/a;->a()Lcom/zte/zdm/heartyservice/core/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/heartyservice/core/a;->c()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-static {}, Lcom/zte/zdm/heartyservice/core/a;->a()Lcom/zte/zdm/heartyservice/core/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zte/zdm/heartyservice/core/a;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HeartyService"

    const-string v1, "HeartyServicePkgCheckerActivity->onPause: Home screen cancelDMSession"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/zte/zdm/heartyservice/core/a;->a()Lcom/zte/zdm/heartyservice/core/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/heartyservice/core/a;->c()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const-string v0, "HeartyService"

    const-string v1, "HeartyServicePkgCheckerActivity->onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/ui/HeartyServicePkgCheckerActivity;->c:Lcom/zte/zdm/heartyservice/ui/InflateAnimation;

    invoke-virtual {v0}, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->a()V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string v0, "HeartyService"

    const-string v1, "HeartyServicePkgCheckerActivity->onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/ui/HeartyServicePkgCheckerActivity;->c:Lcom/zte/zdm/heartyservice/ui/InflateAnimation;

    invoke-virtual {v0}, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->b()V

    return-void
.end method

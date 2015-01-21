.class public Lcom/zte/zdm/application/mmi/c;
.super Lcom/zte/zdm/application/mmi/a;


# instance fields
.field private b:Landroid/widget/RadioButton;

.field private c:Landroid/widget/RadioButton;

.field private d:Landroid/widget/RadioButton;

.field private e:Landroid/widget/RadioButton;

.field private f:Landroid/widget/RadioGroup;

.field private g:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/zte/zdm/application/mmi/a;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/c;->g:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/zte/zdm/application/mmi/c;Lcom/zte/zdm/b/b/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zte/zdm/application/mmi/c;->d(Lcom/zte/zdm/b/b/a;)V

    return-void
.end method

.method private a(Lcom/zte/zdm/b/b/a;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/c;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/ui/f;->a(Landroid/content/Context;)Lcom/zte/zdm/application/ui/f;

    move-result-object v0

    const-string v1, "dm_auto_update"

    invoke-virtual {v0, v1, v3}, Lcom/zte/zdm/application/ui/f;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/c;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/ui/f;->a(Landroid/content/Context;)Lcom/zte/zdm/application/ui/f;

    move-result-object v0

    const-string v1, "dm_no_auto_update"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/ui/f;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/c;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/ui/f;->a(Landroid/content/Context;)Lcom/zte/zdm/application/ui/f;

    move-result-object v0

    const-string v1, "dm_week_auto_update"

    invoke-virtual {v0, v1, v3}, Lcom/zte/zdm/application/ui/f;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/c;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/ui/f;->a(Landroid/content/Context;)Lcom/zte/zdm/application/ui/f;

    move-result-object v0

    const-string v1, "dm_month_auto_update"

    invoke-virtual {v0, v1, v3}, Lcom/zte/zdm/application/ui/f;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/c;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/ui/f;->a(Landroid/content/Context;)Lcom/zte/zdm/application/ui/f;

    move-result-object v0

    const-string v1, "dm_day_auto_update"

    invoke-virtual {v0, v1, v3}, Lcom/zte/zdm/application/ui/f;->a(Ljava/lang/String;Z)V

    const-string v0, "AutoupdateSettingActivity cancel old longNoUpdate time "

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "android.action.autoUpdate"

    invoke-static {v0}, Lcom/zte/zdm/application/autoupdate/b;->a(Ljava/lang/String;)V

    const-string v0, "android.action.longNoAutoUpdate"

    invoke-static {v0}, Lcom/zte/zdm/application/autoupdate/b;->a(Ljava/lang/String;)V

    const-string v0, "AutoupdateSettingActivity set new longNoUpdate time "

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "android.action.longNoAutoUpdate"

    const/16 v1, 0x1e

    invoke-static {v0, v1, p1}, Lcom/zte/zdm/application/autoupdate/b;->a(Ljava/lang/String;ILcom/zte/zdm/b/b/a;)V

    const-string v0, "autoUpdateFrequency"

    const-string v1, "noUpdate"

    invoke-virtual {p1, v0, v1}, Lcom/zte/zdm/b/b/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/zte/zdm/application/mmi/c;Lcom/zte/zdm/b/b/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zte/zdm/application/mmi/c;->c(Lcom/zte/zdm/b/b/a;)V

    return-void
.end method

.method private b(Lcom/zte/zdm/b/b/a;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/c;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/ui/f;->a(Landroid/content/Context;)Lcom/zte/zdm/application/ui/f;

    move-result-object v0

    const-string v1, "dm_auto_update"

    invoke-virtual {v0, v1, v3}, Lcom/zte/zdm/application/ui/f;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/c;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/ui/f;->a(Landroid/content/Context;)Lcom/zte/zdm/application/ui/f;

    move-result-object v0

    const-string v1, "dm_month_auto_update"

    invoke-virtual {v0, v1, v3}, Lcom/zte/zdm/application/ui/f;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/c;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/ui/f;->a(Landroid/content/Context;)Lcom/zte/zdm/application/ui/f;

    move-result-object v0

    const-string v1, "dm_week_auto_update"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/ui/f;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/c;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/ui/f;->a(Landroid/content/Context;)Lcom/zte/zdm/application/ui/f;

    move-result-object v0

    const-string v1, "dm_day_auto_update"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/ui/f;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/c;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/ui/f;->a(Landroid/content/Context;)Lcom/zte/zdm/application/ui/f;

    move-result-object v0

    const-string v1, "dm_no_auto_update"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/ui/f;->a(Ljava/lang/String;Z)V

    const-string v0, "AutoupdateSettingActivity cancel old autoupdate time "

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "android.action.autoUpdate"

    invoke-static {v0}, Lcom/zte/zdm/application/autoupdate/b;->a(Ljava/lang/String;)V

    const-string v0, "android.action.longNoAutoUpdate"

    invoke-static {v0}, Lcom/zte/zdm/application/autoupdate/b;->a(Ljava/lang/String;)V

    const-string v0, "AutoupdateSettingActivity start month autoupdate time "

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "android.action.autoUpdate"

    const/16 v1, 0x1e

    invoke-static {v0, v1, p1}, Lcom/zte/zdm/application/autoupdate/b;->a(Ljava/lang/String;ILcom/zte/zdm/b/b/a;)V

    const-string v0, "autoUpdateFrequency"

    const-string v1, "month"

    invoke-virtual {p1, v0, v1}, Lcom/zte/zdm/b/b/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/zte/zdm/application/mmi/c;Lcom/zte/zdm/b/b/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zte/zdm/application/mmi/c;->b(Lcom/zte/zdm/b/b/a;)V

    return-void
.end method

.method private c(Lcom/zte/zdm/b/b/a;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/c;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/ui/f;->a(Landroid/content/Context;)Lcom/zte/zdm/application/ui/f;

    move-result-object v0

    const-string v1, "dm_auto_update"

    invoke-virtual {v0, v1, v3}, Lcom/zte/zdm/application/ui/f;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/c;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/ui/f;->a(Landroid/content/Context;)Lcom/zte/zdm/application/ui/f;

    move-result-object v0

    const-string v1, "dm_week_auto_update"

    invoke-virtual {v0, v1, v3}, Lcom/zte/zdm/application/ui/f;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/c;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/ui/f;->a(Landroid/content/Context;)Lcom/zte/zdm/application/ui/f;

    move-result-object v0

    const-string v1, "dm_day_auto_update"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/ui/f;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/c;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/ui/f;->a(Landroid/content/Context;)Lcom/zte/zdm/application/ui/f;

    move-result-object v0

    const-string v1, "dm_month_auto_update"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/ui/f;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/c;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/ui/f;->a(Landroid/content/Context;)Lcom/zte/zdm/application/ui/f;

    move-result-object v0

    const-string v1, "dm_no_auto_update"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/ui/f;->a(Ljava/lang/String;Z)V

    const-string v0, "AutoupdateSettingActivity cancel old autoupdate time "

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "android.action.autoUpdate"

    invoke-static {v0}, Lcom/zte/zdm/application/autoupdate/b;->a(Ljava/lang/String;)V

    const-string v0, "android.action.longNoAutoUpdate"

    invoke-static {v0}, Lcom/zte/zdm/application/autoupdate/b;->a(Ljava/lang/String;)V

    const-string v0, "AutoupdateSettingActivity start week autoupdate time "

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "android.action.autoUpdate"

    const/4 v1, 0x7

    invoke-static {v0, v1, p1}, Lcom/zte/zdm/application/autoupdate/b;->a(Ljava/lang/String;ILcom/zte/zdm/b/b/a;)V

    const-string v0, "autoUpdateFrequency"

    const-string v1, "week"

    invoke-virtual {p1, v0, v1}, Lcom/zte/zdm/b/b/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/zte/zdm/application/mmi/c;Lcom/zte/zdm/b/b/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zte/zdm/application/mmi/c;->a(Lcom/zte/zdm/b/b/a;)V

    return-void
.end method

.method private d(Lcom/zte/zdm/b/b/a;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/c;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/ui/f;->a(Landroid/content/Context;)Lcom/zte/zdm/application/ui/f;

    move-result-object v0

    const-string v1, "dm_auto_update"

    invoke-virtual {v0, v1, v3}, Lcom/zte/zdm/application/ui/f;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/c;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/ui/f;->a(Landroid/content/Context;)Lcom/zte/zdm/application/ui/f;

    move-result-object v0

    const-string v1, "dm_day_auto_update"

    invoke-virtual {v0, v1, v3}, Lcom/zte/zdm/application/ui/f;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/c;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/ui/f;->a(Landroid/content/Context;)Lcom/zte/zdm/application/ui/f;

    move-result-object v0

    const-string v1, "dm_week_auto_update"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/ui/f;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/c;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/ui/f;->a(Landroid/content/Context;)Lcom/zte/zdm/application/ui/f;

    move-result-object v0

    const-string v1, "dm_month_auto_update"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/ui/f;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/c;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/ui/f;->a(Landroid/content/Context;)Lcom/zte/zdm/application/ui/f;

    move-result-object v0

    const-string v1, "dm_no_auto_update"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/ui/f;->a(Ljava/lang/String;Z)V

    const-string v0, "AutoupdateSettingActivity cancel old autoupdate time "

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "android.action.autoUpdate"

    invoke-static {v0}, Lcom/zte/zdm/application/autoupdate/b;->a(Ljava/lang/String;)V

    const-string v0, "android.action.longNoAutoUpdate"

    invoke-static {v0}, Lcom/zte/zdm/application/autoupdate/b;->a(Ljava/lang/String;)V

    const-string v0, "AutoupdateSettingActivity start day autoupdate time "

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "android.action.autoUpdate"

    invoke-static {v0, v3, p1}, Lcom/zte/zdm/application/autoupdate/b;->a(Ljava/lang/String;ILcom/zte/zdm/b/b/a;)V

    const-string v0, "autoUpdateFrequency"

    const-string v1, "day"

    invoke-virtual {p1, v0, v1}, Lcom/zte/zdm/b/b/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/c;->a:Landroid/app/Activity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/c;->a:Landroid/app/Activity;

    new-instance v2, Lcom/zte/zdm/application/mmi/af;

    iget-object v3, p0, Lcom/zte/zdm/application/mmi/c;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/zte/zdm/application/mmi/af;-><init>(Landroid/content/Context;)V

    const/high16 v3, 0x7f03

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/zte/zdm/application/mmi/af;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/c;->a:Landroid/app/Activity;

    const v1, 0x7f0d0004

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/c;->b:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/c;->a:Landroid/app/Activity;

    const v1, 0x7f0d0005

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/c;->c:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/c;->a:Landroid/app/Activity;

    const v1, 0x7f0d0006

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/c;->d:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/c;->a:Landroid/app/Activity;

    const v1, 0x7f0d0007

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/c;->e:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/c;->a:Landroid/app/Activity;

    const v1, 0x7f0d0003

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/c;->f:Landroid/widget/RadioGroup;

    return-void
.end method

.method public c()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/c;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/zte/zdm/application/ui/f;->a(Landroid/content/Context;)Lcom/zte/zdm/application/ui/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/ui/f;->b()Lcom/zte/zdm/application/ui/g;

    move-result-object v0

    iget-boolean v0, v0, Lcom/zte/zdm/application/ui/g;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/c;->b:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    iget-object v0, p0, Lcom/zte/zdm/application/mmi/c;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/zte/zdm/application/ui/f;->a(Landroid/content/Context;)Lcom/zte/zdm/application/ui/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/ui/f;->b()Lcom/zte/zdm/application/ui/g;

    move-result-object v0

    iget-boolean v0, v0, Lcom/zte/zdm/application/ui/g;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/c;->c:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "AutoupdateSettingActivity initCheckBox  set week auto update "

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "android.action.autoUpdate"

    invoke-static {v1}, Lcom/zte/zdm/application/autoupdate/b;->a(Ljava/lang/String;)V

    const-string v1, "android.action.longNoAutoUpdate"

    invoke-static {v1}, Lcom/zte/zdm/application/autoupdate/b;->a(Ljava/lang/String;)V

    const-string v1, "AutoupdateSettingActivity start week autoupdate time "

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "android.action.autoUpdate"

    const/4 v2, 0x7

    invoke-static {v1, v2, v0}, Lcom/zte/zdm/application/autoupdate/b;->a(Ljava/lang/String;ILcom/zte/zdm/b/b/a;)V

    const-string v1, "autoUpdateFrequency"

    const-string v2, "week"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/b/b/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/zte/zdm/application/mmi/c;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/zte/zdm/application/ui/f;->a(Landroid/content/Context;)Lcom/zte/zdm/application/ui/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/ui/f;->b()Lcom/zte/zdm/application/ui/g;

    move-result-object v0

    iget-boolean v0, v0, Lcom/zte/zdm/application/ui/g;->g:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/c;->d:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_2
    iget-object v0, p0, Lcom/zte/zdm/application/mmi/c;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/zte/zdm/application/ui/f;->a(Landroid/content/Context;)Lcom/zte/zdm/application/ui/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/ui/f;->b()Lcom/zte/zdm/application/ui/g;

    move-result-object v0

    iget-boolean v0, v0, Lcom/zte/zdm/application/ui/g;->h:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/c;->e:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_3
    return-void

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/application/mmi/c;->b:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zte/zdm/application/mmi/c;->c:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/zte/zdm/application/mmi/c;->d:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/zte/zdm/application/mmi/c;->e:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_3
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/c;->f:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/zte/zdm/application/mmi/d;

    invoke-direct {v1, p0}, Lcom/zte/zdm/application/mmi/d;-><init>(Lcom/zte/zdm/application/mmi/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

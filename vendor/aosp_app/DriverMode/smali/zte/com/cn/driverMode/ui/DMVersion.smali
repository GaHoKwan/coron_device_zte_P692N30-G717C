.class public Lzte/com/cn/driverMode/ui/DMVersion;
.super Lzte/com/cn/driverMode/ui/DMBaseActivity;


# instance fields
.field protected a:Landroid/view/View;

.field protected b:Landroid/view/View;

.field protected c:Landroid/content/pm/PackageInfo;

.field private h:Ljava/lang/String;

.field private i:Lzte/com/cn/driverMode/service/DMApplication;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lzte/com/cn/driverMode/ui/DMVersion;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMVersion;->h:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMVersion;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const v0, 0x7f030047

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMVersion;->setContentView(I)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMVersion;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/DMApplication;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMVersion;->i:Lzte/com/cn/driverMode/service/DMApplication;

    const v0, 0x7f0b010b

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMVersion;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMVersion;->a:Landroid/view/View;

    const v0, 0x7f0b010d

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMVersion;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMVersion;->b:Landroid/view/View;

    :try_start_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMVersion;->i:Lzte/com/cn/driverMode/service/DMApplication;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMVersion;->i:Lzte/com/cn/driverMode/service/DMApplication;

    invoke-virtual {v1}, Lzte/com/cn/driverMode/service/DMApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMVersion;->c:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMVersion;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v0, "UpdateState"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMVersion;->b:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMVersion;->a:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "URL"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMVersion;->h:Ljava/lang/String;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMVersion;->b:Landroid/view/View;

    const v2, 0x7f0b010f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "VersionName"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMVersion;->b:Landroid/view/View;

    const v2, 0x7f0b0111

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "Size"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMVersion;->b:Landroid/view/View;

    const v2, 0x7f0b0113

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "Feature"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMVersion;->b:Landroid/view/View;

    const v1, 0x7f0b0112

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lzte/com/cn/driverMode/ui/dy;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/dy;-><init>(Lzte/com/cn/driverMode/ui/DMVersion;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMVersion;->b:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMVersion;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMVersion;->a:Landroid/view/View;

    const v1, 0x7f0b010c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMVersion;->c:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMVersion;->c:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

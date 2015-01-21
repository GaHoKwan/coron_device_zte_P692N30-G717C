.class public Lzte/com/cn/driverMode/ui/DMStartActivity;
.super Landroid/app/Activity;


# instance fields
.field protected a:Landroid/content/Context;

.field b:Lzte/com/cn/driverMode/service/DMApplication;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMStartActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "zte.com.cn.driverMode"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "debugtag"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DMApplication"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "1"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMStartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800c8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DMApplication"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "2"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMStartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800c8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "DMApplication"

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMStartActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMStartActivity;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMStartActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/DMApplication;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMStartActivity;->b:Lzte/com/cn/driverMode/service/DMApplication;

    new-instance v0, Lzte/com/cn/driverMode/service/by;

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMStartActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lzte/com/cn/driverMode/service/by;-><init>(Landroid/content/Context;)V

    const-string v1, "first_time"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/driverMode/service/by;->a(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMStartActivity;->a()Z

    move-result v1

    invoke-static {v1}, Lzte/com/cn/driverMode/service/ce;->a(Z)V

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMStartActivity;->b:Lzte/com/cn/driverMode/service/DMApplication;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMStartActivity;->b:Lzte/com/cn/driverMode/service/DMApplication;

    iput-boolean v1, v2, Lzte/com/cn/driverMode/service/DMApplication;->g:Z

    :cond_0
    const-string v2, "StartActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMStartActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lzte/com/cn/driverMode/ui/SpecialTipsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMStartActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMStartActivity;->finish()V

    return-void

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMStartActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lzte/com/cn/driverMode/ui/DMHomeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMStartActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

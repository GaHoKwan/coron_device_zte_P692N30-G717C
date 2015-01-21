.class public Lcom/zte/zdm/application/mmi/AutoupdateSettingActivity;
.super Landroid/app/Activity;


# instance fields
.field a:Lcom/zte/zdm/application/mmi/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/AutoupdateSettingActivity;->a:Lcom/zte/zdm/application/mmi/a;

    invoke-virtual {v0}, Lcom/zte/zdm/application/mmi/a;->a()V

    return-void
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/AutoupdateSettingActivity;->a:Lcom/zte/zdm/application/mmi/a;

    invoke-virtual {v0}, Lcom/zte/zdm/application/mmi/a;->b()V

    return-void
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/AutoupdateSettingActivity;->a:Lcom/zte/zdm/application/mmi/a;

    invoke-virtual {v0}, Lcom/zte/zdm/application/mmi/a;->c()V

    return-void
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/AutoupdateSettingActivity;->a:Lcom/zte/zdm/application/mmi/a;

    invoke-virtual {v0}, Lcom/zte/zdm/application/mmi/a;->d()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CMCC"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/zte/zdm/application/b;->c([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/zte/zdm/application/mmi/b;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/mmi/b;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/AutoupdateSettingActivity;->a:Lcom/zte/zdm/application/mmi/a;

    :goto_0
    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/AutoupdateSettingActivity;->a()V

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/AutoupdateSettingActivity;->b()V

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/AutoupdateSettingActivity;->c()V

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/AutoupdateSettingActivity;->d()V

    return-void

    :cond_0
    new-instance v0, Lcom/zte/zdm/application/mmi/c;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/mmi/c;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/AutoupdateSettingActivity;->a:Lcom/zte/zdm/application/mmi/a;

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    const-string v0, "AutoupdateSettingActivity onResume"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    const-string v0, "onStop"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/zte/zdm/application/d/d;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/AutoupdateSettingActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/AutoupdateSettingActivity;->finish()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

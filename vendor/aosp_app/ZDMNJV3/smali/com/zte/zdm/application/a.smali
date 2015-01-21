.class public Lcom/zte/zdm/application/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/zte/zdm/application/b/g;

.field private c:Lcom/zte/zdm/application/services/c;

.field private d:Lcom/zte/zdm/b/b/a;

.field private e:Lcom/zte/zdm/application/d/e/b;

.field private f:Lcom/zte/zdm/e/b;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/a;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "0"

    invoke-static {p1, v0}, Lcom/zte/zdm/application/b/r;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "delay_install"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {p1}, Lcom/zte/zdm/application/b/r;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v0, "Delay_update_time"

    invoke-static {p1, v0, v2}, Lcom/zte/zdm/application/b/r;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/zte/zdm/application/d/e;->a(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/zte/zdm/application/mmi/MainActivity;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android.action.reminder.me.later.newapp"

    invoke-static {p1, v1}, Lcom/zte/zdm/application/b/r;->c(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "android.action.reminder.me.later.newapp"

    invoke-static {p1, v0, v1}, Lcom/zte/zdm/application/b/r;->a(Landroid/content/Context;ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.action.reminder.me.later"

    invoke-static {p1, v1}, Lcom/zte/zdm/application/b/r;->c(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "android.action.reminder.me.later"

    invoke-static {p1, v0, v1}, Lcom/zte/zdm/application/b/r;->a(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0
.end method

.method private i()V
    .locals 2

    new-instance v0, Lcom/zte/zdm/application/autoupdate/b;

    invoke-direct {v0}, Lcom/zte/zdm/application/autoupdate/b;-><init>()V

    iget-object v1, p0, Lcom/zte/zdm/application/a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/autoupdate/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method private j()V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/ui/f;->a(Landroid/content/Context;)Lcom/zte/zdm/application/ui/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/ui/f;->a()V

    invoke-direct {p0}, Lcom/zte/zdm/application/a;->i()V

    return-void
.end method

.method private k()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initConfig() context = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/a;->d:Lcom/zte/zdm/b/b/a;

    return-void
.end method

.method private l()V
    .locals 2

    new-instance v0, Lcom/zte/zdm/application/d/c/a;

    invoke-direct {v0}, Lcom/zte/zdm/application/d/c/a;-><init>()V

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->a(Lcom/zte/zdm/g/b/c;I)V

    return-void
.end method

.method private m()V
    .locals 4

    iget-object v0, p0, Lcom/zte/zdm/application/a;->b:Lcom/zte/zdm/application/b/g;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initController()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    new-instance v0, Lcom/zte/zdm/application/d/e/b;

    invoke-direct {v0}, Lcom/zte/zdm/application/d/e/b;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/application/a;->e:Lcom/zte/zdm/application/d/e/b;

    new-instance v0, Lcom/zte/zdm/application/b/dc;

    invoke-direct {v0}, Lcom/zte/zdm/application/b/dc;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/application/a;->f:Lcom/zte/zdm/e/b;

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/a;->d:Lcom/zte/zdm/b/b/a;

    iget-object v2, p0, Lcom/zte/zdm/application/a;->e:Lcom/zte/zdm/application/d/e/b;

    iget-object v3, p0, Lcom/zte/zdm/application/a;->f:Lcom/zte/zdm/e/b;

    invoke-static {v0, v1, v2, v3}, Lcom/zte/zdm/application/b/g;->a(Landroid/app/Application;Lcom/zte/zdm/b/b/a;Lcom/zte/zdm/g/d/c;Lcom/zte/zdm/e/b;)Lcom/zte/zdm/application/b/g;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/a;->b:Lcom/zte/zdm/application/b/g;

    invoke-static {}, Lcom/zte/zdm/application/b/gb;->a()Lcom/zte/zdm/application/b/gb;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/zte/zdm/application/a;->b:Lcom/zte/zdm/application/b/g;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/zte/zdm/application/b/gb;->a(Landroid/content/Context;Lcom/zte/zdm/a/a;Lcom/zte/zdm/a/j;)Lcom/zte/zdm/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/a;->b:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v1, v0}, Lcom/zte/zdm/application/b/g;->a(Lcom/zte/zdm/a/d;)V

    new-instance v1, Lcom/zte/zdm/application/b/cq;

    iget-object v2, p0, Lcom/zte/zdm/application/a;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/zte/zdm/application/b/cq;-><init>(Landroid/content/Context;Lcom/zte/zdm/a/d;)V

    iget-object v0, p0, Lcom/zte/zdm/application/a;->b:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/b/g;->a(Lcom/zte/zdm/b/e;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private n()V
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/application/a;->c:Lcom/zte/zdm/application/services/c;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initServiceHandler()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/services/c;->a(Landroid/content/Context;)Lcom/zte/zdm/application/services/c;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/a;->c:Lcom/zte/zdm/application/services/c;

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private o()V
    .locals 2

    invoke-static {}, Lcom/zte/zdm/application/services/ZdmService;->a()Lcom/zte/zdm/application/services/ZdmService;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "ZdmService is null,initServiceAfterForceClose"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/zte/zdm/application/b/cp;

    invoke-direct {v1, v0}, Lcom/zte/zdm/application/b/cp;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/cp;->a()V

    invoke-direct {p0, v0}, Lcom/zte/zdm/application/a;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/zte/zdm/application/b/g;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/a;->b:Lcom/zte/zdm/application/b/g;

    return-object v0
.end method

.method public a(Lcom/zte/zdm/application/b/g;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/a;->b:Lcom/zte/zdm/application/b/g;

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/a;->c:Lcom/zte/zdm/application/services/c;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/application/services/c;->a(Z)V

    return-void
.end method

.method public b()Lcom/zte/zdm/application/services/c;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/a;->c:Lcom/zte/zdm/application/services/c;

    return-object v0
.end method

.method public c()Lcom/zte/zdm/b/b/a;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/a;->d:Lcom/zte/zdm/b/b/a;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 4

    const-string v0, "0.0.0"

    iget-object v1, p0, Lcom/zte/zdm/application/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/zte/zdm/application/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "getVersion:NameNotFoundException"

    invoke-static {p0, v2, v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public declared-synchronized e()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/zte/zdm/application/a;->l()V

    const-string v0, "ZDMAPP init started"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZDMAPP Version is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/application/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/b;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/zte/zdm/application/a;->k()V

    invoke-direct {p0}, Lcom/zte/zdm/application/a;->m()V

    invoke-direct {p0}, Lcom/zte/zdm/application/a;->n()V

    invoke-direct {p0}, Lcom/zte/zdm/application/a;->j()V

    invoke-direct {p0}, Lcom/zte/zdm/application/a;->o()V

    iget-object v0, p0, Lcom/zte/zdm/application/a;->a:Landroid/content/Context;

    sget-object v1, Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;->ONLYBYSELF:Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;

    invoke-static {v0, v1}, Lcom/zte/statistics/sdk/ZTEStatistics;->init(Landroid/content/Context;Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;)V

    iget-object v0, p0, Lcom/zte/zdm/application/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/c/a;->a(Landroid/content/Context;)Lcom/zte/zdm/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/c/a;->d(Landroid/content/Context;)V

    const-string v0, "ZDMAPP init completed"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/a;->c:Lcom/zte/zdm/application/services/c;

    invoke-virtual {v0}, Lcom/zte/zdm/application/services/c;->a()V

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/a;->c:Lcom/zte/zdm/application/services/c;

    invoke-virtual {v0}, Lcom/zte/zdm/application/services/c;->c()V

    return-void
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/a;->c:Lcom/zte/zdm/application/services/c;

    invoke-virtual {v0}, Lcom/zte/zdm/application/services/c;->d()V

    return-void
.end method

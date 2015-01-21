.class public Lcom/powermo/SmartBar/SmartApplication;
.super Landroid/app/Application;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/powermo/SmartBar/c;

.field private c:Landroid/app/ActivityManager;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/powermo/SmartBar/ad;

.field private g:Lcom/powermo/SmartBar/ae;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const-string v0, "SmartApplication"

    iput-object v0, p0, Lcom/powermo/SmartBar/SmartApplication;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/powermo/SmartBar/SmartApplication;->b:Lcom/powermo/SmartBar/c;

    iput-object v1, p0, Lcom/powermo/SmartBar/SmartApplication;->c:Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/powermo/SmartBar/SmartApplication;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/powermo/SmartBar/SmartApplication;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/powermo/SmartBar/SmartApplication;->f:Lcom/powermo/SmartBar/ad;

    new-instance v0, Lcom/powermo/SmartBar/cr;

    invoke-direct {v0, p0}, Lcom/powermo/SmartBar/cr;-><init>(Lcom/powermo/SmartBar/SmartApplication;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/SmartApplication;->g:Lcom/powermo/SmartBar/ae;

    return-void
.end method

.method private g()Z
    .locals 2

    iget-object v0, p0, Lcom/powermo/SmartBar/SmartApplication;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/SmartApplication;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/powermo/SmartBar/SmartApplication;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/powermo/SmartBar/SmartApplication;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/powermo/SmartBar/ad;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/SmartApplication;->f:Lcom/powermo/SmartBar/ad;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iget-object v0, p0, Lcom/powermo/SmartBar/SmartApplication;->c:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v1, :cond_0

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_0
.end method

.method public c()Lcom/powermo/SmartBar/c;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/SmartApplication;->b:Lcom/powermo/SmartBar/c;

    return-object v0
.end method

.method protected d()V
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/SmartApplication;->b:Lcom/powermo/SmartBar/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/SmartApplication;->b:Lcom/powermo/SmartBar/c;

    invoke-virtual {v0}, Lcom/powermo/SmartBar/c;->a()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/SmartApplication;->b:Lcom/powermo/SmartBar/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/SmartApplication;->b:Lcom/powermo/SmartBar/c;

    invoke-virtual {v0}, Lcom/powermo/SmartBar/c;->b()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/SmartApplication;->b:Lcom/powermo/SmartBar/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/SmartApplication;->b:Lcom/powermo/SmartBar/c;

    invoke-virtual {v0}, Lcom/powermo/SmartBar/c;->d()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/powermo/SmartBar/SmartApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/powermo/SmartBar/SmartApplication;->c:Landroid/app/ActivityManager;

    invoke-virtual {p0}, Lcom/powermo/SmartBar/SmartApplication;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/SmartBar/SmartApplication;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/powermo/SmartBar/SmartApplication;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/SmartBar/SmartApplication;->e:Ljava/lang/String;

    invoke-static {p0}, Lcom/powermo/SmartBar/ad;->a(Landroid/content/Context;)Lcom/powermo/SmartBar/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/SmartBar/SmartApplication;->f:Lcom/powermo/SmartBar/ad;

    iget-object v0, p0, Lcom/powermo/SmartBar/SmartApplication;->f:Lcom/powermo/SmartBar/ad;

    invoke-static {p0, v0}, Lcom/powermo/SmartBar/dc;->a(Landroid/content/Context;Lcom/powermo/SmartBar/ad;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/SmartApplication;->f:Lcom/powermo/SmartBar/ad;

    iget-object v1, p0, Lcom/powermo/SmartBar/SmartApplication;->g:Lcom/powermo/SmartBar/ae;

    invoke-virtual {v0, v1}, Lcom/powermo/SmartBar/ad;->a(Lcom/powermo/SmartBar/ae;)V

    invoke-direct {p0}, Lcom/powermo/SmartBar/SmartApplication;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/powermo/SmartBar/c;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/powermo/SmartBar/SmartApplication;->f:Lcom/powermo/SmartBar/ad;

    invoke-direct {v0, p0, v1, v2}, Lcom/powermo/SmartBar/c;-><init>(Landroid/content/Context;ZLcom/powermo/SmartBar/ad;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/SmartApplication;->b:Lcom/powermo/SmartBar/c;

    :cond_0
    invoke-virtual {p0}, Lcom/powermo/SmartBar/SmartApplication;->d()V

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/powermo/SmartBar/SmartBarService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/powermo/SmartBar/SmartApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SmartApplication"

    const-string v2, "Can\'t start smart bar service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 0

    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    return-void
.end method

.method public onTerminate()V
    .locals 0

    invoke-virtual {p0}, Lcom/powermo/SmartBar/SmartApplication;->e()V

    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    return-void
.end method

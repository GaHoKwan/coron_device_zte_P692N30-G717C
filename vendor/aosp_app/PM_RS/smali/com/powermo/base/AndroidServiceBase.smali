.class public abstract Lcom/powermo/base/AndroidServiceBase;
.super Landroid/app/Service;


# static fields
.field static a:Z

.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Lcom/powermo/base/k;

.field private d:Lcom/powermo/base/j;

.field private e:Lcom/powermo/base/l;

.field private f:Lcom/powermo/base/o;

.field private g:Lcom/powermo/base/q;

.field private h:Ljava/lang/String;

.field private i:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "AndroidServiceBase"

    invoke-static {v0}, Lcom/powermo/base/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powermo/base/AndroidServiceBase;->b:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/powermo/base/AndroidServiceBase;->a:Z

    sget-boolean v0, Lcom/powermo/base/f;->d:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/powermo/base/f;->a()V

    :cond_0
    sget-boolean v0, Lcom/powermo/base/f;->c:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/powermo/base/r;->a()Z

    move-result v0

    sput-boolean v0, Lcom/powermo/base/AndroidServiceBase;->a:Z

    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-object v0, p0, Lcom/powermo/base/AndroidServiceBase;->c:Lcom/powermo/base/k;

    iput-object v0, p0, Lcom/powermo/base/AndroidServiceBase;->d:Lcom/powermo/base/j;

    iput-object v0, p0, Lcom/powermo/base/AndroidServiceBase;->e:Lcom/powermo/base/l;

    iput-object v0, p0, Lcom/powermo/base/AndroidServiceBase;->f:Lcom/powermo/base/o;

    iput-object v0, p0, Lcom/powermo/base/AndroidServiceBase;->g:Lcom/powermo/base/q;

    iput-object v0, p0, Lcom/powermo/base/AndroidServiceBase;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/powermo/base/AndroidServiceBase;->i:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private a(IILjava/lang/Object;)I
    .locals 6

    const/4 v3, 0x0

    sget-boolean v0, Lcom/powermo/base/f;->d:Z

    if-eqz v0, :cond_0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/powermo/base/AndroidServiceBase;->nativeCommand(IIIILjava/lang/Object;)I

    move-result v3

    :cond_0
    return v3
.end method

.method static synthetic a(Lcom/powermo/base/AndroidServiceBase;)Lcom/powermo/base/o;
    .locals 1

    iget-object v0, p0, Lcom/powermo/base/AndroidServiceBase;->f:Lcom/powermo/base/o;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "LIB_COMMAND"

    const-string v2, "enable"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/powermo/base/AndroidServiceBase;)Lcom/powermo/base/l;
    .locals 1

    iget-object v0, p0, Lcom/powermo/base/AndroidServiceBase;->e:Lcom/powermo/base/l;

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "LIB_COMMAND"

    const-string v2, "disable"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method static synthetic l()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/powermo/base/AndroidServiceBase;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method protected a(I)V
    .locals 0

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected a(Z)V
    .locals 0

    return-void
.end method

.method protected a(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const-string v1, "INIT_ENABLED"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    const-string v1, "INIT_ENABLED"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/powermo/base/AndroidServiceBase;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/powermo/base/AndroidServiceBase;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return v0

    :catch_0
    move-exception v1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/powermo/base/AndroidServiceBase;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/powermo/base/AndroidServiceBase;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected abstract b()V
.end method

.method protected b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected abstract c()V
.end method

.method protected abstract d()Ljava/lang/String;
.end method

.method protected e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/powermo/base/AndroidServiceBase;->c:Lcom/powermo/base/k;

    invoke-virtual {v0}, Lcom/powermo/base/k;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/powermo/base/AndroidServiceBase;->d:Lcom/powermo/base/j;

    invoke-virtual {v0}, Lcom/powermo/base/j;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected h()I
    .locals 1

    iget-object v0, p0, Lcom/powermo/base/AndroidServiceBase;->e:Lcom/powermo/base/l;

    invoke-virtual {v0}, Lcom/powermo/base/l;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected i()Z
    .locals 1

    iget-object v0, p0, Lcom/powermo/base/AndroidServiceBase;->f:Lcom/powermo/base/o;

    invoke-virtual {v0}, Lcom/powermo/base/o;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected j()Z
    .locals 1

    iget-object v0, p0, Lcom/powermo/base/AndroidServiceBase;->g:Lcom/powermo/base/q;

    invoke-virtual {v0}, Lcom/powermo/base/q;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected k()Z
    .locals 1

    sget-boolean v0, Lcom/powermo/base/AndroidServiceBase;->a:Z

    return v0
.end method

.method protected native nativeCommand(IIIILjava/lang/Object;)I
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const/16 v0, 0x3eb

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/powermo/base/AndroidServiceBase;->a(IILjava/lang/Object;)I

    return-void
.end method

.method public onCreate()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Lcom/powermo/base/AndroidServiceBase;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/powermo/base/m;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/powermo/base/k;

    invoke-direct {v0}, Lcom/powermo/base/k;-><init>()V

    iput-object v0, p0, Lcom/powermo/base/AndroidServiceBase;->c:Lcom/powermo/base/k;

    iget-object v0, p0, Lcom/powermo/base/AndroidServiceBase;->c:Lcom/powermo/base/k;

    new-instance v1, Lcom/powermo/base/s;

    invoke-direct {v1, p0}, Lcom/powermo/base/s;-><init>(Lcom/powermo/base/AndroidServiceBase;)V

    invoke-virtual {v0, v1}, Lcom/powermo/base/k;->a(Lcom/powermo/base/h;)V

    new-instance v0, Lcom/powermo/base/j;

    invoke-direct {v0}, Lcom/powermo/base/j;-><init>()V

    iput-object v0, p0, Lcom/powermo/base/AndroidServiceBase;->d:Lcom/powermo/base/j;

    iget-object v0, p0, Lcom/powermo/base/AndroidServiceBase;->d:Lcom/powermo/base/j;

    new-instance v1, Lcom/powermo/base/t;

    invoke-direct {v1, p0}, Lcom/powermo/base/t;-><init>(Lcom/powermo/base/AndroidServiceBase;)V

    invoke-virtual {v0, v1}, Lcom/powermo/base/j;->a(Lcom/powermo/base/h;)V

    new-instance v0, Lcom/powermo/base/l;

    invoke-direct {v0}, Lcom/powermo/base/l;-><init>()V

    iput-object v0, p0, Lcom/powermo/base/AndroidServiceBase;->e:Lcom/powermo/base/l;

    iget-object v0, p0, Lcom/powermo/base/AndroidServiceBase;->e:Lcom/powermo/base/l;

    new-instance v1, Lcom/powermo/base/u;

    invoke-direct {v1, p0}, Lcom/powermo/base/u;-><init>(Lcom/powermo/base/AndroidServiceBase;)V

    invoke-virtual {v0, v1}, Lcom/powermo/base/l;->a(Lcom/powermo/base/h;)V

    new-instance v0, Lcom/powermo/base/o;

    invoke-virtual {p0}, Lcom/powermo/base/AndroidServiceBase;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/powermo/base/AndroidServiceBase;->e()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/powermo/base/o;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/powermo/base/AndroidServiceBase;->f:Lcom/powermo/base/o;

    iget-object v0, p0, Lcom/powermo/base/AndroidServiceBase;->f:Lcom/powermo/base/o;

    new-instance v1, Lcom/powermo/base/v;

    invoke-direct {v1, p0}, Lcom/powermo/base/v;-><init>(Lcom/powermo/base/AndroidServiceBase;)V

    invoke-virtual {v0, v1}, Lcom/powermo/base/o;->a(Lcom/powermo/base/h;)V

    new-instance v0, Lcom/powermo/base/q;

    invoke-direct {v0}, Lcom/powermo/base/q;-><init>()V

    iput-object v0, p0, Lcom/powermo/base/AndroidServiceBase;->g:Lcom/powermo/base/q;

    invoke-virtual {p0}, Lcom/powermo/base/AndroidServiceBase;->b()V

    const/16 v0, 0x3e9

    const/4 v1, 0x0

    invoke-direct {p0, v0, v3, v1}, Lcom/powermo/base/AndroidServiceBase;->a(IILjava/lang/Object;)I

    invoke-virtual {p0}, Lcom/powermo/base/AndroidServiceBase;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/base/AndroidServiceBase;->h:Ljava/lang/String;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iget-object v1, p0, Lcom/powermo/base/AndroidServiceBase;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/powermo/base/a;

    invoke-direct {v1, p0, v3}, Lcom/powermo/base/a;-><init>(Lcom/powermo/base/AndroidServiceBase;B)V

    iput-object v1, p0, Lcom/powermo/base/AndroidServiceBase;->i:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/powermo/base/AndroidServiceBase;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/powermo/base/AndroidServiceBase;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/powermo/base/AndroidServiceBase;->i:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/base/AndroidServiceBase;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/powermo/base/AndroidServiceBase;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iput-object v2, p0, Lcom/powermo/base/AndroidServiceBase;->i:Landroid/content/BroadcastReceiver;

    const/16 v0, 0x3ea

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/powermo/base/AndroidServiceBase;->a(IILjava/lang/Object;)I

    invoke-virtual {p0}, Lcom/powermo/base/AndroidServiceBase;->c()V

    iput-object v2, p0, Lcom/powermo/base/AndroidServiceBase;->g:Lcom/powermo/base/q;

    iget-object v0, p0, Lcom/powermo/base/AndroidServiceBase;->f:Lcom/powermo/base/o;

    invoke-virtual {v0}, Lcom/powermo/base/o;->b()V

    iput-object v2, p0, Lcom/powermo/base/AndroidServiceBase;->f:Lcom/powermo/base/o;

    iget-object v0, p0, Lcom/powermo/base/AndroidServiceBase;->c:Lcom/powermo/base/k;

    invoke-virtual {v0}, Lcom/powermo/base/k;->b()V

    iput-object v2, p0, Lcom/powermo/base/AndroidServiceBase;->c:Lcom/powermo/base/k;

    iget-object v0, p0, Lcom/powermo/base/AndroidServiceBase;->d:Lcom/powermo/base/j;

    invoke-virtual {v0}, Lcom/powermo/base/j;->b()V

    iput-object v2, p0, Lcom/powermo/base/AndroidServiceBase;->d:Lcom/powermo/base/j;

    iget-object v0, p0, Lcom/powermo/base/AndroidServiceBase;->e:Lcom/powermo/base/l;

    invoke-virtual {v0}, Lcom/powermo/base/l;->b()V

    iput-object v2, p0, Lcom/powermo/base/AndroidServiceBase;->e:Lcom/powermo/base/l;

    invoke-static {}, Lcom/powermo/base/m;->a()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onLowMemory()V
    .locals 3

    const/16 v0, 0x3ec

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/powermo/base/AndroidServiceBase;->a(IILjava/lang/Object;)I

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2

    const/16 v0, 0x3ed

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/powermo/base/AndroidServiceBase;->a(IILjava/lang/Object;)I

    return-void
.end method

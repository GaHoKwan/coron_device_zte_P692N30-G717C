.class Lcom/powermo/SmartBar/bu;
.super Lcom/powermo/SmartBar/aa;


# instance fields
.field final synthetic a:Lcom/powermo/SmartBar/bo;


# direct methods
.method constructor <init>(Lcom/powermo/SmartBar/bo;Landroid/content/Context;Lcom/powermo/SmartBar/c;)V
    .locals 1

    iput-object p1, p0, Lcom/powermo/SmartBar/bu;->a:Lcom/powermo/SmartBar/bo;

    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, v0}, Lcom/powermo/SmartBar/aa;-><init>(Landroid/content/Context;Lcom/powermo/SmartBar/c;Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-super {p0}, Lcom/powermo/SmartBar/aa;->a()V

    iget-object v0, p0, Lcom/powermo/SmartBar/bu;->a:Lcom/powermo/SmartBar/bo;

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Lcom/powermo/SmartBar/bo;->a(Lcom/powermo/SmartBar/bo;F)V

    return-void
.end method

.method public a(III)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/powermo/SmartBar/aa;->a(III)V

    iget-object v0, p0, Lcom/powermo/SmartBar/bu;->a:Lcom/powermo/SmartBar/bo;

    invoke-static {v0}, Lcom/powermo/SmartBar/bo;->d(Lcom/powermo/SmartBar/bo;)Lcom/powermo/SmartBar/aw;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/powermo/SmartBar/aw;->a(II)V

    return-void
.end method

.method public a(IIZIII)V
    .locals 2

    invoke-super/range {p0 .. p6}, Lcom/powermo/SmartBar/aa;->a(IIZIII)V

    iget-object v0, p0, Lcom/powermo/SmartBar/bu;->a:Lcom/powermo/SmartBar/bo;

    invoke-static {v0}, Lcom/powermo/SmartBar/bo;->d(Lcom/powermo/SmartBar/bo;)Lcom/powermo/SmartBar/aw;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/powermo/SmartBar/aw;->a(IIZ)V

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/bu;->a:Lcom/powermo/SmartBar/bo;

    invoke-static {v0}, Lcom/powermo/SmartBar/bo;->g(Lcom/powermo/SmartBar/bo;)Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/bu;->a:Lcom/powermo/SmartBar/bo;

    const v1, 0x3e99999a

    invoke-static {v0, v1}, Lcom/powermo/SmartBar/bo;->a(Lcom/powermo/SmartBar/bo;F)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/powermo/SmartBar/bu;->a:Lcom/powermo/SmartBar/bo;

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Lcom/powermo/SmartBar/bo;->a(Lcom/powermo/SmartBar/bo;F)V

    goto :goto_0
.end method

.method public b(IIZIII)V
    .locals 7

    const/4 v6, 0x0

    invoke-super/range {p0 .. p6}, Lcom/powermo/SmartBar/aa;->b(IIZIII)V

    iget-object v0, p0, Lcom/powermo/SmartBar/bu;->a:Lcom/powermo/SmartBar/bo;

    invoke-static {v0}, Lcom/powermo/SmartBar/bo;->d(Lcom/powermo/SmartBar/bo;)Lcom/powermo/SmartBar/aw;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/powermo/SmartBar/aw;->b(IIZ)I

    move-result v0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    const-string v1, "android.app.ActivityManagerNative"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getDefault"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "android.app.IActivityManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "resumeAppSwitches"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v4, "dismissKeyguardOnNextActivity"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Lcom/powermo/SmartBar/bu;->a:Lcom/powermo/SmartBar/bo;

    invoke-static {v1}, Lcom/powermo/SmartBar/bo;->d(Lcom/powermo/SmartBar/bo;)Lcom/powermo/SmartBar/aw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powermo/SmartBar/aw;->b()Z

    move-result v1

    iget-object v2, p0, Lcom/powermo/SmartBar/bu;->a:Lcom/powermo/SmartBar/bo;

    invoke-static {v2}, Lcom/powermo/SmartBar/bo;->d(Lcom/powermo/SmartBar/bo;)Lcom/powermo/SmartBar/aw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/powermo/SmartBar/aw;->d()Z

    move-result v2

    iget-object v3, p0, Lcom/powermo/SmartBar/bu;->a:Lcom/powermo/SmartBar/bo;

    invoke-static {v3}, Lcom/powermo/SmartBar/bo;->c(Lcom/powermo/SmartBar/bo;)Lcom/powermo/SmartBar/c;

    move-result-object v3

    invoke-virtual {p0}, Lcom/powermo/SmartBar/bu;->c()Lcom/powermo/SmartBar/k;

    move-result-object v4

    iget-object v5, p0, Lcom/powermo/SmartBar/bu;->a:Lcom/powermo/SmartBar/bo;

    invoke-static {v5}, Lcom/powermo/SmartBar/bo;->b(Lcom/powermo/SmartBar/bo;)Landroid/content/Context;

    move-result-object v5

    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v0, -0x1

    :cond_3
    invoke-virtual {v3, v4, v5, v0}, Lcom/powermo/SmartBar/c;->a(Lcom/powermo/SmartBar/k;Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/powermo/SmartBar/bu;->a:Lcom/powermo/SmartBar/bo;

    invoke-static {v0}, Lcom/powermo/SmartBar/bo;->a(Lcom/powermo/SmartBar/bo;)V

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/bu;->a:Lcom/powermo/SmartBar/bo;

    invoke-static {v0}, Lcom/powermo/SmartBar/bo;->b(Lcom/powermo/SmartBar/bo;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/powermo/SmartBar/bu;->a:Lcom/powermo/SmartBar/bo;

    invoke-static {v1}, Lcom/powermo/SmartBar/bo;->e(Lcom/powermo/SmartBar/bo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/powermo/SmartBar/SmartBarService;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MiniLauncher"

    const-string v3, "cannot call AM"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

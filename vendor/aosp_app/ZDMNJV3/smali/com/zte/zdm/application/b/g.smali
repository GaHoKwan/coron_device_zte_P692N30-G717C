.class public Lcom/zte/zdm/application/b/g;
.super Lcom/zte/zdm/a/a;


# static fields
.field private static p:Lcom/zte/zdm/application/b/g;


# instance fields
.field a:Z

.field b:Z

.field private q:Landroid/content/Context;

.field private r:Lcom/zte/zdm/application/activities/b;

.field private s:Lcom/zte/zdm/application/d/d/a;

.field private t:J

.field private u:I

.field private v:Z


# direct methods
.method private constructor <init>(Landroid/app/Application;Lcom/zte/zdm/b/b/a;Lcom/zte/zdm/g/d/c;Lcom/zte/zdm/e/b;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p2, p3, p4}, Lcom/zte/zdm/a/a;-><init>(Lcom/zte/zdm/b/b/a;Lcom/zte/zdm/g/d/c;Lcom/zte/zdm/e/b;)V

    iput-boolean v2, p0, Lcom/zte/zdm/application/b/g;->a:Z

    iput-boolean v2, p0, Lcom/zte/zdm/application/b/g;->b:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zte/zdm/application/b/g;->t:J

    iput v2, p0, Lcom/zte/zdm/application/b/g;->u:I

    iput-boolean v2, p0, Lcom/zte/zdm/application/b/g;->v:Z

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/b/g;->q:Landroid/content/Context;

    invoke-static {}, Lcom/zte/zdm/application/activities/a;->a()Lcom/zte/zdm/application/activities/a;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/g;->q:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/activities/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/activities/b;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/b/g;->r:Lcom/zte/zdm/application/activities/b;

    new-instance v0, Lcom/zte/zdm/application/d/d/a;

    invoke-direct {v0, p2}, Lcom/zte/zdm/application/d/d/a;-><init>(Lcom/zte/zdm/b/b/a;)V

    iput-object v0, p0, Lcom/zte/zdm/application/b/g;->s:Lcom/zte/zdm/application/d/d/a;

    return-void
.end method

.method public static a()Lcom/zte/zdm/application/b/g;
    .locals 2

    sget-object v0, Lcom/zte/zdm/application/b/g;->p:Lcom/zte/zdm/application/b/g;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Android controller not yet initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/zte/zdm/application/b/g;->p:Lcom/zte/zdm/application/b/g;

    return-object v0
.end method

.method public static a(Landroid/app/Application;Lcom/zte/zdm/b/b/a;Lcom/zte/zdm/g/d/c;Lcom/zte/zdm/e/b;)Lcom/zte/zdm/application/b/g;
    .locals 1

    sget-object v0, Lcom/zte/zdm/application/b/g;->p:Lcom/zte/zdm/application/b/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zte/zdm/application/b/g;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/zte/zdm/application/b/g;-><init>(Landroid/app/Application;Lcom/zte/zdm/b/b/a;Lcom/zte/zdm/g/d/c;Lcom/zte/zdm/e/b;)V

    sput-object v0, Lcom/zte/zdm/application/b/g;->p:Lcom/zte/zdm/application/b/g;

    :cond_0
    sget-object v0, Lcom/zte/zdm/application/b/g;->p:Lcom/zte/zdm/application/b/g;

    return-object v0
.end method

.method public static c()Z
    .locals 1

    sget-object v0, Lcom/zte/zdm/application/b/g;->p:Lcom/zte/zdm/application/b/g;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/zte/zdm/application/b/g;->p:Lcom/zte/zdm/application/b/g;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDelayInstall delayIntall = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/zte/zdm/a/a;->a(Z)V

    return-void
.end method

.method public a([B)V
    .locals 1

    const-string v0, "requestNiSession"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/zte/zdm/a/a;->a([B)V

    return-void
.end method

.method public b()Lcom/zte/zdm/a/b;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/g;->r:Lcom/zte/zdm/application/activities/b;

    return-object v0
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/g;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/d/h;->f(Landroid/content/Context;)V

    invoke-super {p0, p1}, Lcom/zte/zdm/a/a;->b(Z)V

    return-void
.end method

.method public c(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/zte/zdm/application/b/g;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "need_to_restart_dlsession"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/b/b/a;->b(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->c()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/zdm/application/b/g;->a:Z

    :goto_0
    iput-boolean p1, p0, Lcom/zte/zdm/application/b/g;->b:Z

    invoke-virtual {p0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->N()Lcom/zte/zdm/a/c;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/application/b/k;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/b/k;->a(I)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->D()V

    :cond_0
    invoke-virtual {p0}, Lcom/zte/zdm/application/b/g;->n()V

    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/zte/zdm/application/b/g;->a:Z

    goto :goto_0
.end method

.method public d(Z)V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/application/b/g;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "need_to_restart_dlsession"

    invoke-virtual {v0, v1, p1}, Lcom/zte/zdm/b/b/a;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method public e()V
    .locals 4

    const/4 v1, 0x0

    const-string v0, "cancelDownload()"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/zte/zdm/application/b/g;->a:Z

    invoke-virtual {p0, v1}, Lcom/zte/zdm/application/b/g;->e(Z)V

    invoke-virtual {p0, v1}, Lcom/zte/zdm/application/b/g;->d(Z)V

    invoke-virtual {p0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->N()Lcom/zte/zdm/a/c;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/application/b/k;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/b/k;->a(I)V

    invoke-super {p0}, Lcom/zte/zdm/a/a;->e()V

    invoke-virtual {p0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/g;->q:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/application/b/g;->q:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/a/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->z()V

    return-void
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zte/zdm/application/b/g;->v:Z

    return-void
.end method

.method public f()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "acceptInstallMetaFile()"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/zte/zdm/application/b/g;->a:Z

    invoke-virtual {p0, v1}, Lcom/zte/zdm/application/b/g;->a(Z)V

    invoke-super {p0}, Lcom/zte/zdm/a/a;->f()V

    return-void
.end method

.method public g()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "rejectInstallMetaFile()"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/zte/zdm/application/b/g;->a:Z

    invoke-virtual {p0, v1}, Lcom/zte/zdm/application/b/g;->a(Z)V

    invoke-super {p0}, Lcom/zte/zdm/a/a;->g()V

    return-void
.end method

.method public h()V
    .locals 1

    const-string v0, "delayInstallMetaFile()"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zdm/application/b/g;->a:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/b/g;->a(Z)V

    invoke-super {p0}, Lcom/zte/zdm/a/a;->h()V

    return-void
.end method

.method public i()V
    .locals 1

    const-string v0, "requestUiFumoSession"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zdm/application/b/g;->a:Z

    invoke-super {p0}, Lcom/zte/zdm/a/a;->i()V

    return-void
.end method

.method public j()Z
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/application/b/g;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "delay_install"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/b/b/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public k()V
    .locals 1

    const-string v0, "requestUiFumoSessionSkipWaiting"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/zte/zdm/a/a;->k()V

    return-void
.end method

.method public l()V
    .locals 1

    const-string v0, "requestCiFumoSession"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zdm/application/b/g;->a:Z

    invoke-super {p0}, Lcom/zte/zdm/a/a;->l()V

    return-void
.end method

.method public m()V
    .locals 1

    const-string v0, "requireRetryReport"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/zte/zdm/a/a;->m()V

    return-void
.end method

.method public n()V
    .locals 1

    const-string v0, "requestRestartDlSession"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/zte/zdm/a/a;->n()V

    return-void
.end method

.method public o()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zdm/application/b/g;->a:Z

    iget-object v0, p0, Lcom/zte/zdm/application/b/g;->o:Lcom/zte/zdm/b/a;

    invoke-virtual {v0}, Lcom/zte/zdm/b/a;->n()V

    return-void
.end method

.method public p()V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/application/b/g;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/d/h;->a(Landroid/content/Context;)V

    invoke-super {p0}, Lcom/zte/zdm/a/a;->p()V

    invoke-virtual {p0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->N()Lcom/zte/zdm/a/c;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/application/b/k;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/b/k;->a(I)V

    return-void
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zte/zdm/application/b/g;->a:Z

    return v0
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zte/zdm/application/b/g;->b:Z

    return v0
.end method

.method public s()Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "if it is a DlSession "

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/zdm/application/b/g;->q:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v1

    const-string v2, "fumo_phase"

    invoke-virtual {v1, v2, v0}, Lcom/zte/zdm/b/b/a;->b(Ljava/lang/String;I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    if-ne v2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public t()Z
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/application/b/g;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "need_to_restart_dlsession"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/b/b/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public u()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "if it is a Dmsession "

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zte/zdm/application/b/g;->q:Landroid/content/Context;

    invoke-static {v2}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v2

    const-string v3, "fumo_phase"

    invoke-virtual {v2, v3, v1}, Lcom/zte/zdm/b/b/a;->b(Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public v()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/zte/zdm/application/b/g;->q:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v1

    const-string v2, "dl_session_state"

    invoke-virtual {v1, v2, v0}, Lcom/zte/zdm/b/b/a;->b(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dlIsDlSessionIdle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return v0
.end method

.method public w()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/zte/zdm/application/b/g;->q:Landroid/content/Context;

    invoke-static {v2}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v2

    const-string v3, "dl_session_state"

    invoke-virtual {v2, v3, v1}, Lcom/zte/zdm/b/b/a;->b(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_0

    if-lt v2, v0, :cond_0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dlIsDDDownloaded = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public x()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zte/zdm/application/b/g;->v:Z

    return v0
.end method

.method public y()Lcom/zte/zdm/application/d/d/a;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/g;->s:Lcom/zte/zdm/application/d/d/a;

    return-object v0
.end method

.method public z()Z
    .locals 14

    const-wide/16 v12, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/zte/zdm/application/b/g;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x2bf20

    const/4 v8, 0x3

    const-string v0, "fumo_phase"

    invoke-virtual {v3, v0, v2}, Lcom/zte/zdm/b/b/a;->b(Ljava/lang/String;I)I

    move-result v9

    const/4 v0, 0x5

    if-ne v0, v9, :cond_1

    move v0, v1

    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FUMO_PHASE = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v9, p0, Lcom/zte/zdm/application/b/g;->t:J

    cmp-long v9, v9, v12

    if-nez v9, :cond_0

    iput-wide v4, p0, Lcom/zte/zdm/application/b/g;->t:J

    :cond_0
    if-eqz v0, :cond_3

    iget-wide v9, p0, Lcom/zte/zdm/application/b/g;->t:J

    sub-long/2addr v4, v9

    cmp-long v0, v4, v6

    if-gez v0, :cond_2

    iget v0, p0, Lcom/zte/zdm/application/b/g;->u:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lcom/zte/zdm/application/b/g;->u:I

    if-ge v0, v8, :cond_2

    :goto_1
    return v1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    const-string v0, "fumo_phase"

    invoke-virtual {v3, v0, v2}, Lcom/zte/zdm/b/b/a;->c(Ljava/lang/String;I)V

    :cond_3
    iput-wide v12, p0, Lcom/zte/zdm/application/b/g;->t:J

    iput v2, p0, Lcom/zte/zdm/application/b/g;->u:I

    move v1, v2

    goto :goto_1
.end method

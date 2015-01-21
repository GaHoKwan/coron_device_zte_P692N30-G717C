.class Lcom/zte/zdm/application/b/de;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/b/dd;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/b/dd;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/de;->a:Lcom/zte/zdm/application/b/dd;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "cancelDownload, postDelay start"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/de;->a:Lcom/zte/zdm/application/b/dd;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/dd;->i()V

    const-string v0, "android.action.delayDownLoad"

    invoke-static {v0}, Lcom/zte/zdm/application/autoupdate/b;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/zte/zdm/application/b/ga;->a()Lcom/zte/zdm/application/b/ga;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/de;->a:Lcom/zte/zdm/application/b/dd;

    iget-object v1, v1, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/b/ga;->a(Lcom/zte/zdm/application/a/a;I)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/de;->a:Lcom/zte/zdm/application/b/dd;

    iget-object v0, v0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "backup_click"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/de;->a:Lcom/zte/zdm/application/b/dd;

    iget-object v0, v0, Lcom/zte/zdm/application/b/dd;->r:Lcom/zte/zdm/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/a/a;->f(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/de;->a:Lcom/zte/zdm/application/b/dd;

    iget-object v0, v0, Lcom/zte/zdm/application/b/dd;->r:Lcom/zte/zdm/a/a;

    invoke-virtual {v0}, Lcom/zte/zdm/a/a;->C()V

    iget-object v0, p0, Lcom/zte/zdm/application/b/de;->a:Lcom/zte/zdm/application/b/dd;

    iget-object v0, v0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "running_activity"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->c(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/de;->a:Lcom/zte/zdm/application/b/dd;

    invoke-static {v0}, Lcom/zte/zdm/application/b/dd;->a(Lcom/zte/zdm/application/b/dd;)Lcom/zte/zdm/a/j;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/zte/zdm/application/b/de;->a:Lcom/zte/zdm/application/b/dd;

    iget-object v1, v1, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/zte/zdm/application/mmi/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zte/zdm/application/b/de;->a:Lcom/zte/zdm/application/b/dd;

    iget-object v1, v1, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

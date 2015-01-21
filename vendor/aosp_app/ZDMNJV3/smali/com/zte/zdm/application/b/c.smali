.class public Lcom/zte/zdm/application/b/c;
.super Lcom/zte/zdm/e/i;

# interfaces
.implements Lcom/zte/zdm/e/a;


# direct methods
.method public constructor <init>(Lcom/zte/zdm/e/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/e/i;-><init>()V

    iput-object p1, p0, Lcom/zte/zdm/application/b/c;->a:Lcom/zte/zdm/e/f;

    return-void
.end method

.method static synthetic a(Lcom/zte/zdm/application/b/c;)Lcom/zte/zdm/e/f;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/c;->a:Lcom/zte/zdm/e/f;

    return-object v0
.end method

.method static synthetic b(Lcom/zte/zdm/application/b/c;)Lcom/zte/zdm/e/f;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/c;->a:Lcom/zte/zdm/e/f;

    return-object v0
.end method

.method static synthetic c(Lcom/zte/zdm/application/b/c;)Lcom/zte/zdm/e/f;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/c;->a:Lcom/zte/zdm/e/f;

    return-object v0
.end method

.method static synthetic d(Lcom/zte/zdm/application/b/c;)Lcom/zte/zdm/e/f;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/c;->a:Lcom/zte/zdm/e/f;

    return-object v0
.end method

.method static synthetic e(Lcom/zte/zdm/application/b/c;)Lcom/zte/zdm/e/f;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/c;->a:Lcom/zte/zdm/e/f;

    return-object v0
.end method

.method static synthetic f(Lcom/zte/zdm/application/b/c;)Lcom/zte/zdm/e/f;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/c;->a:Lcom/zte/zdm/e/f;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;
    .locals 3

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->b()Lcom/zte/zdm/application/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/a;->a()Lcom/zte/zdm/application/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->b()Lcom/zte/zdm/a/j;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v0, "OK"

    new-instance v2, Lcom/zte/zdm/application/b/e;

    invoke-direct {v2, p0}, Lcom/zte/zdm/application/b/e;-><init>(Lcom/zte/zdm/application/b/c;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v0, "CANCLE"

    new-instance v2, Lcom/zte/zdm/application/b/f;

    invoke-direct {v2, p0}, Lcom/zte/zdm/application/b/f;-><init>(Lcom/zte/zdm/application/b/c;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-object v1
.end method

.method protected a(ILandroid/app/AlertDialog;)V
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/application/b/c;->a:Lcom/zte/zdm/e/f;

    invoke-interface {v0}, Lcom/zte/zdm/e/f;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    int-to-long v0, p1

    new-instance v2, Lcom/zte/zdm/application/b/d;

    invoke-direct {v2, p0, p2}, Lcom/zte/zdm/application/b/d;-><init>(Lcom/zte/zdm/application/b/c;Landroid/app/AlertDialog;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/zte/zdm/application/b/c;->a(JLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Lcom/zte/zdm/e/f;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-virtual {p0, p1, p2}, Lcom/zte/zdm/application/b/c;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zdm_alert_test: timeout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, -0x1

    if-eq p4, v1, :cond_0

    invoke-virtual {p0, p4, v0}, Lcom/zte/zdm/application/b/c;->a(ILandroid/app/AlertDialog;)V

    :cond_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

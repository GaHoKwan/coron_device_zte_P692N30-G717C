.class public Lcom/zte/zdm/application/b/ct;
.super Lcom/zte/zdm/e/i;

# interfaces
.implements Lcom/zte/zdm/e/h;


# instance fields
.field private b:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/zte/zdm/e/f;)V
    .locals 1

    invoke-direct {p0}, Lcom/zte/zdm/e/i;-><init>()V

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/b/ct;->b:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/zte/zdm/application/b/ct;->a:Lcom/zte/zdm/e/f;

    return-void
.end method

.method static synthetic a(Lcom/zte/zdm/application/b/ct;)Lcom/zte/zdm/e/f;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/ct;->a:Lcom/zte/zdm/e/f;

    return-object v0
.end method

.method static synthetic a(Lcom/zte/zdm/application/b/ct;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/ct;->b:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic b(Lcom/zte/zdm/application/b/ct;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/ct;->b:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic c(Lcom/zte/zdm/application/b/ct;)Lcom/zte/zdm/e/f;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/ct;->a:Lcom/zte/zdm/e/f;

    return-object v0
.end method

.method static synthetic d(Lcom/zte/zdm/application/b/ct;)Lcom/zte/zdm/e/f;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/ct;->a:Lcom/zte/zdm/e/f;

    return-object v0
.end method

.method static synthetic e(Lcom/zte/zdm/application/b/ct;)Lcom/zte/zdm/e/f;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/ct;->a:Lcom/zte/zdm/e/f;

    return-object v0
.end method

.method static synthetic f(Lcom/zte/zdm/application/b/ct;)Lcom/zte/zdm/e/f;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/ct;->a:Lcom/zte/zdm/e/f;

    return-object v0
.end method

.method static synthetic g(Lcom/zte/zdm/application/b/ct;)Lcom/zte/zdm/e/f;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/ct;->a:Lcom/zte/zdm/e/f;

    return-object v0
.end method

.method static synthetic h(Lcom/zte/zdm/application/b/ct;)Lcom/zte/zdm/e/f;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/ct;->a:Lcom/zte/zdm/e/f;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/AlertDialog$Builder;
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

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/zte/zdm/application/b/ct;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v2, Lcom/zte/zdm/application/b/cv;

    invoke-direct {v2, p0}, Lcom/zte/zdm/application/b/cv;-><init>(Lcom/zte/zdm/application/b/ct;)V

    invoke-virtual {v1, p2, v0, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v0, "OK"

    new-instance v2, Lcom/zte/zdm/application/b/cw;

    invoke-direct {v2, p0}, Lcom/zte/zdm/application/b/cw;-><init>(Lcom/zte/zdm/application/b/ct;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v0, "cancle"

    new-instance v2, Lcom/zte/zdm/application/b/cx;

    invoke-direct {v2, p0}, Lcom/zte/zdm/application/b/cx;-><init>(Lcom/zte/zdm/application/b/ct;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-object v1
.end method

.method protected a(ILandroid/app/AlertDialog;)V
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/application/b/ct;->a:Lcom/zte/zdm/e/f;

    invoke-interface {v0}, Lcom/zte/zdm/e/f;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    int-to-long v0, p1

    new-instance v2, Lcom/zte/zdm/application/b/cu;

    invoke-direct {v2, p0, p2}, Lcom/zte/zdm/application/b/cu;-><init>(Lcom/zte/zdm/application/b/ct;Landroid/app/AlertDialog;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/zte/zdm/application/b/ct;->a(JLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Lcom/zte/zdm/e/f;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    if-eqz p3, :cond_0

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/zdm/application/b/ct;->b:Ljava/lang/Integer;

    :cond_0
    array-length v2, p2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p2, v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "zdm_alert_test ++"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [Ljava/lang/String;

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p2, v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, v1}, Lcom/zte/zdm/application/b/ct;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const/4 v1, -0x1

    if-eq p4, v1, :cond_3

    invoke-virtual {p0, p4, v0}, Lcom/zte/zdm/application/b/ct;->a(ILandroid/app/AlertDialog;)V

    :cond_3
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

.class public Lcom/zte/zdm/application/b/ci;
.super Lcom/zte/zdm/e/i;

# interfaces
.implements Lcom/zte/zdm/e/e;


# instance fields
.field private b:Ljava/util/ArrayList;

.field private c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/zte/zdm/e/f;)V
    .locals 1

    invoke-direct {p0}, Lcom/zte/zdm/e/i;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/application/b/ci;->b:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/zte/zdm/application/b/ci;->a:Lcom/zte/zdm/e/f;

    return-void
.end method

.method static synthetic a(Lcom/zte/zdm/application/b/ci;)Lcom/zte/zdm/e/f;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/ci;->a:Lcom/zte/zdm/e/f;

    return-object v0
.end method

.method static synthetic b(Lcom/zte/zdm/application/b/ci;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/ci;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcom/zte/zdm/application/b/ci;)Lcom/zte/zdm/e/f;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/ci;->a:Lcom/zte/zdm/e/f;

    return-object v0
.end method

.method static synthetic d(Lcom/zte/zdm/application/b/ci;)Lcom/zte/zdm/e/f;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/ci;->a:Lcom/zte/zdm/e/f;

    return-object v0
.end method

.method static synthetic e(Lcom/zte/zdm/application/b/ci;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/ci;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic f(Lcom/zte/zdm/application/b/ci;)Lcom/zte/zdm/e/f;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/ci;->a:Lcom/zte/zdm/e/f;

    return-object v0
.end method

.method static synthetic g(Lcom/zte/zdm/application/b/ci;)Lcom/zte/zdm/e/f;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/ci;->a:Lcom/zte/zdm/e/f;

    return-object v0
.end method

.method static synthetic h(Lcom/zte/zdm/application/b/ci;)Lcom/zte/zdm/e/f;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/ci;->a:Lcom/zte/zdm/e/f;

    return-object v0
.end method

.method static synthetic i(Lcom/zte/zdm/application/b/ci;)Lcom/zte/zdm/e/f;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/ci;->a:Lcom/zte/zdm/e/f;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;[Z[Ljava/lang/String;)Landroid/app/AlertDialog$Builder;
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

    new-instance v0, Lcom/zte/zdm/application/b/ck;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/b/ck;-><init>(Lcom/zte/zdm/application/b/ci;)V

    invoke-virtual {v1, p3, p2, v0}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v0, "OK"

    new-instance v2, Lcom/zte/zdm/application/b/cl;

    invoke-direct {v2, p0}, Lcom/zte/zdm/application/b/cl;-><init>(Lcom/zte/zdm/application/b/ci;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v0, "cancle"

    new-instance v2, Lcom/zte/zdm/application/b/cm;

    invoke-direct {v2, p0}, Lcom/zte/zdm/application/b/cm;-><init>(Lcom/zte/zdm/application/b/ci;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-object v1
.end method

.method protected a(ILandroid/app/AlertDialog;)V
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/application/b/ci;->a:Lcom/zte/zdm/e/f;

    invoke-interface {v0}, Lcom/zte/zdm/e/f;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    int-to-long v0, p1

    new-instance v2, Lcom/zte/zdm/application/b/cj;

    invoke-direct {v2, p0, p2}, Lcom/zte/zdm/application/b/cj;-><init>(Lcom/zte/zdm/application/b/ci;Landroid/app/AlertDialog;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/zte/zdm/application/b/ci;->a(JLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Lcom/zte/zdm/e/f;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    new-array v2, v0, [Z

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aput-boolean v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    const-string v0, "-"

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v0, v1

    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lcom/zte/zdm/application/b/ci;->b:Ljava/util/ArrayList;

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v4, v3, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    aput-boolean v5, v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/zte/zdm/application/b/ci;->b:Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/zte/zdm/application/b/ci;->c:Ljava/util/ArrayList;

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [Ljava/lang/String;

    :goto_2
    array-length v3, v0

    if-ge v1, v3, :cond_2

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p2, v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p1, v2, v0}, Lcom/zte/zdm/application/b/ci;->a(Ljava/lang/String;[Z[Ljava/lang/String;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zdm_alert_test  timeout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, -0x1

    if-eq p4, v1, :cond_3

    invoke-virtual {p0, p4, v0}, Lcom/zte/zdm/application/b/ci;->a(ILandroid/app/AlertDialog;)V

    :cond_3
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

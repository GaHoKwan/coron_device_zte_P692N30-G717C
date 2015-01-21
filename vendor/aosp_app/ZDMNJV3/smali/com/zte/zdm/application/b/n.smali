.class public Lcom/zte/zdm/application/b/n;
.super Lcom/zte/zdm/e/i;

# interfaces
.implements Lcom/zte/zdm/e/d;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zte/zdm/e/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/e/i;-><init>()V

    iput-object p1, p0, Lcom/zte/zdm/application/b/n;->a:Lcom/zte/zdm/e/f;

    return-void
.end method

.method static synthetic a(Lcom/zte/zdm/application/b/n;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/n;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/zte/zdm/application/b/n;)Lcom/zte/zdm/e/f;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/n;->a:Lcom/zte/zdm/e/f;

    return-object v0
.end method

.method static synthetic c(Lcom/zte/zdm/application/b/n;)Lcom/zte/zdm/e/f;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/n;->a:Lcom/zte/zdm/e/f;

    return-object v0
.end method

.method static synthetic d(Lcom/zte/zdm/application/b/n;)Lcom/zte/zdm/e/f;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/n;->a:Lcom/zte/zdm/e/f;

    return-object v0
.end method

.method static synthetic e(Lcom/zte/zdm/application/b/n;)Lcom/zte/zdm/e/f;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/n;->a:Lcom/zte/zdm/e/f;

    return-object v0
.end method

.method static synthetic f(Lcom/zte/zdm/application/b/n;)Lcom/zte/zdm/e/f;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/n;->a:Lcom/zte/zdm/e/f;

    return-object v0
.end method

.method static synthetic g(Lcom/zte/zdm/application/b/n;)Lcom/zte/zdm/e/f;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/n;->a:Lcom/zte/zdm/e/f;

    return-object v0
.end method

.method static synthetic h(Lcom/zte/zdm/application/b/n;)Lcom/zte/zdm/e/f;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/n;->a:Lcom/zte/zdm/e/f;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;I)Landroid/app/AlertDialog$Builder;
    .locals 6

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

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setGravity(I)V

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v0, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/n;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    int-to-char v0, p2

    const/16 v4, 0x50

    if-ne v0, v4, :cond_0

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_0
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v0, "OK"

    new-instance v3, Lcom/zte/zdm/application/b/p;

    invoke-direct {v3, p0, v2}, Lcom/zte/zdm/application/b/p;-><init>(Lcom/zte/zdm/application/b/n;Landroid/widget/EditText;)V

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v0, "Cancel"

    new-instance v2, Lcom/zte/zdm/application/b/q;

    invoke-direct {v2, p0}, Lcom/zte/zdm/application/b/q;-><init>(Lcom/zte/zdm/application/b/n;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-object v1
.end method

.method protected a(ILandroid/app/AlertDialog;)V
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/application/b/n;->a:Lcom/zte/zdm/e/f;

    invoke-interface {v0}, Lcom/zte/zdm/e/f;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    int-to-long v0, p1

    new-instance v2, Lcom/zte/zdm/application/b/o;

    invoke-direct {v2, p0, p2}, Lcom/zte/zdm/application/b/o;-><init>(Lcom/zte/zdm/application/b/n;Landroid/app/AlertDialog;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/zte/zdm/application/b/n;->a(JLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Lcom/zte/zdm/e/f;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;IIIII)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iput-object p2, p0, Lcom/zte/zdm/application/b/n;->b:Ljava/lang/String;

    invoke-virtual {p0, p1, p4}, Lcom/zte/zdm/application/b/n;->a(Ljava/lang/String;I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const/4 v1, -0x1

    if-eq p7, v1, :cond_0

    invoke-virtual {p0, p7, v0}, Lcom/zte/zdm/application/b/n;->a(ILandroid/app/AlertDialog;)V

    :cond_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

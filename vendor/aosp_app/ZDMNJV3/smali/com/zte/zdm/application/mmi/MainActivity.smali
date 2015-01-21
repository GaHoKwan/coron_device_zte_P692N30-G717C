.class public Lcom/zte/zdm/application/mmi/MainActivity;
.super Landroid/app/Activity;


# static fields
.field public static final a:Ljava/lang/String; = "POSITIVE_RUNABLE"

.field public static final b:Ljava/lang/String; = "NEGATIVE_RUNABLE"

.field public static final c:Ljava/lang/String; = "NEUTRAL_RUNABLE"

.field public static final d:Ljava/lang/String; = "running_activity"

.field public static final e:Ljava/lang/String; = "user_guide"

.field public static final f:Ljava/lang/String; = "no_space"

.field public static final g:Ljava/lang/String; = "need_release_space"

.field public static final h:I = 0xb

.field public static final i:I = 0xbb8

.field public static final j:I = 0x0

.field public static final k:I = 0x1

.field public static final l:I = 0x2

.field public static final m:I = 0x3


# instance fields
.field private n:I

.field private o:Lcom/zte/zdm/application/b/g;

.field private p:Lcom/zte/zdm/application/a/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/zdm/application/mmi/MainActivity;->n:I

    return-void
.end method

.method private a()V
    .locals 1

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->b()Lcom/zte/zdm/application/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/a;->a()Lcom/zte/zdm/application/b/g;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/MainActivity;->o:Lcom/zte/zdm/application/b/g;

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/MainActivity;->p:Lcom/zte/zdm/application/a/a;

    return-void
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/MainActivity;->o:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->b()Lcom/zte/zdm/a/j;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->b()Lcom/zte/zdm/a/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/MainActivity;->o:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/MainActivity;->p:Lcom/zte/zdm/application/a/a;

    const-string v1, "running_activity"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->c(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private d()V
    .locals 2

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/MainActivity;->e()I

    move-result v0

    iput v0, p0, Lcom/zte/zdm/application/mmi/MainActivity;->n:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "the Activity to start : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/zdm/application/mmi/MainActivity;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/zte/zdm/application/mmi/MainActivity;->n:I

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/MainActivity;->f()V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/MainActivity;->f()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/MainActivity;->g()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/MainActivity;->i()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/MainActivity;->h()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private e()I
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/MainActivity;->p:Lcom/zte/zdm/application/a/a;

    const-string v1, "running_activity"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private f()V
    .locals 2

    const-string v0, "startUIProjectActivity "

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zte/zdm/application/mmi/UIProjectActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private g()V
    .locals 2

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->b()Lcom/zte/zdm/application/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/a;->a()Lcom/zte/zdm/application/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->E()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->x()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/MainActivity;->e()I

    move-result v1

    if-ne v0, v1, :cond_2

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zte/zdm/application/mmi/DownloadActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1
    const v1, 0x10028000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/MainActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/MainActivity;->f()V

    goto :goto_0
.end method

.method private h()V
    .locals 4

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/MainActivity;->o:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zte/zdm/application/mmi/InstallActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "===========getIntent().getExtras()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    const v1, 0x10028000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/MainActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/MainActivity;->f()V

    goto :goto_0
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/MainActivity;->o:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/MainActivity;->o:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "startConfirmDownloadActivity"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/MainActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/MainActivity;->f()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "MainActivity onCreate"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/MainActivity;->a()V

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/MainActivity;->b()V

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/MainActivity;->c()V

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/MainActivity;->d()V

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/MainActivity;->finish()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    const-string v0, "MainActivity onResume"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

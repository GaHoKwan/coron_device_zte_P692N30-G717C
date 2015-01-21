.class public Lcom/zte/zdm/application/c/e;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "POSITIVE_KEY"

.field public static final b:Ljava/lang/String; = "NEGATIVE_KEY"

.field public static final c:Ljava/lang/String; = "INTENTTYPE"

.field public static final d:I = 0xa

.field public static final e:I = 0x14

.field public static final f:I = 0x1e

.field public static g:Z

.field private static k:Lcom/zte/zdm/application/c/e;

.field private static m:Lcom/zte/zdm/application/a;

.field private static n:Lcom/zte/zdm/application/b/g;

.field private static o:Lcom/zte/zdm/application/activities/z;

.field private static p:Lcom/zte/zdm/application/activities/z;

.field private static q:Lcom/zte/zdm/application/a/a;

.field private static r:Landroid/app/Activity;

.field private static s:Lcom/zte/zdm/a/j;


# instance fields
.field public h:Landroid/os/Handler;

.field i:Landroid/content/DialogInterface$OnClickListener;

.field j:Landroid/content/DialogInterface$OnClickListener;

.field private l:Lcom/zte/zdm/application/c/p;

.field private t:Ljava/lang/Runnable;

.field private u:Ljava/lang/Runnable;

.field private v:I

.field private w:Landroid/widget/RadioGroup;

.field private x:Landroid/widget/RadioButton;

.field private y:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/zte/zdm/application/c/e;->g:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/zte/zdm/application/c/e;->t:Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/zte/zdm/application/c/e;->u:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/zdm/application/c/e;->v:I

    iput-object v1, p0, Lcom/zte/zdm/application/c/e;->y:Landroid/app/Dialog;

    new-instance v0, Lcom/zte/zdm/application/c/f;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/c/f;-><init>(Lcom/zte/zdm/application/c/e;)V

    iput-object v0, p0, Lcom/zte/zdm/application/c/e;->h:Landroid/os/Handler;

    new-instance v0, Lcom/zte/zdm/application/c/j;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/c/j;-><init>(Lcom/zte/zdm/application/c/e;)V

    iput-object v0, p0, Lcom/zte/zdm/application/c/e;->i:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/zte/zdm/application/c/l;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/c/l;-><init>(Lcom/zte/zdm/application/c/e;)V

    iput-object v0, p0, Lcom/zte/zdm/application/c/e;->j:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic a(Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0

    sput-object p0, Lcom/zte/zdm/application/c/e;->r:Landroid/app/Activity;

    return-object p0
.end method

.method public static a(Landroid/app/Activity;Lcom/zte/zdm/a/j;)Lcom/zte/zdm/application/c/e;
    .locals 1

    invoke-static {p0, p1}, Lcom/zte/zdm/application/c/e;->b(Landroid/app/Activity;Lcom/zte/zdm/a/j;)V

    sget-object v0, Lcom/zte/zdm/application/c/e;->k:Lcom/zte/zdm/application/c/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zte/zdm/application/c/e;

    invoke-direct {v0}, Lcom/zte/zdm/application/c/e;-><init>()V

    sput-object v0, Lcom/zte/zdm/application/c/e;->k:Lcom/zte/zdm/application/c/e;

    :cond_0
    sget-object v0, Lcom/zte/zdm/application/c/e;->k:Lcom/zte/zdm/application/c/e;

    return-object v0
.end method

.method private a(I)V
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sget-object v2, Lcom/zte/zdm/application/c/e;->q:Lcom/zte/zdm/application/a/a;

    const-string v3, "dealy_install_time"

    invoke-virtual {v2, v3, v0, v1}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;J)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 6

    sget-object v0, Lcom/zte/zdm/application/c/e;->n:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->n()V

    new-instance v0, Lcom/zte/zdm/application/c/i;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/c/i;-><init>(Lcom/zte/zdm/application/c/e;)V

    sget-object v1, Lcom/zte/zdm/application/c/e;->p:Lcom/zte/zdm/application/activities/z;

    sget-object v2, Lcom/zte/zdm/application/c/e;->n:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v2}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/a/d;->b()Lcom/zte/zdm/a/j;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09010f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090115

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/zte/zdm/application/activities/z;->b(Lcom/zte/zdm/a/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    const-string v1, "show delay dialog"

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method static synthetic a(Lcom/zte/zdm/application/c/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/application/c/e;->g()V

    return-void
.end method

.method static synthetic a(Lcom/zte/zdm/application/c/e;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zte/zdm/application/c/e;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/zte/zdm/application/c/e;I)I
    .locals 0

    iput p1, p0, Lcom/zte/zdm/application/c/e;->v:I

    return p1
.end method

.method static synthetic b(Lcom/zte/zdm/application/c/e;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/c/e;->u:Ljava/lang/Runnable;

    return-object v0
.end method

.method private static b(Landroid/app/Activity;Lcom/zte/zdm/a/j;)V
    .locals 2

    sput-object p1, Lcom/zte/zdm/application/c/e;->s:Lcom/zte/zdm/a/j;

    sput-object p0, Lcom/zte/zdm/application/c/e;->r:Landroid/app/Activity;

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->b()Lcom/zte/zdm/application/a;

    move-result-object v0

    sput-object v0, Lcom/zte/zdm/application/c/e;->m:Lcom/zte/zdm/application/a;

    sget-object v0, Lcom/zte/zdm/application/c/e;->m:Lcom/zte/zdm/application/a;

    invoke-virtual {v0}, Lcom/zte/zdm/application/a;->a()Lcom/zte/zdm/application/b/g;

    move-result-object v0

    sput-object v0, Lcom/zte/zdm/application/c/e;->n:Lcom/zte/zdm/application/b/g;

    sget-object v0, Lcom/zte/zdm/application/c/e;->n:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zte/zdm/a/d;->a(Lcom/zte/zdm/a/j;)V

    sget-object v0, Lcom/zte/zdm/application/c/e;->n:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/zdm/a/d;->g(Z)V

    sget-object v0, Lcom/zte/zdm/application/c/e;->n:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->b()Lcom/zte/zdm/a/b;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/application/activities/z;

    sput-object v0, Lcom/zte/zdm/application/c/e;->p:Lcom/zte/zdm/application/activities/z;

    sget-object v0, Lcom/zte/zdm/application/c/e;->r:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    sput-object v0, Lcom/zte/zdm/application/c/e;->q:Lcom/zte/zdm/application/a/a;

    sget-object v0, Lcom/zte/zdm/application/c/e;->n:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->b()Lcom/zte/zdm/a/b;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/application/activities/z;

    sput-object v0, Lcom/zte/zdm/application/c/e;->o:Lcom/zte/zdm/application/activities/z;

    return-void
.end method

.method static synthetic c(Lcom/zte/zdm/application/c/e;)I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/application/c/e;->v:I

    return v0
.end method

.method static synthetic c()Lcom/zte/zdm/a/j;
    .locals 1

    sget-object v0, Lcom/zte/zdm/application/c/e;->s:Lcom/zte/zdm/a/j;

    return-object v0
.end method

.method static synthetic d()Lcom/zte/zdm/application/activities/z;
    .locals 1

    sget-object v0, Lcom/zte/zdm/application/c/e;->p:Lcom/zte/zdm/application/activities/z;

    return-object v0
.end method

.method static synthetic d(Lcom/zte/zdm/application/c/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/application/c/e;->h()V

    return-void
.end method

.method static synthetic e()Lcom/zte/zdm/application/a/a;
    .locals 1

    sget-object v0, Lcom/zte/zdm/application/c/e;->q:Lcom/zte/zdm/application/a/a;

    return-object v0
.end method

.method static synthetic e(Lcom/zte/zdm/application/c/e;)Lcom/zte/zdm/application/c/p;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/c/e;->l:Lcom/zte/zdm/application/c/p;

    return-object v0
.end method

.method static synthetic f()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lcom/zte/zdm/application/c/e;->r:Landroid/app/Activity;

    return-object v0
.end method

.method private g()V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/zte/zdm/application/c/p;

    invoke-direct {v0, p0, v4}, Lcom/zte/zdm/application/c/p;-><init>(Lcom/zte/zdm/application/c/e;Lcom/zte/zdm/application/c/f;)V

    iput-object v0, p0, Lcom/zte/zdm/application/c/e;->l:Lcom/zte/zdm/application/c/p;

    iget-object v1, p0, Lcom/zte/zdm/application/c/e;->l:Lcom/zte/zdm/application/c/p;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/zte/zdm/application/c/e;->l:Lcom/zte/zdm/application/c/p;

    invoke-virtual {v0}, Lcom/zte/zdm/application/c/p;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/c/e;->l:Lcom/zte/zdm/application/c/p;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/zte/zdm/application/c/p;->a(Z)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "+++++++++++install clicked++++++++++"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "installButton clicked"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/zte/zdm/application/receiver/a;->a()Lcom/zte/zdm/application/receiver/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/receiver/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/zte/zdm/application/c/e;->n:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    sget-object v1, Lcom/zte/zdm/application/c/e;->r:Landroid/app/Activity;

    const v2, 0x7f09005d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/zte/zdm/application/c/e;->r:Landroid/app/Activity;

    const v3, 0x7f090042

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/a/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/zte/zdm/application/c/p;

    invoke-direct {v0, p0, v4}, Lcom/zte/zdm/application/c/p;-><init>(Lcom/zte/zdm/application/c/e;Lcom/zte/zdm/application/c/f;)V

    iput-object v0, p0, Lcom/zte/zdm/application/c/e;->l:Lcom/zte/zdm/application/c/p;

    :goto_0
    return-void

    :cond_0
    :try_start_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    sget-object v0, Lcom/zte/zdm/application/c/e;->q:Lcom/zte/zdm/application/a/a;

    const-string v1, "backup_click"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;Z)V

    const-string v0, "android.action.delayInstall"

    invoke-static {v0}, Lcom/zte/zdm/application/autoupdate/b;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/zte/zdm/application/c/e;->q:Lcom/zte/zdm/application/a/a;

    const-string v1, "start_install"

    invoke-virtual {v0, v1, v3}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;Z)V

    sput-object v4, Lcom/zte/zdm/application/c/e;->r:Landroid/app/Activity;

    iget-object v0, p0, Lcom/zte/zdm/application/c/e;->t:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private h()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/zte/zdm/application/c/e;->q:Lcom/zte/zdm/application/a/a;

    const-string v1, "start_install"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;Z)V

    sget-object v0, Lcom/zte/zdm/application/c/e;->n:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/application/b/dd;

    check-cast v0, Lcom/zte/zdm/application/b/dd;

    invoke-virtual {v0, v2}, Lcom/zte/zdm/application/b/dd;->h(Z)V

    sget-object v0, Lcom/zte/zdm/application/c/e;->n:Lcom/zte/zdm/application/b/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/b/g;->f(Z)V

    sget-object v0, Lcom/zte/zdm/application/c/e;->n:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->g()V

    sget-object v0, Lcom/zte/zdm/application/c/e;->r:Landroid/app/Activity;

    invoke-static {v0}, Lcom/zte/zdm/application/b/r;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/zte/zdm/application/c/e;->r:Landroid/app/Activity;

    invoke-static {v0}, Lcom/zte/zdm/application/d/a/c;->a(Landroid/content/Context;)Lcom/zte/zdm/application/d/a/c;

    move-result-object v0

    const-string v1, "CANCEL"

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/d/a/c;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/zte/zdm/application/c/e;->r:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "running_activity"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->c(Ljava/lang/String;I)V

    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/zte/zdm/application/c/e;->r:Landroid/app/Activity;

    const-class v2, Lcom/zte/zdm/application/mmi/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v1, Lcom/zte/zdm/application/c/e;->r:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private i()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/zte/zdm/application/c/e;->y:Landroid/app/Dialog;

    const v1, 0x7f0d0032

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/zte/zdm/application/c/e;->w:Landroid/widget/RadioGroup;

    iget-object v0, p0, Lcom/zte/zdm/application/c/e;->y:Landroid/app/Dialog;

    const v1, 0x7f0d0033

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/zte/zdm/application/c/e;->x:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/zte/zdm/application/c/e;->x:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iput v2, p0, Lcom/zte/zdm/application/c/e;->v:I

    return-void
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/application/c/e;->w:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/zte/zdm/application/c/k;

    invoke-direct {v1, p0}, Lcom/zte/zdm/application/c/k;-><init>(Lcom/zte/zdm/application/c/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method private k()V
    .locals 3

    new-instance v0, Lcom/zte/zdm/application/mmi/aa;

    sget-object v1, Lcom/zte/zdm/application/c/e;->r:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/zte/zdm/application/mmi/aa;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/mmi/aa;->a(Z)Lcom/zte/zdm/application/mmi/aa;

    const v1, 0x7f09014b

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/mmi/aa;->b(I)Lcom/zte/zdm/application/mmi/aa;

    const v1, 0x7f030006

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/mmi/aa;->c(I)Lcom/zte/zdm/application/mmi/aa;

    const v1, 0x7f09003a

    iget-object v2, p0, Lcom/zte/zdm/application/c/e;->i:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/mmi/aa;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zte/zdm/application/mmi/aa;

    const v1, 0x7f090018

    iget-object v2, p0, Lcom/zte/zdm/application/c/e;->j:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/mmi/aa;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zte/zdm/application/mmi/aa;

    invoke-virtual {v0}, Lcom/zte/zdm/application/mmi/aa;->a()Lcom/zte/zdm/application/mmi/z;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/c/e;->y:Landroid/app/Dialog;

    invoke-direct {p0}, Lcom/zte/zdm/application/c/e;->i()V

    invoke-direct {p0}, Lcom/zte/zdm/application/c/e;->j()V

    iget-object v0, p0, Lcom/zte/zdm/application/c/e;->y:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private l()V
    .locals 5

    sget-object v0, Lcom/zte/zdm/application/c/e;->p:Lcom/zte/zdm/application/activities/z;

    sget-object v1, Lcom/zte/zdm/application/c/e;->s:Lcom/zte/zdm/a/j;

    sget-object v2, Lcom/zte/zdm/application/c/e;->r:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090042

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/zte/zdm/application/c/e;->r:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090150

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/zdm/application/c/e;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zte/zdm/application/activities/z;->b(Lcom/zte/zdm/a/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-instance v5, Lcom/zte/zdm/application/c/h;

    invoke-direct {v5, p0}, Lcom/zte/zdm/application/c/h;-><init>(Lcom/zte/zdm/application/c/e;)V

    sget-object v0, Lcom/zte/zdm/application/c/e;->o:Lcom/zte/zdm/application/activities/z;

    sget-object v1, Lcom/zte/zdm/application/c/e;->n:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/a/d;->b()Lcom/zte/zdm/a/j;

    move-result-object v1

    sget-object v2, Lcom/zte/zdm/application/c/e;->r:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090157

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/String;

    sget-object v4, Lcom/zte/zdm/application/c/e;->r:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f09003a

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    sget-object v4, Lcom/zte/zdm/application/c/e;->r:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f090018

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    new-array v4, v9, [Ljava/lang/Runnable;

    aput-object v5, v4, v7

    const/4 v5, 0x0

    aput-object v5, v4, v8

    const-wide/16 v5, 0x0

    sget-object v7, Lcom/zte/zdm/application/c/e;->r:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09000f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/zte/zdm/application/activities/z;->a(Lcom/zte/zdm/a/j;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Runnable;JLjava/lang/String;)V

    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->arg1:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "POSITIVE_KEY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    const-string v2, "NEGATIVE_KEY"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    new-instance v2, Lcom/zte/zdm/application/c/p;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/zte/zdm/application/c/p;-><init>(Lcom/zte/zdm/application/c/e;Lcom/zte/zdm/application/c/f;)V

    iput-object v2, p0, Lcom/zte/zdm/application/c/e;->l:Lcom/zte/zdm/application/c/p;

    new-instance v2, Lcom/zte/zdm/application/c/m;

    invoke-direct {v2, p0, v1}, Lcom/zte/zdm/application/c/m;-><init>(Lcom/zte/zdm/application/c/e;Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/zte/zdm/application/c/e;->t:Ljava/lang/Runnable;

    new-instance v1, Lcom/zte/zdm/application/c/n;

    invoke-direct {v1, p0, v0}, Lcom/zte/zdm/application/c/n;-><init>(Lcom/zte/zdm/application/c/e;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/zte/zdm/application/c/e;->u:Ljava/lang/Runnable;

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/zte/zdm/application/c/e;->l()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_0
        0x1e -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 1

    new-instance v0, Lcom/zte/zdm/application/c/o;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/c/o;-><init>(Lcom/zte/zdm/application/c/e;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/zte/zdm/application/c/g;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/c/g;-><init>(Lcom/zte/zdm/application/c/e;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public b()V
    .locals 5

    new-instance v0, Lcom/zte/zdm/application/c/p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zte/zdm/application/c/p;-><init>(Lcom/zte/zdm/application/c/e;Lcom/zte/zdm/application/c/f;)V

    iput-object v0, p0, Lcom/zte/zdm/application/c/e;->l:Lcom/zte/zdm/application/c/p;

    iget-object v1, p0, Lcom/zte/zdm/application/c/e;->l:Lcom/zte/zdm/application/c/p;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/zte/zdm/application/c/e;->l:Lcom/zte/zdm/application/c/p;

    invoke-virtual {v0}, Lcom/zte/zdm/application/c/p;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zte/zdm/application/c/e;->l:Lcom/zte/zdm/application/c/p;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/zte/zdm/application/c/p;->a(Z)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "----------defer clicked----------"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Delay_update_conut"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/zte/zdm/application/b/r;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count in InstallActivity is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/zte/zdm/application/b/r;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isMandatory in InstallActivity is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_2

    const-string v0, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-direct {p0, v1}, Lcom/zte/zdm/application/c/e;->a(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_1
    :try_start_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    const-string v0, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/zte/zdm/application/c/e;->u:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/zte/zdm/application/c/e;->k()V

    goto :goto_0
.end method

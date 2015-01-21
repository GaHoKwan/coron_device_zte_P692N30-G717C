.class public Lcom/zte/zdm/application/mmi/bq;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/zte/zdm/application/mmi/bq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zte/zdm/application/mmi/bq;

    invoke-direct {v0}, Lcom/zte/zdm/application/mmi/bq;-><init>()V

    sput-object v0, Lcom/zte/zdm/application/mmi/bq;->a:Lcom/zte/zdm/application/mmi/bq;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/zte/zdm/application/mmi/bq;
    .locals 1

    sget-object v0, Lcom/zte/zdm/application/mmi/bq;->a:Lcom/zte/zdm/application/mmi/bq;

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/zte/zdm/application/b/g;)V
    .locals 7

    const v6, 0x7f090042

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-array v0, v5, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09009c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090084

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    new-array v1, v5, [Ljava/lang/Runnable;

    new-instance v2, Lcom/zte/zdm/application/mmi/br;

    invoke-direct {v2, p0, p2}, Lcom/zte/zdm/application/mmi/br;-><init>(Lcom/zte/zdm/application/mmi/bq;Lcom/zte/zdm/application/b/g;)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/zte/zdm/application/mmi/bs;

    invoke-direct {v2, p0}, Lcom/zte/zdm/application/mmi/bs;-><init>(Lcom/zte/zdm/application/mmi/bq;)V

    aput-object v2, v1, v3

    new-instance v2, Lcom/zte/zdm/mo/DevDetail;

    invoke-direct {v2}, Lcom/zte/zdm/mo/DevDetail;-><init>()V

    invoke-virtual {v2, v3}, Lcom/zte/zdm/mo/DevDetail;->a(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "TNZ"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09006d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/zte/zdm/a/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09006c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/zte/zdm/a/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private a(Lcom/zte/zdm/a/d;)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xf

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p1}, Lcom/zte/zdm/a/d;->b()Lcom/zte/zdm/a/j;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/zte/zdm/a/d;->b()Lcom/zte/zdm/a/j;

    move-result-object v1

    instance-of v1, v1, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/zte/zdm/a/d;->b()Lcom/zte/zdm/a/j;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/zte/zdm/a/j;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/zte/zdm/application/b/g;)V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "reStartFumoSession"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zte/zdm/application/b/g;->y()Lcom/zte/zdm/application/d/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/d/d/a;->f()V

    invoke-static {v1}, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->a(Z)V

    invoke-static {v1}, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->b(Z)V

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->b()Lcom/zte/zdm/application/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/a;->a(Z)V

    return-void
.end method

.method static synthetic a(Lcom/zte/zdm/application/mmi/bq;Lcom/zte/zdm/application/b/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zte/zdm/application/mmi/bq;->b(Lcom/zte/zdm/application/b/g;)V

    return-void
.end method

.method private b(Landroid/content/Context;Lcom/zte/zdm/application/b/g;)V
    .locals 3

    invoke-virtual {p2}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/a/d;->d(Z)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->b(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/zte/zdm/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Main Activity onResume showNextLaunch showDownloadDiscriptionDialog"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/zte/zdm/application/b/g;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/zte/zdm/application/b/g;->y()Lcom/zte/zdm/application/d/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/d/d/a;->f()V

    invoke-static {v1}, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->a(Z)V

    invoke-static {v1}, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->b(Z)V

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->b()Lcom/zte/zdm/application/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/a;->b()Lcom/zte/zdm/application/services/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/services/c;->a()V

    return-void
.end method

.method private b(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p1}, Lcom/zte/zdm/application/ui/f;->a(Landroid/content/Context;)Lcom/zte/zdm/application/ui/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/ui/f;->b()Lcom/zte/zdm/application/ui/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is wifi only = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lcom/zte/zdm/application/ui/g;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;)V

    iget-boolean v0, v0, Lcom/zte/zdm/application/ui/g;->c:Z

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 9

    const v8, 0x7f090043

    const/4 v7, 0x0

    const v6, 0x7f090042

    const/4 v5, 0x1

    invoke-static {p1}, Lcom/zte/zdm/application/ui/f;->a(Landroid/content/Context;)Lcom/zte/zdm/application/ui/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/ui/f;->b()Lcom/zte/zdm/application/ui/g;

    move-result-object v0

    iget-boolean v0, v0, Lcom/zte/zdm/application/ui/g;->a:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "startUserTriggerUpdate() cancel old longNoUpdate time"

    invoke-static {v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    const-string v1, "android.action.autoUpdate"

    invoke-static {v1}, Lcom/zte/zdm/application/autoupdate/b;->a(Ljava/lang/String;)V

    const-string v1, "startUserTriggerUpdate() set new longNoUpdate time"

    invoke-static {v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    const-string v1, "android.action.longNoAutoUpdate"

    const/16 v2, 0x1e

    invoke-static {v1, v2, v0}, Lcom/zte/zdm/application/autoupdate/b;->a(Ljava/lang/String;ILcom/zte/zdm/b/b/a;)V

    :cond_0
    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->b()Lcom/zte/zdm/application/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/a;->a()Lcom/zte/zdm/application/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/a/d;->N()Lcom/zte/zdm/a/c;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/application/b/k;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/k;->a()Z

    move-result v0

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "CMCC"

    aput-object v4, v3, v7

    invoke-static {v3}, Lcom/zte/zdm/application/b;->c([Ljava/lang/String;)Z

    move-result v3

    invoke-static {p1}, Lcom/zte/zdm/application/b/cn;->j(Landroid/content/Context;)Z

    move-result v4

    if-ne v4, v5, :cond_2

    invoke-static {p1}, Lcom/zte/zdm/application/b/cn;->g(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v0, "startUpdate() AirPlane Mode"

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/zte/zdm/a/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {p1}, Lcom/zte/zdm/application/b/cn;->f(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v0, "startUpdate() VDM_No_DataService"

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Australia"

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/zte/zdm/application/b;->b([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/zte/zdm/a/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/zte/zdm/a/d;->F()V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/zte/zdm/a/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1}, Lcom/zte/zdm/application/mmi/bq;->b(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {p1}, Lcom/zte/zdm/application/b/cn;->g(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v2}, Lcom/zte/zdm/a/d;->E()V

    goto :goto_0

    :cond_6
    invoke-static {p1}, Lcom/zte/zdm/application/b/cn;->i(Landroid/content/Context;)Z

    move-result v4

    if-ne v4, v5, :cond_8

    invoke-static {p1}, Lcom/zte/zdm/application/b/cn;->g(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v0, "startUpdate() Software updates not allowed when data roaming"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "Australia"

    aput-object v3, v0, v7

    invoke-static {v0}, Lcom/zte/zdm/application/b;->b([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0, p1, v1}, Lcom/zte/zdm/application/mmi/bq;->a(Landroid/content/Context;Lcom/zte/zdm/application/b/g;)V

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/zte/zdm/a/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    invoke-static {p1}, Lcom/zte/zdm/application/b/cn;->g(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_9

    if-eqz v3, :cond_9

    invoke-virtual {v2}, Lcom/zte/zdm/a/d;->F()V

    goto/16 :goto_0

    :cond_9
    if-eqz v0, :cond_a

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->E()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->p()V

    invoke-direct {p0, v2}, Lcom/zte/zdm/application/mmi/bq;->a(Lcom/zte/zdm/a/d;)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->E()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->x()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {v5}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->a(Z)V

    invoke-virtual {v2}, Lcom/zte/zdm/a/d;->c()I

    move-result v0

    invoke-virtual {v2}, Lcom/zte/zdm/a/d;->d()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/zte/zdm/a/d;->b(II)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->w()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0, p1, v1}, Lcom/zte/zdm/application/mmi/bq;->b(Landroid/content/Context;Lcom/zte/zdm/application/b/g;)V

    goto/16 :goto_0

    :cond_c
    invoke-static {}, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {v7}, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->a(Z)V

    invoke-virtual {v2}, Lcom/zte/zdm/a/d;->h()V

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/zte/zdm/a/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->y()Lcom/zte/zdm/application/d/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/d/d/a;->b()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->h()V

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->y()Lcom/zte/zdm/application/d/d/a;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/zte/zdm/application/d/d/a;->c(Z)V

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->y()Lcom/zte/zdm/application/d/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/d/d/a;->d()V

    goto/16 :goto_0

    :cond_f
    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->s()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->t()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    invoke-direct {p0, v1}, Lcom/zte/zdm/application/mmi/bq;->a(Lcom/zte/zdm/application/b/g;)V

    invoke-direct {p0, v2}, Lcom/zte/zdm/application/mmi/bq;->a(Lcom/zte/zdm/a/d;)V

    goto/16 :goto_0

    :cond_11
    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->y()Lcom/zte/zdm/application/d/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/d/d/a;->b()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->z()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/a/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    new-array v0, v5, [Ljava/lang/String;

    const-string v2, "SFR"

    aput-object v2, v0, v7

    invoke-static {v0}, Lcom/zte/zdm/application/b;->b([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {p1}, Lcom/zte/zdm/application/b/cn;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-static {p1}, Lcom/zte/zdm/application/b/cn;->h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "getCurrentNetworkType() == 2"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090176

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/a/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    invoke-direct {p0, v1}, Lcom/zte/zdm/application/mmi/bq;->b(Lcom/zte/zdm/application/b/g;)V

    goto/16 :goto_0
.end method

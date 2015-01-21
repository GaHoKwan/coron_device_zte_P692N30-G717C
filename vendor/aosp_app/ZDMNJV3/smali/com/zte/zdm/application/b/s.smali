.class public Lcom/zte/zdm/application/b/s;
.super Lcom/zte/zdm/a/d;


# static fields
.field private static J:Lcom/zte/zdm/a/f; = null

.field private static final P:I = 0x3

.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field public static final f:I = 0xa

.field public static final g:I = 0xb

.field public static final h:I = 0x1

.field public static final i:I = 0x2

.field public static final j:I = 0x3

.field public static final k:I = 0x4

.field public static final l:I = 0x5

.field public static final m:I = 0x6

.field public static final n:I = 0x7

.field public static final o:I = 0x8


# instance fields
.field private A:I

.field private B:I

.field private C:Lcom/zte/zdm/application/b/cd;

.field private D:Ljava/lang/Object;

.field private E:Ljava/lang/Object;

.field private F:I

.field private G:I

.field private H:Z

.field private I:Z

.field private K:Z

.field private L:Z

.field private M:Z

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private Q:Z

.field private R:Ljava/util/concurrent/ScheduledFuture;

.field private S:Ljava/util/concurrent/ScheduledExecutorService;

.field private T:Lcom/zte/zdm/application/b/k;

.field private U:Z

.field public p:Z

.field public q:I

.field protected r:Landroid/content/Context;

.field protected s:Lcom/zte/zdm/a/a;

.field protected t:Lcom/zte/zdm/a/e;

.field protected u:Z

.field public v:Ljava/lang/String;

.field private final w:Ljava/lang/String;

.field private x:Z

.field private y:Lcom/zte/zdm/application/activities/b;

.field private z:Lcom/zte/zdm/a/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/zte/zdm/application/b/s;->J:Lcom/zte/zdm/a/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/zte/zdm/a/d;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/zte/zdm/application/b/s;->w:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/zte/zdm/application/b/s;->x:Z

    iput-boolean v1, p0, Lcom/zte/zdm/application/b/s;->p:Z

    iput v1, p0, Lcom/zte/zdm/application/b/s;->q:I

    iput-boolean v1, p0, Lcom/zte/zdm/application/b/s;->u:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/application/b/s;->D:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/application/b/s;->E:Ljava/lang/Object;

    iput v1, p0, Lcom/zte/zdm/application/b/s;->F:I

    iput v1, p0, Lcom/zte/zdm/application/b/s;->G:I

    iput-boolean v1, p0, Lcom/zte/zdm/application/b/s;->H:Z

    iput-boolean v2, p0, Lcom/zte/zdm/application/b/s;->I:Z

    iput-boolean v1, p0, Lcom/zte/zdm/application/b/s;->K:Z

    iput-boolean v1, p0, Lcom/zte/zdm/application/b/s;->L:Z

    iput-boolean v1, p0, Lcom/zte/zdm/application/b/s;->M:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/zte/zdm/application/b/s;->N:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/zte/zdm/application/b/s;->v:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/zte/zdm/application/b/s;->O:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/zte/zdm/application/b/s;->Q:Z

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/b/s;->S:Ljava/util/concurrent/ScheduledExecutorService;

    iput-boolean v1, p0, Lcom/zte/zdm/application/b/s;->U:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/zte/zdm/a/a;Lcom/zte/zdm/a/j;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/zte/zdm/a/d;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/zte/zdm/application/b/s;->w:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/zte/zdm/application/b/s;->x:Z

    iput-boolean v2, p0, Lcom/zte/zdm/application/b/s;->p:Z

    iput v2, p0, Lcom/zte/zdm/application/b/s;->q:I

    iput-boolean v2, p0, Lcom/zte/zdm/application/b/s;->u:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/application/b/s;->D:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/application/b/s;->E:Ljava/lang/Object;

    iput v2, p0, Lcom/zte/zdm/application/b/s;->F:I

    iput v2, p0, Lcom/zte/zdm/application/b/s;->G:I

    iput-boolean v2, p0, Lcom/zte/zdm/application/b/s;->H:Z

    iput-boolean v3, p0, Lcom/zte/zdm/application/b/s;->I:Z

    iput-boolean v2, p0, Lcom/zte/zdm/application/b/s;->K:Z

    iput-boolean v2, p0, Lcom/zte/zdm/application/b/s;->L:Z

    iput-boolean v2, p0, Lcom/zte/zdm/application/b/s;->M:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/zte/zdm/application/b/s;->N:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/zte/zdm/application/b/s;->v:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/zte/zdm/application/b/s;->O:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/zte/zdm/application/b/s;->Q:Z

    invoke-static {v3}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/b/s;->S:Ljava/util/concurrent/ScheduledExecutorService;

    iput-boolean v2, p0, Lcom/zte/zdm/application/b/s;->U:Z

    invoke-virtual {p2}, Lcom/zte/zdm/a/a;->b()Lcom/zte/zdm/a/b;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/application/activities/b;

    iput-object v0, p0, Lcom/zte/zdm/application/b/s;->y:Lcom/zte/zdm/application/activities/b;

    iput-object p1, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    iput-object p2, p0, Lcom/zte/zdm/application/b/s;->s:Lcom/zte/zdm/a/a;

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->s:Lcom/zte/zdm/a/a;

    invoke-virtual {v0, p0}, Lcom/zte/zdm/a/a;->a(Lcom/zte/zdm/a/d;)V

    const-string v0, "new AndroidNotificationController!"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->y:Lcom/zte/zdm/application/activities/b;

    invoke-static {v0}, Lcom/zte/zdm/application/b/co;->a(Lcom/zte/zdm/application/activities/b;)Lcom/zte/zdm/application/b/co;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/b/s;->t:Lcom/zte/zdm/a/e;

    iput-object p3, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AndroidMmiController(): this.screen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/zte/zdm/application/b/cd;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zte/zdm/application/b/cd;-><init>(Lcom/zte/zdm/application/b/s;Lcom/zte/zdm/application/b/t;)V

    iput-object v0, p0, Lcom/zte/zdm/application/b/s;->C:Lcom/zte/zdm/application/b/cd;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/b/s;->v:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "Australia"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/zte/zdm/application/b;->b([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/b/s;->v:Ljava/lang/String;

    :cond_0
    new-instance v0, Lcom/zte/zdm/application/b/k;

    invoke-static {p1}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zte/zdm/application/b/k;-><init>(Lcom/zte/zdm/b/b/a;)V

    iput-object v0, p0, Lcom/zte/zdm/application/b/s;->T:Lcom/zte/zdm/application/b/k;

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->y:Lcom/zte/zdm/application/activities/b;

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->T:Lcom/zte/zdm/application/b/k;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/activities/b;->a(Lcom/zte/zdm/application/b/k;)V

    return-void
.end method

.method private O()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private P()V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/zte/zdm/application/b/ca;

    invoke-direct {v1, p0}, Lcom/zte/zdm/application/b/ca;-><init>(Lcom/zte/zdm/application/b/s;)V

    const-wide/16 v2, 0x384

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    const-string v0, "DLSessionRestarted, postDelayed"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private Q()V
    .locals 7

    const/4 v5, 0x0

    const v4, 0x7f090031

    const/16 v0, 0xb

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f090032

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/zte/zdm/a/h;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/zte/zdm/a/i;)Lcom/zte/zdm/a/f;

    move-result-object v0

    sput-object v0, Lcom/zte/zdm/application/b/s;->J:Lcom/zte/zdm/a/f;

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->y:Lcom/zte/zdm/application/activities/b;

    sget-object v1, Lcom/zte/zdm/application/b/s;->J:Lcom/zte/zdm/a/f;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/activities/b;->a(Lcom/zte/zdm/a/f;)V

    return-void
.end method

.method private T()V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->R:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->R:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const-string v0, "cancel future!"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private U()V
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/services/c;->a(Landroid/content/Context;)Lcom/zte/zdm/application/services/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/services/c;->e()V

    sget-boolean v0, Lcom/zte/zdm/application/activities/b;->c:Z

    if-nez v0, :cond_1

    const-string v0, "controller acceptContinueSession()"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/b/cn;->g(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "useChooseConnectionType"

    const-string v2, "wifi"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->s:Lcom/zte/zdm/a/a;

    invoke-virtual {v0}, Lcom/zte/zdm/a/a;->B()V

    :goto_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/zte/zdm/application/activities/b;->c:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "useChooseConnectionType"

    const-string v2, "mobile"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/zte/zdm/application/b/s;->m()V

    goto :goto_1
.end method

.method private Z()V
    .locals 2

    const-string v0, "updateScreenListView()"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v0, 0xf

    iput v0, v1, Landroid/os/Message;->what:I

    const-string v0, "MSG_LIST_VIEW_CHECK_NEW"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    check-cast v0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->a(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/zte/zdm/application/b/s;I)I
    .locals 0

    iput p1, p0, Lcom/zte/zdm/application/b/s;->A:I

    return p1
.end method

.method private a(J)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x1

    const/4 v5, 0x0

    const-wide/32 v0, 0x100000

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%.2f"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-float v3, p1

    const/high16 v4, 0x4980

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const v2, 0x7f090087

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/16 v0, 0x400

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%.2f"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-float v3, p1

    const/high16 v4, 0x4480

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const v2, 0x7f090086

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const v2, 0x7f090088

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/zte/zdm/application/b/s;J)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/zte/zdm/application/b/s;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/zte/zdm/application/b/s;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/application/b/s;->T()V

    return-void
.end method

.method static synthetic a(Lcom/zte/zdm/application/b/s;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zte/zdm/application/b/s;->h(Z)V

    return-void
.end method

.method private aa()V
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const v1, 0x7f0900a5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const v1, 0x7f09001b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/zte/zdm/application/b/cc;

    const-wide/16 v6, 0x0

    const/16 v9, 0x8

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/cc;-><init>(Lcom/zte/zdm/application/b/s;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    new-array v1, v12, [Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const v3, 0x7f0900a4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    iget-object v2, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const v3, 0x7f0900a2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v11

    new-array v2, v12, [Ljava/lang/Runnable;

    new-instance v3, Lcom/zte/zdm/application/b/an;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/an;-><init>(Lcom/zte/zdm/application/b/s;)V

    aput-object v3, v2, v10

    new-instance v3, Lcom/zte/zdm/application/b/ap;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/ap;-><init>(Lcom/zte/zdm/application/b/s;)V

    aput-object v3, v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/b/cc;->a([Ljava/lang/String;[Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    invoke-interface {v1}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private ab()V
    .locals 14

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    const-string v0, "needBackup, installBackupMetaFileDialog"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const v1, 0x7f0900a5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const v1, 0x7f09001b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/zte/zdm/application/b/cc;

    const-wide/16 v6, 0x0

    const/16 v9, 0x8

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/cc;-><init>(Lcom/zte/zdm/application/b/s;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    new-array v1, v13, [Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const v3, 0x7f0900a4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    iget-object v2, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const v3, 0x7f0900a2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v11

    iget-object v2, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const v3, 0x7f090054

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v12

    new-array v2, v13, [Ljava/lang/Runnable;

    new-instance v3, Lcom/zte/zdm/application/b/av;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/av;-><init>(Lcom/zte/zdm/application/b/s;)V

    aput-object v3, v2, v10

    new-instance v3, Lcom/zte/zdm/application/b/ax;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/ax;-><init>(Lcom/zte/zdm/application/b/s;)V

    aput-object v3, v2, v11

    new-instance v3, Lcom/zte/zdm/application/b/ay;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/ay;-><init>(Lcom/zte/zdm/application/b/s;)V

    aput-object v3, v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/b/cc;->a([Ljava/lang/String;[Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    invoke-interface {v1}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private ac()V
    .locals 11

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/zte/zdm/application/b/s;->ae()V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const-string v1, "Delay_update_conut"

    invoke-static {v0, v1, v4}, Lcom/zte/zdm/application/b/r;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090094

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    rsub-int/lit8 v3, v0, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    rsub-int/lit8 v0, v0, 0x3

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090099

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/Activity;

    new-instance v0, Lcom/zte/zdm/application/b/cc;

    new-instance v3, Lcom/zte/zdm/application/b/bc;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/bc;-><init>(Lcom/zte/zdm/application/b/s;)V

    new-instance v4, Lcom/zte/zdm/application/b/bf;

    invoke-direct {v4, p0}, Lcom/zte/zdm/application/b/bf;-><init>(Lcom/zte/zdm/application/b/s;)V

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v8, 0x7f09001b

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/cc;-><init>(Lcom/zte/zdm/application/b/s;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    invoke-virtual {v10, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private ad()V
    .locals 5

    const v4, 0x7f090042

    const-string v0, "backupUserDataBeforInstall"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {}, Lcom/zte/zdm/application/d/b/g;->a()Lcom/zte/zdm/application/d/b/g;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/d/b/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const v1, 0x7f09005c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/zte/zdm/application/b/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/zte/zdm/application/receiver/a;->a()Lcom/zte/zdm/application/receiver/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/receiver/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const v1, 0x7f09005d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/zte/zdm/application/b/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-static {}, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->d()Z

    move-result v1

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " DataBackUpActivity : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Landroid/os/Looper;->loop()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/d/a/a;->a(Landroid/content/Context;)J

    move-result-wide v0

    iget v2, p0, Lcom/zte/zdm/application/b/s;->F:I

    const v3, 0x4c4b40

    add-int/2addr v2, v3

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const v1, 0x7f090044

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/zte/zdm/application/b/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_0
    const-string v0, "intend AndroidUserDataBackUpActivity : "

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "backupORrestore"

    const-string v3, "backup"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "unknown exception"

    invoke-static {p0, v1, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private ae()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createScreenIfFinished : screen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "context is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.customer.SHOW_DL_RESUME"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "unknown exception"

    invoke-static {p0, v1, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private af()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "click to pause"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/zte/zdm/application/b/s;->f(Z)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xf

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->T:Lcom/zte/zdm/application/b/k;

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/k;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "SFR"

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/zte/zdm/application/b;->b([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zdm/application/b/cn;->e(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zdm/application/b/cn;->g(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "getCurrentNetworkType() == 2"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->s:Lcom/zte/zdm/a/a;

    invoke-virtual {v0}, Lcom/zte/zdm/a/a;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090176

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090042

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/a/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/zte/zdm/application/b/m;->a()Lcom/zte/zdm/application/b/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/m;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "click to resume"

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->s:Lcom/zte/zdm/a/a;

    invoke-virtual {v1}, Lcom/zte/zdm/a/a;->p()V

    invoke-static {}, Lcom/zte/zdm/application/b/m;->a()Lcom/zte/zdm/application/b/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/m;->c()V

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    invoke-interface {v1, v0}, Lcom/zte/zdm/a/j;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string v1, "click to pause"

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->T:Lcom/zte/zdm/application/b/k;

    invoke-virtual {v1, v3}, Lcom/zte/zdm/application/b/k;->a(I)V

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->s:Lcom/zte/zdm/a/a;

    invoke-virtual {v1, v3}, Lcom/zte/zdm/a/a;->b(Z)V

    goto :goto_1
.end method

.method private ag()V
    .locals 5

    const/4 v4, 0x0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v0, 0xf

    iput v0, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->T:Lcom/zte/zdm/application/b/k;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/k;->a()Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NotificationButton pasued="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "SFR"

    aput-object v2, v0, v4

    invoke-static {v0}, Lcom/zte/zdm/application/b;->b([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/b/cn;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/b/cn;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "getCurrentNetworkType() == 2"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->s:Lcom/zte/zdm/a/a;

    invoke-virtual {v0}, Lcom/zte/zdm/a/a;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090176

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090042

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/a/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/zte/zdm/application/b/m;->a()Lcom/zte/zdm/application/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/m;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->s:Lcom/zte/zdm/a/a;

    invoke-virtual {v0}, Lcom/zte/zdm/a/a;->p()V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->t:Lcom/zte/zdm/a/e;

    check-cast v0, Lcom/zte/zdm/application/b/co;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/co;->f()V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    invoke-interface {v0, v1}, Lcom/zte/zdm/a/j;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->s:Lcom/zte/zdm/a/a;

    invoke-virtual {v0, v4}, Lcom/zte/zdm/a/a;->b(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->t:Lcom/zte/zdm/a/e;

    check-cast v0, Lcom/zte/zdm/application/b/co;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/co;->e()V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->T:Lcom/zte/zdm/application/b/k;

    invoke-virtual {v0, v4}, Lcom/zte/zdm/application/b/k;->a(I)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/zte/zdm/application/b/s;I)I
    .locals 0

    iput p1, p0, Lcom/zte/zdm/application/b/s;->B:I

    return p1
.end method

.method static synthetic b(Lcom/zte/zdm/application/b/s;)Lcom/zte/zdm/a/j;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    return-object v0
.end method

.method static synthetic c(Lcom/zte/zdm/application/b/s;)Lcom/zte/zdm/application/activities/b;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->y:Lcom/zte/zdm/application/activities/b;

    return-object v0
.end method

.method static synthetic d(Lcom/zte/zdm/application/b/s;)I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/application/b/s;->A:I

    return v0
.end method

.method static synthetic e(Lcom/zte/zdm/application/b/s;)Lcom/zte/zdm/application/b/k;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->T:Lcom/zte/zdm/application/b/k;

    return-object v0
.end method

.method private e(I)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start delay timer, send broadcast in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "seconds!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->S:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/zte/zdm/application/b/x;

    invoke-direct {v1, p0}, Lcom/zte/zdm/application/b/x;-><init>(Lcom/zte/zdm/application/b/s;)V

    int-to-long v2, p1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/b/s;->R:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method static synthetic f(Lcom/zte/zdm/application/b/s;)I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/application/b/s;->G:I

    return v0
.end method

.method static synthetic g(Lcom/zte/zdm/application/b/s;)I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/application/b/s;->F:I

    return v0
.end method

.method static synthetic h(Lcom/zte/zdm/application/b/s;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/application/b/s;->U()V

    return-void
.end method

.method private h(Z)V
    .locals 3

    const-string v0, "click to background"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/b/s;->f(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/b/s;->e(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/zte/zdm/application/b/r;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/b/s;->O:Ljava/lang/String;

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->t:Lcom/zte/zdm/a/e;

    check-cast v0, Lcom/zte/zdm/application/b/co;

    new-instance v1, Lcom/zte/zdm/application/b/bn;

    invoke-direct {v1, p0}, Lcom/zte/zdm/application/b/bn;-><init>(Lcom/zte/zdm/application/b/s;)V

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/b/co;->a(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->t:Lcom/zte/zdm/a/e;

    iget v1, p0, Lcom/zte/zdm/application/b/s;->G:I

    iget v2, p0, Lcom/zte/zdm/application/b/s;->F:I

    invoke-interface {v0, v1, v2}, Lcom/zte/zdm/a/e;->a(II)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/zte/zdm/application/b/s;->s()V

    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/zte/zdm/application/b/s;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/application/b/s;->Z()V

    return-void
.end method

.method static synthetic j(Lcom/zte/zdm/application/b/s;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->O:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/zte/zdm/application/b/s;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/application/b/s;->ad()V

    return-void
.end method

.method static synthetic l(Lcom/zte/zdm/application/b/s;)I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/application/b/s;->B:I

    return v0
.end method

.method static synthetic m(Lcom/zte/zdm/application/b/s;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/application/b/s;->af()V

    return-void
.end method

.method static synthetic n(Lcom/zte/zdm/application/b/s;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/application/b/s;->ag()V

    return-void
.end method

.method private p(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const-string v1, "android.action.dd.reminder"

    invoke-static {v0, v1}, Lcom/zte/zdm/application/b/r;->c(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v1, 0x14

    invoke-direct {p0, v1}, Lcom/zte/zdm/application/b/s;->e(I)V

    sput-boolean v5, Lcom/zte/zdm/application/b/r;->f:Z

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/Activity;

    new-instance v0, Lcom/zte/zdm/application/b/cc;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const v4, 0x7f090093

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/zte/zdm/application/b/cb;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/cb;-><init>(Lcom/zte/zdm/application/b/s;)V

    new-instance v4, Lcom/zte/zdm/application/b/u;

    invoke-direct {v4, p0}, Lcom/zte/zdm/application/b/u;-><init>(Lcom/zte/zdm/application/b/s;)V

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v9, 0x3

    move-object v1, p0

    move-object v8, p2

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/cc;-><init>(Lcom/zte/zdm/application/b/s;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    invoke-virtual {v10, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private r(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/zte/zdm/application/b/cc;

    const-wide/16 v6, 0x0

    const/16 v9, 0x8

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v8, p2

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/cc;-><init>(Lcom/zte/zdm/application/b/s;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    new-array v1, v12, [Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const v3, 0x7f09009c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    iget-object v2, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const v3, 0x7f090018

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v11

    new-array v2, v12, [Ljava/lang/Runnable;

    new-instance v3, Lcom/zte/zdm/application/b/v;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/v;-><init>(Lcom/zte/zdm/application/b/s;)V

    aput-object v3, v2, v10

    new-instance v3, Lcom/zte/zdm/application/b/w;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/w;-><init>(Lcom/zte/zdm/application/b/s;)V

    aput-object v3, v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/b/cc;->a([Ljava/lang/String;[Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    invoke-interface {v1}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const v11, 0x7f090091

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showDownloadDiscriptionDialog() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "||"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/zte/zdm/application/d/f;->a()Lcom/zte/zdm/application/d/f;

    move-result-object v2

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const v1, 0x7f09008d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, "0"

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/zte/zdm/application/b/s;->F:I

    const/high16 v3, 0x10

    if-le v0, v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%.2f"

    new-array v5, v8, [Ljava/lang/Object;

    int-to-float v0, v0

    const/high16 v6, 0x4980

    div-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const v4, 0x7f090087

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v3, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const-string v4, "0"

    invoke-static {v3, v4}, Lcom/zte/zdm/application/b/r;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "TURKCELL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f09008e

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showDownloadDiscriptionDialog() getLanguage"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const v3, 0x7f09008f

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_2
    iget-object v3, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-virtual {v2, v3, p2}, Lcom/zte/zdm/application/d/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Australia"

    aput-object v3, v2, v7

    invoke-static {v2}, Lcom/zte/zdm/application/b;->b([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0, v0, p2}, Lcom/zte/zdm/application/b/s;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    new-array v0, v8, [Ljava/lang/String;

    const-string v2, "CMCC"

    aput-object v2, v0, v7

    invoke-static {v0}, Lcom/zte/zdm/application/b;->c([Ljava/lang/String;)Z

    move-result v2

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->s:Lcom/zte/zdm/a/a;

    check-cast v0, Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->q()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    const-string v0, "DLSessionRestarted, not show showDownloadDiscriptionDialog"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const v1, 0x7f0900b9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_3
    return-object v1

    :cond_4
    const/16 v3, 0x400

    if-le v0, v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%.2f"

    new-array v5, v8, [Ljava/lang/Object;

    int-to-float v0, v0

    const/high16 v6, 0x4480

    div-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const v4, 0x7f090086

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const v4, 0x7f090088

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    new-array v2, v10, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-virtual {v4, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v3, ""

    aput-object v3, v2, v8

    const-string v3, ""

    aput-object v3, v2, v9

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v2, "/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-array v2, v10, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-static {v3}, Lcom/zte/zdm/application/d/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/zte/zdm/application/d/f;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v8

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/d/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v9

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showDownloadDiscriptionDialog()## "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    goto/16 :goto_1

    :cond_7
    new-array v2, v10, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-virtual {v4, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const v4, 0x7f090092

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v8

    const-string v0, ""

    aput-object v0, v2, v9

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_8
    move-object v1, v2

    goto/16 :goto_1
.end method

.method private t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const v7, 0x7f09009f

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const v1, 0x7f09009d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const v4, 0x7f09009e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v6

    aput-object v2, v4, v5

    const/4 v1, 0x2

    invoke-static {}, Lcom/zte/zdm/application/d/f;->b()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/zte/zdm/application/d/f;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    new-instance v1, Lcom/zte/zdm/mo/DevDetail;

    invoke-direct {v1}, Lcom/zte/zdm/mo/DevDetail;-><init>()V

    invoke-virtual {v1, v5}, Lcom/zte/zdm/mo/DevDetail;->a(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TNZ"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const v2, 0x7f0900a1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p2, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const v2, 0x7f0900a0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private u(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/Activity;

    new-instance v0, Lcom/zte/zdm/application/b/cc;

    new-instance v3, Lcom/zte/zdm/application/b/ar;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/ar;-><init>(Lcom/zte/zdm/application/b/s;)V

    new-instance v4, Lcom/zte/zdm/application/b/at;

    invoke-direct {v4, p0}, Lcom/zte/zdm/application/b/at;-><init>(Lcom/zte/zdm/application/b/s;)V

    new-instance v5, Lcom/zte/zdm/application/b/au;

    invoke-direct {v5, p0}, Lcom/zte/zdm/application/b/au;-><init>(Lcom/zte/zdm/application/b/s;)V

    const-wide/16 v6, 0x0

    const/4 v9, 0x4

    move-object v1, p0

    move-object v2, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/cc;-><init>(Lcom/zte/zdm/application/b/s;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    invoke-virtual {v10, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 4

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;

    invoke-virtual {v0}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "startUpdate() VDM_No_DataService"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->s:Lcom/zte/zdm/a/a;

    invoke-virtual {v0}, Lcom/zte/zdm/a/a;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09006f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090042

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/a/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public B()Lcom/zte/zdm/application/b/k;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->T:Lcom/zte/zdm/application/b/k;

    return-object v0
.end method

.method public C()V
    .locals 14

    const v6, 0x7f09003a

    const/16 v9, 0x8

    const/4 v13, 0x1

    const/4 v3, 0x0

    const/4 v12, 0x0

    const-string v0, "showNetHasChanged"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/ui/f;->a(Landroid/content/Context;)Lcom/zte/zdm/application/ui/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/ui/f;->b()Lcom/zte/zdm/application/ui/g;

    move-result-object v0

    iget-boolean v0, v0, Lcom/zte/zdm/application/ui/g;->c:Z

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v4, 0xf

    iput v4, v1, Landroid/os/Message;->what:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isWifiOnly="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/zte/zdm/application/b/s;->b()Lcom/zte/zdm/a/j;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/zte/zdm/a/j;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->T:Lcom/zte/zdm/application/b/k;

    invoke-virtual {v0, v12}, Lcom/zte/zdm/application/b/k;->a(I)V

    new-array v10, v13, [Ljava/lang/String;

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v12

    new-array v11, v13, [Ljava/lang/Runnable;

    new-instance v0, Lcom/zte/zdm/application/b/br;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/b/br;-><init>(Lcom/zte/zdm/application/b/s;)V

    aput-object v0, v11, v12

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const v1, 0x7f0900b4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/zte/zdm/application/b/cc;

    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/cc;-><init>(Lcom/zte/zdm/application/b/s;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    invoke-virtual {v0, v10, v11}, Lcom/zte/zdm/application/b/cc;->a([Ljava/lang/String;[Ljava/lang/Runnable;)V

    move-object v3, v0

    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {p0, v13}, Lcom/zte/zdm/application/b/s;->d(Z)V

    invoke-virtual {p0, v12}, Lcom/zte/zdm/application/b/s;->f(Z)V

    invoke-virtual {p0, v12}, Lcom/zte/zdm/application/b/s;->e(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    :cond_2
    new-array v0, v13, [Ljava/lang/String;

    const-string v4, "CMCC"

    aput-object v4, v0, v12

    invoke-static {v0}, Lcom/zte/zdm/application/b;->c([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v10, v13, [Ljava/lang/String;

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v12

    new-array v11, v13, [Ljava/lang/Runnable;

    new-instance v0, Lcom/zte/zdm/application/b/bs;

    invoke-direct {v0, p0, v1}, Lcom/zte/zdm/application/b/bs;-><init>(Lcom/zte/zdm/application/b/s;Landroid/os/Message;)V

    aput-object v0, v11, v12

    new-instance v0, Lcom/zte/zdm/application/b/cc;

    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/cc;-><init>(Lcom/zte/zdm/application/b/s;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    invoke-virtual {v0, v10, v11}, Lcom/zte/zdm/application/b/cc;->a([Ljava/lang/String;[Ljava/lang/Runnable;)V

    move-object v3, v0

    goto :goto_0
.end method

.method public D()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const v1, 0x7f0900b7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const v2, 0x7f090010

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/zte/zdm/application/b/s;->ae()V

    iget-object v2, p0, Lcom/zte/zdm/application/b/s;->C:Lcom/zte/zdm/application/b/cd;

    invoke-virtual {v2, v1}, Lcom/zte/zdm/application/b/cd;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->C:Lcom/zte/zdm/application/b/cd;

    invoke-virtual {v1, v0}, Lcom/zte/zdm/application/b/cd;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->C:Lcom/zte/zdm/application/b/cd;

    invoke-virtual {v0, v3}, Lcom/zte/zdm/application/b/cd;->a(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->C:Lcom/zte/zdm/application/b/cd;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/b/cd;->a(I)V

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "Australia"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/zte/zdm/application/b;->b([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v3, [Ljava/lang/Runnable;

    new-instance v1, Lcom/zte/zdm/application/b/bt;

    invoke-direct {v1, p0}, Lcom/zte/zdm/application/b/bt;-><init>(Lcom/zte/zdm/application/b/s;)V

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->C:Lcom/zte/zdm/application/b/cd;

    invoke-virtual {v1, v0}, Lcom/zte/zdm/application/b/cd;->a([Ljava/lang/Runnable;)V

    :goto_0
    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->C:Lcom/zte/zdm/application/b/cd;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->C:Lcom/zte/zdm/application/b/cd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/b/cd;->a([Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public E()V
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const v1, 0x7f090042

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const v1, 0x7f0900b8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/zte/zdm/application/b/s;->ae()V

    new-instance v0, Lcom/zte/zdm/application/b/cc;

    const-wide/16 v6, 0x0

    const/16 v9, 0x8

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/cc;-><init>(Lcom/zte/zdm/application/b/s;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    new-array v1, v12, [Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const v3, 0x7f090083

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    iget-object v2, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const v3, 0x7f090084

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v11

    new-array v2, v12, [Ljava/lang/Runnable;

    new-instance v3, Lcom/zte/zdm/application/b/bu;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/bu;-><init>(Lcom/zte/zdm/application/b/s;)V

    aput-object v3, v2, v10

    new-instance v3, Lcom/zte/zdm/application/b/bv;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/bv;-><init>(Lcom/zte/zdm/application/b/s;)V

    aput-object v3, v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/b/cc;->a([Ljava/lang/String;[Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    invoke-interface {v1}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public F()V
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const v1, 0x7f090042

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const v1, 0x7f0900b5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/zte/zdm/application/b/s;->ae()V

    new-instance v0, Lcom/zte/zdm/application/b/cc;

    const-wide/16 v6, 0x0

    const/16 v9, 0x8

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/cc;-><init>(Lcom/zte/zdm/application/b/s;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    new-array v1, v12, [Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const v3, 0x7f090082

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    iget-object v2, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const v3, 0x7f090018

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v11

    new-array v2, v12, [Ljava/lang/Runnable;

    new-instance v3, Lcom/zte/zdm/application/b/bw;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/bw;-><init>(Lcom/zte/zdm/application/b/s;)V

    aput-object v3, v2, v10

    new-instance v3, Lcom/zte/zdm/application/b/bx;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/bx;-><init>(Lcom/zte/zdm/application/b/s;)V

    aput-object v3, v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/b/cc;->a([Ljava/lang/String;[Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    invoke-interface {v1}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public G()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zte/zdm/application/b/s;->x:Z

    return v0
.end method

.method public H()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zte/zdm/application/b/s;->I:Z

    return v0
.end method

.method public I()V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/b/s;->d(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/zte/zdm/application/b/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public J()V
    .locals 4

    const/4 v1, 0x0

    const-string v0, "netErrorDlSessionPaused"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->s:Lcom/zte/zdm/a/a;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/a/a;->b(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->T:Lcom/zte/zdm/application/b/k;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/b/k;->a(I)V

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->D:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/zte/zdm/application/b/s;->u:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->t:Lcom/zte/zdm/a/e;

    iget v2, p0, Lcom/zte/zdm/application/b/s;->G:I

    iget v3, p0, Lcom/zte/zdm/application/b/s;->F:I

    invoke-interface {v0, v2, v3}, Lcom/zte/zdm/a/e;->c(II)V

    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/b/s;->f(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/b/s;->d(Z)V

    iget v0, p0, Lcom/zte/zdm/application/b/s;->G:I

    iget v2, p0, Lcom/zte/zdm/application/b/s;->F:I

    invoke-virtual {p0, v0, v2}, Lcom/zte/zdm/application/b/s;->a(II)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public K()V
    .locals 0

    return-void
.end method

.method public L()V
    .locals 6

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->s:Lcom/zte/zdm/a/a;

    check-cast v0, Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->x()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->s:Lcom/zte/zdm/a/a;

    invoke-virtual {v0, v4}, Lcom/zte/zdm/a/a;->b(Z)V

    invoke-virtual {p0, v4}, Lcom/zte/zdm/application/b/s;->f(Z)V

    invoke-virtual {p0, v4}, Lcom/zte/zdm/application/b/s;->a(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->s:Lcom/zte/zdm/a/a;

    invoke-virtual {v0, v2}, Lcom/zte/zdm/a/a;->f(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->s:Lcom/zte/zdm/a/a;

    invoke-virtual {v0}, Lcom/zte/zdm/a/a;->e()V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->s:Lcom/zte/zdm/a/a;

    invoke-virtual {v0}, Lcom/zte/zdm/a/a;->p()V

    :goto_0
    invoke-virtual {p0, v2}, Lcom/zte/zdm/application/b/s;->d(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x800

    invoke-static {v1, v4, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    iget-object v3, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const v4, 0x7f09000d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const v5, 0x7f090165

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x108008a

    iput v5, v2, Landroid/app/Notification;->icon:I

    const/16 v5, 0x18

    iput v5, v2, Landroid/app/Notification;->flags:I

    const/4 v5, 0x5

    iput v5, v2, Landroid/app/Notification;->defaults:I

    iget-object v5, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-virtual {v2, v5, v3, v4, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/16 v1, 0x4d2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v4, p0, Lcom/zte/zdm/application/b/s;->K:Z

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->s:Lcom/zte/zdm/a/a;

    invoke-virtual {v0, v2}, Lcom/zte/zdm/a/a;->f(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->s:Lcom/zte/zdm/a/a;

    invoke-virtual {v0}, Lcom/zte/zdm/a/a;->g()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->w()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->s:Lcom/zte/zdm/a/a;

    invoke-virtual {v0, v2}, Lcom/zte/zdm/a/a;->f(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->s:Lcom/zte/zdm/a/a;

    invoke-virtual {v0}, Lcom/zte/zdm/a/a;->C()V

    goto :goto_0

    :cond_3
    const-string v0, "unkown state"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->s:Lcom/zte/zdm/a/a;

    invoke-virtual {v0, v4}, Lcom/zte/zdm/a/a;->f(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->s:Lcom/zte/zdm/a/a;

    invoke-virtual {v0}, Lcom/zte/zdm/a/a;->e()V

    goto/16 :goto_0
.end method

.method public synthetic M()Lcom/zte/zdm/a/b;
    .locals 1

    invoke-virtual {p0}, Lcom/zte/zdm/application/b/s;->a()Lcom/zte/zdm/application/activities/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic N()Lcom/zte/zdm/a/c;
    .locals 1

    invoke-virtual {p0}, Lcom/zte/zdm/application/b/s;->B()Lcom/zte/zdm/application/b/k;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->y:Lcom/zte/zdm/application/activities/b;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/application/activities/b;->a(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public final a()Lcom/zte/zdm/application/activities/b;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->y:Lcom/zte/zdm/application/activities/b;

    return-object v0
.end method

.method public a(II)V
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x1

    const-string v0, "AndroidMmiController showProgressBarDialog"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->E:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/zte/zdm/application/b/s;->H:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "change isCancelConfirmDialogShown into "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/zte/zdm/application/b/s;->H:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " when showProgressBarDialog!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lastTimeMsg is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->y:Lcom/zte/zdm/application/activities/b;

    invoke-virtual {v1}, Lcom/zte/zdm/application/activities/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/zdm/application/b/s;->w()Z

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-virtual {p0, v6}, Lcom/zte/zdm/application/b/s;->e(Z)V

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->y:Lcom/zte/zdm/application/activities/b;

    invoke-virtual {v0}, Lcom/zte/zdm/application/activities/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->y:Lcom/zte/zdm/application/activities/b;

    invoke-virtual {v0}, Lcom/zte/zdm/application/activities/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/b/s;->v:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msg to be show is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lastTimeMsg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "showDldDlg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/application/b/s;->G()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/zdm/application/b/s;->G()Z

    move-result v0

    if-ne v0, v3, :cond_2

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->T:Lcom/zte/zdm/application/b/k;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/k;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const v1, 0x7f0900ad

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/b/s;->v:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->T:Lcom/zte/zdm/application/b/k;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/b/k;->b(I)I

    move-result v0

    if-ne v3, v0, :cond_4

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const v1, 0x7f090069

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/b/s;->v:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/zte/zdm/application/b/s;->U:Z

    :goto_1
    invoke-virtual {p0, v3}, Lcom/zte/zdm/application/b/s;->f(Z)V

    iput p2, p0, Lcom/zte/zdm/application/b/s;->F:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showProgressBarDialog(totalSize) totalSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showProgressBarDialog: progressDlgUIThread = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->C:Lcom/zte/zdm/application/b/cd;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->C:Lcom/zte/zdm/application/b/cd;

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/b/cd;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->C:Lcom/zte/zdm/application/b/cd;

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const v2, 0x7f090014

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/b/cd;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->C:Lcom/zte/zdm/application/b/cd;

    invoke-virtual {v0, v6}, Lcom/zte/zdm/application/b/cd;->a(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->C:Lcom/zte/zdm/application/b/cd;

    invoke-virtual {v0, v3}, Lcom/zte/zdm/application/b/cd;->a(I)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->C:Lcom/zte/zdm/application/b/cd;

    invoke-virtual {v0, p2}, Lcom/zte/zdm/application/b/cd;->b(I)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->C:Lcom/zte/zdm/application/b/cd;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/application/b/cd;->c(I)V

    const/high16 v0, 0x10

    if-le p2, v0, :cond_5

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->C:Lcom/zte/zdm/application/b/cd;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%.2f"

    new-array v3, v3, [Ljava/lang/Object;

    int-to-float v4, p2

    const/high16 v5, 0x4980

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const v3, 0x7f090087

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/b/cd;->a(Ljava/lang/String;)V

    :goto_2
    invoke-direct {p0}, Lcom/zte/zdm/application/b/s;->ae()V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->C:Lcom/zte/zdm/application/b/cd;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_4
    iput-boolean v6, p0, Lcom/zte/zdm/application/b/s;->U:Z

    goto/16 :goto_1

    :cond_5
    const/16 v0, 0x400

    if-le p2, v0, :cond_6

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->C:Lcom/zte/zdm/application/b/cd;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%.2f"

    new-array v3, v3, [Ljava/lang/Object;

    int-to-float v4, p2

    const/high16 v5, 0x4480

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const v3, 0x7f090086

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/b/cd;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->C:Lcom/zte/zdm/application/b/cd;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const v3, 0x7f090088

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/b/cd;->a(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public a(Lcom/zte/zdm/a/j;)V
    .locals 2

    iput-object p1, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "this.screen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/zte/zdm/application/activities/b;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/s;->y:Lcom/zte/zdm/application/activities/b;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "showWaitingDialog()"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zte/zdm/application/b/s;->ae()V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->C:Lcom/zte/zdm/application/b/cd;

    invoke-virtual {v0, p2}, Lcom/zte/zdm/application/b/cd;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->C:Lcom/zte/zdm/application/b/cd;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/application/b/cd;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->C:Lcom/zte/zdm/application/b/cd;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/b/cd;->a(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->C:Lcom/zte/zdm/application/b/cd;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/b/cd;->a(I)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->C:Lcom/zte/zdm/application/b/cd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/b/cd;->a([Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->C:Lcom/zte/zdm/application/b/cd;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Runnable;)V
    .locals 10

    const/4 v3, 0x0

    new-instance v0, Lcom/zte/zdm/application/b/cc;

    const-wide/16 v6, 0x0

    const/16 v9, 0x8

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v8, p2

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/cc;-><init>(Lcom/zte/zdm/application/b/s;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    invoke-virtual {v0, p3, p4}, Lcom/zte/zdm/application/b/cc;->a([Ljava/lang/String;[Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    invoke-interface {v1}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zte/zdm/application/b/s;->H:Z

    return-void
.end method

.method public a_()V
    .locals 11

    const-string v0, "showLowBatterynotification"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zte/zdm/application/b/s;->ae()V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/Activity;

    new-instance v0, Lcom/zte/zdm/application/b/cc;

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const v2, 0x7f090177

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/zte/zdm/application/b/be;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/be;-><init>(Lcom/zte/zdm/application/b/s;)V

    new-instance v4, Lcom/zte/zdm/application/b/bp;

    invoke-direct {v4, p0}, Lcom/zte/zdm/application/b/bp;-><init>(Lcom/zte/zdm/application/b/s;)V

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const v8, 0x7f09004f

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/cc;-><init>(Lcom/zte/zdm/application/b/s;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    invoke-virtual {v10, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()Lcom/zte/zdm/a/j;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    return-object v0
.end method

.method public b(I)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "AndroidMmiController showProgressBarDialog(int totalSize)"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/zdm/application/b/s;->w()Z

    move-result v0

    if-ne v0, v2, :cond_0

    const-string v0, "AndroidMmiController is BackgroundDownloading,no show progressBar"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->y:Lcom/zte/zdm/application/activities/b;

    invoke-virtual {v0}, Lcom/zte/zdm/application/activities/b;->f()V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/b/s;->v:Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Australia"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/zte/zdm/application/b;->b([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/b/s;->v:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->y:Lcom/zte/zdm/application/activities/b;

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/activities/b;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/zte/zdm/application/b/s;->G:I

    invoke-virtual {p0, v0, p1}, Lcom/zte/zdm/application/b/s;->a(II)V

    goto :goto_0
.end method

.method public b(II)V
    .locals 5

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->D:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/zte/zdm/application/b/s;->u:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBackgroundDownload= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/zte/zdm/application/b/s;->u:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "flagActivity->"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->h()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zdm/application/b/s;->u:Z

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->a(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after set isBackgroundDownload "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/zte/zdm/application/b/s;->u:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/zte/zdm/application/b/s;->a(II)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->t:Lcom/zte/zdm/a/e;

    invoke-interface {v0}, Lcom/zte/zdm/a/e;->g()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "foreground download"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->T:Lcom/zte/zdm/application/b/k;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/k;->a()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/zte/zdm/application/b/s;->U:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/zte/zdm/application/b/s;->d(Z)V

    invoke-virtual {p0, v3}, Lcom/zte/zdm/application/b/s;->f(Z)V

    invoke-virtual {p0, p1, p2}, Lcom/zte/zdm/application/b/s;->a(II)V

    iput-boolean v3, p0, Lcom/zte/zdm/application/b/s;->U:Z

    :cond_1
    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->y:Lcom/zte/zdm/application/activities/b;

    iget v1, p0, Lcom/zte/zdm/application/b/s;->B:I

    invoke-virtual {v0, v1, p1}, Lcom/zte/zdm/application/activities/b;->c(II)V

    :cond_2
    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->y:Lcom/zte/zdm/application/activities/b;

    iget v1, p0, Lcom/zte/zdm/application/b/s;->B:I

    invoke-virtual {v0, v1, p2}, Lcom/zte/zdm/application/activities/b;->a(II)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->y:Lcom/zte/zdm/application/activities/b;

    iget v1, p0, Lcom/zte/zdm/application/b/s;->B:I

    invoke-virtual {v0, v1, p1}, Lcom/zte/zdm/application/activities/b;->b(II)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->y:Lcom/zte/zdm/application/activities/b;

    iget v1, p0, Lcom/zte/zdm/application/b/s;->B:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v3, p1

    invoke-direct {p0, v3, v4}, Lcom/zte/zdm/application/b/s;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zdm/application/b/s;->C:Lcom/zte/zdm/application/b/cd;

    invoke-virtual {v3}, Lcom/zte/zdm/application/b/cd;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/activities/b;->a(ILjava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(Lcom/zte/zdm/a/j;)V
    .locals 7

    invoke-interface {p1}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->y:Lcom/zte/zdm/application/activities/b;

    const/4 v1, 0x0

    new-instance v4, Lcom/zte/zdm/application/b/ac;

    invoke-direct {v4, p0}, Lcom/zte/zdm/application/b/ac;-><init>(Lcom/zte/zdm/application/b/s;)V

    new-instance v5, Lcom/zte/zdm/application/b/ad;

    invoke-direct {v5, p0}, Lcom/zte/zdm/application/b/ad;-><init>(Lcom/zte/zdm/application/b/s;)V

    const/4 v6, -0x1

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/zte/zdm/application/activities/b;->a(ILandroid/app/Activity;Lcom/zte/zdm/a/j;Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const/4 v9, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/zte/zdm/application/b/s;->f(Z)V

    iput v4, p0, Lcom/zte/zdm/application/b/s;->G:I

    iput-boolean v4, p0, Lcom/zte/zdm/application/b/s;->u:Z

    iput-boolean v4, p0, Lcom/zte/zdm/application/b/s;->L:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAutoUpdate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/application/App;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "showDownloadDiscriptionDialog() autoUpdate"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->a(Z)V

    invoke-static {v9}, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->b(Z)V

    new-instance v0, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;

    invoke-direct {v0}, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;-><init>()V

    invoke-virtual {v0}, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->d()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-array v0, v9, [Ljava/lang/String;

    const-string v1, "SFR"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/zte/zdm/application/b;->b([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/zte/zdm/application/b/a;->c:Z

    if-ne v0, v9, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SFR.bBatteryLow= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/zte/zdm/application/b/a;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SFR.bBatteryLow= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/zte/zdm/application/b/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/zdm/application/b/s;->a_()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "dd_size"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v1

    const-string v2, "dd_description"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/zte/zdm/application/a/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-direct {p0, v0, v1}, Lcom/zte/zdm/application/b/s;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "total_size"

    iget v3, p0, Lcom/zte/zdm/application/b/s;->F:I

    invoke-virtual {v0, v1, v3}, Lcom/zte/zdm/application/a/a;->c(Ljava/lang/String;I)V

    :goto_1
    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/zte/zdm/application/b/r;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "showDownloadDiscriptionDialog()2"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zte/zdm/application/b/s;->ae()V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->s:Lcom/zte/zdm/a/a;

    check-cast v0, Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->s:Lcom/zte/zdm/a/a;

    check-cast v0, Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->r()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "DLSessionRestarted, not show showDownloadDiscriptionDialog"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zte/zdm/application/b/s;->P()V

    goto/16 :goto_0

    :cond_4
    const-string v0, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-direct {p0, v2, p2}, Lcom/zte/zdm/application/b/s;->p(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p0}, Lcom/zte/zdm/application/b/s;->H()Z

    move-result v0

    if-ne v0, v9, :cond_1

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->t:Lcom/zte/zdm/a/e;

    invoke-interface {v0}, Lcom/zte/zdm/a/e;->d()V

    const-string v0, "isHomeClick=true"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    new-array v0, v9, [Ljava/lang/String;

    const-string v1, "Australia"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/zte/zdm/application/b;->b([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0, v2, p2}, Lcom/zte/zdm/application/b/s;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/Activity;

    new-instance v0, Lcom/zte/zdm/application/b/cc;

    new-instance v3, Lcom/zte/zdm/application/b/ae;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/ae;-><init>(Lcom/zte/zdm/application/b/s;)V

    new-instance v4, Lcom/zte/zdm/application/b/aq;

    invoke-direct {v4, p0}, Lcom/zte/zdm/application/b/aq;-><init>(Lcom/zte/zdm/application/b/s;)V

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v8, p2

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/cc;-><init>(Lcom/zte/zdm/application/b/s;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    invoke-virtual {v10, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_8
    move-object v2, p1

    goto/16 :goto_1
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zte/zdm/application/b/s;->M:Z

    return-void
.end method

.method public b_()V
    .locals 11

    const-string v0, "showLowBatterynotification"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zte/zdm/application/b/s;->ae()V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/Activity;

    new-instance v0, Lcom/zte/zdm/application/b/cc;

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const v2, 0x7f090177

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/zte/zdm/application/b/by;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/by;-><init>(Lcom/zte/zdm/application/b/s;)V

    new-instance v4, Lcom/zte/zdm/application/b/bz;

    invoke-direct {v4, p0}, Lcom/zte/zdm/application/b/bz;-><init>(Lcom/zte/zdm/application/b/s;)V

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const v8, 0x7f09004f

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/cc;-><init>(Lcom/zte/zdm/application/b/s;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    invoke-virtual {v10, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()I
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "download_size"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zte/zdm/application/b/s;->G:I

    iget v0, p0, Lcom/zte/zdm/application/b/s;->G:I

    return v0
.end method

.method public c(II)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateProgressDialogProgressValue value ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput p1, p0, Lcom/zte/zdm/application/b/s;->G:I

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "download_size"

    iget v2, p0, Lcom/zte/zdm/application/b/s;->G:I

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->c(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->D:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/zte/zdm/application/b/s;->u:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->t:Lcom/zte/zdm/a/e;

    invoke-interface {v0, p1, p2}, Lcom/zte/zdm/a/e;->c(II)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    invoke-interface {v1, v0}, Lcom/zte/zdm/a/j;->a(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->E:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/zte/zdm/application/b/s;->H:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "change isCancelConfirmDialogShown into "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/zte/zdm/application/b/s;->H:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " when showProgressBarDialog!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "install dialog has been shown? : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/zte/zdm/application/b/s;->K:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download completed? : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/zte/zdm/application/b/s;->L:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/zte/zdm/application/b/s;->K:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/zte/zdm/application/b/s;->L:Z

    if-nez v0, :cond_0

    const-string v0, "AndroidMmiController showDownloadCancelConfirmDialog"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zte/zdm/application/b/s;->ae()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/b/s;->f(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/Activity;

    new-instance v0, Lcom/zte/zdm/application/b/cc;

    new-instance v3, Lcom/zte/zdm/application/b/y;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/y;-><init>(Lcom/zte/zdm/application/b/s;)V

    new-instance v4, Lcom/zte/zdm/application/b/z;

    invoke-direct {v4, p0}, Lcom/zte/zdm/application/b/z;-><init>(Lcom/zte/zdm/application/b/s;)V

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v9, 0x6

    move-object v1, p0

    move-object v2, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/cc;-><init>(Lcom/zte/zdm/application/b/s;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    invoke-virtual {v10, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zte/zdm/application/b/s;->Q:Z

    return-void
.end method

.method public d()I
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "total_size"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zte/zdm/application/b/s;->F:I

    iget v0, p0, Lcom/zte/zdm/application/b/s;->F:I

    return v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string v0, "showDownloadVia()"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/Activity;

    new-instance v0, Lcom/zte/zdm/application/b/cc;

    new-instance v3, Lcom/zte/zdm/application/b/aa;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/aa;-><init>(Lcom/zte/zdm/application/b/s;)V

    new-instance v4, Lcom/zte/zdm/application/b/ab;

    invoke-direct {v4, p0}, Lcom/zte/zdm/application/b/ab;-><init>(Lcom/zte/zdm/application/b/s;)V

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v9, 0x2

    move-object v1, p0

    move-object v2, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/cc;-><init>(Lcom/zte/zdm/application/b/s;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    invoke-virtual {v10, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(Z)V
    .locals 11

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/zte/zdm/application/b/s;->O()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->y:Lcom/zte/zdm/application/activities/b;

    invoke-virtual {v0}, Lcom/zte/zdm/application/activities/b;->e()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/zte/zdm/application/b/s;->ae()V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/Activity;

    new-instance v0, Lcom/zte/zdm/application/b/cc;

    const/4 v9, 0x5

    move-object v1, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v8, v2

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/cc;-><init>(Lcom/zte/zdm/application/b/s;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    invoke-virtual {v10, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/Activity;

    new-instance v0, Lcom/zte/zdm/application/b/cc;

    const/4 v9, 0x7

    move-object v1, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v8, v2

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/cc;-><init>(Lcom/zte/zdm/application/b/s;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    invoke-virtual {v10, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string v0, "showCancelDownloadDialog()"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/Activity;

    new-instance v0, Lcom/zte/zdm/application/b/cc;

    new-instance v3, Lcom/zte/zdm/application/b/ah;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/ah;-><init>(Lcom/zte/zdm/application/b/s;)V

    new-instance v4, Lcom/zte/zdm/application/b/ai;

    invoke-direct {v4, p0}, Lcom/zte/zdm/application/b/ai;-><init>(Lcom/zte/zdm/application/b/s;)V

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v9, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/cc;-><init>(Lcom/zte/zdm/application/b/s;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    invoke-virtual {v10, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e(Z)V
    .locals 3

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->D:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/zte/zdm/application/b/s;->u:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBackgroundDownload "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/zte/zdm/application/b/s;->u:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zte/zdm/application/b/s;->H:Z

    return v0
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showUpdateFailedDialog() isAutoupdate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/application/App;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "showUpdateFailedDialog() autoUpdate"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->a(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/Activity;

    new-instance v0, Lcom/zte/zdm/application/b/cc;

    new-instance v3, Lcom/zte/zdm/application/b/aj;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/aj;-><init>(Lcom/zte/zdm/application/b/s;)V

    new-instance v4, Lcom/zte/zdm/application/b/ak;

    invoke-direct {v4, p0}, Lcom/zte/zdm/application/b/ak;-><init>(Lcom/zte/zdm/application/b/s;)V

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v9, 0x3

    move-object v1, p0

    move-object v2, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/cc;-><init>(Lcom/zte/zdm/application/b/s;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    invoke-virtual {v10, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/zte/zdm/application/b/s;->H()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "showNotificationforWarning"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->t:Lcom/zte/zdm/a/e;

    invoke-interface {v0}, Lcom/zte/zdm/a/e;->b()V

    goto :goto_0
.end method

.method public f(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zte/zdm/application/b/s;->x:Z

    return-void
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zte/zdm/application/b/s;->L:Z

    return v0
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string v0, "Network Unavailable"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/Activity;

    new-instance v0, Lcom/zte/zdm/application/b/cc;

    new-instance v3, Lcom/zte/zdm/application/b/al;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/al;-><init>(Lcom/zte/zdm/application/b/s;)V

    new-instance v4, Lcom/zte/zdm/application/b/am;

    invoke-direct {v4, p0}, Lcom/zte/zdm/application/b/am;-><init>(Lcom/zte/zdm/application/b/s;)V

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v9, 0x3

    move-object v1, p0

    move-object v2, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/cc;-><init>(Lcom/zte/zdm/application/b/s;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    invoke-virtual {v10, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public g(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zte/zdm/application/b/s;->I:Z

    return-void
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zte/zdm/application/b/s;->M:Z

    return v0
.end method

.method public h()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "dd_size"

    invoke-virtual {v0, v1, v4}, Lcom/zte/zdm/application/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "dd_description"

    invoke-virtual {v0, v1, v4}, Lcom/zte/zdm/application/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showWaitingDialog isAutoupdate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/application/App;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "useChooseConnectionType"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "showWaitingDialog() autoUpdate"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/zte/zdm/heartyservice/core/a;->a()Lcom/zte/zdm/heartyservice/core/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/heartyservice/core/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/zte/zdm/heartyservice/core/a;->a()Lcom/zte/zdm/heartyservice/core/a;

    move-result-object v0

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v1

    const-class v2, Lcom/zte/zdm/heartyservice/ui/HeartyServicePkgCheckerActivity;

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/heartyservice/core/a;->a(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/zte/zdm/heartyservice/ui/p;->a()Lcom/zte/zdm/heartyservice/ui/p;

    move-result-object v0

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v1

    sget-object v2, Lcom/zte/zdm/heartyservice/ui/q;->f:Lcom/zte/zdm/heartyservice/ui/q;

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/heartyservice/ui/p;->a(Landroid/content/Context;Lcom/zte/zdm/heartyservice/ui/q;)V

    goto :goto_0

    :cond_1
    const-string v0, "showWaitingDialog()"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zte/zdm/application/b/s;->ae()V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->C:Lcom/zte/zdm/application/b/cd;

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/b/cd;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->C:Lcom/zte/zdm/application/b/cd;

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/b/cd;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->C:Lcom/zte/zdm/application/b/cd;

    invoke-virtual {v0, v3}, Lcom/zte/zdm/application/b/cd;->a(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->C:Lcom/zte/zdm/application/b/cd;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/b/cd;->a(I)V

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "Australia"

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/zte/zdm/application/b;->b([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v3, [Ljava/lang/Runnable;

    new-instance v1, Lcom/zte/zdm/application/b/t;

    invoke-direct {v1, p0}, Lcom/zte/zdm/application/b/t;-><init>(Lcom/zte/zdm/application/b/s;)V

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->C:Lcom/zte/zdm/application/b/cd;

    invoke-virtual {v1, v0}, Lcom/zte/zdm/application/b/cd;->a([Ljava/lang/Runnable;)V

    :goto_1
    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->C:Lcom/zte/zdm/application/b/cd;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->C:Lcom/zte/zdm/application/b/cd;

    invoke-virtual {v0, v4}, Lcom/zte/zdm/application/b/cd;->a([Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "download_size"

    invoke-virtual {v0, v1, v4}, Lcom/zte/zdm/application/a/a;->c(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "total_size"

    invoke-virtual {v0, v1, v4}, Lcom/zte/zdm/application/a/a;->c(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->s:Lcom/zte/zdm/a/a;

    invoke-virtual {v0, v5}, Lcom/zte/zdm/a/a;->a(Z)V

    invoke-virtual {p0, v4}, Lcom/zte/zdm/application/b/s;->d(Z)V

    iput-boolean v5, p0, Lcom/zte/zdm/application/b/s;->K:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isBackgroundDownload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/zte/zdm/application/b/s;->u:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->D:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/zte/zdm/application/b/s;->u:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zdm/application/b/s;->u:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBackgroundDownload="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/zte/zdm/application/b/s;->u:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->t:Lcom/zte/zdm/a/e;

    invoke-interface {v0}, Lcom/zte/zdm/a/e;->g()V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->t:Lcom/zte/zdm/a/e;

    invoke-interface {v0}, Lcom/zte/zdm/a/e;->c()V

    monitor-exit v1

    :cond_0
    :goto_0
    return-void

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "SFR"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/zte/zdm/application/b;->b([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/zte/zdm/application/b/a;->c:Z

    if-ne v0, v5, :cond_2

    const-string v0, "SFR.show low battery"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/zdm/application/b/s;->b_()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/zte/zdm/application/b/r;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/b/s;->O:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isMandatory = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->O:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->O:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_3
    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const-string v1, "Delay_update_conut"

    invoke-static {v0, v1, v4}, Lcom/zte/zdm/application/b/r;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090094

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    rsub-int/lit8 v3, v0, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090097

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    iget-boolean v0, p0, Lcom/zte/zdm/application/b/s;->Q:Z

    if-eqz v0, :cond_5

    iput-boolean v4, p0, Lcom/zte/zdm/application/b/s;->Q:Z

    invoke-virtual {p0}, Lcom/zte/zdm/application/b/s;->n()V

    goto/16 :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/zte/zdm/application/b/s;->ac()V

    goto/16 :goto_0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showInstallMetaFileDialog tempquestion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_7
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "TURKCELL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090095

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_8
    invoke-direct {p0}, Lcom/zte/zdm/application/b/s;->ae()V

    invoke-static {}, Lcom/zte/zdm/application/d/f;->d()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showInstallMetaFileDialog isneedShowBackup:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "Australia"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/zte/zdm/application/b;->b([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-direct {p0}, Lcom/zte/zdm/application/b/s;->aa()V

    :goto_1
    iget-boolean v0, p0, Lcom/zte/zdm/application/b/s;->I:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isHomeClick="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/zte/zdm/application/b/s;->I:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->t:Lcom/zte/zdm/a/e;

    invoke-interface {v0}, Lcom/zte/zdm/a/e;->g()V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->t:Lcom/zte/zdm/a/e;

    invoke-interface {v0}, Lcom/zte/zdm/a/e;->c()V

    goto/16 :goto_0

    :cond_9
    if-ne v5, v0, :cond_a

    invoke-direct {p0}, Lcom/zte/zdm/application/b/s;->ab()V

    goto :goto_1

    :cond_a
    invoke-direct {p0, p1, p2}, Lcom/zte/zdm/application/b/s;->u(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public i()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dismissWaitingDialog() +"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/zdm/application/b/s;->A:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zte/zdm/application/b/s;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->C:Lcom/zte/zdm/application/b/cd;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/b/cd;->a(I)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->C:Lcom/zte/zdm/application/b/cd;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const/4 v4, 0x0

    const-string v0, "Service is Busy"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/Activity;

    new-instance v0, Lcom/zte/zdm/application/b/cc;

    new-instance v3, Lcom/zte/zdm/application/b/bg;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/bg;-><init>(Lcom/zte/zdm/application/b/s;)V

    const-wide/16 v6, 0x0

    const/4 v9, 0x3

    move-object v1, p0

    move-object v2, p1

    move-object v5, v4

    move-object v8, p2

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/cc;-><init>(Lcom/zte/zdm/application/b/s;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    invoke-virtual {v10, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public j()V
    .locals 2

    const-string v0, "dismissProgressBarDialog()"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zte/zdm/application/b/s;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->C:Lcom/zte/zdm/application/b/cd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/b/cd;->a(I)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->C:Lcom/zte/zdm/application/b/cd;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string v0, "Service is Unavailable"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zte/zdm/application/b/s;->ae()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/b/s;->d(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/Activity;

    new-instance v0, Lcom/zte/zdm/application/b/cc;

    new-instance v3, Lcom/zte/zdm/application/b/bh;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/bh;-><init>(Lcom/zte/zdm/application/b/s;)V

    new-instance v4, Lcom/zte/zdm/application/b/bi;

    invoke-direct {v4, p0}, Lcom/zte/zdm/application/b/bi;-><init>(Lcom/zte/zdm/application/b/s;)V

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v9, 0x3

    move-object v1, p0

    move-object v2, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/cc;-><init>(Lcom/zte/zdm/application/b/s;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    invoke-virtual {v10, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string v0, "Memory Insufficient)"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/Activity;

    new-instance v0, Lcom/zte/zdm/application/b/cc;

    new-instance v3, Lcom/zte/zdm/application/b/bj;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/bj;-><init>(Lcom/zte/zdm/application/b/s;)V

    new-instance v4, Lcom/zte/zdm/application/b/bk;

    invoke-direct {v4, p0}, Lcom/zte/zdm/application/b/bk;-><init>(Lcom/zte/zdm/application/b/s;)V

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v9, 0x3

    move-object v1, p0

    move-object v2, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/cc;-><init>(Lcom/zte/zdm/application/b/s;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    invoke-virtual {v10, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string v0, "Uncaught Exception Handler"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/b/s;->d(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/Activity;

    new-instance v0, Lcom/zte/zdm/application/b/cc;

    new-instance v3, Lcom/zte/zdm/application/b/bl;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/bl;-><init>(Lcom/zte/zdm/application/b/s;)V

    new-instance v4, Lcom/zte/zdm/application/b/bm;

    invoke-direct {v4, p0}, Lcom/zte/zdm/application/b/bm;-><init>(Lcom/zte/zdm/application/b/s;)V

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v9, 0x3

    move-object v1, p0

    move-object v2, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/cc;-><init>(Lcom/zte/zdm/application/b/s;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    invoke-virtual {v10, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public m()V
    .locals 11

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/Activity;

    new-instance v0, Lcom/zte/zdm/application/b/cc;

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090085

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/zte/zdm/application/b/af;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/af;-><init>(Lcom/zte/zdm/application/b/s;)V

    new-instance v4, Lcom/zte/zdm/application/b/ag;

    invoke-direct {v4, p0}, Lcom/zte/zdm/application/b/ag;-><init>(Lcom/zte/zdm/application/b/s;)V

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v8, 0x7f090081

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/cc;-><init>(Lcom/zte/zdm/application/b/s;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    invoke-virtual {v10, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public m(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    invoke-direct {p0}, Lcom/zte/zdm/application/b/s;->ae()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screen is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screen.getUiScreen() is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    invoke-interface {v1}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/Activity;

    new-instance v0, Lcom/zte/zdm/application/b/cc;

    new-instance v3, Lcom/zte/zdm/application/b/bo;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/bo;-><init>(Lcom/zte/zdm/application/b/s;)V

    new-instance v4, Lcom/zte/zdm/application/b/bq;

    invoke-direct {v4, p0}, Lcom/zte/zdm/application/b/bq;-><init>(Lcom/zte/zdm/application/b/s;)V

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v9, 0x6

    move-object v1, p0

    move-object v2, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/cc;-><init>(Lcom/zte/zdm/application/b/s;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    invoke-virtual {v10, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public n()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v0, "showDelay"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xe10

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const-string v2, "Delay_update_conut"

    invoke-static {v1, v2, v5}, Lcom/zte/zdm/application/b/r;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const v3, 0x7f09008b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    rsub-int/lit8 v4, v1, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/zdm/application/b/s;->N:Ljava/lang/String;

    rsub-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const v3, 0x7f09008c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/zdm/application/b/s;->N:Ljava/lang/String;

    :cond_0
    :goto_0
    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const-string v3, "Delay_update_conut"

    invoke-static {v2, v3, v1}, Lcom/zte/zdm/application/b/r;->b(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const-string v2, "Delay_update_time"

    invoke-static {v1, v2, v0}, Lcom/zte/zdm/application/b/r;->b(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const-string v2, "android.action.reminder.me.later"

    invoke-static {v1, v2}, Lcom/zte/zdm/application/b/r;->c(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const-string v2, "android.action.reminder.me.later"

    invoke-static {v1, v0, v2}, Lcom/zte/zdm/application/b/r;->a(Landroid/content/Context;ILjava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    const/4 v3, -0x1

    if-ne v3, v2, :cond_2

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    const v2, 0x7f090098

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/b/s;->N:Ljava/lang/String;

    const/16 v0, 0x12c

    goto :goto_0

    :cond_2
    const/4 v3, -0x2

    if-ne v3, v2, :cond_0

    new-instance v0, Lcom/zte/zdm/application/b/az;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/b/az;-><init>(Lcom/zte/zdm/application/b/s;)V

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/az;->start()V

    goto :goto_1
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p2, p1}, Lcom/zte/zdm/application/b/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public o()V
    .locals 11

    const-string v0, "showDelayUI"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/Activity;

    new-instance v0, Lcom/zte/zdm/application/b/cc;

    iget-object v2, p0, Lcom/zte/zdm/application/b/s;->N:Ljava/lang/String;

    new-instance v3, Lcom/zte/zdm/application/b/ba;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/ba;-><init>(Lcom/zte/zdm/application/b/s;)V

    new-instance v4, Lcom/zte/zdm/application/b/bb;

    invoke-direct {v4, p0}, Lcom/zte/zdm/application/b/bb;-><init>(Lcom/zte/zdm/application/b/s;)V

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v8, 0x7f090020

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/cc;-><init>(Lcom/zte/zdm/application/b/s;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    invoke-virtual {v10, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public o(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p2, p1}, Lcom/zte/zdm/application/b/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public p()V
    .locals 12

    const v7, 0x7f090061

    const/4 v11, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/zte/zdm/application/d/a/a;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    const v0, 0x1312d00

    if-le v2, v0, :cond_1

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v5, v11, [Ljava/lang/String;

    const-string v6, "Orange"

    aput-object v6, v5, v3

    invoke-static {v5}, Lcom/zte/zdm/application/b;->b([Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "fr"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f090062

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v5, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0, v5}, Lcom/zte/zdm/application/b/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v1, :cond_6

    invoke-static {}, Lcom/zte/zdm/application/d/a/a;->f()J

    move-result-wide v5

    long-to-double v5, v5

    const-wide/high16 v7, 0x3ff8

    int-to-double v9, v2

    mul-double/2addr v7, v9

    cmpl-double v0, v5, v7

    if-lez v0, :cond_6

    new-array v0, v11, [Ljava/lang/String;

    const-string v2, "7X27_P743T"

    aput-object v2, v0, v3

    invoke-static {v0}, Lcom/zte/zdm/application/b;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "update.zip"

    const-string v2, "dlpkgfile"

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/zte/zdm/redbend/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/zte/zdm/application/d/b/e;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/zte/zdm/application/d/b/e;->a(Ljava/lang/String;)V

    :goto_1
    move-object v0, v1

    :goto_2
    const-string v1, "zdmApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upFileURL = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/zte/zdm/application/d/a/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->s:Lcom/zte/zdm/a/a;

    invoke-virtual {v0}, Lcom/zte/zdm/a/a;->f()V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/b/r;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/zte/zdm/application/b/s;->Z()V

    return-void

    :catch_0
    move-exception v0

    move v2, v3

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_2
    const-string v0, "zdmApp"

    const-string v2, "fota rename error"

    invoke-static {v0, v2}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/zte/zdm/application/d/b/e;->a:Ljava/lang/String;

    sget-object v0, Lcom/zte/zdm/application/d/b/e;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/zte/zdm/application/d/b/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v1}, Lcom/zte/zdm/application/d/b/e;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-static {v1, v2}, Lcom/zte/zdm/application/d/b/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v1}, Lcom/zte/zdm/application/d/b/e;->a(Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_2

    :cond_5
    invoke-static {v2}, Lcom/zte/zdm/application/d/b/e;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/zte/zdm/application/d/b/e;->a(Ljava/lang/String;)V

    :cond_6
    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method public q()V
    .locals 8

    const v7, 0x7f090061

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/zte/zdm/application/d/a/a;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "Orange"

    aput-object v4, v3, v5

    invoke-static {v3}, Lcom/zte/zdm/application/b;->b([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "fr"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f090062

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v3, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/zte/zdm/application/b/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_4

    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "7X27_P743T"

    aput-object v3, v0, v5

    invoke-static {v0}, Lcom/zte/zdm/application/b;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "update.zip"

    const-string v3, "dlpkgfile"

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/zte/zdm/redbend/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/zte/zdm/application/d/b/e;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/zte/zdm/application/d/b/e;->a(Ljava/lang/String;)V

    :goto_0
    move-object v0, v1

    :goto_1
    const-string v1, "zdmApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upFileURL = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/zte/zdm/application/d/a/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->s:Lcom/zte/zdm/a/a;

    invoke-virtual {v0}, Lcom/zte/zdm/a/a;->f()V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/b/r;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/zte/zdm/application/b/s;->Z()V

    return-void

    :cond_1
    const-string v0, "zdmApp"

    const-string v2, "fota rename error"

    invoke-static {v0, v2}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/d/b/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zte/zdm/application/d/b/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Lcom/zte/zdm/application/d/b/e;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/zte/zdm/application/d/b/e;->c:Ljava/lang/String;

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lcom/zte/zdm/application/d/b/e;->a(Ljava/lang/String;)V

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public r()V
    .locals 2

    const-string v0, "notify delay Install Meta File"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->s:Lcom/zte/zdm/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/a/a;->a(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->t:Lcom/zte/zdm/a/e;

    invoke-interface {v0}, Lcom/zte/zdm/a/e;->c()V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public s()V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "after destoryScreen() screen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public t()V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->y:Lcom/zte/zdm/application/activities/b;

    iget v1, p0, Lcom/zte/zdm/application/b/s;->B:I

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/activities/b;->c(I)V

    return-void
.end method

.method public u()Lcom/zte/zdm/a/e;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->t:Lcom/zte/zdm/a/e;

    return-object v0
.end method

.method protected v()V
    .locals 3

    const-string v0, "click to background"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/b/s;->f(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/b/s;->e(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->t:Lcom/zte/zdm/a/e;

    iget v1, p0, Lcom/zte/zdm/application/b/s;->G:I

    iget v2, p0, Lcom/zte/zdm/application/b/s;->F:I

    invoke-interface {v0, v1, v2}, Lcom/zte/zdm/a/e;->a(II)V

    invoke-virtual {p0}, Lcom/zte/zdm/application/b/s;->s()V

    return-void
.end method

.method public w()Z
    .locals 3

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->D:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBackgroundDownload "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/zte/zdm/application/b/s;->u:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/zte/zdm/application/b/s;->u:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public x()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/b/s;->f(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->y:Lcom/zte/zdm/application/activities/b;

    iget-object v1, p0, Lcom/zte/zdm/application/b/s;->z:Lcom/zte/zdm/a/j;

    iget v2, p0, Lcom/zte/zdm/application/b/s;->B:I

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/activities/b;->b(Lcom/zte/zdm/a/j;I)V

    return-void
.end method

.method public y()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/zdm/application/b/s;->L:Z

    return-void
.end method

.method public z()V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/application/b/s;->y:Lcom/zte/zdm/application/activities/b;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/activities/b;->a(Ljava/lang/String;)V

    return-void
.end method

.class public Lcom/zte/zdm/application/b/dd;
.super Lcom/zte/zdm/a/d;


# static fields
.field private static final K:I = 0x3

.field private static S:Ljava/lang/String; = null

.field private static T:Ljava/lang/String; = null

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

.field public static t:Lcom/zte/zdm/a/f;


# instance fields
.field private A:Lcom/zte/zdm/application/b/fw;

.field private B:I

.field private C:I

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private L:Z

.field private M:Ljava/util/concurrent/ScheduledFuture;

.field private N:Ljava/util/concurrent/ScheduledExecutorService;

.field private O:Lcom/zte/zdm/application/b/k;

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private R:Landroid/os/Handler;

.field private U:Ljava/lang/Runnable;

.field public p:I

.field protected q:Landroid/content/Context;

.field protected r:Lcom/zte/zdm/a/a;

.field protected s:Lcom/zte/zdm/a/e;

.field public u:Ljava/lang/String;

.field private final v:Ljava/lang/String;

.field private w:Lcom/zte/zdm/application/activities/z;

.field private x:Lcom/zte/zdm/a/j;

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/zte/zdm/application/b/dd;->t:Lcom/zte/zdm/a/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/zte/zdm/a/d;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/zte/zdm/application/b/dd;->v:Ljava/lang/String;

    iput v1, p0, Lcom/zte/zdm/application/b/dd;->p:I

    iput v1, p0, Lcom/zte/zdm/application/b/dd;->B:I

    iput v1, p0, Lcom/zte/zdm/application/b/dd;->C:I

    iput-boolean v1, p0, Lcom/zte/zdm/application/b/dd;->D:Z

    iput-boolean v2, p0, Lcom/zte/zdm/application/b/dd;->E:Z

    iput-boolean v1, p0, Lcom/zte/zdm/application/b/dd;->F:Z

    iput-boolean v1, p0, Lcom/zte/zdm/application/b/dd;->G:Z

    iput-boolean v1, p0, Lcom/zte/zdm/application/b/dd;->H:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/zte/zdm/application/b/dd;->I:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/zte/zdm/application/b/dd;->u:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/zte/zdm/application/b/dd;->J:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/zte/zdm/application/b/dd;->L:Z

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/b/dd;->N:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/application/b/dd;->R:Landroid/os/Handler;

    new-instance v0, Lcom/zte/zdm/application/b/es;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/b/es;-><init>(Lcom/zte/zdm/application/b/dd;)V

    iput-object v0, p0, Lcom/zte/zdm/application/b/dd;->U:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/zte/zdm/a/a;Lcom/zte/zdm/a/j;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/zte/zdm/a/d;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/zte/zdm/application/b/dd;->v:Ljava/lang/String;

    iput v1, p0, Lcom/zte/zdm/application/b/dd;->p:I

    iput v1, p0, Lcom/zte/zdm/application/b/dd;->B:I

    iput v1, p0, Lcom/zte/zdm/application/b/dd;->C:I

    iput-boolean v1, p0, Lcom/zte/zdm/application/b/dd;->D:Z

    iput-boolean v2, p0, Lcom/zte/zdm/application/b/dd;->E:Z

    iput-boolean v1, p0, Lcom/zte/zdm/application/b/dd;->F:Z

    iput-boolean v1, p0, Lcom/zte/zdm/application/b/dd;->G:Z

    iput-boolean v1, p0, Lcom/zte/zdm/application/b/dd;->H:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/zte/zdm/application/b/dd;->I:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/zte/zdm/application/b/dd;->u:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/zte/zdm/application/b/dd;->J:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/zte/zdm/application/b/dd;->L:Z

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/b/dd;->N:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/application/b/dd;->R:Landroid/os/Handler;

    new-instance v0, Lcom/zte/zdm/application/b/es;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/b/es;-><init>(Lcom/zte/zdm/application/b/dd;)V

    iput-object v0, p0, Lcom/zte/zdm/application/b/dd;->U:Ljava/lang/Runnable;

    invoke-virtual {p2}, Lcom/zte/zdm/a/a;->b()Lcom/zte/zdm/a/b;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/application/activities/z;

    iput-object v0, p0, Lcom/zte/zdm/application/b/dd;->w:Lcom/zte/zdm/application/activities/z;

    iput-object p1, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    iput-object p2, p0, Lcom/zte/zdm/application/b/dd;->r:Lcom/zte/zdm/a/a;

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->r:Lcom/zte/zdm/a/a;

    invoke-virtual {v0, p0}, Lcom/zte/zdm/a/a;->a(Lcom/zte/zdm/a/d;)V

    const-string v0, "new AndroidNotificationController!"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->w:Lcom/zte/zdm/application/activities/z;

    invoke-static {v0}, Lcom/zte/zdm/application/b/co;->a(Lcom/zte/zdm/application/activities/b;)Lcom/zte/zdm/application/b/co;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/b/dd;->s:Lcom/zte/zdm/a/e;

    iput-object p3, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

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

    new-instance v0, Lcom/zte/zdm/application/b/fw;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zte/zdm/application/b/fw;-><init>(Lcom/zte/zdm/application/b/dd;Lcom/zte/zdm/application/b/de;)V

    iput-object v0, p0, Lcom/zte/zdm/application/b/dd;->A:Lcom/zte/zdm/application/b/fw;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/b/dd;->u:Ljava/lang/String;

    new-instance v0, Lcom/zte/zdm/application/b/k;

    invoke-static {p1}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zte/zdm/application/b/k;-><init>(Lcom/zte/zdm/b/b/a;)V

    iput-object v0, p0, Lcom/zte/zdm/application/b/dd;->O:Lcom/zte/zdm/application/b/k;

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->w:Lcom/zte/zdm/application/activities/z;

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->O:Lcom/zte/zdm/application/b/k;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/activities/z;->a(Lcom/zte/zdm/application/b/k;)V

    return-void
.end method

.method static synthetic T()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/zte/zdm/application/b/dd;->S:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic U()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/zte/zdm/application/b/dd;->T:Ljava/lang/String;

    return-object v0
.end method

.method private Z()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/zte/zdm/application/b/dd;I)I
    .locals 0

    iput p1, p0, Lcom/zte/zdm/application/b/dd;->y:I

    return p1
.end method

.method private a(Ljava/lang/String;)Landroid/app/Dialog;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tempquestion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/zte/zdm/application/b/dz;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/b/dz;-><init>(Lcom/zte/zdm/application/b/dd;)V

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->w:Lcom/zte/zdm/application/activities/z;

    iget-object v2, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    iget-object v3, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09010f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p1, v0}, Lcom/zte/zdm/application/activities/z;->b(Lcom/zte/zdm/a/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/zte/zdm/application/b/dd;)Lcom/zte/zdm/a/j;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    return-object v0
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

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

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

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

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

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const v2, 0x7f090088

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/zte/zdm/application/b/dd;J)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/zte/zdm/application/b/dd;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/zte/zdm/application/b/dd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zte/zdm/application/b/dd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/zte/zdm/application/b/dd;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zte/zdm/application/b/dd;->i(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 11

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v0, "========showDownloadWithNetworkChecking====="

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/zte/zdm/application/b/fj;

    invoke-direct {v0, p0, p3, p4}, Lcom/zte/zdm/application/b/fj;-><init>(Lcom/zte/zdm/application/b/dd;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==============UIUE MMI screen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "==========="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v1

    const-string v2, "no_remind_under_network"

    invoke-virtual {v1, v2}, Lcom/zte/zdm/application/a/a;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const v2, 0x7f090116

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v3, v4, [Ljava/lang/String;

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09009c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v6

    new-array v4, v4, [Ljava/lang/Runnable;

    aput-object v0, v4, v5

    aput-object p4, v4, v6

    new-instance v8, Lcom/zte/zdm/application/b/fm;

    invoke-direct {v8, p0}, Lcom/zte/zdm/application/b/fm;-><init>(Lcom/zte/zdm/application/b/dd;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->w:Lcom/zte/zdm/application/activities/z;

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    iget-object v2, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const v5, 0x7f0900ff

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v5, 0x0

    iget-object v7, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const v10, 0x7f090100

    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v9}, Lcom/zte/zdm/application/activities/z;->a(Lcom/zte/zdm/a/j;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Runnable;JLjava/lang/String;Landroid/widget/CompoundButton$OnCheckedChangeListener;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/zte/zdm/b/b/a;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "present_version"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lcom/zte/zdm/b/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/zte/zdm/mo/DevDetail;

    invoke-direct {v3}, Lcom/zte/zdm/mo/DevDetail;-><init>()V

    invoke-virtual {v3, v1}, Lcom/zte/zdm/mo/DevDetail;->a(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method private aa()V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/zte/zdm/application/b/de;

    invoke-direct {v1, p0}, Lcom/zte/zdm/application/b/de;-><init>(Lcom/zte/zdm/application/b/dd;)V

    const-wide/16 v2, 0x384

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    const-string v0, "cancelDownload, postDelayed"

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

.method private ab()V
    .locals 6

    const/4 v5, 0x0

    const-wide/16 v3, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v1

    const-string v2, "dealy_download_time"

    invoke-virtual {v1, v2, v3, v4}, Lcom/zte/zdm/application/a/a;->a(Ljava/lang/String;J)J

    move-result-wide v1

    cmp-long v1, v3, v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v1

    const-string v2, "dealy_download_time"

    invoke-virtual {v1, v2, v3, v4}, Lcom/zte/zdm/application/a/a;->a(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-static {v3}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v3

    const-string v4, "start_download"

    invoke-virtual {v3, v4, v5}, Lcom/zte/zdm/application/a/a;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "android.action.delayDownLoad"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long v0, v1, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    long-to-int v0, v0

    invoke-static {v3, v0}, Lcom/zte/zdm/application/autoupdate/b;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "start_download"

    invoke-virtual {v0, v1, v5}, Lcom/zte/zdm/application/a/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.action.delayDownLoad"

    const/16 v1, 0x12c

    invoke-static {v0, v1}, Lcom/zte/zdm/application/autoupdate/b;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private ac()V
    .locals 3

    invoke-static {}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->b()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const-class v2, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private ad()V
    .locals 8

    const-wide/16 v6, 0x4e20

    const-string v0, "===========showDownloadDiscriptionDialog else==========="

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x6e

    iput v1, v0, Landroid/os/Message;->arg1:I

    new-instance v1, Ljava/util/Timer;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/Timer;-><init>(Z)V

    new-instance v2, Lcom/zte/zdm/application/b/dp;

    invoke-direct {v2, p0}, Lcom/zte/zdm/application/b/dp;-><init>(Lcom/zte/zdm/application/b/dd;)V

    new-instance v3, Lcom/zte/zdm/application/b/ef;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/ef;-><init>(Lcom/zte/zdm/application/b/dd;)V

    iget-object v4, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const-string v5, "0"

    invoke-static {v4, v5}, Lcom/zte/zdm/application/b/r;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v4, Lcom/zte/zdm/application/b/er;

    invoke-direct {v4, p0}, Lcom/zte/zdm/application/b/er;-><init>(Lcom/zte/zdm/application/b/dd;)V

    invoke-virtual {v1, v4, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_0
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v4, "POSITIVE_RUNABLE"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "NEGATIVE_RUNABLE"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    invoke-interface {v1, v0}, Lcom/zte/zdm/a/j;->a(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string v5, "2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lcom/zte/zdm/application/b/fe;

    invoke-direct {v4, p0, v2}, Lcom/zte/zdm/application/b/fe;-><init>(Lcom/zte/zdm/application/b/dd;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v4, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method private ae()V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/zte/zdm/application/b/fr;

    invoke-direct {v1, p0}, Lcom/zte/zdm/application/b/fr;-><init>(Lcom/zte/zdm/application/b/dd;)V

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

.method private af()V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->M:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->M:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const-string v0, "cancel future!"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private ag()V
    .locals 11

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const-string v1, "Delay_update_conut"

    invoke-static {v0, v1, v4}, Lcom/zte/zdm/application/b/r;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

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

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090099

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/Activity;

    new-instance v0, Lcom/zte/zdm/application/b/fv;

    new-instance v3, Lcom/zte/zdm/application/b/ek;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/ek;-><init>(Lcom/zte/zdm/application/b/dd;)V

    new-instance v4, Lcom/zte/zdm/application/b/em;

    invoke-direct {v4, p0}, Lcom/zte/zdm/application/b/em;-><init>(Lcom/zte/zdm/application/b/dd;)V

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v8, 0x7f09001b

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/fv;-><init>(Lcom/zte/zdm/application/b/dd;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    invoke-virtual {v10, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private ah()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createInstallScreen"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createScreenIfFinished : screen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

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

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    instance-of v1, v1, Lcom/zte/zdm/application/mmi/DownloadActivity;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "running_activity"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->c(Ljava/lang/String;I)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x7d5

    iput v1, v0, Landroid/os/Message;->what:I

    const/16 v1, 0x7d5

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    invoke-interface {v1, v0}, Lcom/zte/zdm/a/j;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "unknown exception"

    invoke-static {p0, v1, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private ai()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createScreenIfFinished"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createScreenIfFinished : screen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/zte/zdm/application/mmi/MainActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x1002

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "unknown exception"

    invoke-static {p0, v1, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private aj()V
    .locals 6

    const/4 v5, 0x0

    const-wide/16 v3, 0x0

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "dealy_install_time"

    invoke-virtual {v0, v1, v3, v4}, Lcom/zte/zdm/application/a/a;->a(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v3, v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v1

    const-string v2, "dealy_install_time"

    invoke-virtual {v1, v2, v3, v4}, Lcom/zte/zdm/application/a/a;->a(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-static {v3}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v3

    const-string v4, "start_install"

    invoke-virtual {v3, v4, v5}, Lcom/zte/zdm/application/a/a;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "android.action.delayInstall"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long v0, v1, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    long-to-int v0, v0

    invoke-static {v3, v0}, Lcom/zte/zdm/application/autoupdate/b;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "start_install"

    invoke-virtual {v0, v1, v5}, Lcom/zte/zdm/application/a/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.action.delayInstall"

    const/16 v1, 0x12c

    invoke-static {v0, v1}, Lcom/zte/zdm/application/autoupdate/b;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private ak()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "click to pause"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/zte/zdm/application/b/dd;->f(Z)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xf

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->O:Lcom/zte/zdm/application/b/k;

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/k;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "click to resume"

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/zte/zdm/application/b/m;->a()Lcom/zte/zdm/application/b/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/m;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->r:Lcom/zte/zdm/a/a;

    invoke-virtual {v1}, Lcom/zte/zdm/a/a;->p()V

    invoke-static {}, Lcom/zte/zdm/application/b/m;->a()Lcom/zte/zdm/application/b/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/m;->c()V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    invoke-interface {v1, v0}, Lcom/zte/zdm/a/j;->a(Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    const-string v1, "click to pause"

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->O:Lcom/zte/zdm/application/b/k;

    invoke-virtual {v1, v2}, Lcom/zte/zdm/application/b/k;->a(I)V

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->r:Lcom/zte/zdm/a/a;

    invoke-virtual {v1, v2}, Lcom/zte/zdm/a/a;->b(Z)V

    goto :goto_0
.end method

.method private al()V
    .locals 5

    const/4 v4, 0x0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v0, 0xf

    iput v0, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->O:Lcom/zte/zdm/application/b/k;

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

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/zte/zdm/application/b/m;->a()Lcom/zte/zdm/application/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/m;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->r:Lcom/zte/zdm/a/a;

    invoke-virtual {v0}, Lcom/zte/zdm/a/a;->p()V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->s:Lcom/zte/zdm/a/e;

    check-cast v0, Lcom/zte/zdm/application/b/co;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/co;->f()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    invoke-interface {v0, v1}, Lcom/zte/zdm/a/j;->a(Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->r:Lcom/zte/zdm/a/a;

    invoke-virtual {v0, v4}, Lcom/zte/zdm/a/a;->b(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->s:Lcom/zte/zdm/a/e;

    check-cast v0, Lcom/zte/zdm/application/b/co;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/co;->e()V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->O:Lcom/zte/zdm/application/b/k;

    invoke-virtual {v0, v4}, Lcom/zte/zdm/application/b/k;->a(I)V

    goto :goto_0
.end method

.method private am()V
    .locals 3

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x82

    iput v1, v0, Landroid/os/Message;->arg1:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "========caocaocaocao screen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "============"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    invoke-interface {v1, v0}, Lcom/zte/zdm/a/j;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/zte/zdm/application/b/dd;->v()V

    return-void
.end method

.method private an()V
    .locals 0

    invoke-virtual {p0}, Lcom/zte/zdm/application/b/dd;->r()V

    return-void
.end method

.method static synthetic b(Lcom/zte/zdm/application/b/dd;I)I
    .locals 0

    iput p1, p0, Lcom/zte/zdm/application/b/dd;->z:I

    return p1
.end method

.method static synthetic b(Lcom/zte/zdm/application/b/dd;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/application/b/dd;->af()V

    return-void
.end method

.method private b(Lcom/zte/zdm/b/b/a;)V
    .locals 2

    new-instance v0, Lcom/zte/zdm/mo/DevDetail;

    invoke-direct {v0}, Lcom/zte/zdm/mo/DevDetail;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/mo/DevDetail;->a(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "present_version"

    invoke-virtual {p1, v1, v0}, Lcom/zte/zdm/b/b/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 11

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/Activity;

    new-instance v0, Lcom/zte/zdm/application/b/fv;

    new-instance v3, Lcom/zte/zdm/application/b/ea;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/ea;-><init>(Lcom/zte/zdm/application/b/dd;)V

    new-instance v4, Lcom/zte/zdm/application/b/ec;

    invoke-direct {v4, p0}, Lcom/zte/zdm/application/b/ec;-><init>(Lcom/zte/zdm/application/b/dd;)V

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09010f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/fv;-><init>(Lcom/zte/zdm/application/b/dd;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    invoke-virtual {v10, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic c(Lcom/zte/zdm/application/b/dd;)Lcom/zte/zdm/application/b/k;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->O:Lcom/zte/zdm/application/b/k;

    return-object v0
.end method

.method static synthetic d(Lcom/zte/zdm/application/b/dd;)I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/application/b/dd;->y:I

    return v0
.end method

.method static synthetic e(Lcom/zte/zdm/application/b/dd;)Lcom/zte/zdm/application/activities/z;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->w:Lcom/zte/zdm/application/activities/z;

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

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->N:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/zte/zdm/application/b/dg;

    invoke-direct {v1, p0}, Lcom/zte/zdm/application/b/dg;-><init>(Lcom/zte/zdm/application/b/dd;)V

    int-to-long v2, p1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/b/dd;->M:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method static synthetic f(Lcom/zte/zdm/application/b/dd;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/application/b/dd;->an()V

    return-void
.end method

.method static synthetic g(Lcom/zte/zdm/application/b/dd;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->U:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic h(Lcom/zte/zdm/application/b/dd;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->R:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic i(Lcom/zte/zdm/application/b/dd;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/application/b/dd;->ai()V

    return-void
.end method

.method private i(Z)V
    .locals 3

    const-string v0, "click to background"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/b/dd;->f(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/b/dd;->e(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/zte/zdm/application/b/r;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/b/dd;->J:Ljava/lang/String;

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->s:Lcom/zte/zdm/a/e;

    check-cast v0, Lcom/zte/zdm/application/b/co;

    new-instance v1, Lcom/zte/zdm/application/b/ex;

    invoke-direct {v1, p0}, Lcom/zte/zdm/application/b/ex;-><init>(Lcom/zte/zdm/application/b/dd;)V

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/b/co;->a(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->s:Lcom/zte/zdm/a/e;

    iget v1, p0, Lcom/zte/zdm/application/b/dd;->C:I

    iget v2, p0, Lcom/zte/zdm/application/b/dd;->B:I

    invoke-interface {v0, v1, v2}, Lcom/zte/zdm/a/e;->a(II)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/zte/zdm/application/b/dd;->s()V

    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/zte/zdm/application/b/dd;)I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/application/b/dd;->z:I

    return v0
.end method

.method static synthetic k(Lcom/zte/zdm/application/b/dd;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/application/b/dd;->ak()V

    return-void
.end method

.method static synthetic l(Lcom/zte/zdm/application/b/dd;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/application/b/dd;->al()V

    return-void
.end method

.method private r(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const-string v1, "android.action.dd.reminder"

    invoke-static {v0, v1}, Lcom/zte/zdm/application/b/r;->c(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v1, 0x14

    invoke-direct {p0, v1}, Lcom/zte/zdm/application/b/dd;->e(I)V

    sput-boolean v5, Lcom/zte/zdm/application/b/r;->f:Z

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/Activity;

    new-instance v0, Lcom/zte/zdm/application/b/fv;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

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

    new-instance v3, Lcom/zte/zdm/application/b/fs;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/fs;-><init>(Lcom/zte/zdm/application/b/dd;)V

    new-instance v4, Lcom/zte/zdm/application/b/ft;

    invoke-direct {v4, p0}, Lcom/zte/zdm/application/b/ft;-><init>(Lcom/zte/zdm/application/b/dd;)V

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v9, 0x3

    move-object v1, p0

    move-object v8, p2

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/fv;-><init>(Lcom/zte/zdm/application/b/dd;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    invoke-virtual {v10, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private s(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/zte/zdm/application/b/fv;

    const-wide/16 v6, 0x0

    const/16 v9, 0x8

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v8, p2

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/fv;-><init>(Lcom/zte/zdm/application/b/dd;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    new-array v1, v12, [Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const v3, 0x7f09009c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    iget-object v2, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const v3, 0x7f090018

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v11

    new-array v2, v12, [Ljava/lang/Runnable;

    new-instance v3, Lcom/zte/zdm/application/b/fu;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/fu;-><init>(Lcom/zte/zdm/application/b/dd;)V

    aput-object v3, v2, v10

    new-instance v3, Lcom/zte/zdm/application/b/df;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/df;-><init>(Lcom/zte/zdm/application/b/dd;)V

    aput-object v3, v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/b/fv;->a([Ljava/lang/String;[Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    invoke-interface {v1}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const v10, 0x7f090091

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

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

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const v1, 0x7f09008d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, "0"

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/zte/zdm/application/b/dd;->B:I

    const/high16 v2, 0x10

    if-le v0, v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%.2f"

    new-array v4, v7, [Ljava/lang/Object;

    int-to-float v0, v0

    const/high16 v5, 0x4980

    div-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const v3, 0x7f090087

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const-string v3, "0"

    invoke-static {v2, v3}, Lcom/zte/zdm/application/b/r;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const v2, 0x7f09008f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-static {}, Lcom/zte/zdm/application/d/f;->a()Lcom/zte/zdm/application/d/f;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-virtual {v2, v3, p2}, Lcom/zte/zdm/application/d/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/zte/zdm/application/d/f;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/zdm/application/b/dd;->P:Ljava/lang/String;

    invoke-static {}, Lcom/zte/zdm/application/d/f;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/zdm/application/b/dd;->Q:Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Australia"

    aput-object v3, v2, v6

    invoke-static {v2}, Lcom/zte/zdm/application/b;->b([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, v0, p2}, Lcom/zte/zdm/application/b/dd;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    new-array v0, v7, [Ljava/lang/String;

    const-string v2, "CMCC"

    aput-object v2, v0, v6

    invoke-static {v0}, Lcom/zte/zdm/application/b;->c([Ljava/lang/String;)Z

    move-result v2

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->r:Lcom/zte/zdm/a/a;

    check-cast v0, Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    const-string v0, "DLSessionRestarted, not show showDownloadDiscriptionDialog"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const v1, 0x7f0900b9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_2
    return-object v1

    :cond_3
    const/16 v2, 0x400

    if-le v0, v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%.2f"

    new-array v4, v7, [Ljava/lang/Object;

    int-to-float v0, v0

    const/high16 v5, 0x4480

    div-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const v3, 0x7f090086

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const v3, 0x7f090088

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    new-array v2, v9, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    const-string v3, ""

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v2, "/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-array v2, v9, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const v5, 0x7f090090

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/zte/zdm/application/d/f;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

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

    iget-object v3, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const v4, 0x7f090092

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/zte/zdm/application/d/f;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v8

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

    :cond_6
    new-array v2, v9, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const v4, 0x7f090092

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v7

    const-string v0, ""

    aput-object v0, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    move-object v1, v2

    goto/16 :goto_1
.end method

.method private u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const v7, 0x7f09009f

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const v1, 0x7f09009d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v5

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

    iget-object v3, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const v4, 0x7f09009e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    aput-object v2, v4, v6

    const/4 v1, 0x2

    invoke-static {}, Lcom/zte/zdm/application/d/f;->b()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {}, Lcom/zte/zdm/application/d/f;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const v2, 0x7f0900a0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p2, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public A()Landroid/app/Dialog;
    .locals 8

    const v7, 0x7f090111

    const v5, 0x7f090110

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->r:Lcom/zte/zdm/a/a;

    invoke-virtual {v0, v4}, Lcom/zte/zdm/a/a;->a(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const-string v2, "0"

    invoke-static {v0, v2}, Lcom/zte/zdm/application/b/r;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/b/dd;->J:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMandatory = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/zte/zdm/application/b/dd;->J:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->J:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->J:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const-string v2, "Delay_update_conut"

    invoke-static {v0, v2, v6}, Lcom/zte/zdm/application/b/r;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "count in showDeferDialog is: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    packed-switch v2, :pswitch_data_0

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v3, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const-string v4, "Delay_update_conut"

    invoke-static {v3, v4, v2}, Lcom/zte/zdm/application/b/r;->b(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v3, 0x3

    if-gt v2, v3, :cond_2

    invoke-direct {p0, v0}, Lcom/zte/zdm/application/b/dd;->a(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    :goto_1
    invoke-virtual {p0}, Lcom/zte/zdm/application/b/dd;->n()V

    move-object v1, v0

    :cond_1
    return-object v1

    :pswitch_0
    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090112

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f090114

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090113

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method B()V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const v1, 0x7f09016c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const v1, 0x7f090042

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/zte/zdm/application/b/fv;

    const-wide/16 v6, 0x0

    const/16 v9, 0x8

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/fv;-><init>(Lcom/zte/zdm/application/b/dd;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    new-array v1, v11, [Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const v3, 0x7f09003a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    new-array v2, v11, [Ljava/lang/Runnable;

    new-instance v3, Lcom/zte/zdm/application/b/en;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/en;-><init>(Lcom/zte/zdm/application/b/dd;)V

    aput-object v3, v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/b/fv;->a([Ljava/lang/String;[Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/zte/zdm/application/b/dd;->ai()V

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    invoke-interface {v1}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public C()V
    .locals 13

    const-wide/16 v6, 0x0

    const/16 v9, 0x8

    const/4 v12, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    const-string v0, "showNetHasChanged"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/ui/f;->a(Landroid/content/Context;)Lcom/zte/zdm/application/ui/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/ui/f;->b()Lcom/zte/zdm/application/ui/g;

    move-result-object v0

    iget-boolean v0, v0, Lcom/zte/zdm/application/ui/g;->c:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isWifiOnly="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->O:Lcom/zte/zdm/application/b/k;

    invoke-virtual {v0, v5}, Lcom/zte/zdm/application/b/k;->a(I)V

    new-array v10, v12, [Ljava/lang/String;

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const v1, 0x7f09003a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v5

    new-array v11, v12, [Ljava/lang/Runnable;

    new-instance v0, Lcom/zte/zdm/application/b/fa;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/b/fa;-><init>(Lcom/zte/zdm/application/b/dd;)V

    aput-object v0, v11, v5

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const v1, 0x7f0900b4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/zte/zdm/application/b/fv;

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/fv;-><init>(Lcom/zte/zdm/application/b/dd;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    invoke-virtual {v0, v10, v11}, Lcom/zte/zdm/application/b/fv;->a([Ljava/lang/String;[Ljava/lang/Runnable;)V

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-array v0, v12, [Ljava/lang/String;

    const-string v1, "CMCC"

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/zte/zdm/application/b;->c([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v10, v12, [Ljava/lang/String;

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const v1, 0x7f09003a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v5

    new-array v11, v12, [Ljava/lang/Runnable;

    new-instance v0, Lcom/zte/zdm/application/b/fb;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/b/fb;-><init>(Lcom/zte/zdm/application/b/dd;)V

    aput-object v0, v11, v5

    new-instance v0, Lcom/zte/zdm/application/b/fv;

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/fv;-><init>(Lcom/zte/zdm/application/b/dd;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    invoke-virtual {v0, v10, v11}, Lcom/zte/zdm/application/b/fv;->a([Ljava/lang/String;[Ljava/lang/Runnable;)V

    move-object v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    new-array v10, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const v1, 0x7f090083

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v5

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const v1, 0x7f090084

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v12

    const/4 v0, 0x2

    new-array v11, v0, [Ljava/lang/Runnable;

    new-instance v0, Lcom/zte/zdm/application/b/fc;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/b/fc;-><init>(Lcom/zte/zdm/application/b/dd;)V

    aput-object v0, v11, v5

    new-instance v0, Lcom/zte/zdm/application/b/fd;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/b/fd;-><init>(Lcom/zte/zdm/application/b/dd;)V

    aput-object v0, v11, v12

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const v1, 0x7f0900b3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/zte/zdm/application/b/fv;

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/fv;-><init>(Lcom/zte/zdm/application/b/dd;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    invoke-virtual {v0, v10, v11}, Lcom/zte/zdm/application/b/fv;->a([Ljava/lang/String;[Ljava/lang/Runnable;)V

    move-object v1, v0

    goto :goto_0
.end method

.method public D()V
    .locals 0

    invoke-virtual {p0}, Lcom/zte/zdm/application/b/dd;->h()V

    return-void
.end method

.method public E()V
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const v1, 0x7f090042

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const v1, 0x7f0900b8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/zte/zdm/application/b/fv;

    const-wide/16 v6, 0x0

    const/16 v9, 0x8

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/fv;-><init>(Lcom/zte/zdm/application/b/dd;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    new-array v1, v12, [Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const v3, 0x7f090083

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    iget-object v2, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const v3, 0x7f090084

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v11

    new-array v2, v12, [Ljava/lang/Runnable;

    new-instance v3, Lcom/zte/zdm/application/b/ff;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/ff;-><init>(Lcom/zte/zdm/application/b/dd;)V

    aput-object v3, v2, v10

    new-instance v3, Lcom/zte/zdm/application/b/fg;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/fg;-><init>(Lcom/zte/zdm/application/b/dd;)V

    aput-object v3, v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/b/fv;->a([Ljava/lang/String;[Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

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

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const v1, 0x7f090042

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const v1, 0x7f0900b5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/zte/zdm/application/b/fv;

    const-wide/16 v6, 0x0

    const/16 v9, 0x8

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/fv;-><init>(Lcom/zte/zdm/application/b/dd;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    new-array v1, v12, [Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const v3, 0x7f090082

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    iget-object v2, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const v3, 0x7f090018

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v11

    new-array v2, v12, [Ljava/lang/Runnable;

    new-instance v3, Lcom/zte/zdm/application/b/fh;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/fh;-><init>(Lcom/zte/zdm/application/b/dd;)V

    aput-object v3, v2, v10

    new-instance v3, Lcom/zte/zdm/application/b/fi;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/fi;-><init>(Lcom/zte/zdm/application/b/dd;)V

    aput-object v3, v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/b/fv;->a([Ljava/lang/String;[Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    invoke-interface {v1}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public G()Z
    .locals 1

    const-string v0, "should not call this method"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized H()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isHomeClick = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/zte/zdm/application/b/dd;->E:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/zte/zdm/application/b/dd;->E:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public I()V
    .locals 11

    const-string v0, "showDmRetry "

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zte/zdm/application/b/dd;->ai()V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    invoke-interface {v1, v0}, Lcom/zte/zdm/a/j;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/Activity;

    new-instance v0, Lcom/zte/zdm/application/b/fv;

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090117

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/zte/zdm/application/b/fn;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/fn;-><init>(Lcom/zte/zdm/application/b/dd;)V

    new-instance v4, Lcom/zte/zdm/application/b/fo;

    invoke-direct {v4, p0}, Lcom/zte/zdm/application/b/fo;-><init>(Lcom/zte/zdm/application/b/dd;)V

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v8, 0x7f09010e

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/fv;-><init>(Lcom/zte/zdm/application/b/dd;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    invoke-virtual {v10, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public J()V
    .locals 3

    const-string v0, "netErrorDlSessionPaused"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->r:Lcom/zte/zdm/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/zdm/a/a;->b(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->O:Lcom/zte/zdm/application/b/k;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/b/k;->a(I)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/zte/zdm/application/mmi/DownloadActivity;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x7d8

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    invoke-interface {v1, v0}, Lcom/zte/zdm/a/j;->a(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->r:Lcom/zte/zdm/a/a;

    invoke-virtual {v0}, Lcom/zte/zdm/a/a;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->H()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->r:Lcom/zte/zdm/a/a;

    invoke-virtual {v0}, Lcom/zte/zdm/a/a;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->G()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->r:Lcom/zte/zdm/a/a;

    invoke-virtual {v0}, Lcom/zte/zdm/a/a;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->c()I

    move-result v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->r:Lcom/zte/zdm/a/a;

    invoke-virtual {v1}, Lcom/zte/zdm/a/a;->A()Lcom/zte/zdm/a/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/a/d;->d()I

    move-result v1

    iget-object v2, p0, Lcom/zte/zdm/application/b/dd;->r:Lcom/zte/zdm/a/a;

    invoke-virtual {v2}, Lcom/zte/zdm/a/a;->A()Lcom/zte/zdm/a/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/a/d;->u()Lcom/zte/zdm/a/e;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/zte/zdm/a/e;->c(II)V

    goto :goto_0
.end method

.method public K()V
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const v1, 0x7f090151

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const v1, 0x7f090042

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/zte/zdm/application/b/fv;

    const-wide/16 v6, 0x0

    const/16 v9, 0x8

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/fv;-><init>(Lcom/zte/zdm/application/b/dd;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    new-array v1, v12, [Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const v3, 0x7f09003a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    iget-object v2, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const v3, 0x7f090018

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v11

    new-array v2, v12, [Ljava/lang/Runnable;

    new-instance v3, Lcom/zte/zdm/application/b/fp;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/fp;-><init>(Lcom/zte/zdm/application/b/dd;)V

    aput-object v3, v2, v10

    new-instance v3, Lcom/zte/zdm/application/b/fq;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/fq;-><init>(Lcom/zte/zdm/application/b/dd;)V

    aput-object v3, v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/b/fv;->a([Ljava/lang/String;[Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    invoke-interface {v1}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public L()V
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->r:Lcom/zte/zdm/a/a;

    check-cast v0, Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->x()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->r:Lcom/zte/zdm/a/a;

    invoke-virtual {v0, v2}, Lcom/zte/zdm/a/a;->b(Z)V

    invoke-virtual {p0, v2}, Lcom/zte/zdm/application/b/dd;->f(Z)V

    invoke-virtual {p0, v2}, Lcom/zte/zdm/application/b/dd;->a(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->r:Lcom/zte/zdm/a/a;

    invoke-virtual {v0, v3}, Lcom/zte/zdm/a/a;->f(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->r:Lcom/zte/zdm/a/a;

    invoke-virtual {v0}, Lcom/zte/zdm/a/a;->e()V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->r:Lcom/zte/zdm/a/a;

    invoke-virtual {v0}, Lcom/zte/zdm/a/a;->p()V

    :goto_0
    invoke-virtual {p0, v3}, Lcom/zte/zdm/application/b/dd;->d(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iget-object v2, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const v3, 0x7f09000d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const v4, 0x7f090165

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x108008a

    iput v4, v1, Landroid/app/Notification;->icon:I

    const/16 v4, 0x18

    iput v4, v1, Landroid/app/Notification;->flags:I

    const/4 v4, 0x5

    iput v4, v1, Landroid/app/Notification;->defaults:I

    iget-object v4, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/16 v2, 0x4d2

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/zte/zdm/application/b/dd;->h(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->r:Lcom/zte/zdm/a/a;

    invoke-virtual {v0, v3}, Lcom/zte/zdm/a/a;->f(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->r:Lcom/zte/zdm/a/a;

    invoke-virtual {v0}, Lcom/zte/zdm/a/a;->g()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->w()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->r:Lcom/zte/zdm/a/a;

    invoke-virtual {v0, v3}, Lcom/zte/zdm/a/a;->f(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->r:Lcom/zte/zdm/a/a;

    invoke-virtual {v0}, Lcom/zte/zdm/a/a;->C()V

    goto :goto_0

    :cond_3
    const-string v0, "unkown state"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->r:Lcom/zte/zdm/a/a;

    invoke-virtual {v0, v2}, Lcom/zte/zdm/a/a;->f(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->r:Lcom/zte/zdm/a/a;

    invoke-virtual {v0}, Lcom/zte/zdm/a/a;->e()V

    goto :goto_0
.end method

.method public synthetic M()Lcom/zte/zdm/a/b;
    .locals 1

    invoke-virtual {p0}, Lcom/zte/zdm/application/b/dd;->a()Lcom/zte/zdm/application/activities/z;

    move-result-object v0

    return-object v0
.end method

.method public synthetic N()Lcom/zte/zdm/a/c;
    .locals 1

    invoke-virtual {p0}, Lcom/zte/zdm/application/b/dd;->P()Lcom/zte/zdm/application/b/k;

    move-result-object v0

    return-object v0
.end method

.method protected O()V
    .locals 3

    const-string v0, "click to background"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/b/dd;->f(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/b/dd;->e(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->s:Lcom/zte/zdm/a/e;

    iget v1, p0, Lcom/zte/zdm/application/b/dd;->C:I

    iget v2, p0, Lcom/zte/zdm/application/b/dd;->B:I

    invoke-interface {v0, v1, v2}, Lcom/zte/zdm/a/e;->a(II)V

    invoke-virtual {p0}, Lcom/zte/zdm/application/b/dd;->s()V

    return-void
.end method

.method public P()Lcom/zte/zdm/application/b/k;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->O:Lcom/zte/zdm/application/b/k;

    return-object v0
.end method

.method public Q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zte/zdm/application/b/dd;->F:Z

    return v0
.end method

.method public R()V
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zte/zdm/application/b/dd;->w()Z

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/zte/zdm/application/b/dd;->H()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "startDownload"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/zte/zdm/application/b/dd;->g(Z)V

    invoke-virtual {p0}, Lcom/zte/zdm/application/b/dd;->u()Lcom/zte/zdm/a/e;

    move-result-object v0

    iget v1, p0, Lcom/zte/zdm/application/b/dd;->C:I

    iget v2, p0, Lcom/zte/zdm/application/b/dd;->B:I

    invoke-interface {v0, v1, v2}, Lcom/zte/zdm/a/e;->a(II)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    instance-of v0, v0, Lcom/zte/zdm/application/mmi/DownloadActivity;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "running_activity"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->c(Ljava/lang/String;I)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const-class v2, Lcom/zte/zdm/application/mmi/DownloadActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "backupORrestore"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/zte/zdm/application/b/ga;->a()Lcom/zte/zdm/application/b/ga;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-static {v2}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/zte/zdm/application/b/ga;->a(Lcom/zte/zdm/application/a/a;I)V

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public synthetic S()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/zte/zdm/application/b/dd;->A()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->w:Lcom/zte/zdm/application/activities/z;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/application/activities/z;->a(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public final a()Lcom/zte/zdm/application/activities/z;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->w:Lcom/zte/zdm/application/activities/z;

    return-object v0
.end method

.method public a(II)V
    .locals 1

    const-string v0, "AndroidMmiController showProgressBarDialog, should not call this method"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/zte/zdm/a/j;)V
    .locals 2

    iput-object p1, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

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

.method public final a(Lcom/zte/zdm/application/activities/z;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/dd;->w:Lcom/zte/zdm/application/activities/z;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/4 v3, 0x0

    const-string v0, "showWaitingDialog"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/b/dd;->d(Z)V

    new-instance v0, Lcom/zte/zdm/application/b/fv;

    const-wide/16 v6, 0x0

    const/16 v9, 0x8

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v8, p2

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/fv;-><init>(Lcom/zte/zdm/application/b/dd;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    invoke-virtual {v0, v3, v3}, Lcom/zte/zdm/application/b/fv;->a([Ljava/lang/String;[Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    invoke-interface {v1}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Runnable;)V
    .locals 10

    const/4 v3, 0x0

    new-instance v0, Lcom/zte/zdm/application/b/fv;

    const-wide/16 v6, 0x0

    const/16 v9, 0x8

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v8, p2

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/fv;-><init>(Lcom/zte/zdm/application/b/dd;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    invoke-virtual {v0, p3, p4}, Lcom/zte/zdm/application/b/fv;->a([Ljava/lang/String;[Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    invoke-interface {v1}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zte/zdm/application/b/dd;->D:Z

    return-void
.end method

.method public b()Lcom/zte/zdm/a/j;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    return-object v0
.end method

.method public b(I)V
    .locals 2

    const-string v0, "AndroidMmiController showProgressBarDialog(int totalSize)"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zte/zdm/application/b/dd;->w()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/zte/zdm/application/b/dd;->H()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "AndroidMmiController is BackgroundDownloading,no show progressBar"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->w:Lcom/zte/zdm/application/activities/z;

    invoke-virtual {v0}, Lcom/zte/zdm/application/activities/z;->f()V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/b/dd;->u:Ljava/lang/String;

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->w:Lcom/zte/zdm/application/activities/z;

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/activities/z;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/zte/zdm/application/b/dd;->C:I

    invoke-virtual {p0, v0, p1}, Lcom/zte/zdm/application/b/dd;->a(II)V

    goto :goto_0
.end method

.method public b(II)V
    .locals 1

    const-string v0, "must not call this method"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/zte/zdm/a/j;)V
    .locals 7

    invoke-interface {p1}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->w:Lcom/zte/zdm/application/activities/z;

    const/4 v1, 0x0

    new-instance v4, Lcom/zte/zdm/application/b/dl;

    invoke-direct {v4, p0}, Lcom/zte/zdm/application/b/dl;-><init>(Lcom/zte/zdm/application/b/dd;)V

    new-instance v5, Lcom/zte/zdm/application/b/dm;

    invoke-direct {v5, p0}, Lcom/zte/zdm/application/b/dm;-><init>(Lcom/zte/zdm/application/b/dd;)V

    const/4 v6, -0x1

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/zte/zdm/application/activities/z;->a(ILandroid/app/Activity;Lcom/zte/zdm/a/j;Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/zte/zdm/application/b/dd;->f(Z)V

    iput v4, p0, Lcom/zte/zdm/application/b/dd;->C:I

    iput-boolean v4, p0, Lcom/zte/zdm/application/b/dd;->G:Z

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/zdm/application/b/dd;->a(Lcom/zte/zdm/b/b/a;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "the swv is not the same with pre swv,cancel session"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zte/zdm/application/b/dd;->aa()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/zdm/application/b/dd;->b(Lcom/zte/zdm/b/b/a;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "running_activity"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->c(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "dd_size"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v1

    const-string v2, "dd_description"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/zte/zdm/application/a/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/zte/zdm/application/b/dd;->ab()V

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v0, v1}, Lcom/zte/zdm/application/b/dd;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "total_size"

    iget v2, p0, Lcom/zte/zdm/application/b/dd;->B:I

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->c(Ljava/lang/String;I)V

    :cond_1
    invoke-static {}, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->a()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "showDownloadDiscriptionDialog() autoUpdate"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->a(Z)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->b(Z)V

    new-instance v0, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;

    invoke-direct {v0}, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;-><init>()V

    invoke-virtual {v0}, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->d()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/zte/zdm/application/b/dd;->H()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/b/r;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->s:Lcom/zte/zdm/a/e;

    invoke-interface {v0}, Lcom/zte/zdm/a/e;->d()V

    const-string v0, "isHomeClick=true"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "showDownloadDiscriptionDialog()2"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zte/zdm/application/b/dd;->ac()V

    goto/16 :goto_0
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zte/zdm/application/b/dd;->H:Z

    return-void
.end method

.method public c()I
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "download_size"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zte/zdm/application/b/dd;->C:I

    iget v0, p0, Lcom/zte/zdm/application/b/dd;->C:I

    return v0
.end method

.method public c(II)V
    .locals 4

    const/4 v3, 0x1

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

    iget v0, p0, Lcom/zte/zdm/application/b/dd;->C:I

    if-ne v0, p1, :cond_2

    const-string v0, "updateProgressDialogProgressValue value not changed"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/zdm/application/b/dd;->H()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0, v3}, Lcom/zte/zdm/application/b/dd;->g(Z)V

    invoke-virtual {p0}, Lcom/zte/zdm/application/b/dd;->u()Lcom/zte/zdm/a/e;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/zte/zdm/a/e;->c(II)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput p1, p0, Lcom/zte/zdm/application/b/dd;->C:I

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "download_size"

    iget v2, p0, Lcom/zte/zdm/application/b/dd;->C:I

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->c(Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isHomeClick() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/application/b/dd;->H()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; screen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/zdm/application/b/dd;->H()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    if-nez v0, :cond_4

    :cond_3
    invoke-virtual {p0, v3}, Lcom/zte/zdm/application/b/dd;->g(Z)V

    invoke-virtual {p0}, Lcom/zte/zdm/application/b/dd;->u()Lcom/zte/zdm/a/e;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/zte/zdm/a/e;->c(II)V

    goto :goto_0

    :cond_4
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    invoke-interface {v1, v0}, Lcom/zte/zdm/a/j;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "install dialog has been shown? : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/zte/zdm/application/b/dd;->F:Z

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

    iget-boolean v1, p0, Lcom/zte/zdm/application/b/dd;->G:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/zte/zdm/application/b/dd;->F:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/zte/zdm/application/b/dd;->G:Z

    if-nez v0, :cond_0

    const-string v0, "AndroidMmiController showDownloadCancelConfirmDialog"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/b/dd;->a(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/b/dd;->f(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/Activity;

    new-instance v0, Lcom/zte/zdm/application/b/fv;

    new-instance v3, Lcom/zte/zdm/application/b/dh;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/dh;-><init>(Lcom/zte/zdm/application/b/dd;)V

    new-instance v4, Lcom/zte/zdm/application/b/di;

    invoke-direct {v4, p0}, Lcom/zte/zdm/application/b/di;-><init>(Lcom/zte/zdm/application/b/dd;)V

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v9, 0x6

    move-object v1, p0

    move-object v2, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/fv;-><init>(Lcom/zte/zdm/application/b/dd;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    invoke-virtual {v10, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zte/zdm/application/b/dd;->L:Z

    return-void
.end method

.method public d()I
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "total_size"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zte/zdm/application/b/dd;->B:I

    iget v0, p0, Lcom/zte/zdm/application/b/dd;->B:I

    return v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string v0, "showDownloadVia()"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/Activity;

    new-instance v0, Lcom/zte/zdm/application/b/fv;

    new-instance v3, Lcom/zte/zdm/application/b/dj;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/dj;-><init>(Lcom/zte/zdm/application/b/dd;)V

    new-instance v4, Lcom/zte/zdm/application/b/dk;

    invoke-direct {v4, p0}, Lcom/zte/zdm/application/b/dk;-><init>(Lcom/zte/zdm/application/b/dd;)V

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v9, 0x2

    move-object v1, p0

    move-object v2, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/fv;-><init>(Lcom/zte/zdm/application/b/dd;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    invoke-virtual {v10, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(Z)V
    .locals 11

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/zte/zdm/application/b/dd;->Z()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->w:Lcom/zte/zdm/application/activities/z;

    invoke-virtual {v0}, Lcom/zte/zdm/application/activities/z;->e()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/Activity;

    new-instance v0, Lcom/zte/zdm/application/b/fv;

    const/4 v9, 0x5

    move-object v1, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v8, v2

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/fv;-><init>(Lcom/zte/zdm/application/b/dd;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    invoke-virtual {v10, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/Activity;

    new-instance v0, Lcom/zte/zdm/application/b/fv;

    const/4 v9, 0x7

    move-object v1, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v8, v2

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/fv;-><init>(Lcom/zte/zdm/application/b/dd;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    invoke-virtual {v10, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string v0, "showCancelDownloadDialog()"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/Activity;

    new-instance v0, Lcom/zte/zdm/application/b/fv;

    new-instance v3, Lcom/zte/zdm/application/b/ds;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/ds;-><init>(Lcom/zte/zdm/application/b/dd;)V

    new-instance v4, Lcom/zte/zdm/application/b/dt;

    invoke-direct {v4, p0}, Lcom/zte/zdm/application/b/dt;-><init>(Lcom/zte/zdm/application/b/dd;)V

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v9, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/fv;-><init>(Lcom/zte/zdm/application/b/dd;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    invoke-virtual {v10, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e(Z)V
    .locals 1

    const-string v0, "should not call this method"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zte/zdm/application/b/dd;->D:Z

    return v0
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

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
    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x78

    iput v1, v0, Landroid/os/Message;->arg1:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "KEY_TITLE"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "KEY_CONTENT"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    invoke-interface {v1, v0}, Lcom/zte/zdm/a/j;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/zte/zdm/application/b/dd;->H()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "showNotificationforWarning"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->s:Lcom/zte/zdm/a/e;

    invoke-interface {v0}, Lcom/zte/zdm/a/e;->b()V

    goto :goto_0
.end method

.method public f(Z)V
    .locals 1

    const-string v0, "should not call this method"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zte/zdm/application/b/dd;->G:Z

    return v0
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string v0, "Network Unavailable"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/Activity;

    new-instance v0, Lcom/zte/zdm/application/b/fv;

    new-instance v3, Lcom/zte/zdm/application/b/du;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/du;-><init>(Lcom/zte/zdm/application/b/dd;)V

    new-instance v4, Lcom/zte/zdm/application/b/dv;

    invoke-direct {v4, p0}, Lcom/zte/zdm/application/b/dv;-><init>(Lcom/zte/zdm/application/b/dd;)V

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v9, 0x3

    move-object v1, p0

    move-object v2, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/fv;-><init>(Lcom/zte/zdm/application/b/dd;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    invoke-virtual {v10, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized g(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/zte/zdm/application/b/dd;->E:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHomeClick = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zte/zdm/application/b/dd;->H:Z

    return v0
.end method

.method public h()V
    .locals 2

    const-string v0, "showWaitingDialog"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x96

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    invoke-interface {v1, v0}, Lcom/zte/zdm/a/j;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    const/4 v3, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v0, "showInstallMetaFileDialog begin"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "download_size"

    invoke-virtual {v0, v1, v10}, Lcom/zte/zdm/application/a/a;->c(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "total_size"

    invoke-virtual {v0, v1, v10}, Lcom/zte/zdm/application/a/a;->c(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "running_activity"

    invoke-virtual {v0, v1, v12}, Lcom/zte/zdm/application/a/a;->c(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->r:Lcom/zte/zdm/a/a;

    invoke-virtual {v0, v11}, Lcom/zte/zdm/a/a;->a(Z)V

    invoke-virtual {p0, v11}, Lcom/zte/zdm/application/b/dd;->d(Z)V

    iput-boolean v11, p0, Lcom/zte/zdm/application/b/dd;->F:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isHomeClick="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/zte/zdm/application/b/dd;->E:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/zte/zdm/application/b/r;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/b/dd;->J:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isMandatory = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->J:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->J:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const-string v1, "Delay_update_conut"

    invoke-static {v0, v1, v10}, Lcom/zte/zdm/application/b/r;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090094

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v11, [Ljava/lang/Object;

    rsub-int/lit8 v4, v0, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v10

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090097

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v11, [Ljava/lang/Object;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v10

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/zte/zdm/application/b/dd;->L:Z

    if-eqz v0, :cond_2

    iput-boolean v10, p0, Lcom/zte/zdm/application/b/dd;->L:Z

    invoke-virtual {p0}, Lcom/zte/zdm/application/b/dd;->n()V

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/zte/zdm/application/b/dd;->ah()V

    invoke-direct {p0}, Lcom/zte/zdm/application/b/dd;->ag()V

    goto :goto_0

    :cond_3
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

    :cond_4
    invoke-virtual {p0}, Lcom/zte/zdm/application/b/dd;->H()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    if-nez v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->s:Lcom/zte/zdm/a/e;

    invoke-interface {v0}, Lcom/zte/zdm/a/e;->g()V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->s:Lcom/zte/zdm/a/e;

    invoke-interface {v0}, Lcom/zte/zdm/a/e;->c()V

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/zte/zdm/application/b/dd;->ah()V

    new-array v0, v11, [Ljava/lang/String;

    const-string v1, "Australia"

    aput-object v1, v0, v10

    invoke-static {v0}, Lcom/zte/zdm/application/b;->b([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const v1, 0x7f0900a5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const v1, 0x7f09001b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/zte/zdm/application/b/fv;

    const-wide/16 v6, 0x0

    const/16 v9, 0x8

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/fv;-><init>(Lcom/zte/zdm/application/b/dd;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    new-array v1, v12, [Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const v3, 0x7f0900a4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    iget-object v2, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const v3, 0x7f0900a2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v11

    new-array v2, v12, [Ljava/lang/Runnable;

    new-instance v3, Lcom/zte/zdm/application/b/dw;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/dw;-><init>(Lcom/zte/zdm/application/b/dd;)V

    aput-object v3, v2, v10

    new-instance v3, Lcom/zte/zdm/application/b/dy;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/dy;-><init>(Lcom/zte/zdm/application/b/dd;)V

    aput-object v3, v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/b/fv;->a([Ljava/lang/String;[Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    invoke-interface {v1}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/zte/zdm/application/b/dd;->p(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public h(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zte/zdm/application/b/dd;->F:Z

    return-void
.end method

.method public i()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dismissWaitingDialog() +"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/zdm/application/b/dd;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zte/zdm/application/b/dd;->Z()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->A:Lcom/zte/zdm/application/b/fw;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/b/fw;->a(I)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->A:Lcom/zte/zdm/application/b/fw;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const/4 v4, 0x0

    const-string v0, "Service is Busy"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/Activity;

    new-instance v0, Lcom/zte/zdm/application/b/fv;

    new-instance v3, Lcom/zte/zdm/application/b/eo;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/eo;-><init>(Lcom/zte/zdm/application/b/dd;)V

    const-wide/16 v6, 0x0

    const/4 v9, 0x3

    move-object v1, p0

    move-object v2, p1

    move-object v5, v4

    move-object v8, p2

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/fv;-><init>(Lcom/zte/zdm/application/b/dd;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    invoke-virtual {v10, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public j()V
    .locals 2

    const-string v0, "dismissProgressBarDialog()"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zte/zdm/application/b/dd;->Z()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->A:Lcom/zte/zdm/application/b/fw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/b/fw;->a(I)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->A:Lcom/zte/zdm/application/b/fw;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string v0, "Service is Unavailable"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/b/dd;->d(Z)V

    invoke-direct {p0}, Lcom/zte/zdm/application/b/dd;->ai()V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/Activity;

    new-instance v0, Lcom/zte/zdm/application/b/fv;

    new-instance v3, Lcom/zte/zdm/application/b/ep;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/ep;-><init>(Lcom/zte/zdm/application/b/dd;)V

    new-instance v4, Lcom/zte/zdm/application/b/eq;

    invoke-direct {v4, p0}, Lcom/zte/zdm/application/b/eq;-><init>(Lcom/zte/zdm/application/b/dd;)V

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v9, 0x3

    move-object v1, p0

    move-object v2, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/fv;-><init>(Lcom/zte/zdm/application/b/dd;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    invoke-virtual {v10, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->P:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "running_activity"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->c(Ljava/lang/String;I)V

    sput-object p1, Lcom/zte/zdm/application/b/dd;->S:Ljava/lang/String;

    sput-object p2, Lcom/zte/zdm/application/b/dd;->T:Ljava/lang/String;

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->R:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->U:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->Q:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string v0, "Uncaught Exception Handler"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/b/dd;->d(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/Activity;

    new-instance v0, Lcom/zte/zdm/application/b/fv;

    new-instance v3, Lcom/zte/zdm/application/b/ev;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/ev;-><init>(Lcom/zte/zdm/application/b/dd;)V

    new-instance v4, Lcom/zte/zdm/application/b/ew;

    invoke-direct {v4, p0}, Lcom/zte/zdm/application/b/ew;-><init>(Lcom/zte/zdm/application/b/dd;)V

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v9, 0x3

    move-object v1, p0

    move-object v2, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/fv;-><init>(Lcom/zte/zdm/application/b/dd;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    invoke-virtual {v10, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public m()V
    .locals 11

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/Activity;

    new-instance v0, Lcom/zte/zdm/application/b/fv;

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090085

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/zte/zdm/application/b/dn;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/dn;-><init>(Lcom/zte/zdm/application/b/dd;)V

    new-instance v4, Lcom/zte/zdm/application/b/do;

    invoke-direct {v4, p0}, Lcom/zte/zdm/application/b/do;-><init>(Lcom/zte/zdm/application/b/dd;)V

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v8, 0x7f090081

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/fv;-><init>(Lcom/zte/zdm/application/b/dd;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    invoke-virtual {v10, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public m(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screen is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

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

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    invoke-interface {v1}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/Activity;

    new-instance v0, Lcom/zte/zdm/application/b/fv;

    new-instance v3, Lcom/zte/zdm/application/b/ey;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/ey;-><init>(Lcom/zte/zdm/application/b/dd;)V

    new-instance v4, Lcom/zte/zdm/application/b/ez;

    invoke-direct {v4, p0}, Lcom/zte/zdm/application/b/ez;-><init>(Lcom/zte/zdm/application/b/dd;)V

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v9, 0x6

    move-object v1, p0

    move-object v2, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/fv;-><init>(Lcom/zte/zdm/application/b/dd;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    invoke-virtual {v10, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public n()V
    .locals 4

    const-string v0, "showDelay"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xe10

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const-string v2, "Delay_update_conut"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/zte/zdm/application/b/r;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const-string v3, "Delay_update_conut"

    invoke-static {v2, v3, v1}, Lcom/zte/zdm/application/b/r;->b(Landroid/content/Context;Ljava/lang/String;I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "count in beginUIUEDelay is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    const/16 v0, 0x12c

    :cond_0
    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const-string v2, "Delay_update_time"

    invoke-static {v1, v2, v0}, Lcom/zte/zdm/application/b/r;->b(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const-string v2, "android.action.reminder.me.later.newapp"

    invoke-static {v1, v2}, Lcom/zte/zdm/application/b/r;->c(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const-string v2, "android.action.reminder.me.later.newapp"

    invoke-static {v1, v0, v2}, Lcom/zte/zdm/application/b/r;->a(Landroid/content/Context;ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    new-instance v0, Lcom/zte/zdm/application/b/eh;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/b/eh;-><init>(Lcom/zte/zdm/application/b/dd;)V

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/eh;->start()V

    goto :goto_0
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->w:Lcom/zte/zdm/application/activities/z;

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    const-wide/16 v5, 0x0

    move-object v2, p2

    move-object v4, v3

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/zte/zdm/application/activities/z;->a(Lcom/zte/zdm/a/j;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Runnable;JLjava/lang/String;)V

    return-void
.end method

.method public o()V
    .locals 11

    const-string v0, "showDelayUI"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/Activity;

    new-instance v0, Lcom/zte/zdm/application/b/fv;

    iget-object v2, p0, Lcom/zte/zdm/application/b/dd;->I:Ljava/lang/String;

    new-instance v3, Lcom/zte/zdm/application/b/ei;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/ei;-><init>(Lcom/zte/zdm/application/b/dd;)V

    new-instance v4, Lcom/zte/zdm/application/b/ej;

    invoke-direct {v4, p0}, Lcom/zte/zdm/application/b/ej;-><init>(Lcom/zte/zdm/application/b/dd;)V

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v8, 0x7f090020

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/fv;-><init>(Lcom/zte/zdm/application/b/dd;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    invoke-virtual {v10, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public o(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->w:Lcom/zte/zdm/application/activities/z;

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    const-wide/16 v5, 0x0

    move-object v2, p2

    move-object v4, v3

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/zte/zdm/application/activities/z;->a(Lcom/zte/zdm/a/j;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Runnable;JLjava/lang/String;)V

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
    const v0, 0x989680

    if-le v2, v0, :cond_1

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

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

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f090062

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v5, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0, v5}, Lcom/zte/zdm/application/b/dd;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v1, :cond_9

    invoke-static {}, Lcom/zte/zdm/application/d/a/a;->f()J

    move-result-wide v5

    long-to-double v5, v5

    const-wide/high16 v7, 0x3ff8

    int-to-double v9, v2

    mul-double/2addr v7, v9

    cmpl-double v0, v5, v7

    if-lez v0, :cond_9

    new-array v0, v11, [Ljava/lang/String;

    const-string v2, "7X27_P743T"

    aput-object v2, v0, v3

    invoke-static {v0}, Lcom/zte/zdm/application/b;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "update.zip"

    const-string v2, "dlpkgfile"

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/zte/zdm/redbend/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/zte/zdm/application/d/b/e;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/zte/zdm/application/d/b/e;->a(Ljava/lang/String;)V

    :goto_1
    move-object v0, v1

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upFileURL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/zte/zdm/application/d/a/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->r:Lcom/zte/zdm/a/a;

    invoke-virtual {v0}, Lcom/zte/zdm/a/a;->f()V

    invoke-virtual {p0, v3}, Lcom/zte/zdm/application/b/dd;->d(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_2
    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/b/r;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "running_activity"

    invoke-virtual {v0, v1, v3}, Lcom/zte/zdm/application/a/a;->c(Ljava/lang/String;I)V

    :goto_3
    return-void

    :catch_0
    move-exception v0

    move v2, v3

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_3
    const-string v0, "zdmApp"

    const-string v2, "fota rename error"

    invoke-static {v0, v2}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/zte/zdm/application/d/b/e;->a:Ljava/lang/String;

    sget-object v0, Lcom/zte/zdm/application/d/b/e;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/zte/zdm/application/d/b/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1}, Lcom/zte/zdm/application/d/b/e;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-static {v1, v2}, Lcom/zte/zdm/application/d/b/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v1}, Lcom/zte/zdm/application/d/b/e;->a(Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/zte/zdm/application/d/f;->d()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/d/b/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zte/zdm/application/d/b/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v1}, Lcom/zte/zdm/application/d/b/e;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/zte/zdm/application/d/b/e;->c:Ljava/lang/String;

    goto :goto_2

    :cond_7
    invoke-static {v2}, Lcom/zte/zdm/application/d/b/e;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/zdm/application/b/dd;->B()V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    invoke-static {v0, v1}, Lcom/zte/zdm/application/c/e;->a(Landroid/app/Activity;Lcom/zte/zdm/a/j;)Lcom/zte/zdm/application/c/e;

    goto :goto_3

    :cond_8
    invoke-static {v2}, Lcom/zte/zdm/application/d/b/e;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/zte/zdm/application/d/b/e;->a(Ljava/lang/String;)V

    :cond_9
    move-object v0, v1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    goto :goto_4
.end method

.method public p(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Lcom/zte/zdm/application/b/ed;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/b/ed;-><init>(Lcom/zte/zdm/application/b/dd;)V

    new-instance v1, Lcom/zte/zdm/application/b/eg;

    invoke-direct {v1, p0}, Lcom/zte/zdm/application/b/eg;-><init>(Lcom/zte/zdm/application/b/dd;)V

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "POSITIVE_KEY"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "NEGATIVE_KEY"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x14

    iput v0, v2, Landroid/os/Message;->arg1:I

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=============UIUE screen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "========"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    invoke-interface {v0, v2}, Lcom/zte/zdm/a/j;->a(Ljava/lang/Object;)V

    return-void
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

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

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

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f090062

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v3, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/zte/zdm/application/b/dd;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_5

    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "7X27_P743T"

    aput-object v3, v0, v5

    invoke-static {v0}, Lcom/zte/zdm/application/b;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "update.zip"

    const-string v3, "dlpkgfile"

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/zte/zdm/redbend/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/zte/zdm/application/d/b/e;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/zte/zdm/application/d/b/e;->a(Ljava/lang/String;)V

    :goto_0
    move-object v0, v1

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upFileURL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/zte/zdm/application/d/a/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->r:Lcom/zte/zdm/a/a;

    invoke-virtual {v0}, Lcom/zte/zdm/a/a;->f()V

    invoke-virtual {p0, v5}, Lcom/zte/zdm/application/b/dd;->d(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/b/r;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "running_activity"

    invoke-virtual {v0, v1, v5}, Lcom/zte/zdm/application/a/a;->c(Ljava/lang/String;I)V

    return-void

    :cond_2
    const-string v0, "zdmApp"

    const-string v2, "fota rename error"

    invoke-static {v0, v2}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/d/b/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zte/zdm/application/d/b/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v1}, Lcom/zte/zdm/application/d/b/e;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/zte/zdm/application/d/b/e;->c:Ljava/lang/String;

    goto :goto_1

    :cond_4
    invoke-static {v0}, Lcom/zte/zdm/application/d/b/e;->a(Ljava/lang/String;)V

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method public r()V
    .locals 1

    const-string v0, "notify delay Install Meta File"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->s:Lcom/zte/zdm/a/e;

    invoke-interface {v0}, Lcom/zte/zdm/a/e;->c()V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    invoke-direct {p0}, Lcom/zte/zdm/application/b/dd;->aj()V

    return-void
.end method

.method public s()V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "after destoryScreen() screen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public t()V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->w:Lcom/zte/zdm/application/activities/z;

    iget v1, p0, Lcom/zte/zdm/application/b/dd;->z:I

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/activities/z;->c(I)V

    return-void
.end method

.method public declared-synchronized u()Lcom/zte/zdm/a/e;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->s:Lcom/zte/zdm/a/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public v()V
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/services/c;->a(Landroid/content/Context;)Lcom/zte/zdm/application/services/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/services/c;->e()V

    sget-boolean v0, Lcom/zte/zdm/application/activities/b;->c:Z

    if-nez v0, :cond_1

    const-string v0, "controller acceptContinueSession()"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/b/cn;->g(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "useChooseConnectionType"

    const-string v2, "wifi"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->r:Lcom/zte/zdm/a/a;

    invoke-virtual {v0}, Lcom/zte/zdm/a/a;->B()V

    :goto_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/zte/zdm/application/activities/b;->c:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "useChooseConnectionType"

    const-string v2, "mobile"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/zte/zdm/application/b/dd;->m()V

    goto :goto_1
.end method

.method public w()Z
    .locals 1

    const-string v0, "should not call this method"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public x()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/b/dd;->f(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->w:Lcom/zte/zdm/application/activities/z;

    iget-object v1, p0, Lcom/zte/zdm/application/b/dd;->x:Lcom/zte/zdm/a/j;

    iget v2, p0, Lcom/zte/zdm/application/b/dd;->z:I

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/activities/z;->b(Lcom/zte/zdm/a/j;I)V

    return-void
.end method

.method public y()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/zdm/application/b/dd;->G:Z

    return-void
.end method

.method public z()V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/application/b/dd;->w:Lcom/zte/zdm/application/activities/z;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/activities/z;->a(Ljava/lang/String;)V

    return-void
.end method
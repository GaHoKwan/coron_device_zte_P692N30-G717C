.class public Lcom/zte/zdm/application/b/cq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/zdm/mo/notification/c;
.implements Lcom/zte/zdm/mos/fumo/g;


# static fields
.field public static final a:Ljava/lang/String; = "com.zte.zdmdaemon.DELTA_FILE"

.field public static final b:Ljava/lang/String; = "UPDATE_FAILED"

.field public static final c:Ljava/lang/String; = "UPDATE_SUCESSFULLY"

.field public static final d:Ljava/lang/String; = "NO_UPDATE"

.field private static f:Lcom/zte/zdm/application/b/cq; = null

.field private static final g:I = 0x1f5

.field private static final h:I = 0x1f7


# instance fields
.field private i:Landroid/content/Context;

.field private j:Lcom/zte/zdm/a/d;

.field private k:Ljava/lang/String;

.field private l:Lcom/zte/zdm/application/a/a;

.field private m:Lcom/zte/zdm/mo/AndroidConnectionObserver;

.field private n:Landroid/os/PowerManager$WakeLock;

.field private o:Z

.field private p:Z

.field private q:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/zte/zdm/a/d;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/zdm/application/b/cq;->n:Landroid/os/PowerManager$WakeLock;

    iput-boolean v1, p0, Lcom/zte/zdm/application/b/cq;->o:Z

    iput-boolean v1, p0, Lcom/zte/zdm/application/b/cq;->p:Z

    iput v1, p0, Lcom/zte/zdm/application/b/cq;->q:I

    iput-object p1, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    iput-object p2, p0, Lcom/zte/zdm/application/b/cq;->j:Lcom/zte/zdm/a/d;

    invoke-static {p1}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/b/cq;->l:Lcom/zte/zdm/application/a/a;

    sput-object p0, Lcom/zte/zdm/application/b/cq;->f:Lcom/zte/zdm/application/b/cq;

    return-void
.end method

.method private A()V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "dd_size"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "dd_description"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "useChooseConnectionType"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->b()Lcom/zte/zdm/application/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/a;->a()Lcom/zte/zdm/application/b/g;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/zte/zdm/application/b/g;->e(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "resume_download"

    invoke-virtual {v0, v1, v3}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method private B()V
    .locals 5

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "wap_push_message"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;[B)[B

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    new-instance v2, Lcom/zte/zdm/application/b/cr;

    invoke-direct {v2, p0, v0}, Lcom/zte/zdm/application/b/cr;-><init>(Lcom/zte/zdm/application/b/cq;[B)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_0
    return-void
.end method

.method private C()V
    .locals 4

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/zte/zdm/application/b/cs;

    invoke-direct {v1, p0}, Lcom/zte/zdm/application/b/cs;-><init>(Lcom/zte/zdm/application/b/cq;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private a(J)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    const-string v0, ""

    const-wide/32 v1, 0x100000

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%.0f"

    new-array v2, v3, [Ljava/lang/Object;

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

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090087

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-wide/16 v1, 0x400

    cmp-long v1, p1, v1

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%.0f"

    new-array v2, v3, [Ljava/lang/Object;

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

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090086

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090088

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b()Lcom/zte/zdm/application/b/cq;
    .locals 1

    sget-object v0, Lcom/zte/zdm/application/b/cq;->f:Lcom/zte/zdm/application/b/cq;

    return-object v0
.end method

.method private x()V
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->l:Lcom/zte/zdm/application/a/a;

    const-string v1, "need_to_restart_dlsession"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method private y()V
    .locals 2

    const/4 v1, 0x1

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->b()Lcom/zte/zdm/application/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/a;->a()Lcom/zte/zdm/application/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->y()Lcom/zte/zdm/application/d/d/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/d/d/a;->b(Z)V

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/d/d/a;->a(Z)V

    invoke-virtual {v0}, Lcom/zte/zdm/application/d/d/a;->e()V

    return-void
.end method

.method private z()Z
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/com.zte.zdm/files/tree.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEmpty is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->b()Lcom/zte/zdm/application/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/a;->a()Lcom/zte/zdm/application/b/g;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/b/g;->e(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->j:Lcom/zte/zdm/a/d;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/a/d;->b(I)V

    return-void
.end method

.method public a(II)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->j:Lcom/zte/zdm/a/d;

    invoke-virtual {v0, p1, p2}, Lcom/zte/zdm/a/d;->c(II)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStatusCode statusCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/zte/zdm/application/b/cq;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->l:Lcom/zte/zdm/application/a/a;

    const-string v1, "fumo_update_status_code"

    invoke-virtual {v0, v1, p1}, Lcom/zte/zdm/application/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "200"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UPDATE_SUCESSFULLY"

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/b/cq;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "UPDATE_FAILED"

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/b/cq;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zte/zdm/application/b/cq;->p:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zte/zdm/application/b/cq;->p:Z

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfirmDownload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfirmDownload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/zte/zdm/application/autoupdate/d;->a(ZLandroid/content/Context;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/zte/zdm/application/autoupdate/d;->a(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/autoupdate/d;->d(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "dd_size"

    invoke-virtual {v0, v1, p1}, Lcom/zte/zdm/application/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "dd_description"

    invoke-virtual {v0, v1, p2}, Lcom/zte/zdm/application/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dd_description = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v1

    const-string v2, "dd_description"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/zte/zdm/application/a/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/zte/zdm/heartyservice/core/a;->a()Lcom/zte/zdm/heartyservice/core/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/heartyservice/core/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "onConfirmDownload: Started From Heart Service"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/zte/zdm/heartyservice/ui/HeartyServicePkgCheckerActivity;->a()Lcom/zte/zdm/heartyservice/ui/HeartyServicePkgCheckerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/heartyservice/ui/HeartyServicePkgCheckerActivity;->b()V

    invoke-static {}, Lcom/zte/zdm/heartyservice/ui/p;->a()Lcom/zte/zdm/heartyservice/ui/p;

    move-result-object v0

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v1

    sget-object v2, Lcom/zte/zdm/heartyservice/ui/q;->g:Lcom/zte/zdm/heartyservice/ui/q;

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/heartyservice/ui/p;->a(Landroid/content/Context;Lcom/zte/zdm/heartyservice/ui/q;)V

    :goto_0
    return v4

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->j:Lcom/zte/zdm/a/d;

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->i()V

    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/application/b/cq;->j:Lcom/zte/zdm/a/d;

    invoke-virtual {v2, v0, v1}, Lcom/zte/zdm/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "onConfirmDownload() false"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(I)V
    .locals 9

    const v3, 0x7f09001d

    const v8, 0x4c4b40

    const/4 v7, 0x1

    const-wide v4, 0x3ff4cccccccccccdL

    const/4 v6, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dlsession abort code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->j:Lcom/zte/zdm/a/d;

    invoke-virtual {v0, v7}, Lcom/zte/zdm/a/d;->d(Z)V

    const-string v0, "notifyDlSessionAbort"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/b/cq;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "notifyDlSessionAbort() autoUpdate"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->a(Z)V

    invoke-direct {p0}, Lcom/zte/zdm/application/b/cq;->y()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "notifyDmSessionAbort() isAutoUpdateNotify"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->b(Z)V

    :cond_2
    const-string v0, ""

    const-string v0, ""

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->b()Lcom/zte/zdm/application/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/a;->a()Lcom/zte/zdm/application/b/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "++++++++++++ dl error code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "++++++++++++++"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-direct {p0}, Lcom/zte/zdm/application/b/cq;->y()V

    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/application/b/cq;->j:Lcom/zte/zdm/a/d;

    invoke-virtual {v2, v0, v1}, Lcom/zte/zdm/a/d;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/zte/zdm/application/b/cq;->y()V

    iget v0, p0, Lcom/zte/zdm/application/b/cq;->q:I

    int-to-double v0, v0

    mul-double/2addr v0, v4

    double-to-long v0, v0

    iget v2, p0, Lcom/zte/zdm/application/b/cq;->q:I

    add-int/2addr v2, v8

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    iget v0, p0, Lcom/zte/zdm/application/b/cq;->q:I

    int-to-double v0, v0

    mul-double/2addr v0, v4

    double-to-long v0, v0

    :goto_1
    invoke-static {}, Lcom/zte/zdm/application/d/a/a;->e()J

    move-result-wide v2

    sub-long v2, v0, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "needPkgSize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AndroidFileService.getDataAvailSpace()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/zte/zdm/application/d/a/a;->e()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, v3}, Lcom/zte/zdm/application/b/cq;->a(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090046

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090044

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v2

    const-string v3, "need_release_space"

    invoke-virtual {v2, v3, v0}, Lcom/zte/zdm/application/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zte/zdm/application/b/cq;->j:Lcom/zte/zdm/a/d;

    invoke-virtual {v2, v0, v1}, Lcom/zte/zdm/a/d;->k(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    iget v0, p0, Lcom/zte/zdm/application/b/cq;->q:I

    add-int/2addr v0, v8

    int-to-long v0, v0

    goto :goto_1

    :pswitch_2
    invoke-direct {p0}, Lcom/zte/zdm/application/b/cq;->x()V

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->q()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/application/b/cq;->j:Lcom/zte/zdm/a/d;

    invoke-virtual {v2, v0, v1}, Lcom/zte/zdm/a/d;->j(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/zte/zdm/application/b/cq;->j:Lcom/zte/zdm/a/d;

    invoke-virtual {v1}, Lcom/zte/zdm/a/d;->b()Lcom/zte/zdm/a/j;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zte/zdm/application/b/cq;->j:Lcom/zte/zdm/a/d;

    invoke-virtual {v1}, Lcom/zte/zdm/a/d;->b()Lcom/zte/zdm/a/j;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/zte/zdm/a/j;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->j:Lcom/zte/zdm/a/d;

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->J()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1f5
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public b(II)V
    .locals 2

    invoke-static {}, Lcom/zte/zdm/heartyservice/core/a;->a()Lcom/zte/zdm/heartyservice/core/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/heartyservice/core/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zte/zdm/heartyservice/core/a;->a()Lcom/zte/zdm/heartyservice/core/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/zdm/heartyservice/core/a;->a(Z)V

    invoke-static {}, Lcom/zte/zdm/heartyservice/ui/HeartyServicePkgCheckerActivity;->a()Lcom/zte/zdm/heartyservice/ui/HeartyServicePkgCheckerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/heartyservice/ui/HeartyServicePkgCheckerActivity;->b()V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveStatusCode statusCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/zte/zdm/application/b/cq;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->l:Lcom/zte/zdm/application/a/a;

    const-string v1, "fumo_update_status_code"

    invoke-virtual {v0, v1, p1}, Lcom/zte/zdm/application/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 3

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->b()Lcom/zte/zdm/application/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/a;->a()Lcom/zte/zdm/application/b/g;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/b/g;->e(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->j:Lcom/zte/zdm/a/d;

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->j()V

    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/application/b/cq;->j:Lcom/zte/zdm/a/d;

    invoke-virtual {v2, v0, v1}, Lcom/zte/zdm/a/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(I)V
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "========== notifyReportSessionAbort: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "==========="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->j:Lcom/zte/zdm/a/d;

    invoke-virtual {v0, v4}, Lcom/zte/zdm/a/d;->d(Z)V

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->b()Lcom/zte/zdm/application/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/a;->a()Lcom/zte/zdm/application/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->y()Lcom/zte/zdm/application/d/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/d/d/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->a()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zdm/application/b/cq;->j:Lcom/zte/zdm/a/d;

    invoke-virtual {v3, v1, v2}, Lcom/zte/zdm/a/d;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "fota report abort"

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/zte/zdm/application/d/d/a;->b(Z)V

    invoke-virtual {v0, v4}, Lcom/zte/zdm/application/d/d/a;->a(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/d/d/a;->c(Z)V

    invoke-virtual {v0}, Lcom/zte/zdm/application/d/d/a;->e()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/b/cq;->b(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v0, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xc

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0xd

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "-"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "%02d"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%02d"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v9

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%02d"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%02d"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%02d"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v9

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the time string is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/zdm/application/b/cq;->l:Lcom/zte/zdm/application/a/a;

    const-string v2, "dm_last_update"

    invoke-virtual {v1, v2, v0}, Lcom/zte/zdm/application/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->l:Lcom/zte/zdm/application/a/a;

    const-string v1, "dm_fumo_status"

    invoke-virtual {v0, v1, p1}, Lcom/zte/zdm/application/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 1

    const-string v0, "onNotifitydelayInstallMetaFile()"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->j:Lcom/zte/zdm/a/d;

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->b()Lcom/zte/zdm/a/j;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->j:Lcom/zte/zdm/a/d;

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->r()V

    :cond_0
    return-void
.end method

.method public d(I)Z
    .locals 3

    const-string v0, "onNotifyNotification come in"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/zte/zdm/notification/h;->a(I)Lcom/zte/zdm/notification/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notification mode is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/zte/zdm/notification/g;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zte/zdm/application/b/cq;->o:Z

    iget-boolean v0, p0, Lcom/zte/zdm/application/b/cq;->o:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->l:Lcom/zte/zdm/application/a/a;

    const-string v1, "fumo_update_status_code"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(I)Z
    .locals 2

    const-string v0, "on Session Broken"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/d/c;->d(Landroid/content/Context;)V

    new-instance v0, Lcom/zte/zdm/mo/DmApnSetting;

    invoke-direct {v0}, Lcom/zte/zdm/mo/DmApnSetting;-><init>()V

    invoke-virtual {v0}, Lcom/zte/zdm/mo/DmApnSetting;->c()V

    invoke-virtual {v0}, Lcom/zte/zdm/mo/DmApnSetting;->b()V

    invoke-direct {p0}, Lcom/zte/zdm/application/b/cq;->B()V

    invoke-static {}, Lcom/zte/zdm/application/b/gc;->a()Lcom/zte/zdm/application/b/gc;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/b/gc;->a(Landroid/content/Context;)Z

    const/4 v0, 0x0

    return v0
.end method

.method public f()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNotifyInstall---AndroidFileService.upfileURL = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/zte/zdm/application/d/a/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.RECOVERY_REBOOT"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--update_package="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/zte/zdm/application/d/a/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "U950"

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/zte/zdm/application/b;->b([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "NV_XIAN"

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/zte/zdm/application/b;->a([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "/cache/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "update_package=/cache/"

    const-string v3, "fota_update=CACHE:"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "7X27_P743T"

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/zte/zdm/application/b;->a([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "--fota_update"

    const-string v2, "updateType"

    sget v3, Lcom/zte/zdm/redbend/d;->d:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "NV_SHANGHAI"

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/zte/zdm/application/b;->a([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--fota_update\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string v2, "mnt/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "mnt/"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n--locale="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.zte.zdmdaemon.DELTA_FILE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/zte/zdm/application/d/f;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "NeedBackUp"

    iget-object v2, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-static {v2}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/application/a/a;->g()V

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_5
    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v0, "onNotifyInstall---android.intent.action.RECOVERY_REBOOT"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_6
    const-string v2, "/data/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "update_package=/data/"

    const-string v3, "fota_update=DATA:"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lcom/zte/zdm/application/b/cq;->q:I

    return-void
.end method

.method public g()V
    .locals 4

    const/4 v1, 0x0

    const-string v0, "NO_UPDATE"

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/b/cq;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/zte/zdm/application/autoupdate/d;->a(ZLandroid/content/Context;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/zte/zdm/application/autoupdate/d;->a(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/autoupdate/d;->d(Landroid/content/Context;)V

    invoke-static {}, Lcom/zte/zdm/heartyservice/core/a;->a()Lcom/zte/zdm/heartyservice/core/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/heartyservice/core/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zte/zdm/heartyservice/core/a;->a()Lcom/zte/zdm/heartyservice/core/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/zte/zdm/heartyservice/core/a;->a(Z)V

    invoke-static {}, Lcom/zte/zdm/heartyservice/ui/HeartyServicePkgCheckerActivity;->a()Lcom/zte/zdm/heartyservice/ui/HeartyServicePkgCheckerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/heartyservice/ui/HeartyServicePkgCheckerActivity;->b()V

    invoke-static {}, Lcom/zte/zdm/heartyservice/core/a;->a()Lcom/zte/zdm/heartyservice/core/a;

    move-result-object v0

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/heartyservice/core/a;->f(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->j:Lcom/zte/zdm/a/d;

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->i()V

    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->j:Lcom/zte/zdm/a/d;

    iget-object v1, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090064

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090067

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/a/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public h()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->j:Lcom/zte/zdm/a/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/a/d;->d(Z)V

    invoke-static {}, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "notifyDmSessionAbort() autoUpdate"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->a(Z)V

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

    invoke-virtual {v0, v2}, Lcom/zte/zdm/heartyservice/core/a;->a(Z)V

    invoke-static {}, Lcom/zte/zdm/heartyservice/ui/HeartyServicePkgCheckerActivity;->a()Lcom/zte/zdm/heartyservice/ui/HeartyServicePkgCheckerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/heartyservice/ui/HeartyServicePkgCheckerActivity;->b()V

    :cond_1
    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->j:Lcom/zte/zdm/a/d;

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->I()V

    goto :goto_0
.end method

.method public i()V
    .locals 1

    const-string v0, "onDismissProgressBarDialog"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->j:Lcom/zte/zdm/a/d;

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->j()V

    return-void
.end method

.method public j()V
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/application/b/cq;->j:Lcom/zte/zdm/a/d;

    invoke-virtual {v2, v0, v1}, Lcom/zte/zdm/a/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public k()V
    .locals 1

    const-string v0, "notifyDlSessionSendNotification"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->j:Lcom/zte/zdm/a/d;

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->t()V

    return-void
.end method

.method public l()Z
    .locals 5

    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/d/c;->d(Landroid/content/Context;)V

    new-instance v0, Lcom/zte/zdm/mo/DmApnSetting;

    invoke-direct {v0}, Lcom/zte/zdm/mo/DmApnSetting;-><init>()V

    invoke-virtual {v0}, Lcom/zte/zdm/mo/DmApnSetting;->c()V

    invoke-virtual {v0}, Lcom/zte/zdm/mo/DmApnSetting;->b()V

    const-string v0, "onNotifyNIDmSessionCompleted"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/zte/zdm/application/b/gc;->a()Lcom/zte/zdm/application/b/gc;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/b/gc;->a(Landroid/content/Context;)Z

    invoke-static {}, Lcom/zte/zdm/application/b/gc;->a()Lcom/zte/zdm/application/b/gc;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    const-string v2, "android.action.alarm.kill.zdmApp"

    const-wide/32 v3, 0xea60

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zte/zdm/application/b/gc;->a(Landroid/content/Context;Ljava/lang/String;J)V

    const/4 v0, 0x1

    return v0
.end method

.method public m()Z
    .locals 3

    invoke-direct {p0}, Lcom/zte/zdm/application/b/cq;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zte/zdm/application/d/g/e;->a()Lcom/zte/zdm/application/d/g/e;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/d/g/e;->a(Landroid/content/Context;I)Lcom/zte/zdm/application/d/g/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/zdm/application/d/g/d;->a()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public n()Z
    .locals 1

    const-string v0, "into onPreStartDMSession"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/d/c;->c(Landroid/content/Context;)V

    new-instance v0, Lcom/zte/zdm/mo/DmConectionManager;

    invoke-direct {v0}, Lcom/zte/zdm/mo/DmConectionManager;-><init>()V

    invoke-virtual {v0}, Lcom/zte/zdm/mo/DmConectionManager;->j()V

    const/4 v0, 0x1

    return v0
.end method

.method public o()Lcom/zte/zdm/d/a/b;
    .locals 1

    const-string v0, "into onCreateConnectionListener"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/zte/zdm/mo/AndroidConnectionObserver;

    invoke-direct {v0}, Lcom/zte/zdm/mo/AndroidConnectionObserver;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/application/b/cq;->m:Lcom/zte/zdm/mo/AndroidConnectionObserver;

    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->m:Lcom/zte/zdm/mo/AndroidConnectionObserver;

    return-object v0
.end method

.method public p()Z
    .locals 1

    invoke-direct {p0}, Lcom/zte/zdm/application/b/cq;->A()V

    invoke-virtual {p0}, Lcom/zte/zdm/application/b/cq;->r()V

    invoke-virtual {p0}, Lcom/zte/zdm/application/b/cq;->q()V

    const/4 v0, 0x0

    return v0
.end method

.method public q()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/b/cn;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zdm/application/b/cn;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-static {v2}, Lcom/zte/zdm/application/b/cn;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ZdmServiceCaller.setNetwork() apn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ZdmServiceCaller.setNetwork() proxy : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ZdmServiceCaller.setNetwork() port : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-static {v2}, Lcom/zte/zdm/application/b/cn;->g(Landroid/content/Context;)Z

    move-result v2

    if-ne v2, v6, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "dm_proxy"

    invoke-virtual {v0, v1, v5}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "dl_proxy"

    invoke-virtual {v0, v1, v5}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "dm_proxy"

    invoke-virtual {v0, v1, v5}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "dl_proxy"

    invoke-virtual {v0, v1, v5}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-static {v2}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v2

    const-string v3, "dm_proxy"

    invoke-virtual {v2, v3, v6}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-static {v2}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v2

    const-string v3, "dm_proxy_addr"

    invoke-virtual {v2, v3, v0}, Lcom/zte/zdm/application/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-static {v2}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v2

    const-string v3, "dm_proxy_port"

    invoke-virtual {v2, v3, v1}, Lcom/zte/zdm/application/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-static {v2}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v2

    const-string v3, "dl_proxy"

    invoke-virtual {v2, v3, v6}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-static {v2}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v2

    const-string v3, "dl_proxy_addr"

    invoke-virtual {v2, v3, v0}, Lcom/zte/zdm/application/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v2, "dl_proxy_port"

    invoke-virtual {v0, v2, v1}, Lcom/zte/zdm/application/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public r()V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/d/h;->a(Landroid/content/Context;)V

    return-void
.end method

.method public s()V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/d/h;->f(Landroid/content/Context;)V

    return-void
.end method

.method public t()V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->j:Lcom/zte/zdm/a/d;

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->y()V

    return-void
.end method

.method public u()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/b/r;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "download_size"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->c(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "total_size"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->c(Ljava/lang/String;I)V

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->b()Lcom/zte/zdm/application/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/a;->a()Lcom/zte/zdm/application/b/g;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/zte/zdm/application/b/g;->e(Z)V

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->b()Lcom/zte/zdm/application/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/a;->a()Lcom/zte/zdm/application/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->N()Lcom/zte/zdm/a/c;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/application/b/k;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/b/k;->a(I)V

    invoke-static {}, Lcom/zte/zdm/application/b/ga;->a()Lcom/zte/zdm/application/b/ga;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/b/ga;->a(Lcom/zte/zdm/application/a/a;I)V

    invoke-static {}, Lcom/zte/zdm/application/d/f;->f()V

    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "present_version"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public v()V
    .locals 1

    const-string v0, "androidSessionController dm session completed"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public w()V
    .locals 5

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->b()Lcom/zte/zdm/application/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/a;->a()Lcom/zte/zdm/application/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->y()Lcom/zte/zdm/application/d/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/d/d/a;->b()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0, v3}, Lcom/zte/zdm/application/d/d/a;->b(Z)V

    invoke-virtual {v0}, Lcom/zte/zdm/application/d/d/a;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/zte/zdm/application/b/cq;->C()V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/zte/zdm/application/d/d/a;->f()V

    invoke-static {}, Lcom/zte/zdm/application/b/gc;->a()Lcom/zte/zdm/application/b/gc;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/zte/zdm/application/b/gc;->a(Z)V

    invoke-static {}, Lcom/zte/zdm/application/b/gc;->a()Lcom/zte/zdm/application/b/gc;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    const-string v2, "android.action.alarm.kill.zdmApp"

    const-wide/32 v3, 0xea60

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zte/zdm/application/b/gc;->a(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/zte/zdm/application/b/cq;->B()V

    invoke-virtual {p0}, Lcom/zte/zdm/application/b/cq;->s()V

    invoke-static {}, Lcom/zte/zdm/application/b/gc;->a()Lcom/zte/zdm/application/b/gc;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/cq;->i:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/b/gc;->a(Landroid/content/Context;)Z

    return-void

    :cond_2
    iget-object v1, p0, Lcom/zte/zdm/application/b/cq;->j:Lcom/zte/zdm/a/d;

    invoke-virtual {v1}, Lcom/zte/zdm/a/d;->b()Lcom/zte/zdm/a/j;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput v2, v1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/zte/zdm/application/b/cq;->j:Lcom/zte/zdm/a/d;

    invoke-virtual {v2}, Lcom/zte/zdm/a/d;->b()Lcom/zte/zdm/a/j;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/zte/zdm/a/j;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/zte/zdm/application/b/cq;->j:Lcom/zte/zdm/a/d;

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->b()Lcom/zte/zdm/a/j;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v2, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/zte/zdm/application/b/cq;->j:Lcom/zte/zdm/a/d;

    invoke-virtual {v1}, Lcom/zte/zdm/a/d;->b()Lcom/zte/zdm/a/j;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/zte/zdm/a/j;->a(Ljava/lang/Object;)V

    goto :goto_1
.end method

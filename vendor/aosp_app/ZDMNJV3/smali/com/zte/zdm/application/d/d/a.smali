.class public Lcom/zte/zdm/application/d/d/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "FOTA_IS_REPORTING"

.field public static final b:Ljava/lang/String; = "FOTA_RETRY_REPORT"

.field public static final c:Ljava/lang/String; = "FOTA_REPORT_TRIGGER_BY_USER"


# instance fields
.field d:Lcom/zte/zdm/b/b/a;

.field private e:Ljava/util/Timer;

.field private f:Ljava/util/TimerTask;

.field private g:I

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>(Lcom/zte/zdm/b/b/a;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xea60

    iput v0, p0, Lcom/zte/zdm/application/d/d/a;->g:I

    iput v1, p0, Lcom/zte/zdm/application/d/d/a;->h:I

    iput-boolean v1, p0, Lcom/zte/zdm/application/d/d/a;->i:Z

    iput-boolean v1, p0, Lcom/zte/zdm/application/d/d/a;->j:Z

    iput-boolean v1, p0, Lcom/zte/zdm/application/d/d/a;->k:Z

    iput-object p1, p0, Lcom/zte/zdm/application/d/d/a;->d:Lcom/zte/zdm/b/b/a;

    invoke-virtual {p0}, Lcom/zte/zdm/application/d/d/a;->a()V

    return-void
.end method

.method static synthetic a(Lcom/zte/zdm/application/d/d/a;)I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/application/d/d/a;->g:I

    return v0
.end method

.method static synthetic a(Lcom/zte/zdm/application/d/d/a;I)I
    .locals 0

    iput p1, p0, Lcom/zte/zdm/application/d/d/a;->g:I

    return p1
.end method

.method static synthetic a(Lcom/zte/zdm/application/d/d/a;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zte/zdm/application/d/d/a;->d(Z)V

    return-void
.end method

.method static synthetic b(Lcom/zte/zdm/application/d/d/a;)I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/application/d/d/a;->h:I

    return v0
.end method

.method static synthetic c(Lcom/zte/zdm/application/d/d/a;)I
    .locals 2

    iget v0, p0, Lcom/zte/zdm/application/d/d/a;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/zte/zdm/application/d/d/a;->h:I

    return v0
.end method

.method private d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zte/zdm/application/d/d/a;->i:Z

    return-void
.end method

.method private e(Z)V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/application/d/d/a;->d:Lcom/zte/zdm/b/b/a;

    const-string v1, "FOTA_RETRY_REPORT"

    invoke-virtual {v0, v1, p1}, Lcom/zte/zdm/b/b/a;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method private g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zte/zdm/application/d/d/a;->i:Z

    return v0
.end method

.method private h()Z
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/application/d/d/a;->d:Lcom/zte/zdm/b/b/a;

    const-string v1, "FOTA_RETRY_REPORT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/b/b/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private i()V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/d/d/a;->e:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/d/d/a;->f:Ljava/util/TimerTask;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/zte/zdm/application/d/d/a;->f:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    iget-object v0, p0, Lcom/zte/zdm/application/d/d/a;->e:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/zdm/application/d/d/a;->f:Ljava/util/TimerTask;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/zdm/application/d/d/a;->e:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/application/d/d/a;->d:Lcom/zte/zdm/b/b/a;

    const-string v1, "report"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/b/b/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zte/zdm/application/d/d/a;->j:Z

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zte/zdm/application/d/d/a;->j:Z

    return-void
.end method

.method public b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/application/d/d/a;->d:Lcom/zte/zdm/b/b/a;

    const-string v1, "report"

    invoke-virtual {v0, v1, p1}, Lcom/zte/zdm/b/b/a;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zte/zdm/application/d/d/a;->j:Z

    return v0
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zte/zdm/application/d/d/a;->k:Z

    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zte/zdm/application/d/d/a;->k:Z

    return v0
.end method

.method public d()V
    .locals 1

    invoke-virtual {p0}, Lcom/zte/zdm/application/d/d/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "no need to report"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "start report"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/zte/zdm/application/d/d/a;->d(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/d/d/a;->a(Z)V

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->g()V

    goto :goto_0
.end method

.method public e()V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zte/zdm/application/d/d/a;->d(Z)V

    iget v0, p0, Lcom/zte/zdm/application/d/d/a;->h:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start Session  mTimerretrytime###### inin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/zdm/application/d/d/a;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/zte/zdm/application/d/d/a;->e(Z)V

    invoke-direct {p0}, Lcom/zte/zdm/application/d/d/a;->i()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/application/d/d/a;->e:Ljava/util/Timer;

    new-instance v0, Lcom/zte/zdm/application/d/d/b;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/d/d/b;-><init>(Lcom/zte/zdm/application/d/d/a;)V

    iput-object v0, p0, Lcom/zte/zdm/application/d/d/a;->f:Ljava/util/TimerTask;

    iget-object v0, p0, Lcom/zte/zdm/application/d/d/a;->e:Ljava/util/Timer;

    iget-object v1, p0, Lcom/zte/zdm/application/d/d/a;->f:Ljava/util/TimerTask;

    iget v2, p0, Lcom/zte/zdm/application/d/d/a;->g:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method public f()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "resetReportStatus , stop timer"

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/zte/zdm/application/d/d/a;->b(Z)V

    invoke-virtual {p0, v1}, Lcom/zte/zdm/application/d/d/a;->a(Z)V

    invoke-direct {p0, v1}, Lcom/zte/zdm/application/d/d/a;->d(Z)V

    invoke-direct {p0, v1}, Lcom/zte/zdm/application/d/d/a;->e(Z)V

    invoke-virtual {p0, v1}, Lcom/zte/zdm/application/d/d/a;->c(Z)V

    const v0, 0xea60

    iput v0, p0, Lcom/zte/zdm/application/d/d/a;->g:I

    iput v1, p0, Lcom/zte/zdm/application/d/d/a;->h:I

    invoke-direct {p0}, Lcom/zte/zdm/application/d/d/a;->i()V

    return-void
.end method

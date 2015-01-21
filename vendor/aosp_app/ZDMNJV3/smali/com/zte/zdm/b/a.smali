.class public Lcom/zte/zdm/b/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "org.openmobilealliance.dm.firmwareupdate.devicerequest"

.field public static final b:Ljava/lang/String; = "org.openmobilealliance.dm.firmwareupdate.userrequest"

.field public static final c:Ljava/lang/String; = "org.openmobilealliance.dm.firmwareupdate.downloadandupdate"

.field public static final d:Ljava/lang/String; = "org.openmobilealliance.dm.firmwareupdate.download"

.field public static final e:Ljava/lang/String; = "org.openmobilealliance.dm.firmwareupdate.update"

.field private static f:Lcom/zte/zdm/b/a;


# instance fields
.field private g:Lcom/zte/zdm/b/e;

.field private h:Lcom/zte/zdm/b/e/c;

.field private i:Lcom/zte/zdm/b/e/e;

.field private j:Lcom/zte/zdm/b/f/e/b;

.field private k:Lcom/zte/zdm/d/a/c;

.field private l:Lcom/zte/zdm/b/b/a;

.field private m:Lcom/zte/zdm/d/a/f;

.field private n:Lcom/zte/zdm/b/c;

.field private o:Z

.field private p:Ljava/lang/Object;

.field private q:Lcom/zte/zdm/g/d/c;

.field private r:Lcom/zte/zdm/e/b;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zdm/b/a;->o:Z

    invoke-static {}, Lcom/zte/zdm/b/f/e/b;->a()Lcom/zte/zdm/b/f/e/b;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/b/a;->j:Lcom/zte/zdm/b/f/e/b;

    return-void
.end method

.method public constructor <init>(Lcom/zte/zdm/b/f/e/b;Lcom/zte/zdm/d/a/c;Lcom/zte/zdm/b/b/a;Lcom/zte/zdm/b/e/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zdm/b/a;->o:Z

    iput-object p1, p0, Lcom/zte/zdm/b/a;->j:Lcom/zte/zdm/b/f/e/b;

    iput-object p2, p0, Lcom/zte/zdm/b/a;->k:Lcom/zte/zdm/d/a/c;

    iput-object p3, p0, Lcom/zte/zdm/b/a;->l:Lcom/zte/zdm/b/b/a;

    iput-object p4, p0, Lcom/zte/zdm/b/a;->h:Lcom/zte/zdm/b/e/c;

    return-void
.end method

.method static synthetic a(Lcom/zte/zdm/b/a;)Lcom/zte/zdm/b/e;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/a;->g:Lcom/zte/zdm/b/e;

    return-object v0
.end method

.method static synthetic a(Lcom/zte/zdm/b/a;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zte/zdm/b/a;->d(Z)V

    return-void
.end method

.method public static declared-synchronized b()Lcom/zte/zdm/b/a;
    .locals 2

    const-class v1, Lcom/zte/zdm/b/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/zte/zdm/b/a;->f:Lcom/zte/zdm/b/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zte/zdm/b/a;

    invoke-direct {v0}, Lcom/zte/zdm/b/a;-><init>()V

    sput-object v0, Lcom/zte/zdm/b/a;->f:Lcom/zte/zdm/b/a;

    :cond_0
    sget-object v0, Lcom/zte/zdm/b/a;->f:Lcom/zte/zdm/b/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lcom/zte/zdm/b/a;)Lcom/zte/zdm/d/a/f;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/a;->m:Lcom/zte/zdm/d/a/f;

    return-object v0
.end method

.method private b(Lcom/zte/zdm/d/a/b;)V
    .locals 1

    const-string v0, "create connectionManager with connectionListener!"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/zte/zdm/d/a/c;->a(Lcom/zte/zdm/d/a/b;)Lcom/zte/zdm/d/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/b/a;->k:Lcom/zte/zdm/d/a/c;

    return-void
.end method

.method static synthetic c(Lcom/zte/zdm/b/a;)Lcom/zte/zdm/b/b/a;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/a;->l:Lcom/zte/zdm/b/b/a;

    return-object v0
.end method

.method static synthetic d(Lcom/zte/zdm/b/a;)Lcom/zte/zdm/b/e/c;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/a;->h:Lcom/zte/zdm/b/e/c;

    return-object v0
.end method

.method private d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zte/zdm/b/a;->o:Z

    return-void
.end method

.method private r()V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/b/a;->j:Lcom/zte/zdm/b/f/e/b;

    invoke-static {v0}, Lcom/zte/zdm/b/e/c;->a(Lcom/zte/zdm/b/f/e/b;)Lcom/zte/zdm/b/e/c;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/b/a;->h:Lcom/zte/zdm/b/e/c;

    iget-object v0, p0, Lcom/zte/zdm/b/a;->h:Lcom/zte/zdm/b/e/c;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/c;->a()Lcom/zte/zdm/b/e/b;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/b/a;->p:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/e/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private s()V
    .locals 2

    invoke-static {}, Lcom/zte/zdm/d/a/c;->a()Lcom/zte/zdm/d/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/b/a;->k:Lcom/zte/zdm/d/a/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "the connMgr is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/b/a;->k:Lcom/zte/zdm/d/a/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private t()V
    .locals 1

    const-string v0, "into createManagementObjectManager"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/zte/zdm/mos/c;->a()Lcom/zte/zdm/mos/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/mos/c;->b()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/b/a;->r()V

    invoke-direct {p0}, Lcom/zte/zdm/b/a;->s()V

    invoke-direct {p0}, Lcom/zte/zdm/b/a;->t()V

    return-void
.end method

.method public a(Lcom/zte/zdm/b/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/b/a;->l:Lcom/zte/zdm/b/b/a;

    return-void
.end method

.method public final a(Lcom/zte/zdm/b/e/c;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/b/a;->h:Lcom/zte/zdm/b/e/c;

    return-void
.end method

.method public a(Lcom/zte/zdm/b/e/e;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/b/a;->i:Lcom/zte/zdm/b/e/e;

    return-void
.end method

.method public a(Lcom/zte/zdm/b/e;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/b/a;->g:Lcom/zte/zdm/b/e;

    return-void
.end method

.method public a(Lcom/zte/zdm/d/a/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/b/a;->r()V

    invoke-direct {p0, p1}, Lcom/zte/zdm/b/a;->b(Lcom/zte/zdm/d/a/b;)V

    invoke-direct {p0}, Lcom/zte/zdm/b/a;->t()V

    return-void
.end method

.method public a(Lcom/zte/zdm/e/b;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/b/a;->r:Lcom/zte/zdm/e/b;

    return-void
.end method

.method public final a(Lcom/zte/zdm/g/d/c;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/b/a;->q:Lcom/zte/zdm/g/d/c;

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/b/a;->p:Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "triggerFumoSession( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/zte/zdm/b/c;

    invoke-direct {v0, p0, v2}, Lcom/zte/zdm/b/c;-><init>(Lcom/zte/zdm/b/a;Lcom/zte/zdm/b/b;)V

    iput-object v0, p0, Lcom/zte/zdm/b/a;->n:Lcom/zte/zdm/b/c;

    iget-object v0, p0, Lcom/zte/zdm/b/a;->n:Lcom/zte/zdm/b/c;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, v2, v2}, Lcom/zte/zdm/b/c;->a(ILjava/lang/String;Ljava/lang/String;[B)V

    iget-object v0, p0, Lcom/zte/zdm/b/a;->n:Lcom/zte/zdm/b/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/c;->setPriority(I)V

    iget-object v0, p0, Lcom/zte/zdm/b/a;->n:Lcom/zte/zdm/b/c;

    invoke-virtual {v0}, Lcom/zte/zdm/b/c;->start()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/zte/zdm/b/c;

    invoke-direct {v0, p0, v2}, Lcom/zte/zdm/b/c;-><init>(Lcom/zte/zdm/b/a;Lcom/zte/zdm/b/b;)V

    iput-object v0, p0, Lcom/zte/zdm/b/a;->n:Lcom/zte/zdm/b/c;

    iget-object v0, p0, Lcom/zte/zdm/b/a;->n:Lcom/zte/zdm/b/c;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/zte/zdm/b/c;->a(ILjava/lang/String;Ljava/lang/String;[B)V

    iget-object v0, p0, Lcom/zte/zdm/b/a;->n:Lcom/zte/zdm/b/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/c;->setPriority(I)V

    iget-object v0, p0, Lcom/zte/zdm/b/a;->l:Lcom/zte/zdm/b/b/a;

    const-string v1, "fumo_phase"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/b/b/a;->c(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/zte/zdm/b/a;->n:Lcom/zte/zdm/b/c;

    invoke-virtual {v0}, Lcom/zte/zdm/b/c;->start()V

    return-void
.end method

.method public declared-synchronized a(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zte/zdm/b/a;->h:Lcom/zte/zdm/b/e/c;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/b/e/c;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a([B)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/zte/zdm/b/c;

    invoke-direct {v0, p0, v2}, Lcom/zte/zdm/b/c;-><init>(Lcom/zte/zdm/b/a;Lcom/zte/zdm/b/b;)V

    iput-object v0, p0, Lcom/zte/zdm/b/a;->n:Lcom/zte/zdm/b/c;

    iget-object v0, p0, Lcom/zte/zdm/b/a;->n:Lcom/zte/zdm/b/c;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2, v2, p1}, Lcom/zte/zdm/b/c;->a(ILjava/lang/String;Ljava/lang/String;[B)V

    iget-object v0, p0, Lcom/zte/zdm/b/a;->n:Lcom/zte/zdm/b/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/c;->setPriority(I)V

    iget-object v0, p0, Lcom/zte/zdm/b/a;->n:Lcom/zte/zdm/b/c;

    invoke-virtual {v0}, Lcom/zte/zdm/b/c;->start()V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-instance v0, Lcom/zte/zdm/b/c;

    invoke-direct {v0, p0, v1}, Lcom/zte/zdm/b/c;-><init>(Lcom/zte/zdm/b/a;Lcom/zte/zdm/b/b;)V

    iput-object v0, p0, Lcom/zte/zdm/b/a;->n:Lcom/zte/zdm/b/c;

    iget-object v0, p0, Lcom/zte/zdm/b/a;->n:Lcom/zte/zdm/b/c;

    invoke-virtual {v0, v2, p1, p2, v1}, Lcom/zte/zdm/b/c;->a(ILjava/lang/String;Ljava/lang/String;[B)V

    iget-object v0, p0, Lcom/zte/zdm/b/a;->n:Lcom/zte/zdm/b/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/c;->setPriority(I)V

    iget-object v0, p0, Lcom/zte/zdm/b/a;->l:Lcom/zte/zdm/b/b/a;

    const-string v1, "fumo_phase"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/b/b/a;->c(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/zte/zdm/b/a;->l:Lcom/zte/zdm/b/b/a;

    const-string v1, "dl_session_state"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/b/b/a;->c(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/zte/zdm/b/a;->n:Lcom/zte/zdm/b/c;

    invoke-virtual {v0}, Lcom/zte/zdm/b/c;->start()V

    return-void
.end method

.method public b(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "triggerContinueSession: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/a;->h:Lcom/zte/zdm/b/e/c;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/b/e/c;->a(Z)V

    return-void
.end method

.method public final c()Lcom/zte/zdm/b/e/c;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/a;->h:Lcom/zte/zdm/b/e/c;

    return-object v0
.end method

.method public c(Z)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/a;->h:Lcom/zte/zdm/b/e/c;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/b/e/c;->c(Z)V

    return-void
.end method

.method public d()Lcom/zte/zdm/g/d/c;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/a;->q:Lcom/zte/zdm/g/d/c;

    return-object v0
.end method

.method public final e()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/a;->p:Ljava/lang/Object;

    return-object v0
.end method

.method public f()Lcom/zte/zdm/b/e;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/a;->g:Lcom/zte/zdm/b/e;

    return-object v0
.end method

.method public g()Lcom/zte/zdm/b/e/e;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/a;->i:Lcom/zte/zdm/b/e/e;

    return-object v0
.end method

.method public h()Lcom/zte/zdm/b/f/e/b;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/a;->j:Lcom/zte/zdm/b/f/e/b;

    return-object v0
.end method

.method public i()Lcom/zte/zdm/mos/c;
    .locals 1

    invoke-static {}, Lcom/zte/zdm/mos/c;->a()Lcom/zte/zdm/mos/c;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/zte/zdm/b/b/a;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/a;->l:Lcom/zte/zdm/b/b/a;

    return-object v0
.end method

.method public declared-synchronized k()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/zte/zdm/b/a;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized l()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized m()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zte/zdm/b/a;->h:Lcom/zte/zdm/b/e/c;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/c;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/a;->h:Lcom/zte/zdm/b/e/c;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/c;->b()V

    return-void
.end method

.method public final o()Lcom/zte/zdm/d/a/c;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/a;->k:Lcom/zte/zdm/d/a/c;

    return-object v0
.end method

.method p()V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/zte/zdm/b/a;->l:Lcom/zte/zdm/b/b/a;

    if-nez v1, :cond_0

    const-string v0, "config is null"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/zte/zdm/b/a;->l:Lcom/zte/zdm/b/b/a;

    const-string v2, "server_addr"

    const-string v3, "http://dmcn.ztems.com/zxmdmp/dm"

    invoke-virtual {v1, v2, v3}, Lcom/zte/zdm/b/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/b/a;->l:Lcom/zte/zdm/b/b/a;

    const-string v3, "dm_proxy"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/zte/zdm/b/b/a;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/zte/zdm/b/a;->l:Lcom/zte/zdm/b/b/a;

    const-string v3, "dm_proxy_addr"

    invoke-virtual {v2, v3, v0}, Lcom/zte/zdm/b/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/zte/zdm/b/a;->l:Lcom/zte/zdm/b/b/a;

    const-string v3, "dm_proxy_port"

    const/16 v4, 0x50

    invoke-virtual {v0, v3, v4}, Lcom/zte/zdm/b/b/a;->b(Ljava/lang/String;I)I

    move-result v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Original transportAgent\'s parameter: proxy addr:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " port:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/zte/zdm/d/a/i;

    const/4 v4, 0x2

    invoke-direct {v0, v4}, Lcom/zte/zdm/d/a/i;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/zte/zdm/d/a/i;->a(Ljava/lang/String;)Lcom/zte/zdm/d/a/i;

    invoke-virtual {v0, v3}, Lcom/zte/zdm/d/a/i;->a(I)Lcom/zte/zdm/d/a/i;

    :cond_1
    iget-object v2, p0, Lcom/zte/zdm/b/a;->k:Lcom/zte/zdm/d/a/c;

    invoke-virtual {v2, v1, v0}, Lcom/zte/zdm/d/a/c;->a(Ljava/lang/String;Lcom/zte/zdm/d/a/i;)Lcom/zte/zdm/d/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/b/a;->m:Lcom/zte/zdm/d/a/f;

    iget-object v0, p0, Lcom/zte/zdm/b/a;->m:Lcom/zte/zdm/d/a/f;

    iget-object v2, p0, Lcom/zte/zdm/b/a;->l:Lcom/zte/zdm/b/b/a;

    const-string v3, "retry_times"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lcom/zte/zdm/b/b/a;->b(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/zte/zdm/d/a/f;->a(I)V

    iget-object v0, p0, Lcom/zte/zdm/b/a;->m:Lcom/zte/zdm/d/a/f;

    iget-object v2, p0, Lcom/zte/zdm/b/a;->l:Lcom/zte/zdm/b/b/a;

    const-string v3, "retry_millionseconds"

    const v4, 0x493e0

    invoke-virtual {v2, v3, v4}, Lcom/zte/zdm/b/b/a;->b(Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/zte/zdm/d/a/f;->a(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "httpAgent.getNumRetry : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/zte/zdm/b/a;->m:Lcom/zte/zdm/d/a/f;

    invoke-virtual {v2}, Lcom/zte/zdm/d/a/f;->f()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "httpAgent.getDelay : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/zte/zdm/b/a;->m:Lcom/zte/zdm/d/a/f;

    invoke-virtual {v2}, Lcom/zte/zdm/d/a/f;->j()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "httpAgent.url : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public q()Lcom/zte/zdm/e/b;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/a;->r:Lcom/zte/zdm/e/b;

    return-object v0
.end method

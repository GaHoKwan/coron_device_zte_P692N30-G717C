.class public Lcom/zte/zdm/application/App;
.super Landroid/app/Application;


# static fields
.field protected static a:Lcom/zte/zdm/application/a;

.field private static b:Lcom/zte/zdm/application/App;

.field private static final c:Ljava/lang/Object;


# instance fields
.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/zte/zdm/application/App;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zdm/application/App;->d:Z

    invoke-static {p0}, Lcom/zte/zdm/application/App;->a(Lcom/zte/zdm/application/App;)V

    return-void
.end method

.method public static a()Lcom/zte/zdm/application/App;
    .locals 3

    sget-object v1, Lcom/zte/zdm/application/App;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/zte/zdm/application/App;->b:Lcom/zte/zdm/application/App;

    if-nez v0, :cond_0

    const-string v0, "ZDMLog"

    const-string v2, "ZDM app starts."

    invoke-static {v0, v2}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/zte/zdm/application/App;

    invoke-direct {v0}, Lcom/zte/zdm/application/App;-><init>()V

    sput-object v0, Lcom/zte/zdm/application/App;->b:Lcom/zte/zdm/application/App;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/zte/zdm/application/App;->b:Lcom/zte/zdm/application/App;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static a(Lcom/zte/zdm/application/App;)V
    .locals 0

    sput-object p0, Lcom/zte/zdm/application/App;->b:Lcom/zte/zdm/application/App;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAutoupdate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/zte/zdm/application/App;->d:Z

    return-void
.end method

.method public b()Lcom/zte/zdm/application/a;
    .locals 1

    invoke-virtual {p0}, Lcom/zte/zdm/application/App;->d()V

    sget-object v0, Lcom/zte/zdm/application/App;->a:Lcom/zte/zdm/application/a;

    return-object v0
.end method

.method public c()V
    .locals 1

    sget-object v0, Lcom/zte/zdm/application/App;->a:Lcom/zte/zdm/application/a;

    invoke-virtual {v0}, Lcom/zte/zdm/application/a;->f()V

    return-void
.end method

.method public declared-synchronized d()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/zte/zdm/application/App;->a:Lcom/zte/zdm/application/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zte/zdm/application/a;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/a;-><init>(Landroid/app/Application;)V

    sput-object v0, Lcom/zte/zdm/application/App;->a:Lcom/zte/zdm/application/a;

    const-string v0, "ZDMLog"

    const-string v1, "ZDMAPP starts to init."

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/zte/zdm/application/App;->a:Lcom/zte/zdm/application/a;

    invoke-virtual {v0}, Lcom/zte/zdm/application/a;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()V
    .locals 1

    sget-object v0, Lcom/zte/zdm/application/App;->a:Lcom/zte/zdm/application/a;

    invoke-virtual {v0}, Lcom/zte/zdm/application/a;->g()V

    return-void
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zte/zdm/application/App;->d:Z

    return v0
.end method

.method public g()V
    .locals 1

    sget-object v0, Lcom/zte/zdm/application/App;->a:Lcom/zte/zdm/application/a;

    invoke-virtual {v0}, Lcom/zte/zdm/application/a;->h()V

    return-void
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-virtual {p0}, Lcom/zte/zdm/application/App;->d()V

    invoke-static {}, Lcom/zte/zdm/application/d/f/b;->a()V

    return-void
.end method

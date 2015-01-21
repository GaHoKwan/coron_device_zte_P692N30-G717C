.class public final Lcom/a/aw;
.super Ljava/lang/Object;


# static fields
.field protected static a:Z

.field private static u:Ljava/lang/Object;

.field private static v:Lcom/a/aw;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/location/LocationManager;

.field private d:I

.field private e:I

.field private f:Lcom/a/f;

.field private g:Lcom/a/t;

.field private h:Lcom/a/aa;

.field private i:Lcom/a/bd;

.field private j:Lcom/a/z;

.field private k:Lcom/a/s;

.field private l:Z

.field private m:Lcom/a/az;

.field private n:Ljava/lang/Thread;

.field private o:Landroid/os/Looper;

.field private p:Lcom/a/q;

.field private q:Z

.field private r:I

.field private s:Lcom/a/r;

.field private t:Z

.field private w:Landroid/location/LocationListener;

.field private x:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/a/aw;->a:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/a/aw;->u:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/a/aw;->d:I

    iput v1, p0, Lcom/a/aw;->e:I

    iput-boolean v1, p0, Lcom/a/aw;->l:Z

    iput-object v0, p0, Lcom/a/aw;->n:Ljava/lang/Thread;

    iput-object v0, p0, Lcom/a/aw;->o:Landroid/os/Looper;

    iput-object v0, p0, Lcom/a/aw;->p:Lcom/a/q;

    iput-boolean v1, p0, Lcom/a/aw;->q:Z

    iput v1, p0, Lcom/a/aw;->r:I

    new-instance v0, Lcom/a/r;

    invoke-direct {v0, p0}, Lcom/a/r;-><init>(Lcom/a/aw;)V

    iput-object v0, p0, Lcom/a/aw;->s:Lcom/a/r;

    iput-boolean v1, p0, Lcom/a/aw;->t:Z

    new-instance v0, Lcom/a/o;

    invoke-direct {v0, p0}, Lcom/a/o;-><init>(Lcom/a/aw;)V

    iput-object v0, p0, Lcom/a/aw;->w:Landroid/location/LocationListener;

    new-instance v0, Lcom/a/p;

    invoke-direct {v0, p0}, Lcom/a/p;-><init>(Lcom/a/aw;)V

    iput-object v0, p0, Lcom/a/aw;->x:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/a/aw;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/a/f;->a(Landroid/content/Context;)Lcom/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/a/aw;->f:Lcom/a/f;

    new-instance v0, Lcom/a/az;

    invoke-direct {v0}, Lcom/a/az;-><init>()V

    iput-object v0, p0, Lcom/a/aw;->m:Lcom/a/az;

    new-instance v0, Lcom/a/t;

    iget-object v2, p0, Lcom/a/aw;->f:Lcom/a/f;

    invoke-direct {v0, v2}, Lcom/a/t;-><init>(Lcom/a/f;)V

    iput-object v0, p0, Lcom/a/aw;->g:Lcom/a/t;

    new-instance v0, Lcom/a/bd;

    invoke-direct {v0, p1}, Lcom/a/bd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/a/aw;->i:Lcom/a/bd;

    new-instance v0, Lcom/a/aa;

    iget-object v2, p0, Lcom/a/aw;->i:Lcom/a/bd;

    invoke-direct {v0, v2}, Lcom/a/aa;-><init>(Lcom/a/bd;)V

    iput-object v0, p0, Lcom/a/aw;->h:Lcom/a/aa;

    new-instance v0, Lcom/a/z;

    iget-object v2, p0, Lcom/a/aw;->i:Lcom/a/bd;

    invoke-direct {v0, v2}, Lcom/a/z;-><init>(Lcom/a/bd;)V

    iput-object v0, p0, Lcom/a/aw;->j:Lcom/a/z;

    iget-object v0, p0, Lcom/a/aw;->b:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/a/aw;->c:Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/a/aw;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/a/s;->a(Landroid/content/Context;)Lcom/a/s;

    move-result-object v0

    iput-object v0, p0, Lcom/a/aw;->k:Lcom/a/s;

    iget-object v0, p0, Lcom/a/aw;->k:Lcom/a/s;

    iget-object v2, p0, Lcom/a/aw;->s:Lcom/a/r;

    invoke-virtual {v0, v2}, Lcom/a/s;->a(Lcom/a/r;)V

    invoke-direct {p0}, Lcom/a/aw;->g()V

    iget-object v0, p0, Lcom/a/aw;->c:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "gps"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "passive"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/a/aw;->t:Z

    invoke-static {p1}, Lcom/a/at;->a(Landroid/content/Context;)Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(J)J
    .locals 0

    return-wide p0
.end method

.method static synthetic a(Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    return-object p0
.end method

.method static synthetic a(Lcom/a/aw;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0

    iput-object p1, p0, Lcom/a/aw;->o:Landroid/os/Looper;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lcom/a/aw;
    .locals 2

    sget-object v0, Lcom/a/aw;->v:Lcom/a/aw;

    if-nez v0, :cond_1

    sget-object v1, Lcom/a/aw;->u:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/a/aw;->v:Lcom/a/aw;

    if-nez v0, :cond_0

    new-instance v0, Lcom/a/aw;

    invoke-direct {v0, p0}, Lcom/a/aw;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/a/aw;->v:Lcom/a/aw;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/a/aw;->v:Lcom/a/aw;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/a/aw;)V
    .locals 0

    invoke-direct {p0}, Lcom/a/aw;->g()V

    return-void
.end method

.method static synthetic a(Lcom/a/aw;Landroid/location/Location;)V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/a/aw;->g:Lcom/a/t;

    invoke-virtual {v0, p1}, Lcom/a/t;->a(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/a/aw;->g:Lcom/a/t;

    iget-object v1, v1, Lcom/a/t;->b:Lcom/a/u;

    new-instance v3, Landroid/location/Location;

    invoke-direct {v3, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v3, v1, Lcom/a/u;->b:Landroid/location/Location;

    :cond_0
    iget-object v1, p0, Lcom/a/aw;->g:Lcom/a/t;

    invoke-virtual {v1, p1}, Lcom/a/t;->b(Landroid/location/Location;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/a/aw;->g:Lcom/a/t;

    iget-object v3, v3, Lcom/a/t;->a:Lcom/a/x;

    new-instance v4, Landroid/location/Location;

    invoke-direct {v4, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v4, v3, Lcom/a/x;->b:Landroid/location/Location;

    :cond_1
    if-eqz v0, :cond_5

    const/4 v0, 0x1

    if-eqz v1, :cond_2

    const/4 v0, 0x3

    :cond_2
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/a/aw;->m:Lcom/a/az;

    iget-object v1, p0, Lcom/a/aw;->f:Lcom/a/f;

    invoke-static {p1, v1, v0}, Lcom/a/az;->a(Landroid/location/Location;Lcom/a/f;I)Lcom/a/ay;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/a/aw;->f:Lcom/a/f;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/a/aw;->f:Lcom/a/f;

    invoke-virtual {v0}, Lcom/a/f;->n()Ljava/util/List;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    :cond_3
    invoke-virtual {v1}, Lcom/a/ay;->a()[B

    move-result-object v1

    iget-object v2, p0, Lcom/a/aw;->h:Lcom/a/aa;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v1}, Lcom/a/aa;->a(J[B)V

    :cond_4
    return-void

    :cond_5
    if-eqz v1, :cond_6

    const/4 v0, 0x2

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_0
.end method

.method static synthetic b(Lcom/a/aw;)Landroid/location/LocationListener;
    .locals 1

    iget-object v0, p0, Lcom/a/aw;->w:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic c(Lcom/a/aw;)Landroid/location/LocationManager;
    .locals 1

    iget-object v0, p0, Lcom/a/aw;->c:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic d(Lcom/a/aw;)Lcom/a/s;
    .locals 1

    iget-object v0, p0, Lcom/a/aw;->k:Lcom/a/s;

    return-object v0
.end method

.method static synthetic e(Lcom/a/aw;)Lcom/a/aa;
    .locals 1

    iget-object v0, p0, Lcom/a/aw;->h:Lcom/a/aa;

    return-object v0
.end method

.method protected static e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic f(Lcom/a/aw;)Lcom/a/z;
    .locals 1

    iget-object v0, p0, Lcom/a/aw;->j:Lcom/a/z;

    return-object v0
.end method

.method static synthetic f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/a/aw;->k:Lcom/a/s;

    invoke-virtual {v0}, Lcom/a/s;->b()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/a/aw;->d:I

    iget-object v0, p0, Lcom/a/aw;->k:Lcom/a/s;

    invoke-virtual {v0}, Lcom/a/s;->c()I

    move-result v0

    iput v0, p0, Lcom/a/aw;->e:I

    iget-object v0, p0, Lcom/a/aw;->g:Lcom/a/t;

    iget v0, p0, Lcom/a/aw;->d:I

    iget v1, p0, Lcom/a/aw;->e:I

    invoke-static {v0, v1}, Lcom/a/t;->a(II)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/a/aw;->i:Lcom/a/bd;

    invoke-virtual {v0}, Lcom/a/bd;->a()V

    return-void
.end method

.method public final a(Lcom/a/bc;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/a/aw;->k:Lcom/a/s;

    invoke-virtual {v0, p2}, Lcom/a/s;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/a/bc;->a()[B

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/a/aw;->b:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/a/aw;->k:Lcom/a/s;

    iget-object v3, p0, Lcom/a/aw;->k:Lcom/a/s;

    invoke-virtual {v3}, Lcom/a/s;->e()I

    move-result v3

    array-length v2, v2

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/a/s;->a(I)V

    :cond_0
    :goto_0
    invoke-virtual {p1, v1}, Lcom/a/bc;->a(Z)V

    iget-object v0, p0, Lcom/a/aw;->j:Lcom/a/z;

    invoke-virtual {v0, p1}, Lcom/a/z;->a(Lcom/a/bc;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/a/aw;->k:Lcom/a/s;

    iget-object v3, p0, Lcom/a/aw;->k:Lcom/a/s;

    invoke-virtual {v3}, Lcom/a/s;->f()I

    move-result v3

    array-length v2, v2

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/a/s;->b(I)V

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/a/aw;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/aw;->f:Lcom/a/f;

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "collector"

    const-string v1, "no gps or passive, so not to collect!"

    invoke-static {v0, v1}, Lcom/a/at;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-boolean v0, Lcom/a/aw;->a:Z

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/a/aw;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/a/aw;->x:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v0, ""

    iget-object v1, p0, Lcom/a/aw;->c:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/a/aw;->w:Landroid/location/LocationListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v1, p0, Lcom/a/aw;->o:Landroid/os/Looper;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/a/aw;->o:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    iput-object v3, p0, Lcom/a/aw;->o:Landroid/os/Looper;

    :cond_3
    iget-object v1, p0, Lcom/a/aw;->n:Ljava/lang/Thread;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/a/aw;->n:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    iput-object v3, p0, Lcom/a/aw;->n:Ljava/lang/Thread;

    :cond_4
    new-instance v1, Lcom/a/n;

    invoke-direct {v1, p0, v0}, Lcom/a/n;-><init>(Lcom/a/aw;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/a/aw;->n:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/a/aw;->n:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/a/aw;->f:Lcom/a/f;

    invoke-virtual {v0}, Lcom/a/f;->a()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/a/aw;->a:Z

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/a/aw;->t:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/a/aw;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/aw;->f:Lcom/a/f;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/a/aw;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/aw;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/a/aw;->x:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/a/aw;->o:Landroid/os/Looper;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/a/aw;->o:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iput-object v2, p0, Lcom/a/aw;->o:Landroid/os/Looper;

    :cond_2
    iget-object v0, p0, Lcom/a/aw;->n:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/a/aw;->n:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iput-object v2, p0, Lcom/a/aw;->n:Ljava/lang/Thread;

    :cond_3
    iget-object v0, p0, Lcom/a/aw;->c:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/a/aw;->w:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/a/aw;->f:Lcom/a/f;

    invoke-virtual {v0}, Lcom/a/f;->b()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/a/aw;->a:Z

    goto :goto_0
.end method

.method public final d()Lcom/a/bc;
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Lcom/a/aw;->a:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/a/aw;->k:Lcom/a/s;

    invoke-virtual {v1}, Lcom/a/s;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/a/aw;->j:Lcom/a/z;

    iget-object v1, p0, Lcom/a/aw;->k:Lcom/a/s;

    invoke-virtual {v1}, Lcom/a/s;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/a/z;->a(I)Lcom/a/bc;

    move-result-object v0

    goto :goto_0
.end method

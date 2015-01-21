.class public Lcom/umeng/common/net/DownloadingService;
.super Landroid/app/Service;
.source "DownloadingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/common/net/DownloadingService$b;,
        Lcom/umeng/common/net/DownloadingService$a;,
        Lcom/umeng/common/net/DownloadingService$c;
    }
.end annotation


# static fields
.field private static final C:J = 0x1f40L

.field private static final D:J = 0x1f4L

.field private static E:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/umeng/common/net/a$a;",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field private static F:Landroid/util/SparseArray; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/umeng/common/net/d$b;",
            ">;"
        }
    .end annotation
.end field

.field private static G:Ljava/lang/Boolean; = null

.field static final a:I = 0x1

.field static final b:I = 0x2

.field static final c:I = 0x3

.field static final d:I = 0x4

.field static final e:I = 0x5

.field static final f:I = 0x6

.field public static final g:I = 0x0

.field public static final h:I = 0x1

.field public static final i:I = 0x2

.field public static final j:I = 0x3

.field public static final k:I = 0x4

.field public static final l:I = 0x5

.field public static final m:I = 0x6

.field public static final n:I = 0x7

.field static final o:I = 0x64

.field static final p:Ljava/lang/String; = "filename"

.field public static r:Z = false

.field private static final t:Ljava/lang/String; = null

.field private static final w:J = 0x6400000L

.field private static final x:J = 0xa00000L

.field private static final y:J = 0xf731400L

.field private static final z:I = 0x3


# instance fields
.field private A:Landroid/content/Context;

.field private B:Landroid/os/Handler;

.field q:Lcom/umeng/common/net/DownloadingService$a;

.field final s:Landroid/os/Messenger;

.field private u:Landroid/app/NotificationManager;

.field private v:Lcom/umeng/common/net/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 103
    const-class v0, Lcom/umeng/common/net/DownloadingService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/common/net/DownloadingService;->t:Ljava/lang/String;

    .line 149
    sput-boolean v1, Lcom/umeng/common/net/DownloadingService;->r:Z

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/common/net/DownloadingService;->E:Ljava/util/Map;

    .line 159
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/umeng/common/net/DownloadingService;->F:Landroid/util/SparseArray;

    .line 962
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/umeng/common/net/DownloadingService;->G:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 106
    new-instance v0, Lcom/umeng/common/net/d;

    invoke-direct {v0}, Lcom/umeng/common/net/d;-><init>()V

    iput-object v0, p0, Lcom/umeng/common/net/DownloadingService;->v:Lcom/umeng/common/net/d;

    .line 161
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/umeng/common/net/DownloadingService$c;

    invoke-direct {v1, p0}, Lcom/umeng/common/net/DownloadingService$c;-><init>(Lcom/umeng/common/net/DownloadingService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/umeng/common/net/DownloadingService;->s:Landroid/os/Messenger;

    .line 546
    return-void
.end method

.method static synthetic a(Lcom/umeng/common/net/DownloadingService;Landroid/app/NotificationManager;)Landroid/app/NotificationManager;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/umeng/common/net/DownloadingService;->u:Landroid/app/NotificationManager;

    return-object p1
.end method

.method static synthetic a(Lcom/umeng/common/net/DownloadingService;)Lcom/umeng/common/net/d;
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService;->v:Lcom/umeng/common/net/d;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter

    .prologue
    .line 102
    sput-object p0, Lcom/umeng/common/net/DownloadingService;->G:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/umeng/common/net/DownloadingService;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/common/net/DownloadingService;Lcom/umeng/common/net/a$a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/a$a;)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/common/net/DownloadingService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/umeng/common/net/DownloadingService;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/umeng/common/net/a$a;)V
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 513
    sget-object v0, Lcom/umeng/common/net/DownloadingService;->t:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDownload([mComponentName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/umeng/common/net/a$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mTitle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/umeng/common/net/a$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/umeng/common/net/a$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "])"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService;->v:Lcom/umeng/common/net/d;

    invoke-virtual {v0, p1}, Lcom/umeng/common/net/d;->a(Lcom/umeng/common/net/a$a;)I

    move-result v4

    .line 518
    new-instance v0, Lcom/umeng/common/net/DownloadingService$b;

    invoke-virtual {p0}, Lcom/umeng/common/net/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v6, p0, Lcom/umeng/common/net/DownloadingService;->q:Lcom/umeng/common/net/DownloadingService$a;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/umeng/common/net/DownloadingService$b;-><init>(Lcom/umeng/common/net/DownloadingService;Landroid/content/Context;Lcom/umeng/common/net/a$a;IILcom/umeng/common/net/DownloadingService$a;)V

    .line 521
    new-instance v1, Lcom/umeng/common/net/d$b;

    invoke-direct {v1, p1, v4}, Lcom/umeng/common/net/d$b;-><init>(Lcom/umeng/common/net/a$a;I)V

    .line 522
    sget-object v2, Lcom/umeng/common/net/DownloadingService;->F:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Lcom/umeng/common/net/d$b;->a(Landroid/util/SparseArray;)V

    .line 523
    iput-object v0, v1, Lcom/umeng/common/net/d$b;->a:Lcom/umeng/common/net/DownloadingService$b;

    .line 525
    invoke-virtual {v0}, Lcom/umeng/common/net/DownloadingService$b;->start()V

    .line 527
    invoke-direct {p0}, Lcom/umeng/common/net/DownloadingService;->d()V

    .line 528
    sget-boolean v0, Lcom/umeng/common/net/DownloadingService;->r:Z

    if-eqz v0, :cond_0

    .line 529
    :goto_0
    sget-object v0, Lcom/umeng/common/net/DownloadingService;->F:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v5, v0, :cond_0

    .line 530
    sget-object v0, Lcom/umeng/common/net/DownloadingService;->F:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/common/net/d$b;

    .line 531
    sget-object v1, Lcom/umeng/common/net/DownloadingService;->t:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Running task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/umeng/common/net/d$b;->e:Lcom/umeng/common/net/a$a;

    iget-object v0, v0, Lcom/umeng/common/net/a$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 534
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 965
    sget-object v1, Lcom/umeng/common/net/DownloadingService;->G:Ljava/lang/Boolean;

    monitor-enter v1

    .line 966
    :try_start_0
    sget-object v0, Lcom/umeng/common/net/DownloadingService;->G:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 967
    sget-object v0, Lcom/umeng/common/net/DownloadingService;->t:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show single toast.["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/umeng/common/net/DownloadingService;->G:Ljava/lang/Boolean;

    .line 969
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService;->B:Landroid/os/Handler;

    new-instance v2, Lcom/umeng/common/net/h;

    invoke-direct {v2, p0, p1}, Lcom/umeng/common/net/h;-><init>(Lcom/umeng/common/net/DownloadingService;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 976
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService;->B:Landroid/os/Handler;

    new-instance v2, Lcom/umeng/common/net/i;

    invoke-direct {v2, p0}, Lcom/umeng/common/net/i;-><init>(Lcom/umeng/common/net/DownloadingService;)V

    const-wide/16 v3, 0x4b0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 983
    :cond_0
    monitor-exit v1

    .line 984
    return-void

    .line 983
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService;->A:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b()Ljava/util/Map;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/umeng/common/net/DownloadingService;->E:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lcom/umeng/common/net/DownloadingService;)Landroid/app/NotificationManager;
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService;->u:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic c()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/umeng/common/net/DownloadingService;->F:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic d(Lcom/umeng/common/net/DownloadingService;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService;->B:Landroid/os/Handler;

    return-object v0
.end method

.method private d()V
    .locals 5

    .prologue
    .line 1000
    sget-boolean v0, Lcom/umeng/common/net/DownloadingService;->r:Z

    if-eqz v0, :cond_0

    .line 1001
    sget-object v0, Lcom/umeng/common/net/DownloadingService;->E:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 1002
    sget-object v1, Lcom/umeng/common/net/DownloadingService;->F:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1003
    sget-object v2, Lcom/umeng/common/net/DownloadingService;->t:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Client size ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   cacheSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    if-eq v0, v1, :cond_0

    .line 1005
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Client size ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "   cacheSize = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1009
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter

    .prologue
    .line 264
    sget-object v0, Lcom/umeng/common/net/DownloadingService;->t:Ljava/lang/String;

    const-string v1, "onBind "

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService;->s:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 278
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 280
    sget-boolean v0, Lcom/umeng/common/net/DownloadingService;->r:Z

    if-eqz v0, :cond_0

    .line 281
    sput-boolean v1, Lcom/umeng/common/Log;->LOG:Z

    .line 282
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 284
    :cond_0
    sput-boolean v1, Lcom/umeng/common/Log;->LOG:Z

    .line 285
    sget-object v0, Lcom/umeng/common/net/DownloadingService;->t:Ljava/lang/String;

    const-string v1, "onCreate "

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/umeng/common/net/DownloadingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/umeng/common/net/DownloadingService;->u:Landroid/app/NotificationManager;

    .line 287
    iput-object p0, p0, Lcom/umeng/common/net/DownloadingService;->A:Landroid/content/Context;

    .line 289
    new-instance v0, Lcom/umeng/common/net/f;

    invoke-direct {v0, p0}, Lcom/umeng/common/net/f;-><init>(Lcom/umeng/common/net/DownloadingService;)V

    iput-object v0, p0, Lcom/umeng/common/net/DownloadingService;->B:Landroid/os/Handler;

    .line 394
    new-instance v0, Lcom/umeng/common/net/g;

    invoke-direct {v0, p0}, Lcom/umeng/common/net/g;-><init>(Lcom/umeng/common/net/DownloadingService;)V

    iput-object v0, p0, Lcom/umeng/common/net/DownloadingService;->q:Lcom/umeng/common/net/DownloadingService$a;

    .line 510
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 989
    const v0, 0x3f480

    .line 990
    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/common/net/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/common/net/c;->a(Landroid/content/Context;)Lcom/umeng/common/net/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/umeng/common/net/c;->a(I)V

    .line 992
    invoke-virtual {p0}, Lcom/umeng/common/net/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/common/net/c;->a(Landroid/content/Context;)Lcom/umeng/common/net/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/common/net/c;->finalize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 996
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 997
    return-void

    .line 993
    :catch_0
    move-exception v0

    .line 994
    sget-object v1, Lcom/umeng/common/net/DownloadingService;->t:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 271
    sget-object v0, Lcom/umeng/common/net/DownloadingService;->t:Ljava/lang/String;

    const-string v1, "onStart "

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService;->v:Lcom/umeng/common/net/d;

    sget-object v1, Lcom/umeng/common/net/DownloadingService;->F:Landroid/util/SparseArray;

    sget-object v2, Lcom/umeng/common/net/DownloadingService;->E:Ljava/util/Map;

    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/umeng/common/net/d;->a(Lcom/umeng/common/net/DownloadingService;Landroid/util/SparseArray;Ljava/util/Map;Landroid/content/Intent;)Z

    .line 273
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 274
    return-void
.end method
